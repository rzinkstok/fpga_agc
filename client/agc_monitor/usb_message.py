import struct


DATA_FMT = '>BHH'
READ_FMT = '>BH'
DATA_FLAG = 0x80
MEMORY_GROUPS = [0x00, 0x01, 0x10, 0x11]

"""
Change Message so address is not a class variable anymore (or at least can be both)


Message to 

"""


def receive_message_classes():
    """Collect all classes inheriting from Message that are actual data messages, i.e. have a group and are not requests"""
    subclasses = set()
    work = [Message]
    while work:
        parent = work.pop()
        for child in parent.__subclasses__():
            if child not in subclasses:
                work.append(child)
                if child.receive:
                    subclasses.add(child)
    return subclasses


def received_message_factory(msg_bytes):
    """Returns the correct message class instance, based on the group and address in the given bytes.
    Only used for messages received by the USB interface.
    """
    if len(msg_bytes) != struct.calcsize(DATA_FMT):
        raise RuntimeError('Cannot unpack data with unexpected length %u' % len(msg_bytes))

    group, address, data_bytes = struct.unpack(DATA_FMT, msg_bytes)

    # Subtract the value of the data flag from the group value, effectively removing the MSB
    group -= DATA_FLAG

    # Remove address for memory messages
    map_address = address
    memory_address = None
    if group in MEMORY_GROUPS:
        map_address = None
        memory_address = address

    return message_map[(group, map_address)](raw_data=data_bytes, memory_address=memory_address)


class Message(object):
    """Base class for all messages.

    Class variables:
    - group: the address group for the message class
    - address: the address for the message class
    - keys: the data properties belonging to the message
    - bitshift: the bit shift values for each data property, for packing and unpacking data
    - mask: the mask values for each data property, for packing and unpacking data

    These class variables can be set and overridden anywhere in the class hierarchy.

    If the message is instantiated with arguments to the constructor, it will be a write message, else a read message.
    """
    group = None
    _address = None
    keys = ("default",)
    bitshift = (0,)
    mask = (0x0001,)
    receive = False

    def __init__(self, raw_data=None, memory_address=None, **datadict):
        if len(self.bitshift) != len(self.keys):
            self.bitshift = tuple([i for i in range(len(self.keys))])
            self.mask = tuple([0x0001 for i in range(len(self.keys))])

        self.datadict = {}
        self.memory_address = memory_address

        if raw_data is not None:
            self._unpack_data(raw_data)
        elif datadict:
            for k, v in datadict.items():
                self._set_data(k, v)

    def _set_data(self, k, v):
        if k == "address":
            self.memory_address = v
        elif k in self.keys:
            self.datadict[k] = v
        else:
            raise ValueError(f"Cannot add {k}")

    @property
    def address(self):
        if self._address is not None:
            return self._address
        return self.memory_address

    def pack(self):
        """"Returns the message bytes."""
        if self.datadict:
            return struct.pack(DATA_FMT, DATA_FLAG | self.group, self.address, self._pack_data())
        else:
            return struct.pack(READ_FMT, self.group, self.address)

    def _pack_data(self):
        """Returns the message data, ready for packing."""
        data = 0x0000
        for i, k in enumerate(self.keys):
            data |= (getattr(self, k) & self.mask[i]) << self.bitshift[i]
        return data

    def _unpack_data(self, data):
        """Extracts the message data from the unpacked bytes."""
        for i, k in enumerate(self.keys):
            v = (data >> self.bitshift[i]) & self.mask[i]
            self._set_data(k, v)

    def __repr__(self):
        data = ""
        if self.datadict:
            data = ", ".join([f"{x}={self.datadict[x]}" for x in self.keys])
        if self.memory_address is not None:
            data += f", address={self.memory_address}"
        return f"{type(self).__name__}({data})"

    def __eq__(self, other):
        return (type(self) == type(other)) and (self.datadict == other.datadict)

    def __getattr__(self, key):
        if key in self.datadict:
            return self.datadict[key]
        raise AttributeError

    def __getitem__(self, arg):
        if isinstance(arg, slice):
            return [self.datadict[k] for k in self.keys[arg]]
        else:
            return self.datadict[self.keys[arg]]


# class ErasableMessage(Message):
#     group = 0x00

class MemoryMessage(Message):
    def __lt__(self, other):
        return self.address < other.address


class ErasableData(MemoryMessage):
    group = 0x00
    receive = True
    keys = ("parity", "data")
    mask = (0x0001, 0x7fff)
    bitshift = (0, 1)


