"""
Writes the following files:

toplevel.v
    fpga_agc.v
        tray_a.v
        tray_b.v

fpga_agc_tb.v

Tray A input/output:
    - Monitor inputs
    - Monitor outputs
    - Memory inputs
    - Memory outputs
    - Clock inputs
    - Spacecraft inputs
    - Spacecraft outputs
Tray B input/output:
    - Memory inputs
    - Memory outputs
    - Clock inputs
    - Clock outputs



"""

import os
import re
import sqlite3

DBPATH = "/home/rzinkstok/pin_inspector/delphi.db"
BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GATE_SCHEMATICS = os.path.join(BASEDIR, "gate_changes.txt")
SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new")
MODULES_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "modules")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs")

MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^A[0-9][0-9]\_[0-9]+\_(.+)")
TRAY_A = [f"A{i}" for i in range(1, 25)]
TRAY_A.append("A63")
TRAY_A.append("B63")
EXTERNAL_INTERFACE_MODULES = ["A25", "A26", "A27", "A28", "A29", "A51", "A52"]


def read_module(module_file_path):
    module_file_name = os.path.split(module_file_path)[-1]
    module_name = os.path.splitext(module_file_name)[0]
    #module = module_name.split("_")[0]
    with open(module_file_path, "r") as fp:
        lines = fp.readlines()

    print()
    print(f"Module {module_name}")

    in_module_params = False
    module_params = []
    input_wires = []
    output_wires = []

    for l in lines:
        comment = l.find("//")
        if comment >= 0:
            l = l[:comment]
        l = l.strip()

        if in_module_params:
            res = MODULE_ARGS_END_RE.search(l)
            if res:
                # Parse params
                print("Parameters:", module_params)
                in_module_params = False
            else:
                res = INPUT_WIRE_RE.search(l)
                if res:
                    l = l.rstrip(";")
                    iws = [x.strip() for x in l[11:].split(",")]
                    for iw in iws:
                        if not iw:
                            continue
                        input_wires.append(iw)
                        module_params.append(iw)

                res = OUTPUT_WIRE_RE.search(l)
                if res:
                    l = l.rstrip(";")
                    ows = [x.strip() for x in l[12:].split(",")]
                    for ow in ows:
                        if not ow:
                            continue
                        output_wires.append(ow)
                        module_params.append(ow)
            continue

        res = MODULE_ARGS_START_RE.search(l)
        if res:
            in_module_params = True
            continue

    print("Inputs:", input_wires)
    print("Outputs:", output_wires)
    return module_params, input_wires, output_wires


def write_tray_a():
    # Collect info
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module_file_name in sorted(os.listdir(MODULES_SOURCE_FOLDER)):
        if module_file_name.startswith("a77"):
            continue
        module_name = os.path.splitext(module_file_name)[0] #("_")[0]
        params, inputs, outputs = read_module(os.path.join(MODULES_SOURCE_FOLDER, module_file_name))
        module_params[module_name] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    internal_wires = []
    external_inputs = []
    external_outputs = []
    cross_module_fan_ins = {}

    for i in sorted(output_wires):
        res = CROSS_MODULE_SIGNAL_RE.match(i)
        if res:
            signal = res.groups()[0]
            if signal not in cross_module_fan_ins:
                cross_module_fan_ins[signal] = []
            cross_module_fan_ins[signal].append(i)
            continue

        if check_tray_a_signal(i) == "external":
            external_outputs.append(i)
        else:
            internal_wires.append(i)

    for i in sorted(input_wires):
        if check_tray_a_signal(i) == "external":
            if i not in external_outputs:
                external_inputs.append(i)
        else:
            if i not in internal_wires:
                if i in cross_module_fan_ins:
                    internal_wires.append(i)
                else:
                    print(f"{i} internal input not used as output")

    # Write output file
    tray_module_name = "tray_a"
    filepath = os.path.join(SOURCE_FOLDER, f"{tray_module_name}.v")

    with open(filepath, "w") as fp:
        fp.write("`timescale 1ns / 1ps\n")
        fp.write("\n")
        fp.write(f"module {tray_module_name}(\n")
        for iw in sorted(external_inputs):
            if iw not in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                fp.write(f"\tinput wire {iw},\n")
        fp.write("\n")
        for ow in sorted(external_outputs):
            fp.write(f"\toutput wire {ow},\n")
        fp.write("\n")
        s = ""
        for iw in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
            if iw in external_inputs:
                s += (f"\tinput wire {iw},\n")
        s = s[:-2]
        fp.write(s + "\n")
        fp.write(");\n")
        fp.write("\n")

        for iw in sorted(internal_wires):
            fp.write(f"\twire {iw};\n")
        fp.write("\n")

        for s in sorted(cross_module_fan_ins.keys()):
            for ss in sorted(cross_module_fan_ins[s]):
                fp.write(f"\twire {ss};\n")
        fp.write("\n")

        for module_name in sorted(module_params.keys()):
            m = module_name.split("_")[0]
            fp.write(f"\t{module_name} {m}(\n")
            for i, param in enumerate(module_params[module_name]):
                fp.write(f"\t\t{param}")
                if i != (len(module_params[module_name]) - 1):
                    fp.write(",")
                fp.write("\n")
            fp.write("\t);\n\n")

        for signal in sorted(cross_module_fan_ins.keys()):
            fp.write(f"\tassign {signal} = ")
            fp.write(" & ".join(sorted(cross_module_fan_ins[signal])))
            fp.write(";\n")
        fp.write("\n")

        fp.write("endmodule\n")
    print()
    print(f"Written {filepath}")


