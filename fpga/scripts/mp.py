from bitarray import bitarray


class Int1c(object):
    def __init__(self, value=0, negative=False, width=15):
        if isinstance(value, str):
            self._fromstring(value)
        else:
            self._width = width
            self._value = abs(value)
            self._negative = (value < 0) or negative

    def _fromstring(self, s):
        value = 0
        negative = False
        for i in range(len(s)):
            bit = int(s[i])
            if i == 0:
                negative = (bit == 1)
            else:
                if negative:
                    bit = (bit + 1) % 2
                value += bit << (len(s) - i - 1)
        self._value = value
        self._negative = negative
        self._width = len(s)

    @property
    def value(self):
        if self._negative:
            return -self._value
        return self._value

    @value.setter
    def value(self, v):
        self._value = abs(v)
        self._negative = v < 0

    def _getbit(self, i):
        if i < 1 or i > self._width:
            raise ValueError("Bit index out of range")
        bit = (self._value >> (i - 1)) & 1
        if self._negative:
            return (bit + 1) % 2
        return bit

    def _setbit(self, i, b):
        if i < 1 or i > self._width:
            raise ValueError("Bit index out of range")
        curbit = self._getbit(i)
        val = (1 << (i-1))
        if curbit and (not b):
            self._value -= val
        if (not curbit) and b:
            self._value += val

    def __int__(self):
        return self.value

    def __bool__(self):
        return bool(self._value)

    def __str__(self):
        s = ""
        for i in range(self._width, 0, -1):
            s += str(self._getbit(i))
            if i in [13, 10, 7, 4]:
                s += " "
        return s

    def __invert__(self):
        if self._negative:
            return Int1c(self._value, width=self._width)
        return Int1c(-self._value, width=self._width)

    def __getitem__(self, item):
        if isinstance(item, slice):
            if item.step not in [1, None]:
                raise ValueError("Invalid slice step")
            res = ""
            for i in range(0, self._width):
                res += str(self._getbit(i+1))
            high, low = item.start, item.stop
            if high <= low:
                raise ValueError("Big-endian slicing!")
            res = ""
            for i in range(high, low-1, -1):
                res += str(self._getbit(i))
            return res
        else:
            return str(self._getbit(item))

    def __setitem__(self, item, value):
        if isinstance(item, slice):
            if item.step not in [1, None]:
                raise ValueError("Invalid slice step")
            high, low = item.start, item.stop
            if high <= low:
                raise ValueError("Big-endian slicing!")
            if (high - low + 1) != len(value):
                raise ValueError("Incorrect number of bits supplied!")
            for i in range(high, low-1, -1):
                idx = len(value) - (i - low + 1)
                bit = int(value[idx])
                self._setbit(i, bit)
        else:
            self._setbit(item, int(value))

    def _neac_add(self, a, b):
        res = ""
        carry = 0
        for i in range(0, self._width):
            b1 = int(a[i+1])
            b2 = int(b[i+1])
            s = b1 + b2 + carry
            if s == 0:
                res = "0" + res
                carry = 0
            elif s == 1:
                res = "1" + res
                carry = 0
            elif s == 2:
                res = "0" + res
                carry = 1
            elif s == 3:
                res = "1" + res
                carry = 1
            else:
                raise RuntimeError(f"Invalid sum {s} in neac add")
        return Int1c(res, self._width), Int1c(carry, width=self._width)

    def __add__(self, other):
        res, carry = self._neac_add(self, other)
        if carry:
            res, carry = self._neac_add(res, carry)
        return res


class Register(object):
    def __init__(self, name, width=16, octal_value=None):
        self.name = name
        self.width = width
        self.clear()
        if octal_value is not None:
            self.set_octal(octal_value)

    def clear(self):
        self.value = Int1c(width=self.width)

    def __getitem__(self, item):
        return self.value[item]

    def __setitem__(self, item, value):
        self.value[item] = value

    def __str__(self):
        return f"{self.name}: {self.value}"

    def __invert__(self):
        r = Register("~"+self.name, self.width)
        r[16:1] = (~self.value)[16:1]
        return r

    def set_octal(self, val):
        s = int(val[0])
        o1 = int(val[1])
        o2 = int(val[2])
        o3 = int(val[3])
        o4 = int(val[4])
        o5 = int(val[5])
        self.value[16] = (o1 >> 2) & 1
        self.value[15] = s
        self.value[14] = (o1 >> 1) & 1
        self.value[13] = (o1 >> 0) & 1
        self.value[12] = (o2 >> 2) & 1
        self.value[11] = (o2 >> 1) & 1
        self.value[10] = (o2 >> 0) & 1
        self.value[9] = (o3 >> 2) & 1
        self.value[8] = (o3 >> 1) & 1
        self.value[7] = (o3 >> 0) & 1
        self.value[6] = (o4 >> 2) & 1
        self.value[5] = (o4 >> 1) & 1
        self.value[4] = (o4 >> 0) & 1
        self.value[3] = (o5 >> 2) & 1
        self.value[2] = (o5 >> 1) & 1
        self.value[1] = (o5 >> 0) & 1

    def get_octal(self):
        s = self.value[15]
        o1 = int(str(self.value[16]) + self.value[14:13], 2)
        o2 = int(self.value[12:10], 2)
        o3 = int(self.value[9:7], 2)
        o4 = int(self.value[6:4], 2)
        o5 = int(self.value[3:1], 2)
        return f"{s}{o1}{o2}{o3}{o4}{o5}"


