import os
import re

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODULES_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new", "modules")
GATE_ARG_RE = re.compile(r"nor_(\d)\s+#\(1'b([0,1])\)\s+NOR(\d\d\d\d\d)\(([a-zA-Z0-9\s\,\_]+)\);")


def process_module(fpath):
    new_lines = []
    with open(fpath, "r") as fp:
        for orig_line in fp.readlines():
            l = orig_line.split("//")[0]
            res = GATE_ARG_RE.search(l);

            if not res:
                new_lines.append(orig_line)
                continue

            multiplicity = int(res.groups()[0])
            initial_value = int(res.groups()[1])
            gate_number = int(res.groups()[2])
            power = get_power(gate_number)
            args = [x.strip() for x in res.groups()[3].split(",")]
            #if multiplicity == 3:
            #    new_lines.append(orig_line)
            #    continue

            new_args = args[:multiplicity + 1]
            for i in range(3-multiplicity):
                new_args.append("n0VDCA")
            #new_args.extend(args[multiplicity+1:])
            new_line = f"    nor_3 #(1'b{initial_value})  NOR{gate_number}("
            for a in new_args:
                a = a.strip() + ","
                if len(a) > 16:
                    print("Argument too long:", a)
                    print(orig_line)
                    input()
                new_line += f"{a:16}"
            new_line += f"{power}, reset, prop_clk);\n"
            new_lines.append(new_line)

    with open(fpath, "w") as fp:
        for l in new_lines:
            fp.write(l)


def get_power(gate_number):
    if gate_number in [45159, 45261, 45262, 47227, 47256, 49255]:
        return "p4VDC"

    if gate_number in range(45137, 45157 + 1):
        return "p4VDC"

    if gate_number in range(49201, 49234 + 1):
        return "p4VDC"

    if int(str(gate_number)[:3]) in [373, 374, 300, 301, 303, 304, 361, 362, 363, 364, 391, 392, 393, 394, 401, 402, 403, 404, 331, 332, 333, 334, 511, 512, 513, 514, 521, 522, 523, 524, 531, 532, 533, 534, 541, 542, 543, 544, 341, 342, 343, 344, 411, 421, 422, 423, 424, 351, 352, 353, 354, 431, 432, 433, 434, 441, 442, 443, 444, 451, 452, 453, 454, 461, 462, 463, 464, 311, 312, 313, 314, 320, 322, 325, 326, 471, 472, 473, 474, 481, 482, 483, 484, 491, 492, 493, 494]:
        return "p4SW"

    if int(str(gate_number)[:3]) in [381, 382, 383, 384, 371, 372, 412, ]:
        return "p4VDC"

    raise ValueError(f"Gate number {gate_number} not found")


if __name__ == "__main__":
    for fn in os.listdir(MODULES_SOURCE_FOLDER):
        print(fn)
        process_module(os.path.join(MODULES_SOURCE_FOLDER, fn))
        input()