def write_tray_b():
    tray_module_name = "tray_b"
    filepath = os.path.join(SOURCE_FOLDER, f"{tray_module_name}.v")

    if False:
        with open(filepath, "w") as fp:
            fp.write("`timescale 1ns / 1ps\n")
            fp.write("\n")
            fp.write(f"module {tray_module_name}(\n")
            fp.write("\n")
            fp.write("endmodule\n")
        print()
        print(f"Written {filepath}")
    print(f"{filepath} not overwritten")


def decode_signal(signal):
    if "p" in signal:
        signal = signal.replace("p", "+")
    if "m" in signal:
        signal = signal.replace("m", "-")
    if signal[0] == 'n':
        signal = signal[1:]
    if signal[-1] == "_":
        signal = signal[:-1] + "/"

    return signal


def get_signal_modules(signal):
    signal = decode_signal(signal)
    db = sqlite3.connect(DBPATH)
    c = db.cursor()
    c.execute('SELECT * FROM PINS_2003100_071 WHERE NET=?', (signal,))
    return set([r[0] for r in c.fetchall()])


def check_tray_a_signal(signal):
    if signal == "MAMU":
        return "external"

    if CROSS_MODULE_SIGNAL_RE.match(signal):
        return "internal"

    if signal in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
        return "external"

    modules = get_signal_modules(signal)

    for m in TRAY_A:
        try:
            modules.remove(m)
        except KeyError:
            pass

    if not modules:
        return "internal"

    return "external"


def check_fpga_agc_signal(signal):
    if signal in ["reset", "clk", "clk_reset", "MAMU"]:
        return "external"

    modules = get_signal_modules(signal)
    for m in modules:
        if m in EXTERNAL_INTERFACE_MODULES:
            return "external"
    return "internal"



def write_fpga_agc():
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module in ["tray_a", "tray_b"]:
        params, inputs, outputs = read_module(os.path.join(SOURCE_FOLDER, f"{module}.v"))
        module_params[module] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    external_inputs = []
    external_outputs = []
    internal_wires = []


    for i in sorted(output_wires):
        if check_fpga_agc_signal(i) == "external":
            external_outputs.append(i)
        else:
            internal_wires.append(i)

    for i in sorted(input_wires):
        if check_fpga_agc_signal(i) == "external":
            if i not in external_outputs:
                external_inputs.append(i)
        else:
            if i not in internal_wires:
                print(f"{i} internal input has no output")
                internal_wires.append(i)

    print(external_inputs)
    print(external_outputs)
    print(internal_wires)

    # Write output file
    module_name = "fpga_agc"
    filepath = os.path.join(SOURCE_FOLDER, f"{module_name}.v")

    with open(filepath, "w") as fp:
        fp.write("`timescale 1ns / 1ps\n")
        fp.write("\n")
        fp.write(f"module {module_name}(\n")
        for iw in sorted(external_inputs):
            if iw not in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                fp.write(f"\tinput wire {iw},\n")
        fp.write("\n")
        for ow in sorted(external_outputs):
            fp.write(f"\toutput wire {ow},\n")
        fp.write("\n")
        s = ""
        for iw in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
            if iw in external_inputs:
                s += (f"\tinput wire {iw},\n")
        s = s[:-2]
        fp.write(s + "\n")
        fp.write(");\n")
        fp.write("\n")

        for iw in sorted(internal_wires):
            fp.write(f"\twire {iw};\n")
        fp.write("\n")

        for module_name in sorted(module_params.keys()):
            m = module_name.replace("_", "")
            fp.write(f"\t{module_name} {m}(\n")
            for i, param in enumerate(module_params[module_name]):
                fp.write(f"\t\t{param}")
                if i != (len(module_params[module_name]) - 1):
                    fp.write(",")
                fp.write("\n")
            fp.write("\t);\n\n")
        fp.write("endmodule\n")
        print()
        print(f"Written {filepath}")

if __name__ == "__main__":
    write_tray_a()
    write_tray_b()
    write_fpga_agc()
