"""
S register: 12 bits (S01 - S12)
F bank: 5 bits (FB11, FB12, FB13, FB14, FB16)
E bank: 3 bits (EB9, EB10, EB11)
F extension: 3 bits (E5, E6, E7)

Erasable memory
---------------

8 banks of 256 words each
8 addresses: registers
12 addresses: special locations
29 addresses: counters

Banks 0, 1 and 2: unswitched storage
Addressed by register S without regard to the content of the E bank register, but can also be addressed with the bank register

Banks 3-7: switched storage
Addressed by register S in combination with the E bank register

S12 = 0, S11 = 0
S10 = 0, S09 = 0: bank 0
S10 = 0, S09 = 1: bank 1
S10 = 1, S09 = 0: bank 2
S10 = 1, S09 = 1: use E bank register

8 bits left for the address in the bank, so that is exactly right for 256 addresses.

S12 . . . .S01  EB  - Address - Description
0000 0000 0000  XXX - X 00000 - Bank 0, address 0 (A register)
0000 0000 0001  XXX - X 00001 - Bank 0, address 1 (L register)
...
0000 1111 1111  XXX - X 00377 - Bank 0, address 255

0001 0000 0000  XXX - X 00400 - Bank 1, address 0
...
0001 1111 1111  XXX - X 00777 - Bank 1, address 255

0010 0000 0000  XXX - X 01000 - Bank 2, address 0
...
0010 1111 1111  XXX - X 01377 - Bank 2, address 255

0011 0000 0000  000 - 0 01400 - Bank 0, address 0 (A register)
...
0011 1111 1111  000 - 0 01777 - Bank 0, address 255

0011 0000 0000  001 - 1 01400 - Bank 1, address 0
...
0011 1111 1111  001 - 1 01777 - Bank 1, address 255

0011 0000 0000  010 - 2 01400 - Bank 2, address 0
...
0011 1111 1111  010 - 2 01777 - Bank 2, address 255

0011 0000 0000  011 - 3


Fixed memory
------------

36 banks of 1024 words each (64 possible)

S12 and S11 both one or either is one
S12 = 1, S11 = 0: bank 02
S12 = 1, S11 = 1: bank 03
S12 = 0, S11 = 1: use F bank register and perhaps F extension

Given that S12 = 0  and S11 = 1:
FB16 = 0, FB14 = 0: bank 00 - 07
FB16 = 0, FB14 = 1: bank 10 - 17
FB16 = 1, FB14 = 0: bank 20 - 27
FB16 = 1, FB14 = 1: use F extension bits

Given that S12 = 0  and S11 = 1 and FB16 = 1 and FB14 = 1:
FEXT = 0XX: bank 30 - 37
FEXT = 100: bank 40 - 47
FEXT = 101: bank 50 - 57
FEXT = 110: bank 60 - 67
FEXT = 110: bank 70 - 77

10 bits left for the address in the bank, so that is exactly right for 1024 addresses.

3 ropes (R, S, T)
Each rope has two modules (LOMOD, HIMOD)
Each module has 4 planes
Each plane has 128 cores
Each core contains 12 words of 16 bits.
These 12 words per core for the whole module are the 12 strands

Inhibit lines (7 bits) select one of 128 cores in a rope module plane

Module select: rope + module (ROPER, ROPES, ROPET, LOMOD, HIMOD)
Strand select: strand (STR412, STR311, STR210, STR19, STR14, STR58, STR912)
These signals are derived from F12 - F16 and S10
F12 - F16 are derived from S11, S12, Fbank and Fext

Strand 1: STR19 + STR14
Strand 2: STR210 + STR14
Strand 3: STR311 + STR14
Strand 4: STR412 + STR14
Strand 5: STR19 + STR58
Strand 6: STR210 + STR58
Strand 7: STR311 + STR58
Strand 8: STR412 + STR58
Strand 9: STR19 + STR912
Strand 10: STR210 + STR912
Strand 11: STR311 + STR912
Strand 12: STR412 + STR912

Rope R, module 1: ROPER + LOMOD (banks 0 - 5)
Rope R, module 2: ROPER + HIMOD (banks 6 - 11)
Rope S, module 1: ROPES + LOMOD (banks 12 - 17)
Rope S, module 2: ROPES + HIMOD (banks 18 - 23)
Rope T, module 1: ROPET + LOMOD (banks 24 - 29)
Rope T, module 2: ROPET + HIMOD (banks 30 - 35)

Strand, rope and module select signals select 1 core out of 128 cores for each plane in a module.

Two set lines (SETAB, SETCD) per rope, each set line threading all cores in two planes in both modules.
Four reset lines (RESETA, RESETB, RESETC, RESETD) per rope, each reset line treading all cores in a single plane in both modules.

SETAB: S09 = 0
SETCD: S09 = 1
RESETA: S08 = 0, S09 = 0
RESETB: S08 = 1, S09 = 0
RESETC: S08 = 0, S09 = 1
RESETD: S08 = 1, S09 = 1

Inhibit lines are derived from S01 - S07

"""

