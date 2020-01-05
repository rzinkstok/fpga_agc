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
TRAY_A_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_a")
TRAY_B_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_b")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs")
CONSTRAINTS_FOLDER = os.path.join(BASEDIR, "agc.srcs", "constrs_1", "new")

MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
INOUT_WIRE_RE = re.compile(r"^inout wire")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^[AB][0-9][0-9]\_[0-9]+\_(.+)")

TRAY_A = [f"A{i}" for i in range(1, 25)] + ["A30", "A31"]
TRAY_B = []
TRAY_MODULES = TRAY_A + TRAY_B
CONNECTOR_MODULES = ["A61", "A62", "A63", "B61", "B62", "B63"]
EXTERNAL_INTERFACE_MODULES = ["A25", "A26", "A27", "A28", "A29", "A51", "A52"]

PINS = ["J22", "J21", "L22", "L21", "G22", "H22", "G21", "G20", "H20", "H19", "E20", "E19", "F22", "F21", "A22", "A21", "C22", "D22", "C20", "D20", "B22", "B21", "C19", "D18", "B20", "B19", "C18", "C17", "A19", "A18", "B17", "B16", "A17", "A16", "E16", "F16", "B15", "C15", "E18", "F18", "D17", "D16", "F19", "G19", "D21", "E21", "G16", "G15", "F17", "G17", "J17", "J16", "P18", "P17", "K15", "J15", "K18", "J18", "M16", "M15", "M17", "L17", "K20", "K19", "U16", "U15", "T19", "R19", "V15", "V14", "U4", "T4", "U9", "U10", "W8", "V8", "U5", "U6", "T6", "R6", "M19", "M20", "M21", "M22", "N19", "N20", "N22", "P22", "N17", "N18", "P20", "P21", "P16", "R16", "R20", "R21", "N15", "P15", "J20", "K21", "V18", "V19", "W15", "Y15", "W17", "W18", "W16", "Y16", "AA21", "AB21", "U17", "V17", "AB19", "AB20", "V13", "W13", "Y19", "AA19", "V12", "W12", "Y18", "AA18", "U12", "U11", "AA17", "AB17", "AB10", "AB9", "AA16", "AB16", "Y14", "AA14", "AB14", "AB15", "W11", "W10", "Y13", "AA13", "Y11", "Y10", "AA12", "AB12", "AA9", "AA8", "AA11", "AB11", "Y9", "Y8", "V10", "V9"]
ZYNQ_PS_WIRES = ['[14:0]DDR_addr', '[2:0]DDR_ba', 'DDR_cas_n', 'DDR_ck_n', 'DDR_ck_p', 'DDR_cke', 'DDR_cs_n', '[3:0]DDR_dm', '[31:0]DDR_dq', '[3:0]DDR_dqs_n', '[3:0]DDR_dqs_p', 'DDR_odt', 'DDR_ras_n', 'DDR_reset_n', 'DDR_we_n', 'FIXED_IO_ddr_vrn', 'FIXED_IO_ddr_vrp', '[53:0]FIXED_IO_mio', 'FIXED_IO_ps_clk', 'FIXED_IO_ps_porb', 'FIXED_IO_ps_srstb']


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
    inout_wires = []

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

                res = INOUT_WIRE_RE.search(l)
                if res:
                    l = l.rstrip(";")
                    iows = [x.strip() for x in l[11:].split(",")]
                    for iow in iows:
                        if not iow:
                            continue
                        inout_wires.append(iow)
                        module_params.append(iow)

            continue

        res = MODULE_ARGS_START_RE.search(l)
        if res:
            in_module_params = True
            continue

    print("Inputs:", input_wires)
    print("Outputs:", output_wires)
    print("Inouts:", inout_wires)
    return module_params, input_wires, output_wires, inout_wires


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

    if signal in ["reset", "prop_clk", "prop_clk_locked", "n0VDCA", "p4VDC", "p4SW"]:
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


def check_tray_b_signal(signal):
    if signal in ["reset", "clk", "prop_clk", "prop_clk_locked", "n0VDCA", "p4VDC", "p4SW"]:
        return "external"
    if signal.startswith("SA") and signal[2:] in [f"{i:02}" for i in range(1, 15)] + ["P", "16"]:
        return "external"

    modules = get_signal_modules(signal)
    for m in TRAY_B + CONNECTOR_MODULES:
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
    fp.write("\t\t# 1 NHALGA = 1;\n")
    fp.write("\t\t# 100000 $stop;\n")
    fp.write("\tend\n")
    fp.write("\n")


