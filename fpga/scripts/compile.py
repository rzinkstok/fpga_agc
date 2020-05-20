OPCODES = {
    "INHINT": 0,
    "EXTEND": 0,
    "TC": 0,
    "TCF": 1,
    "CA": 3,
    "CAF": 3,
    "TS": 5,
    "MP": 7,
    "XCH": 5,
}

QUARTERCODES = {
    "XCH": 3,
    "TS": 2,
}


def from_octal(s):
    return int(s, 8)


CONSTANTS = {
    "OCTAL": from_octal
}


label_map = {}

LABEL_WIDTH = 18
INSTRUCTION_WIDTH = 8
OPERAND_WIDTH = 38

LABEL_START = 0
LABEL_END = LABEL_WIDTH
INSTRUCTION_START = LABEL_END + 1
INSTRUCTION_END = INSTRUCTION_START + INSTRUCTION_WIDTH
OPERAND_START = INSTRUCTION_END + 1
OPERAND_END = OPERAND_START + OPERAND_WIDTH
COMMENT_START = OPERAND_END


class Instruction(object):
    def __init__(self, line, address=None):
        self.line = line
        self.instruction = ""
        self.operand = ""
        self.label = ""
        self.tokenize()

        if self.instruction == "SETLOC":
            self.address = int(self.operand, 8)
        else:
            self.address = address

    def tokenize(self):
        self.label = self.line[LABEL_START:LABEL_END].strip()
        self.instruction = self.line[INSTRUCTION_START:INSTRUCTION_END].strip()
        self.operand = self.line[OPERAND_START:OPERAND_END].strip()
        if self.instruction == "INHINT":
            self.operand = "4"
        elif self.instruction == "EXTEND":
            self.operand = "6"

    def next_address(self):
        if self.instruction == "SETLOC":
            return self.address
        return self.address + 1

    def set_parity(self, word):
        print(f"{word:05o}")
        b = f"{word:015b}"
        print(b[0], b[1:])
        parity_bit = "0"
        if b.count("1") % 2 == 0:
            parity_bit = "1"
        b = b[0] + parity_bit + b[1:]
        print(b)
        res = int(b, 2)
        print(f"{res:05o}")
        return res

    def compile(self, label_map):
        if self.instruction in CONSTANTS:
            return self.set_parity(CONSTANTS[self.instruction](self.operand))
        try:
            opcode = OPCODES[self.instruction]
        except:
            return
        try:
            quartercode = QUARTERCODES[self.instruction]
        except KeyError:
            quartercode = None


        if self.operand in label_map:
            operand_address = label_map[self.operand]
        else:
            operand_address = int(self.operand, 8)
        if quartercode is not None:
            operand_address = (quartercode << 10) + operand_address

        res = (opcode << 12) + operand_address
        res = self.set_parity(res)
        return res

    def __str__(self):
        s = "\n"
        s += f"Instruction: {self.line}\n"
        s += f"Address: {self.address:o}\n"
        if self.label:
            s += f"Label: {self.label}\n"
        s += f"Instruction: {self.instruction}\n"
        if self.operand:
            s += f"Operand: {self.operand}\n"
        return s


def to_coe(fname, words, memsize):
    with open(fname, "w") as fp:
        fp.write("memory_initialization_radix=16;\n")
        fp.write("memory_initialization_vector=\n")

        for i in range(memsize):
            try:
                w = words[i]
                print(f"Using word {w:05o} ({w:04x}) at address {i:05o}")
            except KeyError:
                w = 0
            fp.write(f"{w:04x}")
            if i < memsize-1:
                fp.write(",\n")
            else:
                fp.write(";")


def first_pass(p):
    lines = p.split("\n")
    instructions = []
    current_address = 0
    for l in lines:
        if not l.strip():
            continue
        i = Instruction(l, current_address)
        if i.label:
            label_map[i.label] = i.address
        instructions.append(i)
        current_address = i.next_address()

    compiled_instructions = {}
    for i in instructions:
        print(i)
        compiled_instructions[i.address] = i.compile(label_map)

    to_coe("test10.coe", compiled_instructions, 36*1024)


program = """
                   SETLOC   0
A                  OCTAL    0
L                  OCTAL    0
                   SETLOC   100
TEMP1              OCTAL    0
                   SETLOC   4000
                   INHINT
                   CA       MULTIPLIER
START              TS       TEMP1
                   EXTEND
                   MP       MULTIPLICAND
                   CA       L
                   TC       START
MULTIPLICAND       OCTAL    35671
MULTIPLIER         OCTAL    00003
"""

program1 = """
                   SETLOC   4000
                   INHINT
                   CAF      GOBB
                   XCH      6
                   TCF      2072
                   SETLOC   4054
GOBB               OCTAL    24003

"""
if __name__ == "__main__":
    first_pass(program)