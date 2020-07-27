import numpy as np
import quaternion
import math

from PySide2.QtWidgets import QWidget, QPushButton, QStyleOption, QStyle, QHBoxLayout, QOpenGLWidget
from PySide2.QtGui import QPixmap, QPainter, QPalette, QPen, QBrush, QColor, QPainterPath, QFont, QFontInfo
from PySide2.QtCore import Qt, QTimer, QSize, QPointF, QRectF

from ms33558 import get_data, BezierPoint


R = 50.0             # Radius of the sphere in mm
LINEWIDTH = 1.5      # in points
MM_PER_POINT = 0.352778
WIDTH_HALF_ANGLE = 0.5 * LINEWIDTH * MM_PER_POINT / R
DEGREE_RESOLUTION = 10
NUMBER_TOLERANCE = 50
NUMBER_OF_TICK_POINTS = 3
BALL_SCALE = 7


def anglerange(start, stop, resolution=1):
    angles = []
    if resolution > 0:
        while stop < start:
            stop += 360

        a = math.ceil(start / resolution) * resolution
        if a != start:
            angles.append(start)

        while a < stop:
            angles.append(a)
            a += resolution

        angles.append(stop)
        return angles
    else:
        while start < stop:
            start += 360
        a = math.ceil(start/resolution) * resolution
        if a != start:
            angles.append(start)

        while a > stop:
            angles.append(a)
            a += resolution

        angles.append(stop)
        return angles


def fixed_distance(angle, longitude, latitude, direction):
    """
    :param angle: radians
    :param longitude: degrees
    :param latitude: degrees
    :param direction:
    :return: new point
    """
    if direction in ["east", "west"]:
        # Along parallel
        axis_longitude = longitude
        axis_latitude = latitude - 90
        if axis_latitude < -90:
            axis_latitude = -180 - axis_latitude
            axis_longitude += 180
    else:
        # Along meridian
        axis_longitude = longitude + 90
        axis_latitude = 0

    start_point = to_cartesian(longitude, latitude)
    axis = normalize(to_cartesian(axis_longitude, axis_latitude))
    if direction in ["south", "east"]:
        angle *= -1

    q = quaternion.from_rotation_vector(angle * axis)
    return quaternion.rotate_vectors(q, start_point)


def to_array(pointlist):
    points = np.zeros((len(pointlist), 3))
    for i in range(len(pointlist)):
        points[i, :] = pointlist[i]
    return points


class BlackHalf(object):
    def __init__(self):
        points = np.zeros((660, 3))
        n = 0
        # North side
        latitude = 75
        for i in anglerange(0, 180, DEGREE_RESOLUTION):
            longitude = 180 + i
            points[n, :] = to_cartesian(longitude, latitude)
            n += 1

        # West side
        longitude = 360
        for i in anglerange(0, 150, DEGREE_RESOLUTION):
            latitude = 75 - i
            points[n, :] = to_cartesian(longitude, latitude)
            n += 1

        # South side
        latitude = -75
        for i in anglerange(0, 180, DEGREE_RESOLUTION):
            longitude = 360 - i
            points[n, :] = to_cartesian(longitude, latitude)
            n += 1

        # East side
        longitude = 180
        for i in anglerange(0, 150, DEGREE_RESOLUTION):
            latitude = -75 + i
            points[n, :] = to_cartesian(longitude, latitude)
            n += 1

        self.polygons = [FDAIPolygon(points, Qt.black)]


class GimbalLock(object):
    def __init__(self):
        self.polygons = []
        npoints = 360//DEGREE_RESOLUTION + 1
        # North
        points = np.zeros((npoints, 3))
        latitude = 75
        i = 0
        for a in anglerange(359, 0, -DEGREE_RESOLUTION):
            longitude = a
            points[i, :] = to_cartesian(longitude, latitude)
            i += 1
        self.polygons.append(FDAIPolygon(points, Qt.red))

        # South
        points = np.zeros((npoints, 3))
        latitude = -75
        i = 0
        for a in anglerange(0, 359, DEGREE_RESOLUTION):
            longitude = a
            points[i, :] = to_cartesian(longitude, latitude)
            i += 1
        self.polygons.append(FDAIPolygon(points, Qt.red))