def check_toplevel_signal(signal):
    if signal in ["n0VDCA", "p4SW", "BPLSSW"]:
        return "internal"
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
    inout_wires = set()

    for module in modules:
        params, inputs, outputs, inouts = read_module(os.path.join(folder, f"{module}.v"))
        module_params[module] = params
        input_wires.update(inputs)
        output_wires.update(outputs)
        inout_wires.update(inouts)

    external_inputs = []
    external_outputs = []
    internal_inputs = []
    internal_outputs = []
    external_inouts = []
    internal_inouts = []
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

    for io in sorted(inout_wires):
        if signal_check(i) == "external":
            external_inouts.append(io)

    # Cross-check internal inputs and outputs
    for i in internal_inputs:
        if i not in internal_outputs:
            print(f"Internal input {i} has no source")
    for i in internal_outputs:
        if i not in internal_inputs:
            print(f"Internal output {i} is not used")
    #internal_wires = list(set(internal_inputs + internal_outputs))

    # Check cross module fan-in combined signals
    for signal in cross_module_fan_ins.keys():
        if signal not in internal_inputs + external_outputs:
            if signal_check(signal) == "internal":
                internal_inputs.append(signal)
            else:
                external_outputs.append(signal)

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
        for iow in sorted(external_inouts):
            fp.write(f"\tinout wire {iow},\n")
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
                if iw.endswith("_") or iw in["WD167", "WD168"]:  # WD167 is main bus A, WD168 is main bus B
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
                if param.startswith("["):
                    param = param[param.index("]")+1:]
                fp.write(f"\t\t{param}")
                if i != (len(module_params[module]) - 1):
                    fp.write(",")
                fp.write("\n")
            fp.write("\t);\n\n")

        for signal in sorted(cross_module_fan_ins.keys()):
            fp.write(f"\tassign {signal} = ")
            if signal.startswith("SA"):
                fp.write(" | ".join(sorted(cross_module_fan_ins[signal])))
            else:
                fp.write(" & ".join(sorted(cross_module_fan_ins[signal])))
            fp.write(";\n")
        fp.write("\n")

        if initial:
            initial(fp)

        fp.write("endmodule\n")
        print()
        print(f"Written {filepath}")


def write_constraints():
    params, inputs, outputs, inouts = read_module(os.path.join(SOURCE_FOLDER, "toplevel.v"))
    with open(os.path.join(CONSTRAINTS_FOLDER, "agc.xdc"), "w") as fp:
        for param in sorted(params):
            if param in ZYNQ_PS_WIRES:
                continue
            fp.write(f"set_property IOSTANDARD LVCMOS33 [get_ports {param}]\n")
        for o in sorted(outputs + inouts):
            if o in ZYNQ_PS_WIRES:
                continue
            fp.write(f"set_property DRIVE 4 [get_ports {o}]\n")
        for i in sorted(inputs + inouts):
            if i == "clk" or i in ZYNQ_PS_WIRES:
                continue
            if i.endswith("_"):
                fp.write(f"set_property PULLUP true [get_ports {i}]\n")
            else:
                fp.write(f"set_property PULLDOWN true [get_ports {i}]\n")
        fp.write("set_property PACKAGE_PIN Y6 [get_ports clk]\n")
        for param, pin in zip(sorted(params), [p for p in PINS if p != "Y6"]):
            if param == "clk" or param in ZYNQ_PS_WIRES:
                continue
            fp.write(f"set_property PACKAGE_PIN {pin} [get_ports {param}]\n")


if __name__ == "__main__":
    if True:
        modules = [os.path.splitext(x)[0] for x in sorted(os.listdir(TRAY_A_SOURCE_FOLDER)) if not x.startswith("a77")]
        write_module("tray_a", TRAY_A_SOURCE_FOLDER, modules, check_tray_a_signal)
        modules = [os.path.splitext(x)[0] for x in sorted(os.listdir(TRAY_B_SOURCE_FOLDER))]# if not x.startswith("b12")]
        write_module("tray_b", TRAY_B_SOURCE_FOLDER, modules, check_tray_b_signal)
        write_module("fpga_agc", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_signal)
        write_module("toplevel", SOURCE_FOLDER, ["fpga_agc", "styx_ps_bootloader"], check_toplevel_signal)
        write_module("fpga_agc_tb", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_tb_signal, fpga_agc_tb_initial)
    write_constraints()