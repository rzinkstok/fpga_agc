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


def message_factory(msg_bytes):
    if len(msg_bytes) != struct.calcsize(DATA_FMT):
        raise RuntimeError('Cannot unpack data with unexpected length %u' % len(msg_bytes))
    group, address, data_bytes = struct.unpack(DATA_FMT, msg_bytes)

    return message_map[(group - DATA_FLAG, address)](data=data_bytes)
     

class Message(object):
    def __init__(self, data=None, **datadict):
        self.datadict = {}
        if data is not None:
            self.unpack_data(data)
        elif datadict:    
            self.datadict = datadict
        else:
            self.unpack_data(0)
                                                                
    def pack(self):
        if self.datadict:
            return struct.pack(DATA_FMT, DATA_FLAG | self.group, self.address, self.pack_data())
        else:
            return struct.pack(READ_FMT, self.group, self.address)

    def pack_data(self):
        return (getattr(self, self.keys[0]) & 0x0001) << 0

    def unpack_data(self, data):
        setattr(self, self.keys[0], (data >> 0) & 0x0001)

    def __repr__(self):
        return f"{type(self).__name__}(" + ", ".join([f"{x}={self.datadict[x]}" for x in self.keys]) + ")"

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
            super().__setattr__(key, value)


class ControlMessage(Message):
    group = 0x20


class MonRegMessage(Message):
    group = 0x21


class ControlMNHRPT(ControlMessage):
    address = 0x0004
    keys = ["mnhrpt"]
               

class ControlMNHNC(ControlMessage):
    address = 0x0005
    keys = ["mnhnc"]


class ControlNHALGA(ControlMessage):
    address = 0x0040
    keys = ["nhalga"]


class ControlSTRT1(ControlMessage):
    address = 0x0041
    keys = ["strt1"]


class ControlSTRT2(ControlMessage):
    address = 0x0042
    keys = ["strt2"]


# Collect all messages into a dictionary
subsubclasses = [item for sublist in [sc.__subclasses__() for sc in Message.__subclasses__()] for item in sublist]
message_map = {(cls.group, cls.address): cls for cls in subsubclasses}
print(message_map)


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
