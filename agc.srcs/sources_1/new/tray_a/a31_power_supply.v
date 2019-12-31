`timescale 1ns / 1ps

module a31_power_supply(
    input wire WD167,   // Main bus A 28 volts
    
    input wire WD169,   // Other 28 volt input, not used
    input wire n28DCR,  // Other 28 volt input, not used
    
    input wire CNTRL2,  // Test equipment input for simulating power failure
    input wire SYNC14_, // Sync signal for voltage reference
    input wire SBYREL_, // Standy signal
    
    output wire BPLUS,
    output wire BPLSSW
    );
    
    assign BPLUS = 1'b1;
    assign BPLSSW = (BPLUS && SBYREL_);
    
endmodule