class Meridian(object):
    def __init__(self, longitude):
        # Longitude in degrees
        self.longitude = longitude
        self.polygons = []

        if self.longitude <= 180:
            points = self.build_points(-85, 85)
            self.polygons.append(FDAIPolygon(points, Qt.black))
        else:
            points = self.build_points(-85, -75)
            self.polygons.append(FDAIPolygon(points, Qt.black))
            points = self.build_points(-75, 75)
            self.polygons.append(FDAIPolygon(points, Qt.white))
            points = self.build_points(75, 85)
            self.polygons.append(FDAIPolygon(points, Qt.black))

    def build_points(self, start_latitude, stop_latitude):
        points_west = []
        points_east = []

        for current_latitude in anglerange(start_latitude, stop_latitude, DEGREE_RESOLUTION):
            points_west.append(fixed_distance(WIDTH_HALF_ANGLE, self.longitude, current_latitude, "west"))
            points_east.append(fixed_distance(WIDTH_HALF_ANGLE, self.longitude, current_latitude, "east"))

        points_west.reverse()
        return to_array(points_east + points_west)


class Parallel(object):
    def __init__(self, latitude, color=None):
        # Latitude in degrees
        self.latitude = latitude
        self.polygons = []

        # Black half
        points_north = []
        points_south = []
        for current_longitude in anglerange(0, 180, DEGREE_RESOLUTION):
            points_north.append(fixed_distance(WIDTH_HALF_ANGLE, current_longitude, self.latitude, "north"))
            points_south.append(fixed_distance(WIDTH_HALF_ANGLE, current_longitude, self.latitude, "south"))

        points_south.reverse()
        pointlist = points_north + points_south

        points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            points[i, :] = pointlist[i]

        self.polygons.append(FDAIPolygon(points, color or Qt.black))

        # White half
        points_north = []
        points_south = []
        for current_longitude in anglerange(180, 360, DEGREE_RESOLUTION):
            points_north.append(fixed_distance(WIDTH_HALF_ANGLE, current_longitude, self.latitude, "north"))
            points_south.append(fixed_distance(WIDTH_HALF_ANGLE, current_longitude, self.latitude, "south"))

        points_south.reverse()
        points = to_array(points_north + points_south)

        self.polygons.append(FDAIPolygon(points, color or Qt.white))


