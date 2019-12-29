`timescale 1ns / 1ps

module toplevel(
    input wire reset,
    input wire clk,
    output wire prop_clk,
    output wire prop_clk_locked,
    output wire agc_clk
    );
    
    fpga_agc FPGA_AGC(
        reset,
        clk,
        prop_clk,
        prop_clk_locked,
        agc_clk
    );
    
    // Monitor
    
endmodule
