import numpy as np
import quaternion
import math

from PySide2.QtWidgets import QWidget, QPushButton, QStyleOption, QStyle, QHBoxLayout, QOpenGLWidget
from PySide2.QtGui import QPixmap, QPainter, QPalette, QPen, QBrush, QColor, QPainterPath, QFont, QFontInfo
from PySide2.QtCore import Qt, QTimer, QSize, QPointF, QRectF

from ms33558 import get_data, BezierPoint


R = 50.0             # Radius of the sphere in mm
LINEWIDTH = 1.5      # in points
TICKWIDTH = 0.75     # in points
MM_PER_POINT = 0.352778
WIDTH_HALF_ANGLE = 0.5 * LINEWIDTH * MM_PER_POINT / R
TICKWIDTH_HALF_ANGLE = 0.6 * TICKWIDTH * MM_PER_POINT / R
DEGREE_RESOLUTION = 5
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


def move_fixed_distance(angle, longitude, latitude, direction):
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


def move_along_parallel(angle, longitude, latitude, direction):
    start_point = to_cartesian(longitude, latitude)
    axis = np.array([0, 0, -1])
    if direction == "east":
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
            points_west.append(move_fixed_distance(WIDTH_HALF_ANGLE, self.longitude, current_latitude, "west"))
            points_east.append(move_fixed_distance(WIDTH_HALF_ANGLE, self.longitude, current_latitude, "east"))

        points_west.reverse()
        return to_array(points_east + points_west)


