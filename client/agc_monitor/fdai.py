import numpy as np
import quaternion
import math

from PySide2.QtWidgets import QWidget, QPushButton, QStyleOption, QStyle, QHBoxLayout, QOpenGLWidget
from PySide2.QtGui import QPixmap, QPainter, QPalette, QPen, QBrush, QColor, QPainterPath, QFont, QFontInfo
from PySide2.QtCore import Qt, QTimer, QSize, QPointF, QRectF

from ms33558 import get_data, BezierPoint


"""
Faster implementation:
- Big numpy array containing all points is calculated for the reference position, once at start of program (or maybe read from file)
- Separate info indicates consective points that form a closed polygon on the sphere, with the color.
- Order of polygons in array is the drawing order
- Update orientation:
  - Transform all points in the array at once using new orientation quaternion
  - Loop over polygons:
    - Discard if fully invisible
    - Pass on if fully visible
    - Clip if partially visible
    - Project polygon to viewing plane
    - Convert points to screen coordinates
"""

R = 350.0            # Radius of the sphere in mm
LINEWIDTH = 10       # in points
MM_PER_POINT = 0.352778
WIDTH_HALF_ANGLE = 0.5 * LINEWIDTH * MM_PER_POINT / R
DEGREE_RESOLUTION = 10


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
            p = to_cartesian(self.longitude, current_latitude)
            current_axis_longitude = self.longitude
            current_axis_latitude = current_latitude + 90
            if current_axis_latitude > 90:
                current_axis_latitude = 180 - current_axis_latitude
                current_axis_longitude = self.longitude + 180

            axis = normalize(to_cartesian(current_axis_longitude, current_axis_latitude))

            q_east = quaternion.from_rotation_vector(axis * WIDTH_HALF_ANGLE)
            p_east = quaternion.rotate_vectors(q_east, p)
            q_west = quaternion.from_rotation_vector(-axis * WIDTH_HALF_ANGLE)
            p_west = quaternion.rotate_vectors(q_west, p)
            points_west.append(p_west)
            points_east.append(p_east)

        points_west.reverse()
        pointlist = points_east + points_west

        points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            points[i, :] = pointlist[i]


        return points



class Parallel(object):
    def __init__(self, latitude, color=None):
        # Latitude in degrees
        self.latitude = latitude
        self.polygons = []

        # Black half
        points_north = []
        points_south = []
        for i in anglerange(0, 180, DEGREE_RESOLUTION):
            current_longitude = i
            p = to_cartesian(current_longitude, latitude)
            current_axis_longitude = current_longitude + 90
            current_axis_latitude = 0
            axis = normalize(to_cartesian(current_axis_longitude, current_axis_latitude))

            q_north = quaternion.from_rotation_vector(axis * WIDTH_HALF_ANGLE)
            p_north = quaternion.rotate_vectors(q_north, p)
            q_south = quaternion.from_rotation_vector(-axis * WIDTH_HALF_ANGLE)
            p_south = quaternion.rotate_vectors(q_south, p)

            points_north.append(p_north)
            points_south.append(p_south)

        points_south.reverse()
        pointlist = points_north + points_south

        points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            points[i, :] = pointlist[i]

        self.polygons.append(FDAIPolygon(points, color or Qt.black))

        # White half
        points_north = []
        points_south = []
        for i in anglerange(0, 180, DEGREE_RESOLUTION):
            current_longitude = 180 + i
            p = to_cartesian(current_longitude, latitude)
            current_axis_longitude = current_longitude + 90
            current_axis_latitude = 0
            axis = normalize(to_cartesian(current_axis_longitude, current_axis_latitude))

            q_north = quaternion.from_rotation_vector(axis * WIDTH_HALF_ANGLE)
            p_north = quaternion.rotate_vectors(q_north, p)
            q_south = quaternion.from_rotation_vector(-axis * WIDTH_HALF_ANGLE)
            p_south = quaternion.rotate_vectors(q_south, p)

            points_north.append(p_north)
            points_south.append(p_south)

        points_south.reverse()
        pointlist = points_north + points_south

        points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            points[i, :] = pointlist[i]

        self.polygons.append(FDAIPolygon(points, color or Qt.white))


