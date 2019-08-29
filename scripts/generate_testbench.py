import os
import re

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GATE_SCHEMATICS = os.path.join(BASEDIR, "gate_changes.txt")
MODULES_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new", "modules")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sim_1", "new")

MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")


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




if __name__ == "__main__":
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module in [f"a{n}" for n in range(1, 5)]:
        module_name, params, inputs, outputs = read_module(module)
        module_params[module_name] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    testbench = "commands"
    with open(os.path.join(SIM_SOURCE_FOLDER, f"{testbench}_tb.v"), "w") as fp:
        fp.write("`timescale 1ns / 1ps\n")
        fp.write("\n")
        fp.write(f"module {testbench}();\n")
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
        fp.write("\n")
        fp.write("\tinitial\n")
        fp.write("\tbegin\n")
        fp.write("\t\t#200000 $stop;\n")
        fp.write("\tend\n\n")

        fp.write("endmodule\n")

