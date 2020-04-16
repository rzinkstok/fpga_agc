`timescale 1ns / 1ps


module b07_oscillator(
        input wire reset,
        input wire clk,
        output wire prop_clk,
        output wire prop_clk_locked,
        output wire CLOCK
    );
    
    wire clk_reset;
    assign clk_reset = 1'b0;
        
    prop_clock_divider prop_clk_div(
        .clk_in1(clk),
        .reset(clk_reset),
        .clk_out1(prop_clk),
        .locked(prop_clk_locked)
    );

    agc_clock_divider agc_clk_div(
        .prop_clk(prop_clk),
        .prop_clk_locked(prop_clk_locked),
        .reset(reset),
        .agc_clk(CLOCK)
    );
    
endmodule
