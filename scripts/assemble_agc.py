import os
import re
import sqlite3

# File paths
# HOME = "/Users/rzinkstok/Development/virtualagc"
# HOME = "/home/rzinkstok"
HOME = "c:/Users/rzine07792/source/rzinkstok"
DBPATH = os.path.join(HOME, "pin_inspector/delphi.db")
BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new")
TRAY_A_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_a")
TRAY_B_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "tray_b")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs")
CONSTRAINTS_FOLDER = os.path.join(BASEDIR, "agc.srcs", "constrs_1", "new")

# Regular expressions for modules and wires
MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
INOUT_WIRE_RE = re.compile(r"^inout wire")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^[AB][0-9][0-9]_[0-9]+_(.+)")
BUS_WIRE_RE = re.compile(r"^\[(\d+):(\d+)\](.+)")

# AGC modules
TRAY_A = [f"A{i}" for i in range(1, 25)] + ["A30", "A31"]
TRAY_B = []
TRAY_MODULES = TRAY_A + TRAY_B
CONNECTOR_MODULES = ["A61", "A62", "A63", "B61", "B62", "B63"]
EXTERNAL_INTERFACE_MODULES = ["A25", "A26", "A27", "A28", "A29", "A51", "A52"]

# FPGA pins
STYX_IO_PINS = [
    "J22",  "J21",  "L22", "L21",  "G22",  "H22",  "G21",  "G20",
    "H20",  "H19",  "E20", "E19",  "F22",  "F21",  "A22",  "A21",
    "C22",  "D22",  "C20", "D20",  "B22",  "B21",  "C19",  "D18",
    "B20",  "B19",  "C18", "C17",  "A19",  "A18",  "B17",  "B16",
    "A17",  "A16",  "E16", "F16",  "B15",  "C15",  "E18",  "F18",
    "D17",  "D16",  "F19", "G19",  "D21",  "E21",  "G16",  "G15",
    "F17",  "G17",  "J17", "J16",  "P18",  "P17",  "K15",  "J15",
    "K18",  "J18",  "M16", "M15",  "M17",  "L17",  "K20",  "K19",
    "U16",  "U15",  "T19", "R19",  "V15",  "V14",  "U4",   "T4",
    "U9",   "U10",  "W8",  "V8",   "U5",   "U6",   "T6",   "R6",
    "M19",  "M20",  "M21", "M22",  "N19",  "N20",  "N22",  "P22",
    "N17",  "N18",  "P20", "P21",  "P16",  "R16",  "R20",  "R21",
    "N15",  "P15",  "J20", "K21",  "V18",  "V19",  "W15",  "Y15",
    "W17",  "W18",  "W16", "Y16",  "AA21", "AB21", "U17",  "V17",
    "AB19", "AB20", "V13", "W13",  "Y19",  "AA19", "V12",  "W12",
    "Y18",  "AA18", "U12", "U11",  "AA17", "AB17", "AB10", "AB9",
    "AA16", "AB16", "Y14", "AA14", "AB14", "AB15", "W11",  "W10",
    "Y13",  "AA13", "Y11", "Y10",  "AA12", "AB12", "AA9",  "AA8",
    "AA11", "AB11", "Y9",  "Y8",   "V10",  "V9"
]

FT2232H_PINS = {
    'clkout': 'L18',
    'data': ['T22', 'T21', 'U22', 'U21', 'V22', 'W22', 'AA22', 'AB22'],
    'rxf_n': 'W20',
    'txe_n': 'Y21',
    'rd_n': 'Y20',
    'wr_n': 'W21',
    'oe_n': 'U20',
    'siwu': 'V20'
}

DEDICATED_STYX_PINS = dict({'clk': 'Y6'}, **FT2232H_PINS)

# Special toplevel wires
FT2232H_WIRES = list(FT2232H_PINS.keys())
ZYNQ_PS_WIRES = [
    'DDR_addr',
    'DDR_ba',
    'DDR_cas_n',
    'DDR_ck_n',
    'DDR_ck_p',
    'DDR_cke',
    'DDR_cs_n',
    'DDR_dm',
    'DDR_dq',
    'DDR_dqs_n',
    'DDR_dqs_p',
    'DDR_odt',
    'DDR_ras_n',
    'DDR_reset_n',
    'DDR_we_n',
    'FIXED_IO_ddr_vrn',
    'FIXED_IO_ddr_vrp',
    'FIXED_IO_mio',
    'FIXED_IO_ps_clk',
    'FIXED_IO_ps_porb',
    'FIXED_IO_ps_srstb'
]


