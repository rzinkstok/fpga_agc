"""
Writes the following files:

toplevel.v
    fpga_agc.v
        tray_a.v
        tray_b.v
    agc_monitor.v

fpga_agc_tb.v
"""

import os
import re
import sqlite3


# File paths

HOME = "/Users/rzinkstok/Development/virtualagc"
#HOME = "/home/rzinkstok"
#HOME = "c:/Users/rzine07792/source/rzinkstok"

DBPATH = os.path.join(HOME, "pin_inspector/delphi.db")
BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new")
TRAY_A_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_a")
TRAY_B_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_b")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs")
CONSTRAINTS_FOLDER = os.path.join(BASEDIR, "agc.srcs", "constrs_1", "new")


# Regular expressions for modules and wires
MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
INOUT_WIRE_RE = re.compile(r"^inout wire")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^[AB][0-9][0-9]\_[0-9]+\_(.+)")
BUS_WIRE_RE = re.compile(r"^\[(\d+):(\d+)\](.+)")


# AGC modules
TRAY_A = [f"A{i}" for i in range(1, 25)] + ["A30", "A31"]
TRAY_B = []
TRAY_MODULES = TRAY_A + TRAY_B
CONNECTOR_MODULES = ["A61", "A62", "A63", "B61", "B62", "B63"]
EXTERNAL_INTERFACE_MODULES = ["A25", "A26", "A27", "A28", "A29", "A51", "A52"]


# FPGA pins and dedicated wires
STYX_PINS = ["J22", "J21", "L22", "L21", "G22", "H22", "G21", "G20", "H20", "H19", "E20", "E19", "F22", "F21", "A22", "A21", "C22", "D22", "C20", "D20", "B22", "B21", "C19", "D18", "B20", "B19", "C18", "C17", "A19", "A18", "B17", "B16", "A17", "A16", "E16", "F16", "B15", "C15", "E18", "F18", "D17", "D16", "F19", "G19", "D21", "E21", "G16", "G15", "F17", "G17", "J17", "J16", "P18", "P17", "K15", "J15", "K18", "J18", "M16", "M15", "M17", "L17", "K20", "K19", "U16", "U15", "T19", "R19", "V15", "V14", "U4", "T4", "U9", "U10", "W8", "V8", "U5", "U6", "T6", "R6", "M19", "M20", "M21", "M22", "N19", "N20", "N22", "P22", "N17", "N18", "P20", "P21", "P16", "R16", "R20", "R21", "N15", "P15", "J20", "K21", "V18", "V19", "W15", "Y15", "W17", "W18", "W16", "Y16", "AA21", "AB21", "U17", "V17", "AB19", "AB20", "V13", "W13", "Y19", "AA19", "V12", "W12", "Y18", "AA18", "U12", "U11", "AA17", "AB17", "AB10", "AB9", "AA16", "AB16", "Y14", "AA14", "AB14", "AB15", "W11", "W10", "Y13", "AA13", "Y11", "Y10", "AA12", "AB12", "AA9", "AA8", "AA11", "AB11", "Y9", "Y8", "V10", "V9"]

STYX_CLOCK_PIN = "Y6"
ZYNQ_PS_WIRES = ['[14:0]DDR_addr', '[2:0]DDR_ba', 'DDR_cas_n', 'DDR_ck_n', 'DDR_ck_p', 'DDR_cke', 'DDR_cs_n', '[3:0]DDR_dm', '[31:0]DDR_dq', '[3:0]DDR_dqs_n', '[3:0]DDR_dqs_p', 'DDR_odt', 'DDR_ras_n', 'DDR_reset_n', 'DDR_we_n', 'FIXED_IO_ddr_vrn', 'FIXED_IO_ddr_vrp', '[53:0]FIXED_IO_mio', 'FIXED_IO_ps_clk', 'FIXED_IO_ps_porb', 'FIXED_IO_ps_srstb']
FT2232H_WIRES = ['clkout', 'data', 'rxf_n', 'txe_n', 'rd_n', 'wr_n', 'oe_n', 'siwu']
FT2232H_PINS = ['L18', ['T22', 'T21', 'U22', 'U21', 'V22', 'W22', 'AA22', 'AB22'], 'W20', 'Y21', 'Y20', 'W21', 'U20', 'V20']
[list(x) for x in FT2232H_PINS]
#DEDICATED_PINS = {'clk': 'Y6', 'clkout': 'L18', 'data[0]': 'T22', 'data[1]': 'T21', 'data[2]': 'U22', 'data[3]': 'U21', 'data[4]': 'V22', 'data[5]': 'W22', 'data[6]': 'AA22', 'data[7]': 'AB22', 'rxf_n': 'W20', 'txe_n': 'Y21', 'rd_n': 'Y20', 'wr_n': 'W21', 'oe_n': 'U20', 'siwu': 'V20'}