class Numbers(object):
    def __init__(self, tolerance, fontsize):
        self.fontsize = fontsize # points
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
        self.project_number(3, 15, 30, Qt.black)
        self.project_number(3, 45, 30, Qt.black)
        self.project_number(3, 75, 30, Qt.black)
        self.project_number(3, 105, 30, Qt.black)
        self.project_number(3, 135, 30, Qt.black)
        self.project_number(3, 165, 30, Qt.black)
        self.project_number(3, 195, 30, Qt.white)
        self.project_number(3, 225, 30, Qt.white)
        self.project_number(3, 255, 30, Qt.white)
        self.project_number(3, 285, 30, Qt.white)
        self.project_number(3, 315, 30, Qt.white)
        self.project_number(3, 345, 30, Qt.white)

        self.project_number(33, 15, 330, Qt.black)
        self.project_number(33, 45, 330, Qt.black)
        self.project_number(33, 75, 330, Qt.black)
        self.project_number(33, 105, 330, Qt.black)
        self.project_number(33, 135, 330, Qt.black)
        self.project_number(33, 165, 330, Qt.black)
        self.project_number(33, 195, 330, Qt.white)
        self.project_number(33, 225, 330, Qt.white)
        self.project_number(33, 255, 330, Qt.white)
        self.project_number(33, 285, 330, Qt.white)
        self.project_number(33, 315, 330, Qt.white)
        self.project_number(33, 345, 330, Qt.white)

        self.project_number(30, 15, 300, Qt.black)
        self.project_number(30, 45, 300, Qt.black)
        self.project_number(30, 75, 300, Qt.black)
        self.project_number(30, 105, 300, Qt.black)
        self.project_number(30, 135, 300, Qt.black)
        self.project_number(30, 165, 300, Qt.black)
        self.project_number(30, 195, 300, Qt.white)
        self.project_number(30, 225, 300, Qt.white)
        self.project_number(30, 255, 300, Qt.white)
        self.project_number(30, 285, 300, Qt.white)
        self.project_number(30, 315, 300, Qt.white)
        self.project_number(30, 345, 300, Qt.white)

        # Meridians
        # Zero meridian should be moved into the black area with rounded corners
        self.project_number(0, 0, -45, Qt.black)
        self.project_number(0, 0, -15, Qt.black)
        self.project_number(0, 0, 15, Qt.black)
        self.project_number(0, 0, 45, Qt.black)

        self.project_number(3, 30, -45, Qt.black)
        self.project_number(3, 30, -15, Qt.black)
        self.project_number(3, 30, 15, Qt.black)
        self.project_number(3, 30, 45, Qt.black)

        self.project_number(12, 120, -45, Qt.black)
        self.project_number(12, 120, -15, Qt.black)
        self.project_number(12, 120, 15, Qt.black)
        self.project_number(12, 120, 45, Qt.black)

        self.project_number(21, 210, -45, Qt.white)
        self.project_number(21, 210, -15, Qt.white)
        self.project_number(21, 210, 15, Qt.white)
        self.project_number(21, 210, 45, Qt.white)

        self.project_number(24, 240, -45, Qt.white)
        self.project_number(24, 240, -15, Qt.white)
        self.project_number(24, 240, 15, Qt.white)
        self.project_number(24, 240, 45, Qt.white)

        self.project_number(30, 300, -45, Qt.white)
        self.project_number(30, 300, -15, Qt.white)
        self.project_number(30, 300, 15, Qt.white)
        self.project_number(30, 300, 45, Qt.white)

        self.project_number(33, 330, -45, Qt.white)
        self.project_number(33, 330, -15, Qt.white)
        self.project_number(33, 330, 15, Qt.white)
        self.project_number(33, 330, 45, Qt.white)

    def shift_number(self, digit, x, y):
        result = []
        for loop in digit:
            result.append([])
            for p in loop:
                result[-1].append(BezierPoint(p.x + x, p.y + y))
        return result

    def project_number(self, number, longitude, latitude, color):
        # We're coming from long, lat = (0, 0)
        theta = math.radians(-latitude)
        phi = math.radians(90 - longitude)
        q0 = quaternion.from_spherical_coords(theta, phi)

        # Background
        if color == Qt.black:
            bgcolor = Qt.white
        else:
            bgcolor = Qt.black

        h = 1.5 * self.digit_height
        w = 3.5 * max(self.digit_widths)
        pointlist = []
        pts = [np.array([-0.5 * w, -0.5 * h]), np.array([0.5 * w, -0.5 * h]), np.array([0.5 * w, 0.5 * h]),
               np.array([-0.5 * w, 0.5 * h])]
        for point in pts:
            axis1 = np.array([0, 0, 1])
            q1 = quaternion.from_rotation_vector(point[0] * axis1)
            axis2 = quaternion.rotate_vectors(q1, np.array([0, -1, 0]))
            q2 = quaternion.from_rotation_vector(point[1] * axis2)
            q3 = quaternion.from_rotation_vector(math.pi / 2 * np.array([1, 0, 0]))
            p = quaternion.rotate_vectors(q0 * q3 * q2 * q1, np.array([1, 0, 0]))
            pointlist.append(p)
        background_points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            background_points[i, :] = pointlist[i]
            self.polygons.append(FDAIPolygon(background_points, bgcolor))


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
                    axis1 = np.array([0, 0, 1])
                    q1 = quaternion.from_rotation_vector(point.x * axis1)
                    axis2 = quaternion.rotate_vectors(q1, np.array([0, -1, 0]))
                    q2 = quaternion.from_rotation_vector(point.y * axis2)
                    q3 = quaternion.from_rotation_vector(math.pi/2 * np.array([1, 0, 0]))
                    p = quaternion.rotate_vectors(q0 * q3 * q2 * q1, np.array([1, 0, 0]))
                    pointlist.append(p)

                if loopn > 0:
                    pointlist.reverse()

                points = np.zeros((len(pointlist), 3))
                for i in range(len(pointlist)):
                    points[i, :] = pointlist[i]

                if loopn > 0:
                    self.polygons.append(FDAIPolygon(points, bgcolor))
                else:
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
            n = Numbers(10, 60)
            polygons.extend(n.polygons)

        for polygon in polygons:
            self.reference_points = np.vstack((self.reference_points, polygon.points))
            self.polygon_sizes.append(len(polygon.points))
            self.polygon_colors.append(polygon.color)

        self.npolygons = len(polygons)

    def get_visible_polygons(self, q):
        points = quaternion.rotate_vectors(q, self.reference_points)

        polygons = []

        for i in range(self.npolygons):
            cl = ClipList(
                points[
                    sum(self.polygon_sizes[:i]):sum(self.polygon_sizes[:i+1])
                ]
            )
            #print("Number of points in clip list:", len(cl))

            polys = cl.clip()
            #print("Number of clipped polys:", len(polys))
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
    x = math.sin(theta) * math.cos(phi)
    y = math.sin(theta) * math.sin(phi)
    z = math.cos(theta)
    return np.array([x, y, z])


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
                        p = np.array([0, math.cos(math.radians(a)), math.sin(math.radians(a))])
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
        painter.drawEllipse(self.center, R, R)

        painter.setBrush(Qt.black)
        painter.setPen(Qt.NoPen)

        for p in self.data.get_visible_polygons(self.orientation):
            painter.setBrush(p.color)
            painter.drawPath(self.build_path(p.points))

    def build_path(self, points):
        path = QPainterPath()

        if len(points) > 0:
            p0 = self.projectPointToCanvas(points[0])
            path.moveTo(p0)

            for p in points[1:]:
                cp = self.projectPointToCanvas(p)
                path.lineTo(cp)
            path.lineTo(p0)

        return path

    def projectPointToCanvas(self, p):
        return self.pointToCanvas(self.projectPoint(p))

    def projectPoint(self, p):
        """
        World X is out of screen
        World Y is left to right
        World Z is bottom to top
        """
        return p[1:]

    def pointToCanvas(self, p):
        """
        Input: projected world coordinates (2D)
        Input origin is in center of canvas
        Input first coordinate is left to right
        Input second coordinate is bottom to top
        Screen X is left to right
        Screen Y is top to bottom
        """
        return QPointF(self.center.x() + R * p[0], self.center.y() - R * p[1])

    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing, on=True)

        self.drawScale(painter)
        self.drawBall(painter)
        painter.end()