# class FixedMessage(Message):
#     group = 0x01


class FixedData(MemoryMessage):
    group = 0x01
    receive = True
    keys = ("parity", "data")
    mask = (0x0001, 0x7fff)
    bitshift = (0, 1)


# class SimErasableMessage(Message):
#     group = 0x10


class SimErasableData(MemoryMessage):
    group = 0x10
    receive = True
    keys = ("parity", "data")
    mask = (0x0001, 0x7fff)
    bitshift = (0, 1)


# class SimFixedMessage(Message):
#     group = 0x11


class SimFixedData(MemoryMessage):
    group = 0x11
    receive = True
    keys = ("parity", "data")
    mask = (0x0001, 0x7fff)
    bitshift = (0, 1)


class ControlMessage(Message):
    group = 0x20


class ControlStart(ControlMessage):
    _address = 0x0000


class ControlStop(ControlMessage):
    _address = 0x0001
    keys = ["t12", "nisq", "s1", "s2", "w", "s_w", "s_i", "chan", "par", "i", "prog_step", "s1_s2"]
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlStopCause(ControlMessage):
    receive = True
    _address = 0x0002
    keys = ["t12", "nisq", "s1", "s2", "w", "s_w", "s_i", "chan", "par", "i", "prog_step"]
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlProceed(ControlMessage):
    _address = 0x0003


class ControlMNHRPT(ControlMessage):
    _address = 0x0004
    receive = True
    keys = ["mnhrpt"]


class ControlMNHNC(ControlMessage):
    _address = 0x0005
    receive = True
    keys = ["mnhnc"]


class ControlS1S(ControlMessage):
    _address = 0x0006
    keys = ["s"]
    mask = (0x0FFF,)


class ControlS1Bank(ControlMessage):
    _address = 0x0007
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS1SIgnore(ControlMessage):
    _address = 0x0008
    keys = ["s"]
    mask = (0x0FFF,)


class ControlS1BankIgnore(ControlMessage):
    _address = 0x0009
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS2S(ControlMessage):
    _address = 0x000A
    keys = ["s"]
    mask = (0x0FFF,)


class ControlS2Bank(ControlMessage):
    _address = 0x000B
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS2SIgnore(ControlMessage):
    _address = 0x000C
    keys = ["s"]
    mask = (0x0FFF,)


class ControlS2BankIgnore(ControlMessage):
    _address = 0x000D
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlWriteW(ControlMessage):
    _address = 0x000E
    keys = ['mode', 's1_s2']
    mask = (0x0007, 0x0001)
    bitshift = (0, 3)


class ControlTimeSwitches(ControlMessage):
    _address = 0x000F
    keys = list(f"t{i+1:02d}" for i in range(12))
    mask = tuple(0x0001 for i in range(12))
    bitshift = tuple(i for i in range(12))


class ControlPulseSwitches(ControlMessage):
    _address = 0x0010
    keys = ['a', 'l', 'q', 'z', 'rch', 'wch', 'g', 'b', 'y', 'ru', 'sp1', 'sp2']
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlWComparatorValue(ControlMessage):
    _address = 0x0011
    keys = ["value"]
    mask = (0xFFFF,)


class ControlWComparatorIgnore(ControlMessage):
    _address = 0x0012
    keys = ["ignore"]
    mask = (0xFFFF,)


class ControlWComparatorParity(ControlMessage):
    _address = 0x0013
    keys = ["parity", "ignore"]
    mask = (0x0003, 0x0003)
    bitshift = (0, 2)


class ControlICompVal(ControlMessage):
    _address = 0x0014
    keys = ["sq", "sqext", "st", "br"]
    mask = (0x003F, 0x0001, 0x0007, 0x0003)
    bitshift = (0, 6, 7, 10)


class ControlICompIgnore(ControlMessage):
    _address = 0x0015
    keys = ["sq", "sqext", "st", "br"]
    mask = (0x003F, 0x0001, 0x0007, 0x0003)
    bitshift = (0, 6, 7, 10)


class ControlICompStatus(ControlMessage):
    _address = 0x0016
    keys = ("iip", "inhl", "inkl", "ld", "chld", "rd", "chrd", "iip_ign", "inhl_ign", "inkl_ign", "ld_ign", "chld_ign", "rd_ign", "chrd_ign")
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlLoadReadS1S2(ControlMessage):
    _address = 0x0017
    keys = ("load_preset", "load_channel", "read_preset", "read_channel", "start_preset")
    bitshift = (0, 1, 2, 3, 4)
    mask = (0x0001, 0x0001, 0x0001, 0x0001, 0x0001)


