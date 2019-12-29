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

The major difference between the schematics and the current implementation is the elimination of all fan-out expansion
gates. These were needed as a single NOR gate could only provide enough current for 5 connected NOR gates. As modern
electronic gates have a near infinite fan-out, these have been eliminated.

###Power supply
A dummy power input has been included in each NOR gate. These are not used for really powering the gate, but are used
to be able to disable the gate. The AGC had a standby mode in which most of the gates were unpowered, leaving only some
essential timekeeping circuitry alive. To this end, two power signals (+4SW and +4VDC) were available. The former is
switched off when standby is initiated. In this implementation, the loss of power to a gate forces the gate to its
initial value until power is restored.

###Restart Monitor
The restart monitor is an add-on plugged into the test connector of the AGC during flight, which allowed to interrogate
the AGC for the reason of a computer restart. The restart monitor is included as module A77, but not incorporated into
the full FPGA AGC. Probably something to incorporate into the AGC Monitor.

###Structure
top
    fpga_agc.v
        prop_clock_divider
        agc_clock_divider
        agc.v
            modules
            memory.v
    monitor.v
    
