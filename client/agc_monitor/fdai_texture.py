import PIL.Image
import numpy as np
import quaternion
import math
from PIL import Image, ImageDraw

from ms33558 import get_data, BezierPoint


R = 1.0             # Radius of the sphere in mm
LINEWIDTH = 1.5      # in points
TICKWIDTH = 0.75     # in points
MM_PER_POINT = 0.352778 / 50.0
WIDTH_HALF_ANGLE = 0.5 * LINEWIDTH * MM_PER_POINT / R
TICKWIDTH_HALF_ANGLE = 0.6 * TICKWIDTH * MM_PER_POINT / R
DEGREE_RESOLUTION = 5
NUMBER_TOLERANCE = 50
NUMBER_OF_TICK_POINTS = 3
BALL_SCALE = 7
TEXTUREMAP_SIZE = 7200, 7200
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
RED = (255, 0, 0)
LIGHT_GRAY = (174, 173, 172)


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
        points = np.zeros((4, 3))
        points[0, :] = to_cartesian(-180, 75)
        points[1, :] = to_cartesian(0, 75)
        points[2, :] = to_cartesian(0, -75)
        points[3, :] = to_cartesian(-180, -75)

        self.polygons = [FDAIPolygon(points, BLACK)]


class GimbalLock(object):
    def __init__(self):
        self.polygons = []

        # North
        points = np.zeros((4, 3))
        points[0, :] = to_cartesian(-180, 75)
        points[1, :] = to_cartesian(180, 75)
        points[2, :] = to_cartesian(180, 90)
        points[3, :] = to_cartesian(-180, 90)
        self.polygons.append(FDAIPolygon(points, RED))

        # South
        points = np.zeros((4, 3))
        points[0, :] = to_cartesian(-180, -75)
        points[1, :] = to_cartesian(180, -75)
        points[2, :] = to_cartesian(180, -90)
        points[3, :] = to_cartesian(-180, -90)
        self.polygons.append(FDAIPolygon(points, RED))


class Meridian(object):
    def __init__(self, longitude):
        # Longitude in degrees
        self.longitude = longitude
        self.polygons = []

        if self.longitude >= 0:
            points = self.build_points(-85, 85)
            self.polygons.append(FDAIPolygon(points, BLACK))
        else:
            points = self.build_points(-85, -75)
            self.polygons.append(FDAIPolygon(points, BLACK))
            points = self.build_points(-75, 75)
            self.polygons.append(FDAIPolygon(points, WHITE))
            points = self.build_points(75, 85)
            self.polygons.append(FDAIPolygon(points, BLACK))

    def build_points(self, start_latitude, stop_latitude):
        points_west = []
        points_east = []

        for current_latitude in anglerange(start_latitude, stop_latitude, DEGREE_RESOLUTION):
            if self.longitude == 180:
                points_west.append(to_cartesian(self.longitude, current_latitude))
            else:
                points_west.append(move_fixed_distance(WIDTH_HALF_ANGLE, self.longitude, current_latitude, "west"))

            if self.longitude == -180:
                points_east.append(to_cartesian(self.longitude, current_latitude))
            else:
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
        for current_longitude in anglerange(-180, 0, 180):
            points_north.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "north"))
            points_south.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "south"))

        points_south.reverse()
        pointlist = points_north + points_south

        points = np.zeros((len(pointlist), 3))
        for i in range(len(pointlist)):
            points[i, :] = pointlist[i]

        self.polygons.append(FDAIPolygon(points, color or WHITE))

        # White half
        points_north = []
        points_south = []
        for current_longitude in anglerange(0, 180, 90):
            points_north.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "north"))
            points_south.append(move_fixed_distance(0.5 * width, current_longitude, self.latitude, "south"))

        points_south.reverse()
        points = to_array(points_north + points_south)

        self.polygons.append(FDAIPolygon(points, color or BLACK))


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
            color = WHITE if longitude > 180 else BLACK
            self.project_number(30, longitude, 300, color)
            self.project_number(6, longitude, 60, color)

        for longitude in range(15, 360, 30):
            color = WHITE if longitude > 180 else BLACK
            self.project_number(33, longitude, 330, color)
            self.project_number(3, longitude, 30, color)

        # Meridians
        for longitude in range(0, 360, 30):
            color = WHITE if longitude > 180 else BLACK
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

        bgcolor = WHITE if color == BLACK else BLACK

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
                color = BLACK
            else:
                color = WHITE
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
                color = BLACK
            else:
                color = WHITE
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
            self.polygons.append(FDAIPolygon(points, BLACK))

            points = to_array(points_north_180 + points_south_180)
            self.polygons.append(FDAIPolygon(points, BLACK))

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
            color = BLACK if longitude < 180 else WHITE
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
            p = Parallel(-85, BLACK)
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
            p = Parallel(85, BLACK)
            polygons.extend(p.polygons)

        if self.meridians:
            for i in range(13):
                longitude = -180 + i * 30
                m = Meridian(longitude)
                polygons.extend(m.polygons)


        if self.numbers:
            n = Numbers(NUMBER_TOLERANCE, 8)
            polygons.extend(n.polygons)

        if self.ticks:
            t = Ticks()
            polygons.extend(t.polygons)

        # Bands around zero parallel
        p = Parallel(0, BLACK, 7.5 * WIDTH_HALF_ANGLE)
        polygons.extend(p.polygons)
        p = Parallel(math.degrees(2 * WIDTH_HALF_ANGLE), LIGHT_GRAY)
        polygons.extend(p.polygons)
        p = Parallel(math.degrees(-2 * WIDTH_HALF_ANGLE), LIGHT_GRAY)
        polygons.extend(p.polygons)

        for polygon in polygons:
            self.reference_points = np.vstack((self.reference_points, polygon.points))
            self.polygon_sizes.append(len(polygon.points))
            self.polygon_colors.append(polygon.color)

        self.npolygons = len(polygons)


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


