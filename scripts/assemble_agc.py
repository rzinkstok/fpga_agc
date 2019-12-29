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


def read_module(module_file_name):
    module_name = os.path.splitext(module_file_name)[0]
    module = module_name.split("_")[0]
    with open(os.path.join(MODULES_SOURCE_FOLDER, module_file_name), "r") as fp:
        lines = fp.readlines()

    print()
    print(f"Module {module}")

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
    return module_name, module_params, input_wires, output_wires


def write_tray_a(module_params, input_wires, output_wires, sim_name=None, sim_code=None):
    wrapper_name = "tray_a"
    filepath = os.path.join(SOURCE_FOLDER, f"{wrapper_name}.v")

    cross_module_signals = {}
    extra_output_wires = []
    for ow in sorted(output_wires):
        res = CROSS_MODULE_SIGNAL_RE.search(ow)
        if res:
            signal = res.groups()[0]
            if signal not in cross_module_signals:
                cross_module_signals[signal] = []
                if signal in input_wires:
                    input_wires.remove(signal)
                if (signal not in output_wires) and (signal not in input_wires):
                    extra_output_wires.append(signal)
            cross_module_signals[signal].append(ow)
    output_wires.update(extra_output_wires)

    with open(filepath, "w") as fp:
        fp.write("`timescale 1ns / 1ps\n")
        fp.write("\n")
        fp.write(f"module {wrapper_name}(")

        fp.write(");\n")
        fp.write("\n")

        for iw in sorted(input_wires):
            if iw not in output_wires:
                if iw.endswith("_") or iw in ["prop_clk", "p4VDC", "p4SW"]:
                    val = 1
                else:
                    val = 0
                fp.write(f"\treg {iw} = {val};\n")
        fp.write("\n")

        for ow in sorted(output_wires):
            fp.write(f"\twire {ow};\n")
        fp.write("\n")

        if "prop_clk" in input_wires:
            print("Adding prop clock")
            fp.write("\talways\n")
            fp.write("\t\t#10 prop_clk = !prop_clk; // 20 ns gate delay\n\n")

        if "a02_timer" in module_params.keys():
            print("Adding clock")
            fp.write("\talways\n")
            fp.write("\t\t#244.140625 CLOCK = !CLOCK;  // 2.048 MHz clock\n\n")

        for module_name in sorted(module_params.keys()):
            m = module_name.split("_")[0]
            fp.write(f"\t{module_name} {m}(\n")
            for i, param in enumerate(module_params[module_name]):
                fp.write(f"\t\t{param}")
                if i != (len(module_params[module_name]) - 1):
                    fp.write(",")
                fp.write("\n")
            fp.write("\t);\n\n")

        for signal in sorted(cross_module_signals.keys()):
            fp.write(f"\tassign {signal} = ")
            fp.write(" & ".join(sorted(cross_module_signals[signal])))
            fp.write(";\n")
        fp.write("\n")

        if sim_name:
            fp.write("\tinitial\n")
            fp.write("\tbegin\n")
            if sim_code:
                sim_code(fp)
            fp.write("\t\t#100000 $stop;\n")
            fp.write("\tend\n\n")

        fp.write("endmodule\n")
    print()
    print(f"Written {filepath}")


def check_signal(signal):
    if CROSS_MODULE_SIGNAL_RE.match(signal):
        return "internal"

    if "p" in signal:
        signal = signal.replace("p", "+")
    if "m" in signal:
        signal = signal.replace("m", "-")
    if signal[0] == 'n':
        signal = signal[1:]
    if signal[-1] == "_":
        signal = signal[:-1] + "/"

    db = sqlite3.connect(DBPATH)
    tray_a = [f"A{i}" for i in range(1, 25)]
    c = db.cursor()
    c.execute('SELECT * FROM PINS_2003100_071 WHERE NET=?', (signal,))

    for r in c.fetchall():
        if r[0] not in tray_a:
            return "external"
    return "internal"


if __name__ == "__main__":
    # Tray A
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module_file_name in sorted(os.listdir(MODULES_SOURCE_FOLDER)):
        if module_file_name.startswith("a77"):
            continue
        module_name, params, inputs, outputs = read_module(module_file_name)
        module_params[module_name] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    internal_wires = []
    external_inputs = []
    external_outputs = []

    for i in sorted(input_wires):
        if check_signal(i) == "external":
            external_inputs.append(i)
        else:
            internal_wires.append(i)

    for i in sorted(output_wires):
        if check_signal(i) == "external":
            external_outputs.append(i)
        else:
            if i not in internal_wires:
                if not CROSS_MODULE_SIGNAL_RE.match(i):
                    print(f"{i} internal output not used as input")

    if False:
        for i in sorted(external_inputs):
            print(i)
        print()

        for i in sorted(external_outputs):
            print(i)


        #write_wrapper(module_params, input_wires, output_wires)

