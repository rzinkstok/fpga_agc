import os
import re
import glob

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GATE_SCHEMATICS = os.path.join(BASEDIR, "gate_changes.txt")
SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new")
MODULES_SOURCE_FOLDER = os.path.join(SOURCE_FOLDER, "modules")
SIM_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs")

MODULE_ARGS_START_RE = re.compile(r"^module [A-Za-z0-9\_]+\(")
MODULE_ARGS_END_RE = re.compile(r"^\);")
INPUT_WIRE_RE = re.compile(r"^input wire ")
OUTPUT_WIRE_RE = re.compile(r"^output wire ")
CROSS_MODULE_SIGNAL_RE = re.compile(r"^A[0-9][0-9]\_[0-9]\_(.+)")


def read_module(module_file_name):
    module_name = os.path.splitext(module_file_name)[0]
    print(module_name)
    module = module_name.split("_")[0]
    with open(os.path.join(MODULES_SOURCE_FOLDER, module_file_name), "r") as fp:
        lines = fp.readlines()

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
            //ST1 = {st & 1};    // Stage counter bit 0
            //ST2 = {(st & 2) >> 1};    // Stage counter bit 1
            //EXT = {ext};    // EXT bit
            //force STG1 = {st & 1}; // Stage counter 1
            //force STG2 = {(st & 2) >> 1}; // Stage counter 2
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #2
        //begin
        //    ST1 = 0;
        //    ST2 = 0;
        //end
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

def write_a8_commands(fp):
    fp.write("""        #1000
        
        // Register A write test
        begin
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            WAG_ = 0;
        end
        #100
        begin
            release WL01;
            release WL02;
            release WL03;
            release WL04;
            WAG_ = 1;
        end
        #900
        
        // Register A read test / register L write test
        #100 RAG_ = 0;
        #900 WLG_ = 0;
        #100
        begin
            RAG_ = 1;
            WLG_ = 1;
        end
        
        // Register A clear test
        #100 CAG = 1;
        #100 CAG = 0;
        
        // Register L write test 2
        #900 CLG1G = 1;
        #100 CLG1G = 0;
        #100
        begin
            SA04 = 1;
            force G05_ = 0;
            force G06_ = 0;
            force G07_ = 0;
            G2LSG_ = 0;
        end
        #100
        begin
            SA04 = 0;
            release G05_;
            release G06_;
            release G07_;
            G2LSG_ = 1;
        end
        #100 CGG = 1; 
        #100 CGG = 0;
        #700
        
        // Register L read test / register Q write test
        #100 RLG_ = 0;
        #900 WQG_ = 0;
        #100
        begin
            RLG_ = 1;
            WQG_ = 1;
        end
           
        // Register L clear test
        #100 CLG1G = 1;
        #100 CLG1G = 0;
        #900
        
        // Register Q read test / register Z write test
        #100 RQG_ = 0;
        #900 WZG_ = 0;
        #100 
        begin
            RQG_ = 1;
            WZG_ = 1;
        end
        
        // Register Q clear test
        #100 CQG = 1;
        #100 CQG = 0;
        #900 
        
        // Register Z read test / register B write test
        #100 RZG_ = 0;
        #900 WBG_ = 0;
        #100
        begin
            RZG_ = 1;
            WBG_ = 1;
        end
        
        // Register Z clear test
        #100 CZG = 1;
        #100 CZG = 0;
        #900
        
        // Register B read test / register G write test
        #100 RBLG_ = 0;
        #900 WG1G_ = 0;
        #100
        begin
            RBLG_ = 1;
            WG1G_ = 1;
        end
        
        // Register B clear test
        #100 CBG = 1;
        #100 CBG = 0;
        
        // Register G write test 2
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            force WL16_ = 0;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            WG3G_ = 0;
        end
        #100
        begin
            release WL16_;
            release WL01;
            release WL02;
            release WL03;
            WG3G_ = 1;
        end
        
        // Register G write test 3
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            force WL05_ = 0;
            WG4G_ = 0;
        end
        #100
        begin
            release WL02;
            release WL03;
            release WL04;
            release WL05_;
            WG4G_ = 1;
        end
        
        // Register G write test 4
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            MCRO_ = 0;
            force L01_ = 0;
            force L02_ = 0;
            force L03_ = 0;
            L2GDG_ = 0;
        end
        #100
        begin
            MCRO_ = 1;
            release L01_;
            release L02_;
            release L03_;
            L2GDG_ = 1;
        end
        #900
        
        // Register G read test / register Y write test
        #100 RGG_ = 0;
        #900 WYLOG_ = 0;
        #100 
        begin
            RGG_ = 1;
            WYLOG_ = 1;
        end
        
        // Register G clear test
        #100 CGG = 1;
        #100 CGG = 0;
        #900 
        
        // Register Y write test 2
        #100 CUG = 1;
        #100 CUG = 0;
        #100
        begin
            WL16_ = 0;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            WYDLOG_ = 0;
            WYDG_ = 0;
        end
        #100
        begin
            WL16_ = 1;
            release WL01;
            release WL02;
            release WL03;
            WYDLOG_ = 1;
            WYDG_ = 1;
        end
        
        // Register Y clear test
        #900 CUG = 1;
        #100 CUG = 0;
           
        // X register write test
        #100
        begin
            force WL01_ = 0;
            force WL02_ = 0;
            force WL03_ = 0;
            force WL04_ = 0;
            WAG_ = 0;
        end
        #100
        begin
            release WL01_;
            release WL02_;
            release WL03_;
            release WL04_;
            WAG_ = 1;
        end
        #100 A2XG_ = 0;
        #100 
        begin
            A2XG_ = 1;
            CAG = 1;
        end
        #100 CAG = 0;
        
        // X register write test 2
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            PONEX = 1;
        end
        #100 PONEX = 0;
        
        // register write test 3
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            TWOX = 1;
        end
        #100 TWOX = 0;
        
        // X register write test 4
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            MONEX = 1;
        end
        #100 MONEX = 0;
        
        // Sum test
        #900 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            force WL02_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            release WL02_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
        
        // Sum test 2
        #100 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            force WL01_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            release WL01_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
        
        // Sum test 2
        #100 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            TWOX = 1;
            force WL01_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            TWOX = 0;
            release WL01_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
""")


