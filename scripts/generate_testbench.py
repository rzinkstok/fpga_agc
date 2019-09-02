import os
import re

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GATE_SCHEMATICS = os.path.join(BASEDIR, "gate_changes.txt")
SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new")
MODULES_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "modules")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sim_1", "new")

MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^A[0-9][0-9]\_[0-9]\_(.+)")


def read_module(module):
    lines = None
    module_name = None
    for filename in os.listdir(MODULES_SOURCE_FOLDER):
        if filename.startswith(module):
            module_name = os.path.splitext(filename)[0]
            print(module_name)
            with open(os.path.join(MODULES_SOURCE_FOLDER, filename), "r") as fp:
                lines = fp.readlines()
            break
    if not lines:
        print("Module not found")
        return
    print()
    print(f"Module {module}")

    in_module_params = False
    module_param_string = ""
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
                module_params = [x.strip() for x in module_param_string.split(",")]
                print("Parameters:", module_params)
                in_module_params = False
            else:
                module_param_string += l.strip()
            continue

        res = MODULE_ARGS_START_RE.search(l)
        if res:
            in_module_params = True
            continue
        res = INPUT_WIRE_RE.search(l)
        if res:
            l = l.rstrip(";")
            iws = [x.strip() for x in l[11:].split(",")]
            for iw in iws:
                if iw not in module_params:
                    print(f"Input wire not specified as module parameter: {iw}")
                input_wires.append(iw)
        res = OUTPUT_WIRE_RE.search(l)
        if res:
            l = l.rstrip(";")
            ows = [x.strip() for x in l[12:].split(",")]
            for ow in ows:
                if ow not in module_params:
                    print(f"Output wire not specified as module parameter: {ow}")
                output_wires.append(ow)

    return module_name, module_params, input_wires, output_wires


def inv(b):
    if b:
        return 0
    return 1


def write_command_cycle(fp, ext, sq, qc, sq10, st):
    fp.write(
        f"""
        begin // EXT {ext}, SQ {sq}, QC {qc}, SQ10 {sq10},  ST {st}
            WL10_ = {inv(sq10)};  // SQ10 bit
            WL11_ = {inv(qc & 1)};  // QC bit 0
            WL12_ = {inv((qc & 2) >> 1)};  // QC bit 1
            WL13_ = {inv(sq & 1)};  // SQ bit 0
            WL14_ = {inv((sq & 2) >> 1)};  // SQ bit 1
            WL16_ = {inv((sq & 4) >> 2)};  // SQ bit 2
            ST1 = {st & 1};    // Stage counter bit 0
            ST2 = {(st & 2) >> 1};    // Stage counter bit 1
            EXT = {ext};    // EXT bit
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #2
        begin
            ST1 = 0;
            ST2 = 0;
        end
        #10900"""
    )


def write_commands(fp):
    fp.write("""        #7900""")
    ext = 0
    sq = 0
    qc = 0
    sq10 = 0
    st = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    qc = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 2
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    qc = 1
    st = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    qc = 2
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    qc = 3
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 3
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 4
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 5
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 3
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    st = 0
    qc = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    st = 0
    qc = 2
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    qc = 3
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 6
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 7
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    ext = 1
    sq = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    qc = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    # Branching omitted

    sq = 2
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    qc = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    qc = 2
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    qc = 3
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 3
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    sq = 4
    st = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 5
    st = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    sq = 6
    st = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)

    qc = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    # Branching omitted

    sq = 7
    qc = 0
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 1
    write_command_cycle(fp, ext, sq, qc, sq10, st)
    st = 3
    write_command_cycle(fp, ext, sq, qc, sq10, st)


def write_wrapper(name, module_params, input_wires, output_wires, testbench=False):
    if testbench:
        filepath = os.path.join(SIM_SOURCE_FOLDER, f"{name}_tb.v")
    else:
        filepath = os.path.join(SOURCE_FOLDER, f"{name}.v")

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
        fp.write(f"module {name}();\n")
        fp.write("\n")

        for iw in sorted(input_wires):
            if iw not in output_wires:
                if iw.endswith("_") or iw == "SIM_CLK":
                    val = 1
                else:
                    val = 0
                fp.write(f"\treg {iw} = {val};\n")
        fp.write("\n")

        for ow in sorted(output_wires):
            fp.write(f"\twire {ow};\n")
        fp.write("\n")

        if "SIM_CLK" in input_wires:
            fp.write("\talways\n")
            fp.write("\t\t#10 SIM_CLK = !SIM_CLK; // 20 ns gate delay\n\n")

        if "a2_timer" in module_params.keys():
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

        if testbench:
            fp.write("\tinitial\n")
            fp.write("\tbegin\n")
            write_commands(fp)
            fp.write("\t\t$stop;\n")
            fp.write("\tend\n\n")

        fp.write("endmodule\n")
    print(f"Written {filepath}")

if __name__ == "__main__":
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module in [f"a{n}" for n in range(1, 6)]:
        module_name, params, inputs, outputs = read_module(module)
        module_params[module_name] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    write_wrapper("commands", module_params, input_wires, output_wires, testbench=True)


