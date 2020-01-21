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


class ControlMessage(Message):
    group = 0x20
    bitshift = (0,)
    mask = (0x0001,)


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


# Construct the message map used in the message factory
message_map = {(cls.group, cls.address): cls for cls in message_classes()}
print(message_map)