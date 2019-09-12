`timescale 1ns / 1ps

module a8_four_bit_1(
    // inputs
    A2XG_,
    
    // outputs
    
    //input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    input wire A2XG_;
    
    /**************************
    *
    *  Module A7 sheet 1
    *  Sheet number 2005252/1
    *
    **************************/
    
    wire NOR51102_out;
    
    wire A01_;
    
    nor_2 #(1'b0) NOR51102(NOR51102_out,    A2XG_,          A01_,                           SIM_CLK);
    
endmodule