class VerilogSignal(object):
    CUR_STYX_PIN = -1

    def __init__(self, name, type="input", pins=None):
        res = BUS_WIRE_RE.match(name)
        if res:
            self.bus = True
            self.highbit = int(res.groups()[0])
            self.lowbit = int(res.groups()[1])
            self.name = res.groups()[2]
        else:
            self.bus = False
            self.highbit = None
            self.lowbit = None
            self.name = name

        self.pins = pins
        self.external = None
        self.input = type == "input"
        self.output = type == "output"
        self.inout = type == "inout"

        res = CROSS_MODULE_SIGNAL_RE.match(self.name)
        self.partial_fan_in = bool(res)
        self.fan_in_name = res.groups()[0] if self.partial_fan_in else None

    def decode_name(self):
        name = self.name
        name = name.replace("p", "+")
        name = name.replace("m", "-")
        if name[0] == 'n':
            name = name[1:]
        if name[-1] == "_":
            name = name[:-1] + "/"
        return name

    @property
    def agc_modules(self):
        signal = self.decode_name()
        db = sqlite3.connect(DBPATH)
        c = db.cursor()
        c.execute('SELECT * FROM PINS_2003100_071 WHERE NET=?', (signal,))
        return set([r[0] for r in c.fetchall()])

    def declaration(self):
        if self.bus:
            return f"[{self.highbit}:{self.lowbit}]{self.name}"
        else:
            return self.name

    def signals(self):
        if self.bus:
            for i in range(self.lowbit, self.highbit + 1):
                yield f"{{{self.name}[{i}]}}"
        else:
            return [self.name]

    def fpga_pins(self):
        if not self.external:
            return []

        for s in self.signals():
            if s in DEDICATED_PINS:
                yield s, DEDICATED_PINS[s]
            else:
                while STYX_PINS[self.CUR_STYX_PIN+1] in DEDICATED_PINS:
                    self.CUR_STYX_PIN += 1
                yield s, STYX_PINS[self.CUR_STYX_PIN]

    def __lt__(self, other):
        return self.name < other.name

    def __str__(self):
        types = []
        if self.input:
            types.append("input")
        if self.output:
            types.append("output")
        if self.inout:
            types.append("inout")
        if self.external:
            s = "external "
        else:
            s = "internal "
        s += "/".join(types)

        return f"{self.name} ({s})"

    def __repr__(self):
        return self.__str__()


ZYNQ_PS_SIGNALS = [VerilogSignal(x) for x in ZYNQ_PS_WIRES]
FT2232H_SIGNALS = [VerilogSignal(x, pins=list(y)) for x, y in zip(FT2232H_WIRES, FT2232H_PINS)]