class ComplementRegister(object):
    def __init__(self, name, source):
        self.name = name
        self._source = source

    @property
    def _complement(self):
        return (~self._source).value

    def __getitem__(self, item):
        return self._complement[item]

    def __str__(self):
        return f"{self.name}: {self._complement}"


class SumRegister(object):
    def __init__(self, name, x, y):
        self.name = name
        self.x = x
        self.y = y
        self.ci = 0
        self.neac = False
        self._neac_add = self.x.value._neac_add

    def carry_in(self, set=True):
        if set:
            self.ci = 1
        else:
            self.ci = 0

    def neacon(self):
        self.neac = True

    def neacof(self):
        self.neac = False

    @property
    def sum(self):
        res, carry = self._neac_add(self.x.value, self.y.value)
        if carry and self.neac == False:
            res, carry = self._neac_add(res, carry)
        if self.ci:
            res, carry = self._neac_add(res, Int1c(1, width=16))
        return res

    def __getitem__(self, item):
        return self.sum[item]

    def __str__(self):
        return f"{self.name}: {self.sum}"


class MP(object):
    def __init__(self, a, e):
        self.memory_value = e

        self.A = Register("A", octal_value=a)
        self.L = Register("L")

        self.B = Register("B")
        self.C = ComplementRegister("C", self.B)

        self.X = Register("X")
        self.Y = Register("Y")
        self.U = SumRegister("U", self.X, self.Y)

        self.G = Register("G")
        self.Z = Register("Z")
        self.BR1 = 0
        self.BR2 = 0

    def ZIP(self):
        # Clear X and Y
        self.X.clear()
        self.Y.clear()
        self.U.carry_in(False)

        # A2X
        self.X[16:1] = self.A[16:1]

        # L2GD
        self.G.clear()
        self.G[16] = self.L[16]
        self.G[15:2] = self.L[14:1]

        l15 = int(self.L[15])
        l2 = int(self.L[2])
        l1 = int(self.L[1])
        if l15 == 0 and l2 == 0 and l1 == 0:
            # WY
            pass
        elif l15 == 0 and l2 == 0 and l1 == 1:
            # RB WY
            self.Y[16:1] = self.B[16:1]
        elif l15 == 0 and l2 == 1 and l1 == 0:
            # RB WYD
            self.Y[16] = self.B[16]
            self.Y[15:2] = self.B[14:1]
            # Y[1] stays zero (NEACON)
        elif l15 == 0 and l2 == 1 and l1 == 1:
            # RC WY CI MCRO
            self.U.carry_in(True)
            self.Y[16:1] = self.C[16:1]
            self.G[1] = 1
        elif l15 == 1 and l2 == 0 and l1 == 0:
            # RB WY
            self.Y[16:1] = self.B[16:1]
        elif l15 == 1 and l2 == 0 and l1 == 1:
            # RB WYD
            self.Y[16] = self.B[16]
            self.Y[15:2] = self.B[14:1]
            # Y[1] stays zero (NEACON)
        elif l15 == 1 and l2 == 1 and l1 == 0:
            # RC WY CI MCRO
            self.U.carry_in(True)
            self.Y[16:1] = self.C[16:1]
            self.G[1] = 1
        elif l15 == 1 and l2 == 1 and l1 == 1:
            # WY MCRO
            self.G[1] = 1
        else:
            raise ValueError("Error in ZIP")

    def ZAP(self):
        # RU G2LS WALS
        # G2LS
        self.L.clear()
        self.L[16] = self.G[16]
        self.L[15] = self.G[1]
        self.L[12:1] = self.G[15:4]

        # RU WALS
        self.A.clear()
        self.A[14:1] = self.U[16:3]
        if int(self.G[1]) == 0:
            self.A[16] = self.G[16]
            self.A[15] = self.G[16]
        elif int(self.G[1]) == 1:
            self.A[16] = self.U[16]
            self.A[15] = self.U[16]
        else:
            raise ValueError("Error in ZAP")
        self.L[14:13] = self.U[2:1]

    def MP0_T01(self):
        pass

    def MP0_T02(self):
        # RSC WG
        self.G.clear()

    def MP0_T03(self):
        # RA WB TSGN
        self.B[16:1] = self.A[16:1]
        self.BR1 = int(self.A[16])

    def MP0_T04(self):
        if self.BR1 == 0:
            # RB WL
            self.L[16:1] = self.B[16:1]
        elif self.BR1 == 1:
            # RC WL
            self.L[16:1] = (~self.B)[16:1]
        else:
            raise ValueError("Error in MP0 T04")

    def MP0_T05(self):
        pass

    def MP0_T06(self):
        # Fixed strobe
        self.G.set_octal(self.memory_value)

    def MP0_T07(self):
        # RG WB TSGN2
        self.B[16:1] = self.G[16:1]
        self.BR2 = int(self.G[16])

    def MP0_T08(self):
        # RZ WS
        pass

    def MP0_T09(self):
        if self.BR1 == 0 and self.BR2 == 0:
            # RB WY
            self.Y[16:1] = self.B[16:1]
        elif self.BR1 == 0 and self.BR2 == 1:
            # RB WY CI L16
            self.Y[16:1] = self.B[16:1]
            self.U.carry_in(True)
            self.L[16] = 1
        elif self.BR1 == 1 and self.BR2 == 0:
            # RC WY CI L16
            self.Y[16:1] = self.C[16:1]
            self.U.carry_in(True)
            self.L[16] = 1
        elif self.BR1 == 1 and self.BR2 == 1:
            # RC WY
            self.Y[16:1] = self.C[16:1]
        else:
            raise ValueError("Error in MP0 T09")

    def MP0_T10(self):
        # RU WB TSGN ST1 NEACON
        self.U.neacon()
        self.B[16:1] = self.U[16:1]
        self.BR1 = int(self.U[16])

    def MP0_T11(self):
        if self.BR1 == 1:
            # WA RB1 R1C
            self.A[16:1] = "1111111111111111"
        else:
            # WA
            self.A.clear()

    def MP0_T12(self):
        pass

    def MP1_T01(self):
        self.ZIP()

    def MP1_T02(self):
        self.ZAP()

    def MP1_T03(self):
        self.ZIP()

    def MP1_T04(self):
        self.ZAP()

    def MP1_T05(self):
        self.ZIP()

    def MP1_T06(self):
        self.ZAP()

    def MP1_T07(self):
        self.ZIP()

    def MP1_T08(self):
        self.ZAP()

    def MP1_T09(self):
        self.ZIP()

    def MP1_T10(self):
        self.ZAP()

    def MP1_T11(self):
        self.ZIP()

    def MP1_T12(self):
        pass

    def MP3_T01(self):
        self.ZAP()

    def MP3_T02(self):
        self.ZIP()

    def MP3_T03(self):
        self.ZAP()

    def MP3_T04(self):
        # RSC WG
        self.G.clear()

    def MP3_T05(self):
        # RZ WY12 CI
        self.Y[12:1] = self.Z[12:1]
        self.U.carry_in(True)

    def MP3_T06(self):
        # RU WZ TL15 NEACOF
        #self.U.neacof()
        # NEACOF does not have effect untill MP3 is finished
        self.Z[16:1] = self.U[16:1]
        self.BR1 = int(self.L[15])

    def MP3_T07(self):
        if self.BR1 == 1:
            # RB WY A2X
            self.X.clear()
            self.Y.clear()
            self.U.carry_in(False)
            self.Y[16:1] = self.B[16:1]
            self.X[16:1] = self.A[16:1]

    def MP3_T08(self):
        # RAD=RG WB WS
        pass

    def MP3_T09(self):
        # RA
        pass

    def MP3_T10(self):
        # RL
        pass

    def MP3_T11(self):
        if self.BR1 == 1:
            # RU WA
            self.A[16:1] = self.U[16:1]

    def MP3_T12(self):
        self.U.neacof()

    def MP0(self):
        print()
        for i in range(12):
            self.print(f"MP0 T{i+1:02d}")
            getattr(self, f"MP0_T{i + 1:02d}")()

    def MP1(self):
        print()
        for i in range(12):
            self.print(f"MP1 T{i + 1:02d}")
            getattr(self, f"MP1_T{i + 1:02d}")()

    def MP3(self):
        print()
        for i in range(12):
            self.print(f"MP3 T{i + 1:02d}")
            getattr(self, f"MP3_T{i + 1:02d}")()
        self.print(f"MP     ")

    def print(self, s):
        print(f"{s} {self.A} {self.L} {self.X} {self.Y} {self.U} {self.B} {self.G} BR: {self.BR1}{self.BR2}")


if __name__ == "__main__":
    #m = MP("000003", "177771")
    #m = MP("177771", "000003")
    #m = MP("000003", "035671") # 131453
    #m = MP("035671", "000003")  # 131453
    m = MP("004626", "013261")
    m.MP0()
    m.MP1()
    m.MP3()
    print(m.L)

