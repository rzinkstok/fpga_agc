`timescale 1ns / 1ps

module a12_parity_s_register (
    input wire G01,
    input wire G02,
    input wire G03,
    input wire G04,
    input wire G05,
    input wire G06,
    input wire G07,
    input wire G08,
    input wire G09,
    input wire G10,
    input wire G11,
    input wire G12,
    input wire G13,
    input wire G14,
    input wire G15,
    input wire G16,
    
    output wire PA03,
    output wire PA03_,
    output wire PA06,
    output wire PA06_,
    output wire PA09,
    output wire PA09_,
    output wire PA12,
    output wire PA12_,
    output wire PA15,
    output wire PA15_,

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
    wire G16A_;
    wire GNZRO_1;
    wire GNZRO_2;
    wire GNZRO_3;
    wire GNZRO;
    

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
    wire NOR34121_out;
    wire NOR34122_out;
    wire NOR34123_out;
    wire NOR34124_out;
    wire NOR34125_out;
    wire NOR34126_out;
    wire NOR34127_out;
    wire NOR34128_out;
    wire NOR34132_out;
    wire NOR34133_out;
    wire NOR34134_out;
    wire NOR34135_out;
    wire NOR34136_out;
    wire NOR34137_out;
    wire NOR34138_out;
    wire NOR34139_out;
    wire NOR34142_out;
    wire NOR34143_out;
    wire NOR34144_out;
    wire NOR34145_out;
    wire NOR34147_out;
    wire NOR34148_out;
    wire NOR34149_out;
    wire NOR34150_out;
    wire NOR34154_out;
    
    // PA03
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

    // PA06
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
    nor_1 #(1'b0) NOR34121(NOR34121_out,    NOR34114_out,                                                   reset, prop_clk);
    
    // PA09
    nor_1 #(1'b0) NOR34122(NOR34122_out,    G07,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34123(NOR34123_out,    G08,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34124(NOR34124_out,    G09,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR34125(NOR34125_out,    G07,            G08,            G09,                            reset, prop_clk);
    nor_3 #(1'b0) NOR34126(NOR34126_out,    G07,            NOR34123_out,   NOR34124_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34127(NOR34127_out,    NOR34122_out,   G08,            NOR34124_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34128(NOR34128_out,    NOR34122_out,   NOR34123_out,   G09,                            reset, prop_clk);
    
    nor_4 #(1'b0) NOR34129(PA09,            NOR34125_out,   NOR34126_out,   NOR34127_out,   NOR34128_out,   reset, prop_clk);
    // NOR34130 merged into NOR34129
    nor_1 #(1'b0) NOR34131(PA09_,           PA09,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR34132(NOR34132_out,    NOR34125_out,                                                   reset, prop_clk);
    
    // PA12
    nor_1 #(1'b0) NOR34133(NOR34133_out,    G10,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34134(NOR34134_out,    G11,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34135(NOR34135_out,    G12,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR34136(NOR34136_out,    G10,            G11,            G12,                            reset, prop_clk);
    nor_3 #(1'b0) NOR34137(NOR34137_out,    G10,            NOR34134_out,   NOR34135_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34138(NOR34138_out,    NOR34133_out,   G11,            NOR34136_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34139(NOR34139_out,    NOR34133_out,   NOR34134_out,   G12,                            reset, prop_clk);
    
    nor_4 #(1'b0) NOR34140(PA12,            NOR34136_out,   NOR34137_out,   NOR34138_out,   NOR34139_out,   reset, prop_clk);
    // NOR34141 merged into NOR34140
    nor_1 #(1'b0) NOR34143(PA12_,           PA12,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR34142(NOR34142_out,    NOR34136_out,                                                   reset, prop_clk);
    
    // PA15
    nor_1 #(1'b0) NOR34144(NOR34144_out,    G13,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34145(NOR34145_out,    G14,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34146(G16A_,           G16,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR34147(NOR34147_out,    G13,            G14,            G16,                            reset, prop_clk);
    nor_3 #(1'b0) NOR34148(NOR34148_out,    G13,            NOR34145_out,   G16A_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR34149(NOR34149_out,    NOR34144_out,   G14,            G16A_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR34150(NOR34150_out,    NOR34144_out,   NOR34145_out,   G16,                            reset, prop_clk);
    
    nor_4 #(1'b0) NOR34151(PA15,            NOR34147_out,   NOR34148_out,   NOR34149_out,   NOR34150_out,   reset, prop_clk);
    // NOR34152 merged into NOR34151
    nor_1 #(1'b0) NOR34153(PA15_,           PA15,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR34154(NOR34154_out,    NOR34147_out,                                                   reset, prop_clk);
    
    // GNZRO
    nor_2 #(1'b0) NOR34155(GNZRO_1,         NOR34142_out,   NOR34154_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34156(GNZRO_2,         NOR34121_out,   NOR34132_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34157(GNZRO_3,         G15,                                                            reset, prop_clk);
    assign GNZRO = GNZRO_1 & GNZRO_2 & GNZRO_3;
    
    // NOR34158 and NOR34159 moved to A5 sheet 1
    
    
    
endmodule