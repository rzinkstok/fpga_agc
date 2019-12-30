"""
Writes the following files:

toplevel.v
    fpga_agc.v
        tray_a.v
        tray_b.v

fpga_agc_tb.v
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
TRAY_B = []
TRAY_MODULES = TRAY_A + TRAY_B
CONNECTOR_MODULES = ["A63", "B63"]
EXTERNAL_INTERFACE_MODULES = ["A25", "A26", "A27", "A28", "A29", "A51", "A52"]


def read_module(module_file_path):
    module_file_name = os.path.split(module_file_path)[-1]
    module_name = os.path.splitext(module_file_name)[0]
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

    for m in TRAY_A + CONNECTOR_MODULES:
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


def check_fpga_agc_tb_signal(signal):
    return "internal"


def fpga_agc_tb_initial(fp):
    fp.write("\tinitial\n")
    fp.write("\tbegin\n")
    fp.write("\t\t# 5 NHALGA = 1;\n")
    fp.write("\t\t# 100000 $stop;\n")
    fp.write("\tend\n")
    fp.write("\n")

def check_toplevel_signal(signal):
    if signal in ["reset", "clk", "clk_reset", "MAMU"]:
        return "external"

    modules = get_signal_modules(signal)
    if "A52" in modules:
        return "external"
    return "internal"


def is_tray_module(module):
    m = module.split("_")[0].upper()
    letter = m[0]
    try:
        number = int(m[1:])
    except ValueError:
        return False
    m = f"{letter}{number}"
    return m in TRAY_MODULES


def write_module(module_name, folder, modules, signal_check, initial=None):
    # Collect info
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module in modules:
        params, inputs, outputs = read_module(os.path.join(folder, f"{module}.v"))
        module_params[module] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    external_inputs = []
    external_outputs = []
    internal_inputs = []
    internal_outputs = []
    cross_module_fan_ins = {}

    for i in sorted(output_wires):
        res = CROSS_MODULE_SIGNAL_RE.match(i)
        if res:
            signal = res.groups()[0]
            if signal not in cross_module_fan_ins.keys():
                cross_module_fan_ins[signal] = []
            cross_module_fan_ins[signal].append(i)
            continue

        if signal_check(i) == "external":
            external_outputs.append(i)
        else:
            if i not in external_outputs and i not in external_inputs:
                internal_outputs.append(i)

    for i in sorted(input_wires):
        if signal_check(i) == "external" and i not in external_outputs:
            external_inputs.append(i)
        else:
            if i not in external_outputs and i not in external_inputs:
                internal_inputs.append(i)

    # Cross-check internal inputs and outputs
    for i in internal_inputs:
        if i not in internal_outputs:
            print(f"Internal input {i} has no source")
    for i in internal_outputs:
        if i not in internal_inputs:
            print(f"Internal output {i} is not used")
    internal_wires = list(set(internal_inputs + internal_outputs))

    # Write output file
    if module_name.endswith("_tb"):
        filepath = os.path.join(SIM_SOURCE_FOLDER, "sim_1", "new", f"{module_name}.v")
    else:
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

        for iw in sorted(internal_inputs):
            if iw not in internal_outputs and iw not in cross_module_fan_ins.keys():
                if iw.endswith("_"):
                    val = 1
                else:
                    val = 0
                fp.write(f"\treg {iw} = {val};\n")
        fp.write("\n")

        for iw in sorted(internal_inputs):
            if iw not in internal_outputs and iw in cross_module_fan_ins.keys():
                fp.write(f"\twire {iw};\n")
        fp.write("\n")

        for iw in sorted(internal_outputs):
            fp.write(f"\twire {iw};\n")
        fp.write("\n")

        for s in sorted(cross_module_fan_ins.keys()):
            for ss in sorted(cross_module_fan_ins[s]):
                fp.write(f"\twire {ss};\n")
        fp.write("\n")

        if module_name.endswith("_tb"):
            fp.write("\talways\n")
            fp.write("\t\t# 5 clk = !clk;\n")
            fp.write("\n")

        for module in sorted(module_params.keys()):
            if is_tray_module(module):
                m = module.split("_")[0]
            else:
                m = module.replace("_", "")

            fp.write(f"\t{module} {m}(\n")
            for i, param in enumerate(module_params[module]):
                fp.write(f"\t\t{param}")
                if i != (len(module_params[module]) - 1):
                    fp.write(",")
                fp.write("\n")
            fp.write("\t);\n\n")

        for signal in sorted(cross_module_fan_ins.keys()):
            fp.write(f"\tassign {signal} = ")
            fp.write(" & ".join(sorted(cross_module_fan_ins[signal])))
            fp.write(";\n")
        fp.write("\n")

        if initial:
            initial(fp)

        fp.write("endmodule\n")
        print()
        print(f"Written {filepath}")


if __name__ == "__main__":
    modules = [os.path.splitext(x)[0] for x in sorted(os.listdir(MODULES_SOURCE_FOLDER)) if not x.startswith("a77")]
    write_module("tray_a", MODULES_SOURCE_FOLDER, modules, check_tray_a_signal)
    write_module("fpga_agc", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_signal)
    write_module("toplevel", SOURCE_FOLDER, ["fpga_agc"], check_toplevel_signal)
    write_module("fpga_agc_tb", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_tb_signal, fpga_agc_tb_initial)