class ControlBankS(ControlMessage):
    _address = 0x0018
    keys = ("s_only",)


class ControlAdvanceS(ControlMessage):
    _address = 0x0019


class ControlCRSBankEnable0(ControlMessage):
    _address = 0x001A
    keys = tuple(f"f{bank:o}" for bank in range(16))


class ControlCRSBankEnable1(ControlMessage):
    _address = 0x001B
    keys = tuple(f"f{bank:o}" for bank in range(16, 32))


class ControlCRSBankEnable2(ControlMessage):
    _address = 0x001C
    keys = tuple(f"f{bank:o}" for bank in range(32, 48))


class ControlCRSBankEnable3(ControlMessage):
    _address = 0x001D
    keys = tuple(f"f{bank:o}" for bank in range(48, 64))


class ControlEMSBankEnable(ControlMessage):
    _address = 0x001E
    keys = tuple(f"e{bank:o}" for bank in range(8))


class ControlNHALGA(ControlMessage):
    _address = 0x0040
    receive = True
    keys = ["nhalga"]


class ControlSTRT1(ControlMessage):
    _address = 0x0041
    receive = True
    keys = ["strt1"]


class ControlSTRT2(ControlMessage):
    _address = 0x0042
    receive = True
    keys = ["strt2"]


class ControlNNISQSteps(ControlMessage):
    _address = 0x0060
    keys = ["n"]
    mask = (0xFFFF,)


class ControlLoadS(ControlMessage):
    _address = 0x0070


class ControlLoadPreset(ControlMessage):
    _address = 0x0071


class ControlLoadChannel(ControlMessage):
    _address = 0x0072


class ControlReadS(ControlMessage):
    _address = 0x0073


class ControlReadPreset(ControlMessage):
    _address = 0x0074


class ControlReadChannel(ControlMessage):
    _address = 0x0075


class ControlStartS(ControlMessage):
    _address = 0x0076


class ControlStartPreset(ControlMessage):
    _address = 0x0077


class MonRegMessage(Message):
    group = 0x21
    mask = (0xFFFF,)


class MonRegA(MonRegMessage):
    _address = 0x0000
    receive = True
    keys = ["a"]


class MonRegL(MonRegMessage):
    _address = 0x0001
    receive = True
    keys = ["l"]


class MonRegQ(MonRegMessage):
    _address = 0x0002
    receive = True
    keys = ["q"]


class MonRegZ(MonRegMessage):
    _address = 0x0003
    receive = True
    keys = ["z"]


class MonRegBB(MonRegMessage):
    _address = 0x0004
    receive = True
    keys = ["eb", "fb"]
    bitshift = (0, 10)
    mask = (0x0007, 0x001F)


class MonRegB(MonRegMessage):
    _address = 0x0005
    receive = True
    keys = ["b"]


class MonRegS(MonRegMessage):
    _address = 0x0006
    receive = True
    keys = ["s"]
    mask = (0x0FFF,)


class MonRegG(MonRegMessage):
    _address = 0x0007
    receive = True
    keys = ["g"]


class MonRegY(MonRegMessage):
    _address = 0x0008
    receive = True
    keys = ["y"]


class MonRegU(MonRegMessage):
    _address = 0x0009
    receive = True
    keys = ["u"]


class MonRegI(MonRegMessage):
    _address = 0x000A
    receive = True
    keys = ["sq", "sqext", "st", "br"]
    bitshift = (0, 6, 7, 10)
    mask = (0x003F, 0x0001, 0x0007, 0x0003)


class MonRegStatus(MonRegMessage):
    _address = 0x000B
    receive = True
    keys = ["gojam", "run", "iip", "inhl", "inkl", "outcom"]
    #bitshift = (0, 1, 2, 3, 4, 5)
    #mask = (0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001)


class MonRegParity(MonRegMessage):
    _address = 0x000C
    receive = True
    keys = ["g_gp", "g_sp", "w_gp", "w_sp"]
    #bitshift = (0, 1, 2, 3)
    #mask = (0x0001, 0x0001, 0x0001, 0x0001)


# class MonRegTimePulse(MonRegMessage):
#     _address = 0x000D
#     keys = list([f"t{i+1}" for i in range(12)])
#     mask = tuple(0x0001 for k in keys)
#     bitshift = tuple(i for i in range(len(keys)))