def write_wrapper(module_params, input_wires, output_wires, sim_name=None, sim_code=None, wrapper_name=None):
    if sim_name:
        wrapper_name = wrapper_name or "agc_tb"
        filepath = os.path.join(SIM_SOURCE_FOLDER, sim_name, "new", f"{wrapper_name}.v")
    else:
        wrapper_name = wrapper_name or "agc"
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
        fp.write(f"module {wrapper_name}();\n")
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

        if sim_name:
            fp.write("\tinitial\n")
            fp.write("\tbegin\n")
            if sim_code:
                sim_code(fp)
            fp.write("\t\t$stop;\n")
            fp.write("\tend\n\n")

        fp.write("endmodule\n")
    print()
    print(f"Written {filepath}")


if __name__ == "__main__":
    module_params = {}
    input_wires = set()
    output_wires = set()
    for module_file_name in sorted(os.listdir(MODULES_SOURCE_FOLDER)):
        module_name, params, inputs, outputs = read_module(module_file_name)
        module_params[module_name] = params
        input_wires.update(inputs)
        output_wires.update(outputs)

    write_wrapper(module_params, input_wires, output_wires)
    write_wrapper(module_params, input_wires, output_wires, sim_name="sim_1", sim_code=write_commands)

    module_params = {}
    input_wires = set()
    output_wires = set()
    module_name, params, inputs, outputs = read_module("a8_four_bit_1.v")
    module_params[module_name] = params
    input_wires.update(inputs)
    output_wires.update(outputs)
    write_wrapper(module_params, input_wires, output_wires, sim_name="a8_sim", sim_code=write_a8_commands, wrapper_name="a8_four_bit_1_tb")