def uvmap(points):
    u = TEXTUREMAP_SIZE[0] * (0.5 + np.arctan2(points[:, 0], points[:, 1]) / (2 * math.pi))
    v = TEXTUREMAP_SIZE[1] * (0.5 + np.arcsin(-points[:, 2]) / math.pi)

    return np.column_stack([u, v])


if __name__ == "__main__":
    if False:
        f = FDAIData()
        uvpoints = uvmap(f.reference_points)
        with Image.new("RGB", TEXTUREMAP_SIZE, (255,255,255)) as im:
            draw = ImageDraw.Draw(im)
            for i in range(f.npolygons):
                points = uvpoints[sum(f.polygon_sizes[:i]):sum(f.polygon_sizes[:i + 1])]
                draw.polygon(points.flatten().tolist(), fill=f.polygon_colors[i])

            im = im.resize((3600,3600), resample=PIL.Image.ANTIALIAS)
            im.save("fdai_texture.jpg")


    with Image.new("RGB",TEXTUREMAP_SIZE, (30, 30, 30)) as im:
        draw= ImageDraw.Draw(im)
        center = (TEXTUREMAP_SIZE[0]/2, TEXTUREMAP_SIZE[1]/2)
        for i in range(72):
            angle = i*5
            rangle = math.radians(angle)
            rotation_matrix = np.array([
                [np.cos(rangle), -np.sin(rangle)],
                [np.sin(rangle), np.cos(rangle)]
            ])
            inner_radius = 0.4
            baseheight = 0.04
            aspect = 8

            if angle%90 == 0:
                size = 0.9 * baseheight
                basepoints = np.array([[-size/2, inner_radius+size/2], [0, inner_radius + size], [size/2, inner_radius+size/2], [0, inner_radius]])

            elif angle%30 == 0:
                height = 0.75 * baseheight
                width = height/aspect
                basepoints = np.array([[-width, inner_radius], [-width, inner_radius+height], [width, inner_radius+height], [width, inner_radius]])

            elif angle%10 == 0:
                height = 0.5 * baseheight
                width = height/aspect
                basepoints = np.array(
                    [[-width, inner_radius], [-width, inner_radius + height], [width, inner_radius + height],
                     [width, inner_radius]])

            elif angle%5 == 0:
                height = 0.4 * baseheight
                width = height / aspect
                basepoints = np.array(
                    [[-width, inner_radius], [-width, inner_radius + height], [width, inner_radius + height],
                     [width, inner_radius]])

            else:
                continue


            points = np.dot(basepoints, rotation_matrix)
            for i in range(len(points)):
                points[i, 0] = TEXTUREMAP_SIZE[0] * points[i, 0] + 0.5 * TEXTUREMAP_SIZE[0]
                points[i, 1] = TEXTUREMAP_SIZE[1] * points[i, 1] + 0.5 * TEXTUREMAP_SIZE[1]

            draw.polygon(points.flatten().tolist(), fill=(255, 255, 255))
        im = im.resize((3600, 3600), resample=PIL.Image.ANTIALIAS)
        im.save("fdai_scale1.jpg")




