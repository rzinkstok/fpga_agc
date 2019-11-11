`timescale 1ns / 1ps

module a11_four_bit_4(
    input wire G01,
    input wire G02,
    input wire G03,
    input wire G04,
    input wire G05,
    input wire G06,

    output wire PA03,
    output wire PA03_,
    output wire PA06,
    output wire PA06_,

    input wire reset,
    input wire prop_clk
);
    /**************************
    *
    *  Module A12 sheet 1
    *  Sheet number 2005253/1
    *
    **************************/

    wire G01A_;
    wire G02_;
    wire G03_;
    wire GSIX;

    wire NOR34104_out;
    wire NOR34106_out;
    wire NOR34107_out;
    wire NOR34111_out;
    wire NOR34112_out;
    wire NOR34113_out;
    wire NOR34114_out;
    wire NOR34115_out;
    wire NOR34116_out;
    wire NOR34117_out;

    // PA03_
    nor_1 #(1'b0) NOR34101(G01A_,           G01,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34102(G02_,            G02,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34103(G03_,            G03,                                                            reset, prop_clk);

    nor_3 #(1'b0) NOR34104(NOR34104_out,    G01,            G02,            G03,                            reset, prop_clk);
    nor_3 #(1'b0) NOR34105(GSIX,            G01,            G02_,           G03_,                           reset, prop_clk);
    nor_3 #(1'b0) NOR34106(NOR34106_out,    G01A_,          G02,            G03_,                           reset, prop_clk);
    nor_3 #(1'b0) NOR34107(NOR34107_out,    G01A_,          G02_,           G03,                            reset, prop_clk);

    nor_4 #(1'b0) NOR34108(PA03,            NOR34104_out,   GSIX,           NOR34106_out,   NOR34107_out,   reset, prop_clk);
    // NOR34109 merged into NOR34108
    nor_1 #(1'b0) NOR34110(PA03_,           PA03,                                                           reset, prop_clk);

    // PA06_
    nor_1 #(1'b0) NOR34111(NOR34111_out,    G04,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34112(NOR34112_out,    G05,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34113(NOR34113_out,    G06,                                                            reset, prop_clk);

    nor_3 #(1'b0) NOR34114(NOR34114_out,    G04,            G05,            G06,                            reset, prop_clk);
    nor_3 #(1'b0) NOR34115(NOR34115_out,    G04,            NOR34112_out,   NOR34113_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34116(NOR34116_out,    NOR34111_out,   G05,            NOR34113_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34117(NOR34117_out,    NOR34111_out,   NOR34112_out,   G06,                            reset, prop_clk);

    nor_4 #(1'b0) NOR34118(PA06,            NOR34114_out,   NOR34115_out,   NOR34116_out,   NOR34117_out,   reset, prop_clk);
    // NOR34119 merged into NOR34118
    nor_1 #(1'b0) NOR34120(PA06_,           PA06,                                                           reset, prop_clk);


endmodule