class VerilogSignal(object):
    CUR_STYX_PIN = 0

    def __init__(self, name, signal_type="input", pins=None):
        res = BUS_WIRE_RE.match(name)
        if res:
            self.bus = True
            self.highbit = int(res.groups()[0])
            self.lowbit = int(res.groups()[1])
            self.width = self.highbit - self.lowbit + 1
            self.name = res.groups()[2]
        else:
            self.bus = False
            self.highbit = None
            self.lowbit = None
            self.width = 1
            self.name = name

        if pins:
            if not self.bus:
                pins = [pins]
        self._pins = pins or []
        self.external = None
        self.input = signal_type == "input"
        self.output = signal_type == "output"
        self.inout = signal_type == "inout"

        res = CROSS_MODULE_SIGNAL_RE.match(self.name)
        self.partial_fan_in = bool(res)
        self.fan_in_name = res.groups()[0] if self.partial_fan_in else None
        self.special = self.name in ZYNQ_PS_WIRES or self.name in FT2232H_WIRES

    @property
    def internal_input(self):
        return not self.external and self.input

    @property
    def internal_output(self):
        return not self.external and self.output

    @property
    def internal_inout(self):
        return not self.external and self.inout

    @property
    def external_input(self):
        return self.external and self.input

    @property
    def external_output(self):
        return self.external and self.output

    @property
    def external_inout(self):
        return self.external and self.inout

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

    @property
    def declaration(self):
        if self.bus:
            return f"[{self.highbit}:{self.lowbit}]{self.name}"
        else:
            return self.name

    @property
    def signals(self):
        if self.bus:
            return [f"{{{self.name}[{i}]}}" for i in range(self.lowbit, self.highbit + 1)]
        else:
            return [self.name, ]

    @property
    def pins(self):
        if not self._pins:
            for i in range(self.width):
                self._pins.append(STYX_IO_PINS[VerilogSignal.CUR_STYX_PIN])
                VerilogSignal.CUR_STYX_PIN += 1

        return self._pins

    @pins.setter
    def pins(self, pins):
        if not self.bus:
            pins = [pins]
        self._pins = pins

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

        for line in lines:
            comment = line.find("//")
            if comment >= 0:
                line = line[:comment]
            line = line.strip()

            if in_module_params:
                res = MODULE_ARGS_END_RE.search(line)
                if res:
                    print("Parameters:", self.parameters)
                    in_module_params = False
                else:
                    res = INPUT_WIRE_RE.search(line)
                    if res:
                        iws = [x.strip() for x in line.rstrip(";")[11:].split(",")]
                        for iw in iws:
                            if not iw:
                                continue
                            self.parameters.append(VerilogSignal(iw, "input"))

                    res = OUTPUT_WIRE_RE.search(line)
                    if res:
                        ows = [x.strip() for x in line.rstrip(";")[12:].split(",")]
                        for ow in ows:
                            if not ow:
                                continue
                            self.parameters.append(VerilogSignal(ow, "output"))

                    res = INOUT_WIRE_RE.search(line)
                    if res:
                        iows = [x.strip() for x in line.rstrip(";")[11:].split(",")]
                        for iow in iows:
                            if not iow:
                                continue
                            self.parameters.append(VerilogSignal(iow, "inout"))
                continue

            res = MODULE_ARGS_START_RE.search(line)
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


