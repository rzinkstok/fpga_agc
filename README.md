FPGA implementation of the Apollo Guidance Computer
---------------------------------------------------

Leaning heaviliy on the excellent work of Mike Stewart (see https://github.com/virtualagc/agc_simulation), this
repository contains my first experiments in Verilog and FPGA programming. In the end, I hope to produce a 
working FPGA implementation of the AGC.

As this project is aimed at an FPGA implementation only, there is no need to use components other than
nor gates and open drain buffers, unlike Mike Stewart's work: this makes it possible to identify all nor gates
in the original schematics.

Deviations from the original schematics are similar to what Mike Stewart has done:
- The original AGC uses only 3-input nor gates, so for larger nor gates the fan-in is increased by connecting the
  output of one or more nor gates that have no connection to Vcc to the output of a powered nor gate. In this work,
  I have used nor gates with up to 4 inputs, making some of these fan-in expansions unnecessary.
- A similar trick is used in the AGC to increase the fan-out capability, as a single nor gate could drive only
  five other gates. Modern electronics have near infinite fan-out, so these extra gates are eliminated.
