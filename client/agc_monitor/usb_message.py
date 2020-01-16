from collections import namedtuple
import struct


DATA_FMT = '>BHH'
READ_FMT = '>BH'
DATA_FLAG = 0x80


def pack(msg):
    print("pack", msg)
    res = globals()['_pack_' + type(msg).__name__](msg)
    print(res)
    return res


WriteControlMNHRPT = namedtuple('WriteControlMNHRPT', ['mnhrpt'])
WriteControlMNHRPT.__eq__ = lambda a, b: (type(a) is type(b)) and (tuple(a) == tuple(b))

WriteControlNHALGA = namedtuple('WriteControlNHALGA', ['nhalga'])
WriteControlNHALGA.__eq__ = lambda a, b: (type(a) is type(b)) and (tuple(a) == tuple(b))


class AddressGroup(object):
    SimErasable = 0x10
    Trace = 0x25
    NASSP = 0x26
    MonReg = 0x21
    DSKY = 0x23
    Fixed = 0x01
    Status = 0x24
    MonChan = 0x22
    SimFixed = 0x11
    Channels = 0x02
    Erasable = 0x00
    Control = 0x20


class Control(object):
    Start = 0x0000
    Stop = 0x0001
    StopCause = 0x0002
    Proceed = 0x0003
    MNHRPT = 0x0004
    MNHNC = 0x0005
    S1S = 0x0006
    S1Bank = 0x0007
    S1SIgnore = 0x0008
    S1BankIgnore = 0x0009
    S2S = 0x000A
    S2Bank = 0x000B
    S2SIgnore = 0x000C
    S2BankIgnore = 0x000D
    WriteW = 0x000E
    TimeSwitches = 0x000F
    PulseSwitches = 0x0010
    WCompVal = 0x0011
    WCompIgnore = 0x0012
    WCompParity = 0x0013
    ICompVal = 0x0014
    ICompIgnore = 0x0015
    ICompStatus = 0x0016
    LoadReadS1S2 = 0x0017
    BankS = 0x0018
    AdvanceS = 0x0019
    CRSBankEnable0 = 0x001A
    CRSBankEnable1 = 0x001B
    CRSBankEnable2 = 0x001C
    CRSBankEnable3 = 0x001D
    EMSBankEnable = 0x001E
    Doscal = 0x0030
    Dbltst = 0x0031
    NHALGA = 0x0040
    STRT1 = 0x0041
    STRT2 = 0x0042
    LoadS = 0x0070
    LoadPreset = 0x0071
    LoadChan = 0x0072
    ReadS = 0x0073
    ReadPreset = 0x0074
    ReadChan = 0x0075
    StartS = 0x0076
    StartPreset = 0x0077


def _pack_ReadControlMNHRPT(msg):
    return _pack_read_msg(AddressGroup.Control, Control.MNHRPT)


def _pack_WriteControlMNHRPT(msg):
    data = 0x0000
    data |= (msg.mnhrpt & 0x0001) << 0
    return _pack_write_msg(AddressGroup.Control, Control.MNHRPT, data)


def _pack_ReadControlNHALGA(msg):
    return _pack_read_msg(AddressGroup.Control, Control.NHALGA)


def _pack_WriteControlNHALGA(msg):
    data = 0x0000
    data |= (msg.nhalga & 0x0001) << 0
    return _pack_write_msg(AddressGroup.Control, Control.NHALGA, data)


def _pack_write_msg(group, addr, data):
    return struct.pack(DATA_FMT, DATA_FLAG | group, addr, data)


def _pack_read_msg(group, addr):
    return struct.pack(READ_FMT, group, addr)