class GeneratedVerilogModule(object):
    name = None
    modules = []
    module_files = []

    def __init__(self, toplevel=False):
        self.module_parameters = {}
        self.signals = {}
        self.fan_ins = {}
        self.toplevel = toplevel
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
            if s.external and self.toplevel:
                # Add FPGA pins for external toplevel signals
                if s.name in DEDICATED_STYX_PINS:
                    s.pins = DEDICATED_STYX_PINS[s.name]

        # Cross check internal signals
        for k, v in self.signals.items():
            if not v.external:
                if v.input and not v.output and v.name not in self.fan_ins:
                    print(f"Signal {k} has no source")
                if v.output and not v.input and not v.partial_fan_in:
                    print(f"Signal {k} is not used as input")

    @staticmethod
    def write_declaration_group(fp, signals, title):
        fp.write(f"\t// {title}\n")
        for s in signals:
            if s.input:
                fp.write(f"\tinput wire {s.declaration},\n")
            if s.output:
                fp.write(f"\toutput wire {s.declaration},\n")
            if s.inout:
                fp.write(f"\tinout wire {s.declaration},\n")
        fp.write("\n")

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

            external_inputs = [x for x in self.signals.values() if x.external_input and not x.output and not x.special]
            if external_inputs:
                for external_input in sorted(external_inputs):
                    if external_input.name not in ["clk", "reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                        fp.write(f"\tinput wire {external_input.declaration},\n")
                fp.write("\n")

            external_outputs = [x for x in self.signals.values() if x.external_output and not x.special]
            if external_outputs:
                for external_output in sorted(external_outputs):
                    fp.write(f"\toutput wire {external_output.declaration},\n")
                fp.write("\n")

            external_inouts = [x for x in self.signals.values() if x.external_inout and not x.special]
            if external_inouts:
                for external_inout in sorted(external_inouts):
                    fp.write(f"\tinout wire {external_inout.declaration},\n")
                fp.write("\n")

            # Add FT2232H signals
            ft2232h_signals = [self.signals[x] for x in FT2232H_WIRES if x in self.signals]
            if ft2232h_signals:
                self.write_declaration_group(fp, ft2232h_signals, "FT2232H signals")

            # Add Zynq PS signals
            zynqps_signals = [self.signals[x] for x in ZYNQ_PS_WIRES if x in self.signals]
            if zynqps_signals:
                self.write_declaration_group(fp, zynqps_signals, "Zynq Processing System signals")

            s = ""
            for k in ["clk", "reset", "prop_clk", "n0VDCA", "p4VDC", "p4SW"]:
                if k in [x.name for x in self.signals.values() if x.external and not x.output]:
                    s += f"\tinput wire {self.signals[k].declaration},\n"
            if s:
                s = s[:-2]
                fp.write(s + "\n")
            fp.write(");\n")
            fp.write("\n")

            # Set up registers for internal inputs with no source
            internal_inputs = [x for x in self.signals.values() if x.internal_input and not x.output and x.name not in self.fan_ins]
            if internal_inputs:
                for internal_input in sorted(internal_inputs):
                    # WD167 is main bus A, WD168 is main bus B
                    if internal_input.name.endswith("_") or internal_input.name in ["WD167", "WD168"]:
                        val = 1
                    else:
                        val = 0
                    fp.write(f"\treg {internal_input.name} = {val};\n")
                fp.write("\n")

            # Set up wires for internal outputs
            internal_outputs = [x for x in self.signals.values() if x.internal_output and not x.partial_fan_in]
            if internal_outputs:
                for internal_output in sorted(internal_outputs):
                    fp.write(f"\twire {internal_output.name};\n")
                fp.write("\n")

            # Set up wires for internal inouts
            internal_inouts = [x for x in self.signals.values() if x.internal_inout]
            if internal_inouts:
                for internal_inout in sorted(internal_inouts):
                    fp.write(f"\twire {internal_inout.name};\n")
                fp.write("\n")

            # Set up wires for partial fan-ins
            if self.fan_ins:
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
            if self.fan_ins:
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
    module_files = [os.path.join(TRAY_B_SOURCE_FOLDER, x) for x in sorted(os.listdir(TRAY_B_SOURCE_FOLDER))]

    def signal_external(self, signal):
        if signal.name in ["reset", "clk", "prop_clk", "prop_clk_locked", "n0VDCA", "p4VDC", "p4SW"]:
            return True
        if signal.name in ["SAP"] + [f"SA{i:02}" for i in range(1, 15)]:
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

    def __init__(self):
        super().__init__(toplevel=True)
        self.write_constraints()

    def signal_external(self, signal):
        if signal.name in ["reset", "clk", "clk_reset", "MAMU", "dgb", "led"] + ZYNQ_PS_WIRES + FT2232H_WIRES:
            return True

        if signal.name in ["n0VDCA", "p4SW", "BPLSSW"]:
            return False

        modules = signal.agc_modules
        if "A52" in modules:
            return True
        return False

    def write_constraints(self):
        with open(os.path.join(CONSTRAINTS_FOLDER, "agc.xdc"), "w") as fp:
            for p in self.signals.values():
                if p.name == "clk":
                    self.create_clock_constraint(fp, p, 10)
                    self.write_signal_constraint(fp, p)
                if p.name == "reset":
                    self.write_signal_constraint(fp, p)

            external_signals = [x for x in self.signals.values() if x.external and x.name not in FT2232H_WIRES]
            for p in sorted(external_signals):
                if p.name in ZYNQ_PS_WIRES + ["clk", "reset"]:
                    continue
                self.write_signal_constraint(fp, p)

            ft2232h_signals = [self.signals[x] for x in FT2232H_WIRES]
            for p in ft2232h_signals:
                self.write_signal_constraint(fp, p)

    @staticmethod
    def create_clock_constraint(fp, signal, period):
        fp.write(f"create_clock -name {signal.name} -period {period} [get_ports {signal.name}]\n")

    @staticmethod
    def write_signal_constraint(fp, signal):
        for name, pin in zip(signal.signals, signal.pins):
            fp.write(f"set_property PACKAGE_PIN {pin} [get_ports {name}]\n")
            fp.write(f"set_property IOSTANDARD LVCMOS33 [get_ports {name}]\n")
            if signal.external_output or signal.external_inout:
                if signal.name in FT2232H_WIRES:
                    fp.write(f"set_property DRIVE 8 [get_ports {name}]\n")
                else:
                    fp.write(f"set_property DRIVE 4 [get_ports {name}]\n")
            if signal.external_input and not signal.output and name != "clk" and signal.name not in FT2232H_WIRES:
                if name.endswith("_"):
                    fp.write(f"set_property PULLUP true [get_ports {name}]\n")
                else:
                    fp.write(f"set_property PULLDOWN true [get_ports {name}]\n")
            fp.write("\n")


class FpgaAgcTestBench(GeneratedVerilogModule):
    name = "fpga_agc_tb"
    modules = ["tray_a", "tray_b"]
    module_files = [os.path.join(SOURCE_FOLDER, f"{x}.v") for x in modules]

    def signal_external(self, signal):
        return False

    def initial(self, fp):
        fp.write("\tinitial\n")
        fp.write("\tbegin\n")
        fp.write("\t\t# 1 NHALGA = 1;\n")
        fp.write("\t\t# 100000 $stop;\n")
        fp.write("\tend\n")
        fp.write("\n")


if __name__ == "__main__":
    TrayA()
    TrayB()
    FpgaAgc()
    Toplevel()