class VerilogModule(object):
    def __init__(self, filepath):
        self.filepath = filepath
        self.module_name = None
        self.parameters = []
        self.parse()

    def parse(self):
        module_file_name = os.path.split(self.filepath)[-1]
        self.module_name = os.path.splitext(module_file_name)[0]
        with open(self.filepath, "r") as fp:
            lines = fp.readlines()

        print()
        print(f"Module {self.module_name}")

        in_module_params = False
        self.parameters = []

        for l in lines:
            comment = l.find("//")
            if comment >= 0:
                l = l[:comment]
            l = l.strip()

            if in_module_params:
                res = MODULE_ARGS_END_RE.search(l)
                if res:
                    print("Parameters:", self.parameters)
                    in_module_params = False
                else:
                    res = INPUT_WIRE_RE.search(l)
                    if res:
                        iws = [x.strip() for x in l.rstrip(";")[11:].split(",")]
                        for iw in iws:
                            if not iw:
                                continue
                            self.parameters.append(VerilogSignal(iw, "input"))

                    res = OUTPUT_WIRE_RE.search(l)
                    if res:
                        ows = [x.strip() for x in l.rstrip(";")[12:].split(",")]
                        for ow in ows:
                            if not ow:
                                continue
                            self.parameters.append(VerilogSignal(ow, "output"))

                    res = INOUT_WIRE_RE.search(l)
                    if res:
                        iows = [x.strip() for x in l.rstrip(";")[11:].split(",")]
                        for iow in iows:
                            if not iow:
                                continue
                            self.parameters.append(VerilogSignal(iow, "inout"))
                continue

            res = MODULE_ARGS_START_RE.search(l)
            if res:
                in_module_params = True
                continue


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
        v = VerilogModule(os.path.join(folder, f"{module}.v"))
        module_params[module] = v.parameters
        input_wires.update(v.inputs)
        output_wires.update(v.outputs)
        inout_wires.update(v.inouts)

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
        if signal_check(io) == "external":
            external_inouts.append(io)
        else:
            internal_inouts.append(io)

    # Cross-check internal inputs and outputs
    for i in internal_inputs:
        if i not in internal_outputs:
            print(f"Internal input {i} has no source")
    for i in internal_outputs:
        if i not in internal_inputs:
            print(f"Internal output {i} is not used")

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

        for iw in sorted(internal_inouts):
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
    #params, inputs, outputs, inouts = read_module(os.path.join(SOURCE_FOLDER, "toplevel.v"))
    v = VerilogModule(os.path.join(SOURCE_FOLDER, "toplevel.v"))
    with open(os.path.join(CONSTRAINTS_FOLDER, "agc.xdc"), "w") as fp:
        fp.write("create_clock -name clk -period 10 [get_ports clk]\n")
        fp.write("set_property PACKAGE_PIN Y6 [get_ports clk]\n")
        fp.write(f"set_property IOSTANDARD LVCMOS33 [get_ports clk]\n")
        fp.write("\n")
        for param in sorted(v.parameters):
            if param == "clk" or param in ZYNQ_PS_WIRES:
                continue
            if param.startswith('['):
                print(param)
                param, lowbit, highbit = parse_multibit_signal(param)
                print(param, lowbit, highbit)
                input()
                for i in range(lowbit, highbit+1):
                    fp.write(f"set_property IOSTANDARD LVCMOS33 [get_ports {{{param}[{i}]}}]\n")
            else:
                fp.write(f"set_property IOSTANDARD LVCMOS33 [get_ports {param}]\n")
        for o in sorted(v.outputs + v.inouts):
            if o in ZYNQ_PS_WIRES:
                continue
            if o.startswith('['):
                o, lowbit, highbit = parse_multibit_signal(o)
                for i in range(lowbit, highbit+1):
                    fp.write(f"set_property DRIVE 4 [get_ports {{{o}[{i}]}}]\n")
            else:
                fp.write(f"set_property DRIVE 4 [get_ports {o}]\n")
        for i in sorted(v.inputs + v.inouts):
            if i == "clk" or i in ZYNQ_PS_WIRES + list(FT2232H_WIRES.values()):
                continue
            if i.endswith("_"):
                fp.write(f"set_property PULLUP true [get_ports {i}]\n")
            else:
                fp.write(f"set_property PULLDOWN true [get_ports {i}]\n")
        pin_number = 0
        for param in sorted(v.parameters):
            if param == "clk" or param in ZYNQ_PS_WIRES:
                continue
            if param.startswith('['):
                param, lowbit, highbit = parse_multibit_signal(param)
                for i in range(lowbit, highbit+1):
                    p = f"{param}[{i}]"
                    pin = FT2232H_WIRES[p]
                    fp.write(f"set_property PACKAGE_PIN {pin} [get_ports {{{p}}}]\n")
            else:
                if param in FT2232H_WIRES:
                    pin = FT2232H_WIRES[param]
                else:
                    pin = STYX_PINS[pin_number]
                    pin_number += 1
                    while pin in ["Y6"] + list(FT2232H_WIRES.values()):
                        pin = STYX_PINS[pin_number]
                        pin_number += 1

                fp.write(f"set_property PACKAGE_PIN {pin} [get_ports {param}]\n")