class Parallel(object):
    def __init__(self, latitude, color=None, width=None):
        # Latitude in degrees
        self.latitude = latitude
        self.polygons = []
        if width is None:
            width = 2 * WIDTH_HALF_ANGLE

        # Black half
        points_north = []
        points_south = []
        for current_longitude in anglerange(0, 180, DEGREE_RESOLUTION):
            points_north.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "north"))
            points_south.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "south"))

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
            points_north.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "north"))
            points_south.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "south"))

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

    def build_background(self, q, offset, bgcolor):
        w = 1.3 * self.digit_height
        h = 2.25 * max(self.digit_widths)

        pointlist = []
        corner_radius = w / 3
        n_corner_points = 5

        cornerdata = []
        for i in range(2 * n_corner_points+1):
            angle = -math.pi / 2.0 + math.pi * i / (2 * n_corner_points)
            cornerdata.append(np.array([corner_radius * math.cos(angle), corner_radius * math.sin(angle)]))

        pts = []

        # Left
        pts.append(np.array([-0.5 * w, 0]))
        # Lower left
        pts.append(np.array([-0.5 * w, -0.5 * h]))
        # Bottom
        pts.append(np.array([0, -0.5 * h]))

        # Lower right
        if offset:
            for p in cornerdata[:n_corner_points+1]:
                x = p[0] + (w / 2 - corner_radius)
                y = p[1] - (h / 2 - corner_radius)
                pts.append(np.array([x, y]))
        else:
            pts.append(np.array([0.5 * w, -0.5 * h]))

        # Right
        pts.append(np.array([0.5 * w, 0]))

        # Upper right
        if offset:
            for p in cornerdata[n_corner_points:]:
                x = p[0] + (w / 2 - corner_radius)
                y = p[1] + (h / 2 - corner_radius)
                pts.append(np.array([x, y]))
        else:
            pts.append(np.array([0.5 * w, 0.5 * h]))

        # Top
        pts.append(np.array([0, 0.5 * h]))

        # Upper left
        pts.append(np.array([-0.5 * w, 0.5 * h]))

        for point in pts:
            # rotate the offset background shape 180 degrees if needed
            if offset == "east":
                 point = -point

            p1 = move_fixed_distance(point[1], 0, 0, "north")
            delta_x = point[0]

            # shift the shape for offset
            if offset == "east":
                delta_x -= WIDTH_HALF_ANGLE + 0.5 * w
            if offset == "west":
                delta_x += WIDTH_HALF_ANGLE + 0.5 * w

            p2 = move_fixed_distance(delta_x, *from_cartesian(*p1), "west")
            p = quaternion.rotate_vectors(q, p2)
            pointlist.append(p)

        pointlist.reverse()
        background_points = to_array(pointlist)
        self.polygons.append(FDAIPolygon(background_points, bgcolor))

        return 0.5 * w

    def shift_number(self, digit, x, y):
        result = []
        for loop in digit:
            result.append([])
            for p in loop:
                result[-1].append(BezierPoint(p.x + x, p.y + y))
        return result

    def project_number(self, number, longitude, latitude, color):
        offset = False
        if longitude == 0:
            offset = "east"
        elif longitude == 180:
            offset = "west"

        bgcolor = Qt.white if color == Qt.black else Qt.black

        current_digits = [int(d) for d in str(number)]
        current_full_width = sum([self.digit_widths[i] for i in current_digits]) - self.digit_right_kerns[current_digits[-1]]

        # Shift all numbers to the correct position
        shifted_digits = []
        xshift = -0.5 * current_full_width
        yshift = - 0.5 * self.digit_height

        for d in current_digits:
            digit = self.shift_number(self.digits[d], xshift, yshift)
            shifted_digits.append(digit)
            xshift += self.digit_widths[d]

        # Put number on its side
        q1 = quaternion.from_rotation_vector(math.pi/2 * np.array([0, 1, 0]))


        # # Shift to latitude
        q2 = quaternion.from_rotation_vector(math.radians(latitude) * np.array([1, 0, 0]))
        # Shift to longitude
        q3 = quaternion.from_rotation_vector(-math.radians(longitude) * np.array([0, 0, 1]))
        q = q3 * q2 * q1

        # Build background
        offset_value = self.build_background(q3 * q2, offset, bgcolor)

        for d in shifted_digits:
            for loopn, loop in enumerate(d):
                pointlist = []
                for point in loop:
                    # Start at 0 longitude, 0 latitude and move to point coordinates
                    p1 = move_fixed_distance(point.x, 0, 0, "east")

                    delta_y = point.y
                    if offset == "east":
                        delta_y -= WIDTH_HALF_ANGLE + offset_value
                    elif offset == "west":
                        delta_y += WIDTH_HALF_ANGLE + offset_value

                    p2 = move_fixed_distance(delta_y, *from_cartesian(*p1), "north")

                    # Shift to position
                    p4 = quaternion.rotate_vectors(q, p2)

                    pointlist.append(p4)

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

            points_north = []
            points_south = []
            current_tick_half_angle = self.tick_half_angle / math.cos(math.radians(current_latitude))

            for i in range(NUMBER_OF_TICK_POINTS):
                ta = -current_tick_half_angle + i * 2 * current_tick_half_angle / (NUMBER_OF_TICK_POINTS - 1)
                p1 = move_along_parallel(ta, longitude, current_latitude, "east")
                points_north.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "north"))
                points_south.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "south"))
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
                p1 = move_fixed_distance(ta, *from_cartesian(*p), "south")
                points_east.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "east"))
                points_west.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "west"))

            points_east.reverse()
            points = to_array(points_west + points_east)

            if current_longitude < 180:
                color = Qt.black
            else:
                color = Qt.white
            self.polygons.append(FDAIPolygon(points, color))

    def build_prime_ticks(self):
        prime_tick_half_angle = 1.4 * self.tick_half_angle

        # Prime meridian
        for i in range(149):
            latitude = -74 + i
            if latitude % 30 == 0:
                continue

            points_north_0 = []
            points_south_0 = []
            points_north_180 = []
            points_south_180 = []

            current_tick_half_angle = 0.5*prime_tick_half_angle / math.cos(math.radians(latitude))

            if latitude % 10 == 0:
                current_tick_half_angle *= 2
            elif latitude % 5 == 0:
                current_tick_half_angle *= 1.5

            for j in range(NUMBER_OF_TICK_POINTS):
                ta = j * 2 * current_tick_half_angle / (NUMBER_OF_TICK_POINTS - 1)
                p1 = move_along_parallel(ta, 0, latitude, "west")
                points_north_0.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "north"))
                points_south_0.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "south"))

                p1 = move_along_parallel(ta, 180, latitude, "east")
                points_north_180.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "north"))
                points_south_180.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "south"))

            points_south_0.reverse()
            points_north_180.reverse()

            points = to_array(points_south_0 + points_north_0)
            self.polygons.append(FDAIPolygon(points, Qt.black))

            points = to_array(points_north_180 + points_south_180)
            self.polygons.append(FDAIPolygon(points, Qt.black))

        # Prime parallel
        for i in range(359):
            longitude = i + 1
            if longitude % 30 == 0:
                continue

            points_east = []
            points_west = []

            current_tick_angle = 2 * prime_tick_half_angle

            if longitude % 10 == 0:
                current_tick_angle *= 2
            elif longitude % 5 == 0:
                current_tick_angle *= 1.5

            current_tick_angle += 7.5 * WIDTH_HALF_ANGLE

            for j in range(NUMBER_OF_TICK_POINTS):
                ta = - 0.5 * current_tick_angle + j * current_tick_angle / (NUMBER_OF_TICK_POINTS - 1)
                p1 = move_fixed_distance(ta, longitude, 0, "north")
                points_east.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "east"))
                points_west.append(move_fixed_distance(TICKWIDTH_HALF_ANGLE, *from_cartesian(*p1), "west"))

            points_west.reverse()
            points = to_array(points_east + points_west)
            color = Qt.black if longitude < 180 else Qt.white
            self.polygons.append(FDAIPolygon(points, color))


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
                if latitude == 0:
                    continue
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

        # Bands around zero parallel
        p = Parallel(0, Qt.black, 7.5 * WIDTH_HALF_ANGLE)
        polygons.extend(p.polygons)
        p = Parallel(math.degrees(2 * WIDTH_HALF_ANGLE), Qt.lightGray)
        polygons.extend(p.polygons)
        p = Parallel(math.degrees(-2 * WIDTH_HALF_ANGLE), Qt.lightGray)
        polygons.extend(p.polygons)

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
            points.append(start.point)
            cur = start

            while cur.next != start:
                cur = cur.next
                points.append(cur.point)
                if cur.direction == "out":
                    # Walk along visibility circle counter clockwise to the next intersection (in)
                    next_in = self.next_in(cur)
                    out_angle = cur.angle
                    in_angle = next_in.angle
                    angles = anglerange(out_angle, in_angle, DEGREE_RESOLUTION)
                    for a in angles[1:-1]:
                        p = np.array([0, R * math.cos(math.radians(a)), R * math.sin(math.radians(a))])
                        points.append(p)
                    points.append(next_in.point)

                    if next_in == start:
                        break
                    cur = next_in

                elif cur.direction == "in":
                    # Should not occur
                    print("Encountered in before out")
                else:
                    pass
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
        """Should take IMU X, Y and Z angles"""
        axis = normalize(np.array([x, y, z]))
        angle = math.radians(angle)
        q = quaternion.from_rotation_vector(angle * axis)
        self.orientation = q
        self.update()

    def setRates(self, roll, pitch, yaw):
        """Takes omegas for roll, pitch and yaw"""
        pass

    def setErrorNeedles(self, error_x, error_y, error_z):
        pass

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