class Numbers(object):
    def __init__(self, tolerance, fontsize):
        self.fontsize = fontsize  # points
        digit_data = get_data()
        nchars = len(digit_data)
        original_digit_height = sum([d.height for d in digit_data.values()]) / nchars
        self.digit_height = self.fontsize * MM_PER_POINT / R
        scale = self.digit_height / original_digit_height
        self.digit_widths = [digit_data[i].width * scale for i in range(nchars)]
        self.digit_right_kerns = [digit_data[1].right_kern * scale for i in range(nchars)]
        self.digits = [digit_data[i].linear_approximation(tolerance, scale) for i in range(nchars)]
        self.polygons = []

        # Parallels
        for longitude in range(16, 360, 60):
            color = Qt.white if longitude > 180 else Qt.black
            self.project_number(30, longitude, 300, color)
            self.project_number(6, longitude, 60, color)

        for longitude in range(15, 360, 30):
            color = Qt.white if longitude > 180 else Qt.black
            self.project_number(33, longitude, 330, color)
            self.project_number(3, longitude, 30, color)

        # Meridians
        for longitude in range(0, 360, 30):
            color = Qt.white if longitude > 180 else Qt.black
            for latitude in range(-45, 46, 30):
                self.project_number(int(longitude/10), longitude, latitude, color)

    def build_background(self, q0, rounded, bgcolor):
        h = 1.3 * self.digit_height
        w = 2.25 * max(self.digit_widths)

        # Background
        pointlist = []

        if rounded:
            corner_radius = h / 3
            n_corner_points = 5

            circlepoints = []
            for i in range(4 * n_corner_points):
                angle = 2 * math.pi * i / (4 * n_corner_points)
                circlepoints.append(np.array([corner_radius * math.cos(angle), corner_radius * math.sin(angle)]))

            pts = [np.array([-0.5 * w, 0])]

            # Lower left corner
            if rounded == "0":
                for p in circlepoints[2 * n_corner_points:3 * n_corner_points]:
                    p[0] -= (w / 2 - corner_radius)
                    p[1] -= (h / 2 - corner_radius)
                    pts.append(p)
            else:
                pts.append(np.array([-0.5 * w, -0.5 * h]))
            pts.append(np.array([0, -0.5 * h]))

            # Lower right corner
            if rounded == "0":
                for p in circlepoints[3 * n_corner_points:]:
                    p[0] += (w / 2 - corner_radius)
                    p[1] -= (h / 2 - corner_radius)
                    pts.append(p)
            else:
                pts.append(np.array([0.5 * w, -0.5 * h]))
            pts.append(np.array([0.5 * w, 0]))

            # Upper right corner
            if rounded == "180":
                for p in circlepoints[:n_corner_points]:
                    p[0] += (w / 2 - corner_radius)
                    p[1] += (h / 2 - corner_radius)
                    pts.append(p)
            else:
                pts.append(np.array([0.5 * w, 0.5 * h]))
            pts.append(np.array([0, 0.5 * h]))

            # Upper left corner
            if rounded == "180":
                for p in circlepoints[n_corner_points:2 * n_corner_points]:
                    p[0] -= (w / 2 - corner_radius)
                    p[1] += (h / 2 - corner_radius)
                    pts.append(p)
            else:
                pts.append(np.array([-0.5 * w, 0.5 * h]))

        else:
            pts = [
                np.array([-0.5 * w, 0]),
                np.array([-0.5 * w, -0.5 * h]),
                np.array([0, -0.5 * h]),
                np.array([0.5 * w, -0.5 * h]),
                np.array([0.5 * w, 0]),
                np.array([0.5 * w, 0.5 * h]),
                np.array([0, 0.5 * h]),
                np.array([-0.5 * w, 0.5 * h])
            ]
        for point in pts:
            axis1 = np.array([0, 0, 1])
            q1 = quaternion.from_rotation_vector(point[0] * axis1)
            axis2 = quaternion.rotate_vectors(q1, np.array([0, -1, 0]))
            q2 = quaternion.from_rotation_vector(point[1] * axis2)
            q3 = quaternion.from_rotation_vector(math.pi / 2 * np.array([1, 0, 0]))
            p = quaternion.rotate_vectors(q0 * q3 * q2 * q1, np.array([R, 0, 0]))
            pointlist.append(p)

        background_points = to_array(pointlist)
        self.polygons.append(FDAIPolygon(background_points, bgcolor))

    def shift_number(self, digit, x, y):
        result = []
        for loop in digit:
            result.append([])
            for p in loop:
                result[-1].append(BezierPoint(p.x + x, p.y + y))
        return result

    def project_number(self, number, longitude, latitude, color):
        h = 1.3 * self.digit_height
        w = 2.25 * max(self.digit_widths)

        offset = math.degrees((0.5 * h + WIDTH_HALF_ANGLE)/math.cos(math.radians(latitude)))
        rounded = False
        if longitude == 0:
            longitude -= offset
            rounded = "0"
        elif longitude == 180:
            longitude += offset
            rounded = "180"

        # We're coming from long, lat = (0, 0)
        theta = math.radians(-latitude)
        phi = math.radians(90 - longitude)
        q0 = quaternion.from_spherical_coords(theta, phi)

        bgcolor = Qt.white if color == Qt.black else Qt.black
        self.build_background(q0, rounded, bgcolor)

        digits = [int(d) for d in str(number)]
        full_width = sum([self.digit_widths[i] for i in digits]) - self.digit_right_kerns[digits[-1]]

        # Shift all numbers to the correct position
        shifted_digits = []
        xshift = -0.5*full_width
        yshift = - 0.5 * self.digit_height

        for d in digits:
            digit = self.shift_number(self.digits[d], xshift, yshift)
            shifted_digits.append(digit)
            xshift += self.digit_widths[d]

        # Project to reference position on the sphere
        # For each point, rotate around Z axis to longitude position
        # Then rotate around rotated Y axis to latitude position
        for d in shifted_digits:
            for loopn, loop in enumerate(d):
                pointlist = []
                for point in loop:
                    q1 = quaternion.from_rotation_vector(math.pi/2 * np.array([1, 0, 0]))
                    p1 = fixed_distance(point.x, 90, 0, "east")
                    p2 = fixed_distance(point.y, *from_cartesian(*p1), "north")
                    p = quaternion.rotate_vectors(q0 * q1, p2)
                    pointlist.append(p)

                if loopn > 0:
                    pointlist.reverse()

                points = to_array(pointlist)

                if loopn > 0:
                    self.polygons.append(FDAIPolygon(points, bgcolor))
                else:
                    self.polygons.append(FDAIPolygon(points, color))