class GeneratedVerilogModule(object):
    name = None
    modules = []
    module_files = []

    def __init__(self):
        self.module_parameters = {}
        self.signals = {}
        self.fan_ins = {}
        self.collect_info()
        self.write()

    def signal_external(self, signal):
        pass

    def initial(self, fp):
        pass

    def collect_info(self):
        for module_file in self.module_files:
            v = VerilogModule(module_file)
            self.module_parameters[v.module_name] = v.parameters
            for p in v.parameters:
                if p.name in self.signals:
                    s = self.signals[p.name]
                    if p.input:
                        s.input = True
                    if p.output:
                        s.output = True
                    if p.inout:
                        s.inout = True
                else:
                    self.signals[p.name] = p

                if p.partial_fan_in:
                    if p.fan_in_name not in self.fan_ins:
                        self.fan_ins[p.fan_in_name] = []
                    self.fan_ins[p.fan_in_name].append(p.name)

        for fan_in in self.fan_ins.keys():
            if fan_in not in self.signals.values():
                # Fan-in signal is not used as input anywhere, so create output signal
                self.signals[fan_in] = VerilogSignal(fan_in, "output")
            else:
                # Make sure the fan-in is marked as output
                self.signals[fan_in].output = True

        for s in self.signals.values():
            s.external = self.signal_external(s)

        for k, v in self.signals.items():
            if not v.external:
                if v.input and not v.output and v.name not in self.fan_ins:
                    print(f"Signal {k} has no source")
                if v.output and not v.input and not v.partial_fan_in:
                    print(f"Signal {k} is not used as input")

    def write(self):
        # Write output file
        if self.name.endswith("_tb"):
            filepath = os.path.join(SIM_SOURCE_FOLDER, "sim_1", "new", f"{self.name}.v")
        else:
            filepath = os.path.join(SOURCE_FOLDER, f"{self.name}.v")

        with open(filepath, "w") as fp:
            fp.write("`timescale 1ns / 1ps\n")
            fp.write("\n")

            # Module declaration
            fp.write(f"module {self.name}(\n")

            for external_input in sorted([x for x in self.signals.values() if x.input and not x.output and x.external]):
                if external_input.name not in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                    fp.write(f"\tinput wire {external_input.name},\n")
            fp.write("\n")

            for external_output in sorted([x for x in self.signals.values() if x.output and x.external]):
                fp.write(f"\toutput wire {external_output.name},\n")
            fp.write("\n")

            for external_inout in sorted([x for x in self.signals.values() if x.inout and x.external]):
                fp.write(f"\tinout wire {external_inout.name},\n")
            fp.write("\n")

            s = ""
            for k in ["reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                if k in [x.name for x in self.signals.values() if x.external and not x.output]:
                    s += (f"\tinput wire {self.signals[k].name},\n")
            s = s[:-2]
            fp.write(s + "\n")
            fp.write(");\n")
            fp.write("\n")

            # Set up registers for internal inputs with no source
            for internal_input in sorted([x for x in self.signals.values() if x.input and not x.output and not x.external and not x.partial_fan_in and x.name not in self.fan_ins]):
                if internal_input.name.endswith("_") or internal_input.name in ["WD167", "WD168"]:  # WD167 is main bus A, WD168 is main bus B
                    val = 1
                else:
                    val = 0
                fp.write(f"\treg {internal_input.name} = {val};\n")
            fp.write("\n")

            # Set up wires for internal outputs
            for internal_output in sorted([x for x in self.signals.values() if x.output and not x.external and not x.partial_fan_in]):
                fp.write(f"\twire {internal_output.name};\n")
            fp.write("\n")

            # Set up wires for internal inouts
            for internal_inout in sorted([x for x in self.signals.values() if x.inout and not x.external]):
                fp.write(f"\twire {internal_inout.name};\n")
            fp.write("\n")

            # Set up wires for partial fan-ins
            for fan_in in sorted(self.fan_ins.keys()):
                for partial_fan_in in sorted(self.fan_ins[fan_in]):
                    s = self.signals[partial_fan_in]
                    fp.write(f"\twire {s.name};\n")
            fp.write("\n")

            # Set up the 100 MHz board clock for simulation
            if self.name.endswith("_tb"):
                fp.write("\talways\n")
                fp.write("\t\t# 5 clk = !clk;\n")
                fp.write("\n")

            # Add all modules
            for module in sorted(self.module_parameters.keys()):
                if is_tray_module(module):
                    m = module.split("_")[0]
                else:
                    m = module.replace("_", "")

                fp.write(f"\t{module} {m}(\n")
                for i, param in enumerate(self.module_parameters[module]):
                    fp.write(f"\t\t{param.name}")
                    if i != (len(self.module_parameters[module]) - 1):
                        fp.write(",")
                    fp.write("\n")
                fp.write("\t);\n\n")

            # Combine partial fan-ins into fan-in signals
            for fan_in, partial_fan_ins in sorted(self.fan_ins.items()):
                signal_name = self.signals[fan_in].name
                partial_signals = [self.signals[s] for s in partial_fan_ins]
                fp.write(f"\tassign {signal_name} = ")
                if signal_name.startswith("SA"):
                    fp.write(" | ".join([ps.name for ps in sorted(partial_signals)]))
                else:
                    fp.write(" & ".join([ps.name for ps in sorted(partial_signals)]))
                fp.write(";\n")
            fp.write("\n")

            # Write initial code for simulations
            self.initial(fp)

            fp.write("endmodule\n")
            print()
            print(f"Written {filepath}")



class TrayA(GeneratedVerilogModule):
    name = "tray_a"
    modules = TRAY_A + CONNECTOR_MODULES
    module_files = [os.path.join(TRAY_A_SOURCE_FOLDER, x) for x in sorted(os.listdir(TRAY_A_SOURCE_FOLDER)) if not x.startswith("a77")]

    def signal_external(self, signal):
        if signal.name in ["reset", "prop_clk", "prop_clk_locked", "n0VDCA", "p4VDC", "p4SW", "MAMU"]:
            return True

        modules = signal.agc_modules
        for m in self.modules:
            if m in modules:
                modules.remove(m)
        if modules:
            return True
        return False


class TrayB(GeneratedVerilogModule):
    name = "tray_b"
    modules = TRAY_A + CONNECTOR_MODULES
    module_files = [os.path.join(TRAY_B_SOURCE_FOLDER, x) for x in sorted(os.listdir(TRAY_B_SOURCE_FOLDER))]  # if not x.startswith("b12")]

    def signal_external(self, signal):
        if signal.name in ["reset", "clk", "prop_clk", "prop_clk_locked", "n0VDCA", "p4VDC", "p4SW"] + [f"SA{i:02}" for i in range(1, 15)] + ["SAP"]:
            return True

        modules = signal.agc_modules
        for m in self.modules:
            if m in modules:
                modules.remove(m)
        if modules:
            return True
        return False


class FpgaAgc(GeneratedVerilogModule):
    name = "fpga_agc"
    modules = ["tray_a", "tray_b"]
    module_files = [os.path.join(SOURCE_FOLDER, f"{x}.v") for x in modules]

    def signal_external(self, signal):
        if signal.name in ["reset", "clk", "clk_reset", "MAMU"]:
            return True

        modules = signal.agc_modules
        for m in modules:
            if m in EXTERNAL_INTERFACE_MODULES:
                return True

        return False


class Toplevel(GeneratedVerilogModule):
    name = "toplevel"
    modules = ["fpga_agc", "agc_monitor", "styx_ps_bootloader"]
    module_files = [os.path.join(SOURCE_FOLDER, f"{x}.v") for x in modules]

    def signal_external(self, signal):
        if signal.name in ["reset", "clk", "clk_reset", "MAMU"] + ZYNQ_PS_WIRES + FT2232H_WIRES:
            return True

        if signal.name in ["n0VDCA", "p4SW", "BPLSSW"]:
            return False

        modules = signal.agc_modules
        if "A52" in modules:
            return True
        return False


class FpgaAgcTestBench(object):
    name = "fpga_agc_tb"
    modules = ["tray_a", "tray_b"]
    module_files = [os.path.join(SOURCE_FOLDER, f"{x}.v") for x in modules]

    def signal_external(self, signal):
        return False

    def initial(self):
        return  "\tinitial\n" \
                "\tbegin\n" \
                "\t\t# 1 NHALGA = 1;\n" \
                "\t\t# 100000 $stop;\n" \
                "\tend\n" \
                "\n"

if __name__ == "__main__":
    if True:
        x = TrayA()
        x = TrayB()
        x = FpgaAgc()

        #modules = [os.path.splitext(x)[0] for x in sorted(os.listdir(TRAY_A_SOURCE_FOLDER)) if not x.startswith("a77")]
        #write_module("tray_a", TRAY_A_SOURCE_FOLDER, modules, check_tray_a_signal)
        #modules = [os.path.splitext(x)[0] for x in sorted(os.listdir(TRAY_B_SOURCE_FOLDER))]# if not x.startswith("b12")]
        #write_module("tray_b", TRAY_B_SOURCE_FOLDER, modules, check_tray_b_signal)
        #write_module("fpga_agc", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_signal)
        #write_module("toplevel", SOURCE_FOLDER, ["fpga_agc", "agc_monitor", "styx_ps_bootloader"], check_toplevel_signal)
        #write_module("fpga_agc_tb", SOURCE_FOLDER, ["tray_a", "tray_b"], check_fpga_agc_tb_signal, fpga_agc_tb_initial)
    #write_constraints()