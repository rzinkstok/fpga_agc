from PIL import Image, ImageDraw


class BezierPoint(object):
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __add__(self, other):
        return BezierPoint(self.x + other.x, self.y + other.y)

    def __rmul__(self, c):
        return BezierPoint(c * self.x, c * self.y)

    def __str__(self):
        return f"({self.x}, {self.y})"

    __repr__ = __str__


def midpoint(a, b):
    return 0.5 * (a + b)


class BezierCurve(object):
    def __init__(self, b0, b1, b2, b3):
        self.b0 = b0
        self.b1 = b1
        self.b2 = b2
        self.b3 = b3

    def flat(self, tol):
        if self.b1 is None:
            return True

        ux = pow(3.0 * self.b1.x - 2.0 * self.b0.x - self.b3.x, 2)
        uy = pow(3.0 * self.b1.y - 2.0 * self.b0.y - self.b3.y, 2)

        vx = pow(3.0 * self.b2.x - 2.0 * self.b3.x - self.b0.x, 2)
        vy = pow(3.0 * self.b2.y - 2.0 * self.b3.y - self.b0.y, 2)

        if ux < vx:
            ux = vx
        if uy < vy:
            uy = vy

        return ux + uy <= 16 * tol**2

    def split(self):
        l0 = self.b0
        l1 = midpoint(self.b0, self.b1)
        m = midpoint(self.b1, self.b2)
        r2 = midpoint(self.b2, self.b3)
        r3 = self.b3
        l2 = midpoint(l1, m)
        r1 = midpoint(m, r2)
        l3 = midpoint(l2, r1)
        r0 = l3
        return BezierCurve(l0, l1, l2, l3), BezierCurve(r0, r1, r2, r3)

    def flatten(self, tol):
        if self.flat(tol):
            return [self.b0, self.b3]
        else:
            l, r = self.split()
            lpts = l.flatten(tol)
            rpts = r.flatten(tol)
            return lpts + rpts[1:]


class MS33558Figure(object):
    def __init__(self, number, left_kern, width, right_kern):
        self.number = number
        self.width = width
        self.left_kern = left_kern
        self.right_kern = right_kern
        self.nloops = 0
        self.loops = []

    @property
    def height(self):
        height = 0
        la = self.linear_approximation(1)
        for l in la:
            for p in l:
                height = max(p.y, height)
        return height

    def end_loop(self):
        self.nloops += 1

    def add_curve(self, b):
        if len(self.loops) == self.nloops:
            self.loops.append([])
        self.loops[self.nloops].append(b)

    def linear_approximation(self, tol, scale=1.0):
        loops = []
        for l in self.loops:
            loops.append([])
            for b in l:
                points = b.flatten(tol)
                for p in points[:-1]:
                    loops[-1].append(scale*p)
        return loops


def create_curve(previous_data, data):
    b0 = BezierPoint(previous_data[0], previous_data[1])
    if len(previous_data) > 2:
        b1 = BezierPoint(previous_data[2], previous_data[3])
        b2 = BezierPoint(previous_data[4], previous_data[5])
    else:
        b1 = None
        b2 = None
    b3 = BezierPoint(data[0], data[1])
    return BezierCurve(b0, b1, b2, b3)


def get_data():
    figures = {}

    with open("ms33558.dat", "r") as fp:
        lines = fp.readlines()

    current_figure = None
    first_data = None
    previous_data = None

    for l in lines:
        if not l.strip():
            continue
        if l.startswith("start"):
            # Start figure
            parts = [int(x) for x in l.split()[1:]]
            current_figure = MS33558Figure(*parts)
            continue
        if l.startswith("end") or l.startswith("next"):
            # Close previous loop
            current_figure.add_curve(create_curve(previous_data, first_data))
            current_figure.end_loop()
            previous_data = None
            first_data = None
            if l.startswith("end"):
                figures[current_figure.number] = current_figure
            continue

        data = [int(x) for x in l.split()]
        if previous_data is None:
            first_data = data
        else:
            current_figure.add_curve(create_curve(previous_data, data))
        previous_data = data

    return figures


if __name__ == "__main__":
    figures = get_data()
    for f in figures.values():
        print(f.height)

    f = figures[9]
    la = f.linear_approximation(1)


    img = Image.new("RGB", (3000, 3000), "white")
    img1 = ImageDraw.Draw(img)

    for l in la:
        xy = [(p.x+100, 3000 - (p.y+100)) for p in l]
        img1.polygon(xy, outline="black", fill="black")

    img.show()