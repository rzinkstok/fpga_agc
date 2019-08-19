import os
import re

MODULES_SOURCE_FOLDER = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "agc.srcs/sources_1/new/modules/")
MODULE_RE = re.compile(r"^([a,b]\d\d?)\_")
GATE_RE = re.compile(r"NOR(\d\d\d\d\d)\(")


def read_modules():
    gates = {}
    total_gates = 0

    for filename in os.listdir(MODULES_SOURCE_FOLDER):
        filepath = os.path.join(MODULES_SOURCE_FOLDER, filename)
        res = MODULE_RE.search(filename)
        if not res:
            print(f"Invalid filename: {filename}")
            continue
        module = res.groups()[0]
        if module not in gates.keys():
            gates[module] = []
        print(f"Module {module}")
        with open(filepath, "r") as fp:
            for l in fp.readlines():
                l = l.split("//")[0]
                res = GATE_RE.search(l)
                if res:
                    gate_number = res.groups()[0]
                    #print(gate_number)
                    gates[module].append(gate_number)
        total_gates += len(gates[module])
        print(f"Number of gates: {len(gates[module])}\n")

    print(f"Total number of gates: {total_gates}\n")
    return gates


def analyze_module_gates(gates, module):
    mgates = gates[module]
    first_gate = min(mgates)
    last_gate = max(mgates)
    ranges = []
    current_range = []

    for gate in range(int(first_gate), int(last_gate) + 1):
        if f"{gate:05d}" in mgates:
            if not current_range:
                current_range.append(gate)
        else:
            if current_range:
                current_range.append(gate-1)
                ranges.append(current_range)
                current_range = []

    print(f"\nModule {module}")
    for r in ranges:
        print(f"{r[0]} - {r[1]}")

            
if __name__ == "__main__":
    gates = read_modules()
    for m in ["a1", "a2", "a3"]:
        analyze_module_gates(gates, m)

