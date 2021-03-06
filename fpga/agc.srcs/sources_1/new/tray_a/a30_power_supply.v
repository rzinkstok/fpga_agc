`timescale 1ns / 1ps


module a30_power_supply(
    input wire WD168,   // Main bus B 28 volts
    
    //input wire WD169,   // Other 28 volt input, not used
    //input wire n28DCR,  // Other 28 volt input, not used
    
    //input wire BPLUS,   // Input from 14 volt power supply, used to switch relay from p4VSW
    
    input wire CNTRL1,  // Test equipment input for simulating power failure
    //input wire SYNC4_,  // Sync signal for voltage reference
    input wire SBYREL_, // Standy signal
    input wire prop_clk_locked,
    
    output wire p28COM,
    output wire p4VDC,
    output wire p4SW
    );
    
    // Only start 4V power supply when the prop_clk is running fine, otherwise shit happens
    assign p4VDC = (!CNTRL1) & (prop_clk_locked) & (WD168);
    assign p4SW = (p4VDC & SBYREL_);
    assign p28COM = WD168;
    
endmodule