class Ticks(object):
    def __init__(self):
        self.polygons = []
        self.tick_half_angle = 0.5 * 5 * MM_PER_POINT / R

        for i in range(12):
            longitude = 15 + i * 30
            self.build_ticks_at_longitude(longitude)

        for i in range(6):
            latitude = -75 + i * 30
            self.build_ticks_at_latitude(latitude)

        self.build_prime_ticks()

    def build_ticks_at_longitude(self, longitude):
        for i in range(33):
            current_latitude = -80 + i * 5
            if current_latitude in [-75, -60, -30, 0, 30, 60, 75]:
                continue

            p = to_cartesian(longitude, current_latitude)

            ew_axis = np.array([0, 0, 1])

            points_north = []
            points_south = []
            current_tick_half_angle = self.tick_half_angle / math.cos(math.radians(current_latitude))

            for i in range(NUMBER_OF_TICK_POINTS):
                ta = -current_tick_half_angle + i * 2 * current_tick_half_angle / (NUMBER_OF_TICK_POINTS - 1)
                p1 = quaternion.rotate_vectors(quaternion.from_rotation_vector(ta * ew_axis), p)
                points_north.append(fixed_distance(WIDTH_HALF_ANGLE, *from_cartesian(*p1), "north"))
                points_south.append(fixed_distance(WIDTH_HALF_ANGLE, *from_cartesian(*p1), "south"))
            points_north.reverse()
            points = to_array(points_north + points_south)

            if longitude < 180 or current_latitude > 75 or current_latitude < -75:
                color = Qt.black
            else:
                color = Qt.white
            self.polygons.append(FDAIPolygon(points, color))

    def build_ticks_at_latitude(self, latitude):
        for i in range(72):
            current_longitude = i * 5

            if current_longitude % 30 == 0:
                continue
            if current_longitude in [185, 355]:
                continue
            if latitude in [-75, 75] and current_longitude%10 != 0:
                continue

            p = to_cartesian(current_longitude, latitude)

            points_east = []
            points_west = []

            for i in range(NUMBER_OF_TICK_POINTS):
                ta = -self.tick_half_angle + i * 2 * self.tick_half_angle / (NUMBER_OF_TICK_POINTS - 1)
                if latitude == 75:
                    ta += self.tick_half_angle
                if latitude == -75:
                    ta -= self.tick_half_angle
                p1 = fixed_distance(ta, *from_cartesian(*p), "south")
                points_east.append(fixed_distance(WIDTH_HALF_ANGLE, *from_cartesian(*p1), "east"))
                points_west.append(fixed_distance(WIDTH_HALF_ANGLE, *from_cartesian(*p1), "west"))

            points_east.reverse()
            points = to_array(points_west + points_east)

            if current_longitude < 180:
                color = Qt.black
            else:
                color = Qt.white
            self.polygons.append(FDAIPolygon(points, color))

    def build_prime_ticks(self):
        pass


class FDAIData(object):
    def __init__(self):
        self.reference_points = np.empty((0, 3))
        self.polygon_sizes = []
        self.polygon_colors = []
        self.npolygons = 0

        self.black_half = True
        self.gimbal_lock = True
        self.parallels = True
        self.meridians = True
        self.numbers = True
        self.ticks = True
        self.build_data()

    def build_data(self):
        polygons = []

        if self.black_half:
            b = BlackHalf()
            polygons.extend(b.polygons)

        if self.gimbal_lock:
            g = GimbalLock()
            polygons.extend(g.polygons)

        if self.parallels:
            p = Parallel(-85, Qt.black)
            polygons.extend(p.polygons)
            p = Parallel(-75)
            polygons.extend(p.polygons)
            for i in range(5):
                latitude = -60 + i * 30
                p = Parallel(latitude)
                polygons.extend(p.polygons)
            p = Parallel(75)
            polygons.extend(p.polygons)
            p = Parallel(85, Qt.black)
            polygons.extend(p.polygons)

        if self.meridians:
            for i in range(12):
                longitude = i * 30
                m = Meridian(longitude)
                polygons.extend(m.polygons)

        if self.numbers:
            n = Numbers(NUMBER_TOLERANCE, 8)
            polygons.extend(n.polygons)

        if self.ticks:
            t = Ticks()
            polygons.extend(t.polygons)

        for polygon in polygons:
            self.reference_points = np.vstack((self.reference_points, polygon.points))
            self.polygon_sizes.append(len(polygon.points))
            self.polygon_colors.append(polygon.color)

        self.npolygons = len(polygons)

    def get_visible_polygons(self, q):
        points = quaternion.rotate_vectors(q, self.reference_points)

        polygons = []

        for i in range(self.npolygons):
            cl = ClipList(points[sum(self.polygon_sizes[:i]):sum(self.polygon_sizes[:i+1])])
            polys = cl.clip()
            for p in polys:
                polygons.append(FDAIPolygon(p, self.polygon_colors[i]))

        return polygons


