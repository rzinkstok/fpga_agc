import os
import re

BASEDIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODULES_SOURCE_FOLDER = os.path.join(BASEDIR, "agc.srcs", "sources_1", "new", "modules")
GATE_NAME_RE = re.compile(r"NOR(5\d\d\d\d)")
SIGNALS = [
    "WL01", "WL01_", "MWL01", "WL02", "WL02_", "MWL02", "WL03", "WL03_", "MWL03", "WL04", "WL04_", "MWL04",
    ""
]
SIGNAL_RE = [re.compile(r"[^A-Za-z0-9\_]" + s + r"[^A-Za-z0-9\_]") for s in SIGNALS]

if __name__ == "__main__":
    fp = os.path.join(MODULES_SOURCE_FOLDER, "a8_four_bit_1.v")
    with open(fp, "r") as fourbit1:
        for l in fourbit1.readlines():
            res = GATE_NAME_RE.findall(l)
            if res:
                print(res)
            for s in SIGNAL_RE:
                res = s.findall(l)
                if res:
                    print(res)
                    input()