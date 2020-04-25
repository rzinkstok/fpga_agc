import struct


DATA_FMT = '>BHH'
READ_FMT = '>BH'
DATA_FLAG = 0x80


"""
Message
- 3 or 5 bytes
- Read/write flag (1 bit)
- Group (7 bits)
- Address (16 bits)
- Data (16 bits, optional)

ReadMessage
- request data
- 3 bytes (no data bytes)

WriteMessage
- write data
- 5 bytes (includes data bytes)

ResponseMessage
- response with requested data
- 5 bytes (includes data bytes)

Sending ReadMessage:
- get group and address
- pack into message
- send

Sending WriteMessage:
- get group and address
- get values for attributes
- pack into message
- send

Receiving ResponseMessage:
- Message is received and unpacked
- Message is converted into correct Message type based on group and address
- Message signal is emitted
- All listeners receive signal
- Listeners check type, ignore when it is not a match for that listener
- Retrieve values for attributes


Needed:
- Message classes. Ideally single class per item, that can act in all three roles (Read, Write, Response)
    - attributes: group, address, data attributes
    - a data bytes pack function
    - a data bytes unpack function
    - a comparison operator

- a generic unpack function (yields group, address, data bytes)
- a mapping from group/address to Message class for received messages (created automatically from all Message descendants?)
"""


def message_classes():
    """Collect all classes inheriting from Message that are actual messages, i.e. have a group and address defined."""
    subclasses = set()
    work = [Message]
    while work:
        parent = work.pop()
        for child in parent.__subclasses__():
            if child not in subclasses:
                work.append(child)
                if child.group is not None and child.address is not None:
                    subclasses.add(child)
    return subclasses


def message_factory(msg_bytes):
    """Returns the correct message class instance, based on the group and address in the given bytes."""
    if len(msg_bytes) != struct.calcsize(DATA_FMT):
        raise RuntimeError('Cannot unpack data with unexpected length %u' % len(msg_bytes))

    group, address, data_bytes = struct.unpack(DATA_FMT, msg_bytes)

    # Subtract the value of the data flag from the group value, effectively removing the MSB
    return message_map[(group - DATA_FLAG, address)](data=data_bytes)
     

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
    address = None

    def __init__(self, data=None, **datadict):
        self.__dict__["datadict"] = {}
        if data is not None:
            self._unpack_data(data)
        elif datadict:
            for k, v in datadict.items():
                setattr(self, k, v)

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
            setattr(self, k, (data >> self.bitshift[i]) & self.mask[i])

    def __repr__(self):
        data = ""
        if self.datadict:
            data = ", ".join([f"{x}={self.datadict[x]}" for x in self.keys])
        return f"{type(self).__name__}({data})"

    def __eq__(self, other):
        return (type(self) == type(other)) and (self.datadict == other.datadict)

    def __getattr__(self, key):
        if key in self.datadict:
            return self.datadict[key]
        raise AttributeError
                      
    def __setattr__(self, key, value):
        if key in self.keys:
            self.datadict[key] = value
        else:
            raise AttributeError

    def __getitem__(self, arg):
        if isinstance(arg, slice):
            return [self.datadict[k] for k in self.keys[arg]]
        else:
            return self.datadict[self.keys[arg]]


class ControlMessage(Message):
    group = 0x20
    bitshift = (0,)
    mask = (0x0001,)


class ControlStart(ControlMessage):
    address = 0x0000