def setOrientation(imux, imuy, imuz):
    oga = math.radians(imux)  # Outer gimbal axis/angle
    iga = math.radians(imuy)  # Inner gimbal axis
    mga = math.radians(imuz)  # Middle gimbal axis

    sinog = math.sin(oga)
    sinig = math.sin(iga)
    sinmg = math.sin(mga)
    cosog = math.cos(oga)
    cosig = math.cos(iga)
    cosmg = math.cos(mga)

    t12 = sinmg
    t22 = cosmg * cosog
    t31 = cosig * sinmg * sinog + sinig * cosog
    t32 = -cosmg * sinog
    t33 = -sinig * sinmg * sinog + cosig * cosog

    roll = math.atan2(t12, t22)
    if roll < -2 * math.pi:
        roll += 2 * math.pi
    if roll >= 2 * math.pi:
        roll -= 2 * math.pi

    pitch = math.atan2(t31, t33)
    if pitch < -2 * math.pi:
        pitch += 2 * math.pi
    if pitch >= 2 * math.pi:
        pitch -= 2 * math.pi

    yaw = math.asin(t32)
    if yaw < -2 * math.pi:
        yaw += 2 * math.pi
    if yaw >= 2 * math.pi:
        yaw -= 2 * math.pi

    fdaix_angle = - math.degrees(yaw)
    """
    x = -math.degrees(yaw)
      = -math.degrees(math.asin(t32))
      = -math.degrees(math.asin(-1 * cosmg * sinog))
    y = math.degrees(pitch)
      = math.degrees(math.atan2(t31, t33))
      = math.degrees(math.atan2(cosig * sinmg * sinog + sinig * cosog, -1 * sinig * sinmg * sinog + cosig * cosog))
    """

    fdaiy_angle = math.degrees(pitch)
    fdaiz_angle = math.degrees(roll)

    return fdaix_angle, fdaiy_angle, fdaiz_angle