import random


def bits2int(b):
    return int(b, base=2)


def int2bits(i, n=8):
    res = f"{i:b}"
    return max(0, n - len(res)) * "0" + res


def octal2int(o):
    return int(o, base=8)


def int2octal(i, n=8):
    res = f"{i:o}"
    return max(0, n - len(res)) * "0" + res


def bits2octal(b, n=8):
    return int2octal(bits2int(b), n)


def octal2bits(o, n=8):
    return int2bits(octal2int(o), n)


def get_bit(i, n):
    mask = pow(2, n-1)
    return (i & mask) >> (n-1)


def get_bits(i, n1, n2):
    b = int2bits(i, n2)
    stop = len(b) - (n1 - 1)
    start = len(b) - n2
    return b[start:stop]


def is_erasable(s):
    s12 = get_bit(s, 12)
    s11 = get_bit(s, 11)
    return s12 == 0 and s11 == 0


def is_erasable_switched(s):
    s10 = get_bit(s, 10)
    s09 = get_bit(s, 9)
    print("S09, S10:", s09, s10)
    return s10 and s09


def is_fixed_switched(s):
    s12 = get_bit(s, 12)
    s11 = get_bit(s, 11)
    return s11 == 1 and s12 == 0


def address(s, ebank=0, fbank=0, ext=0):
    if is_erasable(s):
        return erasable(s, ebank)
    else:
        return fixed(s, fbank, ext)


def erasable(s, ebank=0):
    if is_erasable_switched(s):
        print("Switched erasable")
        bank = int2bits(ebank, 3)
    else:
        print("Unswitched erasable")
        bank = get_bits(s, 9, 10)
    address = get_bits(s, 1, 8)

    print("Bank:", bank)
    print("Address:", address)

    print(xbottom(s))
    print(xtop(s))
    print(ybottom(s))
    print(ytop(s, ebank))


def fixed(s, fbank, ext=0):
    if is_fixed_switched(s):
        print("Variable fixed")
        bank = int2bits(fbank, 5)
    else:
        print("Fixed fixed")
        bank = get_bits(s, 11, 12)
    address = get_bits(s, 1, 10)

    print("Bank:", bank)
    print("Address:", address)

    print("F:", int2bits(f(s, fbank, ext), 6))


def xbottom(s):
    return "XB{}".format(int(get_bits(s, 1, 3), 2))


def xtop(s):
    return "XT{}".format(int(get_bits(s, 4, 6), 2))


def ybottom(s):
    return "YB{}".format(int(get_bits(s, 7, 8), 2))


def ytop(s, ebank):
    """
    EAD09, EAD10, EAD11
    S09, S10, EB9, EB10, EB11

    S10 = 0, S09 = 0: always 000
    S10 = 0, S09 = 1: always 001
    S10 = 1, S09 = 0: always 010
    S10 = 1, S09 = 1: contents of EB9, EB10, EB11

    So this follows erasable bank logic.
    """
    s09 = get_bit(s, 9)
    s10 = get_bit(s, 10)

    if s09 and s10:
        return f"YT{ebank}"
    else:
        ytop = int(f"{s10}{s09}", 2)
        return f"YT{ytop}"


def rope():
    pass


def module():
    pass


def strand(f, s10):
    pass


def f(s, fbank, ext):
    s11 = get_bit(s, 11)
    s12 = get_bit(s, 12)
    if s11 and not s12:
        fb14 = get_bit(fbank, 4)
        fb16 = get_bit(fbank, 5)
        if fb14 and fb16:
            if ext < 4:
                return fbank
            return (fbank & 7) + (ext << 3)
        else:
            return fbank
    else:
        return int(get_bits(s, 11, 12), 2)


while True:
    s = random.randint(0, 4095)
    ebank = random.randint(0, 7)
    fbank = random.randint(0, 31)
    ext = random.randint(0, 7)

    if get_bits(s, 9, 12) != "0111":
        continue
    if get_bits(fbank, 4, 5) != "11":
        continue
    if ext < 4:
        continue

    print()
    print("S:", int2bits(s, 12))
    print("Ebank:", int2bits(ebank, 3))
    print("Fbank:", int2bits(fbank, 5))
    print("Ext:", int2bits(ext, 3))
    address(s, ebank, fbank, ext)
    break
