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

### Gate modeling
Borrowing Mike Stewart's solution, the gates use a separate propagation clock at 51.2 MHz. The inputs are sampled
at the falling edge of the propagation clock, while the output resulting from these inputs is activated at the rising
edge of the propagation clock. This has the advantage that no race conditions will occur, and that the gate delay is
incorporated as well. The 51.2 MHz is chosen such that the gate delay is 19.53 ns, very close to the nominal 20 ns delay
of the original AGC NOR gates, and it is an integer multiple of the main AGC oscillator frequency of 2.048 MHz.

### Gate power supply
A dummy power input has been included in each NOR gate. These are not used for really powering the gate, but are used
to be able to disable the gate. The AGC had a standby mode in which most of the gates were unpowered, leaving only some
essential timekeeping circuitry alive. To this end, two power signals (+4SW and +4VDC) were available. The former is
switched off when standby is initiated. In this implementation, the loss of power to a gate forces the gate to its
initial value until power is restored.

### Restart Monitor
The restart monitor is an add-on plugged into the test connector of the AGC during flight, which allowed to interrogate
the AGC for the reason of a computer restart. The restart monitor is included as module A77, but not (yet) incorporated into
the full FPGA AGC.

### Tray A
Tray A contains all the logic modules A1 - A24, the input/output modules A25 - A29 and the power supply modules A30 and A31.

#### Logic modules
All logic modules are converted directly to Verilog modules, each using only 3-input NOR gates. Some gates have been
moved around to different modules if that made more sense, but mostly the Verilog modules correspond closely to what is
found in the real AGC.

#### Interface modules
These modules are used to convert or buffer the outgoing 4V AGC signals for use elsewhere in the spacecraft, and a
similar thing for incoming signals. As these signals are not used (yet), these modules have been omitted.

#### Power supply
Two power supply modules are included, one delivering 4V (`+4VDC` and `+4SW`) and one delivering 14V (`BPLUS` and `BPLSSW`).
The switched versions of both power supply are switched off when the computer is in standby mode. The power supplies
get their own power from the 28V spacecraft main bus A and B, which are supplied through the interface connector as signals
`WD167` and `WD168`. Both power supplies also pass on the 28V as the `+28COM` signal, which is used by the interface
modules and the B8 alarm module. In the implementation here, the power supplies only perform standby switching.

### Tray B
Tray B contains fixed memory (modules B1 - B6), the oscillator (B7), the alarm module (B8), the erasable drivers (B9 and B10),
the current switch module (B11), the erasable memory (B12), the sense amplifiers (B13 and B14), the strand select module
(B15) and the rope drivers (B16 and B17). Of these, only the fixed and erasable memory, the oscillator and the alarm module
are implemented. All the analog modules that drive the core memory and rope memory currents and the sense amplifiers are
not needed as the memory is implemented in modern memory, not in actual ferrite cores.

#### Oscillator
The oscillator is implemented using the FPGA's internal 100 MHz oscillator as a source. The propagation clock at 51.2 MHz
is derived from the 100 MHz using an MMCM clock module, and the 2.048 main oscillator frequency is derived from the
propagation clock using a simple counter.

#### Alarm
The alarm module checks for voltage, oscillator and scaler failures, protects the erasable memory at power loss, and
filters certain alarm conditions such that very short transient alarm conditions are ignored. As these alarms are less
relevant, only simple token alarms are implemented for the voltage and oscillator alarms and the erasable memory protection.
The scalar alarms are ignored, and the filtering is not (yet) implemented.

#### Erasable memory
Erasable memory is implemented as modern RAM, using the Block Memory Generator IP from Xilinx. Extra logic is added
to translate the memory addressing signals back to a binary address, and also for the read and write signals. In order to
correspond to the actual AGC erasable memory behaviour, a memory location is cleared after a read.

#### Fixed memory
Fixed memory is implemented as modern ROM, using the Block Memory Generator IP from Xilinx. Extra logic is added
to translate the memory addressing signals back to a binary address, and also for the read signal. As it would be
impractical to distribute the memory over six modules, all fixed memory is condensed into a single module, B1.