class ControlStop(ControlMessage):
    address = 0x0001
    keys = ["t12", "nisq", "s1", "s2", "w", "s_w", "s_i", "chan", "par", "i", "prog_step", "t", "s1_s2"]
    mask = tuple(0x00001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlStopCause(ControlMessage):
    address = 0x0002
    keys = ["t12", "nisq", "s1", "s2", "w", "s_w", "s_i", "chan", "par", "i", "prog_step", "t"]
    mask = tuple(0x00001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlProceed(ControlMessage):
    address = 0x0003
    keys = ["dummy"]


class ControlMNHRPT(ControlMessage):
    address = 0x0004
    keys = ["mnhrpt"]
               

class ControlMNHNC(ControlMessage):
    address = 0x0005
    keys = ["mnhnc"]


class ControlS1S(ControlMessage):
    address = 0x0006
    keys = ["s"]
    mask = ("0x0FFF",)


class ControlS1Bank(ControlMessage):
    address = 0x0007
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS1SIgnore(ControlMessage):
    address = 0x0008
    keys = ["s"]
    mask = ("0x0FFF",)


class ControlS1BankIgnore(ControlMessage):
    address = 0x0009
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS2S(ControlMessage):
    address = 0x000A
    keys = ["s"]
    mask = ("0x0FFF",)


class ControlS2Bank(ControlMessage):
    address = 0x000B
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlS2SIgnore(ControlMessage):
    address = 0x000D
    keys = ["s"]
    mask = ("0x0FFF",)


class ControlS2BankIgnore(ControlMessage):
    address = 0x000D
    keys = ["eb", "fext", "fb"]
    bitshift = (0, 4, 10)
    mask = (0x0007, 0x0007, 0x001F)


class ControlWriteW(ControlMessage):
    address = 0x000E
    keys = ['mode', 's1_s2']
    mask = (0x0007, 0x0001)
    bitshift = (0, 3)


class ControlTimeSwitches(ControlMessage):
    address = 0x000F
    keys = list(f"t{i+1:02d}" for i in range(12))
    mask = tuple(0x0001 for i in range(12))
    bitshift = tuple(i for i in range(12))


class ControlPulseSwitches(ControlMessage):
    address = 0x0010
    keys = ['a', 'l', 'q', 'z', 'rch', 'wch', 'g', 'b', 'y', 'ru', 'sp1', 'sp2']
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlWComparatorValue(ControlMessage):
    address = 0x0011
    keys = ["value"]
    mask = (0xFFFF,)


class ControlWComparatorIgnore(ControlMessage):
    address = 0x0012
    keys = ["ignore"]
    mask = (0xFFFF,)


class ControlWComparatorParity(ControlMessage):
    address = 0x0013
    keys = ["parity", "ignore"]
    mask = (0x0003, 0x0003)
    bitshift = (0, 2)


class ControlICompVal(ControlMessage):
    address = 0x0014
    keys = ["sq", "sqext", "st", "br"]
    mask = (0x003F, 0x0001, 0x0007, 0x0003)
    bitshift = (0, 6, 7, 10)


class ControlICompIgnore(ControlMessage):
    address = 0x0015
    keys = ["sq", "sqext", "st", "br"]
    mask = (0x003F, 0x0001, 0x0007, 0x0003)
    bitshift = (0, 6, 7, 10)


class ControlICompStatus(ControlMessage):
    address = 0x0016
    keys = ("iip", "inhl", "inkl", "ld", "chld", "rd", "chrd", "iip_ign", "inhl_ign", "inkl_ign", "ld_ign", "chld_ign", "rd_ign", "chrd_ign")
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class ControlNHALGA(ControlMessage):
    address = 0x0040
    keys = ["nhalga"]


class ControlSTRT1(ControlMessage):
    address = 0x0041
    keys = ["strt1"]


class ControlSTRT2(ControlMessage):
    address = 0x0042
    keys = ["strt2"]


class MonRegMessage(Message):
    group = 0x21
    bitshift = (0,)
    mask = (0xFFFF,)


class MonRegA(MonRegMessage):
    address = 0x0000
    keys = ["a"]


class MonRegL(MonRegMessage):
    address = 0x0001
    keys = ["l"]


class MonRegQ(MonRegMessage):
    address = 0x0002
    keys = ["q"]


class MonRegZ(MonRegMessage):
    address = 0x0003
    keys = ["z"]


class MonRegBB(MonRegMessage):
    address = 0x0004
    keys = ["eb", "fb"]
    bitshift = (0, 10)
    mask = (0x0007, 0x001F)


class MonRegB(MonRegMessage):
    address = 0x0005
    keys = ["b"]


class MonRegS(MonRegMessage):
    address = 0x0006
    keys = ["s"]
    mask = (0x0FFF,)


class MonRegG(MonRegMessage):
    address = 0x0007
    keys = ["g"]


class MonRegY(MonRegMessage):
    address = 0x0008
    keys = ["y"]


class MonRegU(MonRegMessage):
    address = 0x0009
    keys = ["u"]


class MonRegI(MonRegMessage):
    address = 0x000A
    keys = ["sq", "sqext", "st", "br"]
    bitshift = (0, 6, 7, 10)
    mask = (0x003F, 0x0001, 0x0007, 0x0003)


class MonRegStatus(MonRegMessage):
    address = 0x000B
    keys = ["gojam", "run", "iip", "inhl", "inkl", "outcom"]
    bitshift = (0, 1, 2, 3, 4, 5)
    mask = (0x0001, 0x0001, 0x0001, 0x0001, 0x0001, 0x0001)


class MonRegParity(MonRegMessage):
    address = 0x000C
    keys = ["g_gp", "g_sp", "w_gp", "w_sp"]
    bitshift = (0, 1, 2, 3)
    mask = (0x0001, 0x0001, 0x0001, 0x0001)


class MonRegTimePulse(MonRegMessage):
    address = 0x000D
    keys = list([f"t{i+1}" for i in range(12)])
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class MonRegW(MonRegMessage):
    address = 0x0040
    keys = ["w"]


class MonChanMessage(Message):
    group = 0x22


class MonChanFEXT(MonChanMessage):
    address = 0x0007
    keys = ["fext"]
    bitshift = (4,)
    mask = 0x0007


class StatusMessage(Message):
    group = 0x0024


class StatusAlarms(StatusMessage):
    address = 0x0000
    keys = ["vfail", "oscal", "scafl", "scdbl", "ctral", "tcal", "rptal", "pal", "fpal", "epal", "watch", "pipal", "warn"]
    mask = tuple(0x0001 for k in keys)
    bitshift = tuple(i for i in range(len(keys)))


class StatusTemp(StatusMessage):
    address = 0x0010
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


class StatusVccInt(StatusMessage):
    address = 0x0011
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


class StatusVccAux(StatusMessage):
    address = 0x0012
    keys = ["counts"]
    mask = (0x0FFF,)
    bitshift = (4,)


# Construct the message map used in the message factory
message_map = {(cls.group, cls.address): cls for cls in message_classes()}
print(message_map)


class WriteWMode:
    ALL = 0
    S = 1
    I = 2
    S_I = 3
    P = 4
    P_I = 5
    P_S = 6