class FDAIPolygon(object):
    def __init__(self, points, color):
        """Counter-clockwise orientation"""
        self.points = points
        self.color = color


def normalize(p):
    return p / np.linalg.norm(p)


def to_cartesian(longitude, latitude):
    # Using physics convention: theta is inclination, phi is azimuth
    phi = math.radians(90 - longitude)
    theta = math.radians(90 - latitude)
    x = R * math.sin(theta) * math.cos(phi)
    y = R * math.sin(theta) * math.sin(phi)
    z = R * math.cos(theta)
    return np.array([x, y, z])


def from_cartesian(x, y, z):
    r = math.sqrt(x**2 + y**2 + z**2)
    phi = math.atan2(y, x)
    theta = math.acos(z/r)
    longitude = 90 - math.degrees(phi)
    latitude = 90 - math.degrees(theta)
    return longitude, latitude


class ClipList(object):
    def __init__(self, points):
        self.head = None
        self.intersections = {"in": [], "out": []}

        # Offset points for accuracy
        points[:, 0][abs(points[:, 0]) < 1e-6] = -1e-4

        for p in points:
            self.append(p)
        self.close()
        # print("ClipList")
        # print("Number of intersections in:", len(self.intersections["in"]))
        # print("Number of intersections out:", len(self.intersections["out"]))

    def __len__(self):
        n = 1
        cur = self.head
        while cur.next and cur.next != self.head:
            n += 1
            cur = cur.next
        return n

    @property
    def tail(self):
        last = self.head
        while last.next and last.next != self.head:
            last = last.next
        return last

    def append(self, point):
        new = ClipPoint(point)
        if self.head is None:
            self.head = new
        else:
            tail = self._check_intersection(self.tail, new)
            tail.next = new

    def _check_intersection(self, cp1, cp2):
        p1 = cp1.point
        p2 = cp2.point
        if p1[0] * p2[0] >= 0:
            # No intersection
            return cp1

        # Intersection! Find it and add a ClipPoint for it
        if p1[0] < 0:
            direction = "in"
        else:
            direction = "out"

        if p1[0] > p2[0]:
            p1, p2 = p2, p1

        delta = p2 - p1
        factor = - p1[0] / (delta[0])

        i = np.array([0, p1[1] + factor * delta[1], p1[2] + factor * delta[2]])
        cp = ClipPoint(i, direction)
        cp1.next = cp

        self.intersections[direction].append(cp)

        return cp

    def close(self):
        tail = self._check_intersection(self.tail, self.head)
        tail.next = self.head

    def next_in(self, out):
        out_angle = out.angle
        min_delta = None
        next_in = None
        for i in self.intersections["in"]:
            in_angle = i.angle
            while in_angle < out_angle:
                in_angle += 360
            delta = in_angle - out_angle
            if min_delta is None or delta < min_delta:
                min_delta = delta
                next_in = i

        if next_in is None:
            print("No inbound intersection found!")
            return None
        self.intersections["in"].remove(next_in)
        return next_in

    def clip(self):
        poly_points = []
        if not self.intersections["in"]:
            if self.head.point[0] < 0:
                # Fully invisible
                return []
            else:
                # Fully visible
                points = [self.head.point]
                cur = self.head.next
                while cur != self.head:
                    points.append(cur.point)
                    cur = cur.next

                return [points]

        while self.intersections["in"]:
            points = []
            start = self.intersections["in"][0]
            #print("Start:", start.point)
            points.append(start.point)
            cur = start

            while cur.next != start:
                cur = cur.next
                points.append(cur.point)
                if cur.direction == "out":
                    #print("Out:", cur)
                    # Walk along visibility circle counter clockwise to the next intersection (in)
                    next_in = self.next_in(cur)
                    #print("Connecting to", next_in.point)
                    out_angle = cur.angle
                    in_angle = next_in.angle
                    angles = anglerange(out_angle, in_angle, DEGREE_RESOLUTION)
                    for a in angles[1:-1]:
                        p = np.array([0, R * math.cos(math.radians(a)), R * math.sin(math.radians(a))])
                        # print("Border point:", p)
                        points.append(p)
                    points.append(next_in.point)

                    if next_in == start:
                        break
                    cur = next_in

                elif cur.direction == "in":
                    # Should not occur
                    print("Encountered in before out")
                else:
                    #print("Point", cur.point)
                    pass
            #print("Points assembled:", len(points))
            poly_points.append(points)
        return poly_points


