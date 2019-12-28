FPGA implementation of the Apollo Guidance Computer
---------------------------------------------------

Leaning heaviliy on the excellent work of Mike Stewart (see https://github.com/virtualagc/agc_simulation), this
repository contains my first experiments in Verilog and FPGA programming. In the end, I hope to produce a 
working FPGA implementation of the AGC.

As this project is aimed at an FPGA implementation only, there is no need to use components other than
3-input NOR gates. This is different from Mike Stewart's work, which was (at least initially) aimed 
at implementing an AGC in modern 74HC-series components. As this project is not constrained by the actual IC 
packaging of the gates, it is possible to translate all NOR gates in the original schematics to Verilog modules.

For this project, I used the schematics as found in http://klabs.org/history/ech/agc_schematics/. When in doubt, I
used the CAD transcriptions of these schematics from 
https://github.com/virtualagc/virtualagc/tree/schematics/Schematics. For the backplane wiring, I used the excellent
tool created by Mike Stewart (http://apolloguidance.computer/2003100_071/pins).

Deviations from the original schematics are similar to what Mike Stewart has done:
- A similar trick is used in the AGC to increase the fan-out capability, as a single nor gate could drive only
  five other gates. Modern electronics have near infinite fan-out, so these extra gates are eliminated.

###Power supply
Standby powered gates are always on, swithed gates not. Perhaps best to add a Vcc input to all NOR gates, that allows
normal operation when high but ensures the output of the gate is zero when it is low? Or is it better to output the
initial value of the gate?

###Structure
fpga_agc.v
    prop_clock_divider
    agc_clock_divider
    agc.v
        modules
        memory.v
    monitor.v

