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
    """Returns the correct message class instantiated with the given data."""
    if len(msg_bytes) != struct.calcsize(DATA_FMT):
        raise RuntimeError('Cannot unpack data with unexpected length %u' % len(msg_bytes))

    group, address, data_bytes = struct.unpack(DATA_FMT, msg_bytes)

    # Subtract the value of the data flag from the group value, effectively removing the MSB
    return message_map[(group - DATA_FLAG, address)](data=data_bytes)
     

class Message(object):
    def __init__(self, data=None, **datadict):
        self.__dict__["datadict"] = {}
        if data is not None:
            self._unpack_data(data)
        elif datadict:
            for k, v in datadict.items():
                setattr(self, k, v)

    def pack(self):
        if self.datadict:
            return struct.pack(DATA_FMT, DATA_FLAG | self.group, self.address, self._pack_data())
        else:
            return struct.pack(READ_FMT, self.group, self.address)

    def _pack_data(self):
        return (getattr(self, self.keys[0]) & 0x0001) << 0

    def _unpack_data(self, data):
        setattr(self, self.keys[0], (data >> 0) & 0x0001)

    def __repr__(self):
        if self.datadict:
            return f"{type(self).__name__}(" + ", ".join([f"{x}={self.datadict[x]}" for x in self.keys]) + ")"
        else:
            return f"{type(self).__name__}()"

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