class MonRegW(MonRegMessage):
    _address = 0x0040
    receive = True
    keys = ["w"]


class MonChanMessage(Message):
    group = 0x22


class MonChanFEXT(MonChanMessage):
    _address = 0x0007
    receive = True
    keys = ["fext"]
    bitshift = (4,)
    mask = 0x0007


class DSKYMessage(Message):
    group = 0x23


class DSKYProg(DSKYMessage):
    _address = 0x0000
    receive = True
    keys = ["digit1", "digit2"]
    bitshift = (0, 5)
    mask = (0x001F, 0x001F)


class DSKYVerb(DSKYMessage):
    _address = 0x0001
    receive = True
    keys = ["digit1", "digit2"]
    bitshift = (0, 5)
    mask = (0x001F, 0x001F)


class DSKYNoun(DSKYMessage):
    _address = 0x0002
    receive = True
    keys = ["digit1", "digit2"]
    bitshift = (0, 5)
    mask = (0x001F, 0x001F)


class DSKYReg1L(DSKYMessage):
    _address = 0x0003
    receive = True
    keys = ["digit1", "digit2", "digit3"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x001F)


class DSKYReg1H(DSKYMessage):
    _address = 0x0004
    receive = True
    keys = ["digit4", "digit5", "sign"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x0003)


class DSKYReg2L(DSKYMessage):
    _address = 0x0005
    receive = True
    keys = ["digit1", "digit2", "digit3"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x001F)


class DSKYReg2H(DSKYMessage):
    _address = 0x0006
    receive = True
    keys = ["digit4", "digit5", "sign"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x0003)


class DSKYReg3L(DSKYMessage):
    _address = 0x0007
    receive = True
    keys = ["digit1", "digit2", "digit3"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x001F)


class DSKYReg3H(DSKYMessage):
    _address = 0x0008
    receive = True
    keys = ["digit4", "digit5", "sign"]
    bitshift = (0, 5, 10)
    mask = (0x001F, 0x001F, 0x0003)


class DSKYMainButton(DSKYMessage):
    _address = 0x0009
    keys = ["keycode"]
    mask = (0x001F,)


class DSKYProceed(DSKYMessage):
    _address = 0x000A
    keys = ["sbybut"]


class DSKYStatus(DSKYMessage):
    _address = 0x000B
    receive = True
    keys = ["vel", "alt", "tracker", "restart", "prog", "gimbal_lock", "temp", "prio_disp", "no_dap", "opr_err", "key_rel", "stby", "no_att", "uplink_acty", "comp_acty", "vnflash"]
    bitshift = tuple(i for i in range(len(keys)))
    mask = tuple(0x0001 for i in keys)


class DSKYNavButton(DSKYMessage):
    _address = 0x000C
    keys = ["keycode"]
    mask = (0x001F,)


class DSKYKeyRelease(DSKYMessage):
    _address = 0x000D
    keys = ["keyrst"]


class DSKYReset(DSKYMessage):
    _address = 0x000E
    keys = ["rset"]


class StatusMessage(Message):
    group = 0x24


class StatusAlarms(StatusMessage):
    _address = 0x0000
    receive = True
    keys = ["vfail", "oscal", "scafl", "scdbl", "ctral", "tcal", "rptal", "pal", "fpal", "epal", "watch", "pipal", "warn"]
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class StatusTemp(StatusMessage):
    _address = 0x0010
    receive = True
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


class StatusVccInt(StatusMessage):
    _address = 0x0011
    receive = True
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


class StatusVccAux(StatusMessage):
    _address = 0x0012
    receive = True
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


class VersionMessage(Message):
    group = 0x7f
    receive = True
    _address = 0x0000
    keys = ["version"]
    mask = (0x0FFF,)


# Construct the message map used in the message factory
keys = []
for cls in receive_message_classes():
    k = (cls.group, cls._address)
    print(cls, k)
    if k in keys:
        raise ValueError(f"Duplicate message key: {k}")
    keys.append(k)

message_map = {(cls.group, cls._address): cls for cls in receive_message_classes()}
print(message_map)


class WriteWMode:
    ALL = 0
    S   = 1
    I   = 2
    S_I = 3
    P   = 4
    P_I = 5
    P_S = 6


if __name__ == "__main__":
    m = FixedData(address=23, parity=1, data=42)
    d = m.pack()
    r = received_message_factory(d)
    print(r)
