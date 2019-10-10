import os
import re

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GATE_SCHEMATICS = os.path.join(BASEDIR, "gate_changes.txt")
MODULES_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new", "modules")

MODULE_RE = re.compile(r"^([a,b]\d\d?)\_")
GATE_RE = re.compile(r"NOR(\d\d\d\d\d)\(")
GATE_NAME_RE = re.compile(r"NOR(\d\d\d\d\d)\(NOR(\d\d\d\d\d)_out")
GATE_ARG_RE = re.compile(r"nor_(\d)\s+#\(1'b[0,1]\)\s+NOR\d\d\d\d\d\(([a-zA-Z0-9\s\,\_]+)\);")

MODULE_HEADER_RE = re.compile(r"^Module ([a,b,A,B]\d\d?)")
GATE_ADDED_RE = re.compile(r"^(\d\d\d\d\d) added")
GATE_REMOVED_RE = re.compile(r"^(\d\d\d\d\d) removed")
GATE_RANGE_RE = re.compile(r"^Gates (\d\d\d\d\d)-(\d\d\d\d\d)")


def diff(first, second):
    second = set(second)
    return [item for item in first if item not in second]


def diff_module(gates1, gates2):
    diff1 = diff(gates1, gates2)
    diff2 = diff(gates2, gates1)
    return diff1, diff2


def read_gates_from_source():
    print()
    print("Loading gates from source code")
    print("------------------------------")
    gates = {}
    total_gates = 0

    for filename in os.listdir(MODULES_SOURCE_FOLDER):
        filepath = os.path.join(MODULES_SOURCE_FOLDER, filename)
        res = MODULE_RE.search(filename)
        if not res:
            print(f"Invalid filename: {filename}")
            continue
        module = res.groups()[0].upper()
        if module not in gates.keys():
            gates[module] = []
        print()
        print(f"Module {module}")
        with open(filepath, "r") as fp:
            for l in fp.readlines():
                l = l.split("//")[0]
                res = GATE_RE.search(l)
                if res:
                    gate_number = res.groups()[0]
                    gates[module].append(gate_number)
        total_gates += len(gates[module])
        print(f"Number of gates: {len(gates[module])}")

    print()
    print(f"Total number of gates: {total_gates}")
    return gates


def read_gates_from_schematics():
    print()
    print("Loading gates from schematics")
    print("-----------------------------")
    with open(GATE_SCHEMATICS, "r") as fp:
        gates = {}
        current_module = None
        for l in fp.readlines():
            res = MODULE_HEADER_RE.search(l)
            if res:
                current_module = res.groups()[0]
                print()
                print(f"Module {current_module}")
                gates[current_module] = []
                continue
            res = GATE_RANGE_RE.search(l)
            if res:
                r1 = int(res.groups()[0])
                r2 = int(res.groups()[1]) + 1
                for i in range(r1, r2):
                    gates[current_module].append(str(i))
                print(f"Gates {r1}-{r2-1}")
                continue
            res = GATE_ADDED_RE.search(l)
            if res:
                gate = res.groups()[0]
                gates[current_module].append(gate)
                print(f"Added gate {gate}")
                continue
            res = GATE_REMOVED_RE.search(l)
            if res:
                gate = res.groups()[0]
                if gate in gates[current_module]:
                    gates[current_module].remove(gate)
                    print(f"Removed gate {gate}")
                else:
                    print(f"Gate {gate} cannot be removed from module {current_module}")
    return gates


def check_names():
    status = True
    for filename in os.listdir(MODULES_SOURCE_FOLDER):
        filepath = os.path.join(MODULES_SOURCE_FOLDER, filename)
        res = MODULE_RE.search(filename)
        if not res:
            print(f"Invalid filename: {filename}")
            continue
        module = res.groups()[0].upper()

        with open(filepath, "r") as fp:
            for l in fp.readlines():
                l = l.split("//")[0]
                res = GATE_NAME_RE.search(l)
                if res:
                    gate_number1 = res.groups()[0]
                    gate_number2 = res.groups()[1]
                    if gate_number1 != gate_number2:
                        print(f"Module {module} gate {gate_number1} output signal is named {gate_number2}")
                        status = False
    return status


def check_arguments():
    status = True
    for filename in os.listdir(MODULES_SOURCE_FOLDER):
        filepath = os.path.join(MODULES_SOURCE_FOLDER, filename)
        res = MODULE_RE.search(filename)
        if not res:
            print(f"Invalid filename: {filename}")
            continue
        module = res.groups()[0].upper()

        with open(filepath, "r") as fp:
            for l in fp.readlines():
                l = l.split("//")[0]
                res = GATE_ARG_RE.search(l);
                if res:
                    multiplicity = int(res.groups()[0])
                    args = [x.strip() for x in res.groups()[1].split(",")]
                    if len(args) != multiplicity + 2:
                        res = GATE_RE.search(l)
                        try:
                            gate_number = res.groups()[0]
                        except Exception as e:
                            print("ERROR")
                            print(l)
                            print(e)
                        print(f"Module {module} gate {gate_number} has incorrect number of arguments")
                        status = False
    return status


if __name__ == "__main__":
    import sys
    if (not check_names()) or (not check_arguments()):
        sys.exit()

    gates_schematics = read_gates_from_schematics()
    gates_source = read_gates_from_source()
    print()
    print("Comparison results")
    print("------------------")
    for m in sorted(gates_schematics.keys()):
        if m not in [f"A{i:02}" for i in range(1, 11)]:
            continue
        gsch = gates_schematics[m]
        try:
            gsrc = gates_source[m]
        except KeyError:
            print(f"Module {m} missing from source code")

        diff1, diff2 = diff_module(gsch, gsrc)
        for g in diff1:
            print(f"Gate {g} missing from source code")
        for g in diff2:
            print(f"Gate {g} missing from schematics")