class ClipPoint(object):
    def __init__(self, point, direction=None):
        self.point = point
        self.next = None
        self.direction = direction

    @property
    def angle(self):
        return math.degrees(math.atan2(self.point[2], self.point[1]))

    def __str__(self):
        return f"ClipPoint({self.point[0]}, {self.point[1]}, {self.point[2]})"


class FDAI(QWidget):
    def __init__(self, parent, *args, **kwargs):
        super().__init__(parent, *args, **kwargs)
        self.size = 800
        self.setMinimumSize(self.size, self.size)

        self.center = QPointF(self.size/2, self.size/2)
        self.orientation = quaternion.from_rotation_vector(0 * normalize(np.array([0, 1, 1])))
        self.data = FDAIData()

    def setOrientation(self, x, y, z, angle):
        axis = normalize(np.array([x, y, z]))
        angle = math.radians(angle)
        q = quaternion.from_rotation_vector(angle * axis)
        self.orientation = q
        self.update()

    def sizeHint(self):
        return QSize(self.size + 1, self.size + 1)

    def drawScale(self, painter):
        painter.setBrush(Qt.black)
        painter.setPen(Qt.black)
        r = int(round(self.size / 2))
        painter.drawEllipse(QPointF(r, r), r, r)
        painter.setBrush(Qt.white)
        painter.drawEllipse(QPointF(r, r), r - 26, r - 26)

        painter.setPen(Qt.white)
        pen = painter.pen()
        pen.setCapStyle(Qt.FlatCap)

        for i in range(72):
            angle = math.radians(i * 5.0)
            c = math.cos(angle)
            s = math.sin(angle)
            r1 = r - 25

            if i % 18 == 0:
                pen.setWidth(8)
                painter.setPen(pen)
                r2 = r - 8
            elif i % 6 == 0:
                pen.setWidth(4)
                painter.setPen(pen)
                r2 = r - 12
            elif i % 2 == 0:
                pen.setWidth(2)
                painter.setPen(pen)
                r2 = r - 16
            else:
                pen.setWidth(2)
                painter.setPen(pen)
                r2 = r - 20

            x1 = r + c * r1
            y1 = r + s * r1
            x2 = r + c * r2
            y2 = r + s * r2

            painter.drawLine(QPointF(x1, y1), QPointF(x2, y2))

    def drawBall(self, painter):
        painter.setPen(Qt.black)
        painter.drawEllipse(self.center, BALL_SCALE * R, BALL_SCALE * R)

        painter.setBrush(Qt.black)
        painter.setPen(Qt.NoPen)

        for p in self.data.get_visible_polygons(self.orientation):
            painter.setBrush(p.color)
            painter.drawPath(self.build_path(p.points, BALL_SCALE))

    def build_path(self, points, scale=1):
        path = QPainterPath()

        if len(points) > 0:
            p0 = self.projectPointToCanvas(points[0], scale)
            path.moveTo(p0)

            for p in points[1:]:
                cp = self.projectPointToCanvas(p, scale)
                path.lineTo(cp)
            path.lineTo(p0)

        return path

    def projectPointToCanvas(self, p, scale=1):
        return self.pointToCanvas(self.projectPoint(p), scale)

    def projectPoint(self, p):
        """
        World X is out of screen
        World Y is left to right
        World Z is bottom to top
        """
        return p[1:]

    def pointToCanvas(self, p, scale=1):
        """
        Input: projected world coordinates (2D)
        Input origin is in center of canvas
        Input first coordinate is left to right
        Input second coordinate is bottom to top
        Screen X is left to right
        Screen Y is top to bottom
        """
        return QPointF(self.center.x() + scale * p[0], self.center.y() - scale * p[1])

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing, on=True)

        self.drawScale(painter)
        self.drawBall(painter)
        painter.end()

