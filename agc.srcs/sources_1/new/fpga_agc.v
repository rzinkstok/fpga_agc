`timescale 1ns / 1ps


module fpga_agc(
    input wire reset,
    input wire clk,
    
    output wire prop_clk,
    output wire prop_clk_locked,
    output wire agc_clk
    );
    
    tray_a trayA(prop_clk, agc_clk, reset);
    tray_b trayB(clk, prop_clk, prop_clk_locked, reset, agc_clk);
    
endmodule
