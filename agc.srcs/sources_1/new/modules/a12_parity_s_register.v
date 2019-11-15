`timescale 1ns / 1ps

module a12_parity_s_register(
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
    
    input wire TSUDO_,
    input wire T7PHS4_,
    input wire T12A,
    input wire RAD,
    
    input wire CGG,
    input wire MONPAR,
    input wire SAP,
    input wire SCAD,
    input wire GOJAM,
    input wire TPARG_,
    input wire n8XP5,
    
    output wire EXTPLS,
    output wire RELPLS,
    output wire INHPLS,
    output wire GEQZRO_,
    output wire RADRZ,
    output wire RADRG,

    output wire PC15_,
    output wire MGP_,
    output wire GEMP,
    output wire MSP,
    output wire PALE,
    output wire MPAL,
    
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
    
    wire PA03;
    wire PA03_;
    wire PA06;
    wire PA06_;
    wire PA09;
    wire PA09_;
    wire PA12;
    wire PA12_;
    wire PA15;
    wire PA15_;
    
    wire PB09;
    wire PB09_;
    wire PB15;
    wire PB15_;
    
    wire PC15;
    
    
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
    
    wire NOR34201_out;
    wire NOR34202_out;
    wire NOR34203_out;
    wire NOR34204_out;
    wire NOR34205_out;
    wire NOR34206_out;
    wire NOR34207_out;
    wire NOR34208_out;
    wire NOR34210_out;
    wire NOR34211_out;
    wire NOR34214_out;
    wire NOR34215_out;
    wire NOR34216_out;
    wire NOR34227_out;
    wire NOR34228_out;
    wire NOR34229_out;
    wire NOR34230_out;
    wire NOR34234_out;
    wire NOR34235_out;
    wire NOR34238_out;
    wire NOR34239_out;
    wire NOR34241_out;
    wire NOR34243_out;
    wire NOR34244_out;
    wire NOR34245_out;
    wire NOR34246_out;
    wire NOR34247_out;
    wire NOR34248_out;
    wire NOR34250_out;
    wire NOR34251_out;
    wire NOR34252_out;
    
    
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
    
    
    nor_2 #(1'b0) NOR34201(NOR34201_out,    TSUDO_,         T7PHS4_,                                        reset, prop_clk);
    nor_1 #(1'b0) NOR34202(NOR34202_out,    NOR34201_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34203(NOR34203_out,    GSIX,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR34204(NOR34204_out,    GNZRO,                                                          reset, prop_clk);
    
    // EXTPLS
    nor_3 #(1'b0) NOR34205(EXTPLS,          NOR34203_out,   NOR34204_out,   NOR34202_out,                   reset, prop_clk);
    
    // RELPLS
    nor_3 #(1'b0) NOR34206(NOR34206_out,    NOR34204_out,   NOR34202_out,   G01A_,                          reset, prop_clk);
    nor_2 #(1'b0) NOR34207(NOR34207_out,    G02_,           G03,                                            reset, prop_clk);
    assign RELPLS = NOR34206_out & NOR34207_out;
    
    // INHPLS
    nor_3 #(1'b0) NOR34214(NOR34214_out,    NOR34204_out,   G01,            NOR34202_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR34215(NOR34215_out,    G02,            G03_,                                           reset, prop_clk);
    assign INHPLS = NOR34214_out & NOR34215_out;
    
    // GEQZRO_
    nor_4 #(1'b0) NOR34216(NOR34216_out,    NOR34204_out,   G02,            G01,            G03,            reset, prop_clk);
    // NOR34217 merged into NOR34216
    nor_1 #(1'b0) NOR34218(GEQZRO_,         NOR34216_out,                                                   reset, prop_clk);
    
    // NOR34219 - NOR34226 moved to A14 sheet 2
    
    
    // Special instruction flip-flop
    nor_4 #(1'b1) NOR34208(NOR34208_out,    EXTPLS,         RELPLS,         INHPLS,         NOR34210_out,   reset, prop_clk);
    // NOR34209 merged with NOR34208
    nor_2 #(1'b0) NOR34210(NOR34210_out,    NOR34208_out,   T12A,                                           reset, prop_clk);
    
    // RADRZ, RADRG
    nor_1 #(1'b0) NOR34211(NOR34211_out,    RAD,                                                            reset, prop_clk);
    nor_2 #(1'b0) NOR34212(RADRZ,           NOR34208_out,   NOR34211_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34213(RADRG,           NOR34211_out,   NOR34210_out,                                   reset, prop_clk);
    
    // Parity logic: PB09, PB15
    nor_3 #(1'b0) NOR34227(NOR34227_out,    PA03,           PA06,           PA09,                           reset, prop_clk);
    nor_3 #(1'b0) NOR34228(NOR34228_out,    PA03,           PA06_,          PA09_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR34229(NOR34229_out,    PA03_,          PA06,           PA09_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR34230(NOR34230_out,    PA03_,          PA06_,          PA09_,                          reset, prop_clk);
    nor_4 #(1'b0) NOR34231(PB09,            NOR34227_out,   NOR34228_out,   NOR34229_out,   NOR34230_out,   reset, prop_clk);
    // NOR34232 merged into NOR34231
    nor_1 #(1'b0) NOR34233(PB09_,           PB09,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR34234(NOR34234_out,    PA12,           PA15,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR34235(NOR34235_out,    PA12_,          PA15_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34236(PB15,            NOR34234_out,   NOR34235_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34237(PB15_,           PB15,                                                           reset, prop_clk);
    
    // PC15
    nor_2 #(1'b0) NOR34238(NOR34238_out,    PB09_,          PB15,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR34239(NOR34239_out,    PB09,           PB15_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34240(PC15,            NOR34238_out,   NOR34239_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34241(NOR34241_out,    PC15,                                                           reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MGP_ = NOR34241_out;
    nor_1 #(1'b0) NOR34242(PC15_,           PC15,                                                           reset, prop_clk);
    
    // GEMP
    nor_1 #(1'b0) NOR34243(NOR34243_out,    PC15_,                                                          reset, prop_clk);
    assign GEMP = NOR34243_out;
    
    // Memory parity flip-flop
    nor_2 #(1'b0) NOR34246(NOR34246_out,    CGG,            NOR34245_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR34245(NOR34245_out,    NOR34246_out,   MONPAR,         SAP,                            reset, prop_clk);
    
    // MSP
    nor_1 #(1'b0) NOR34244(NOR34244_out,    NOR34245_out,                                                   reset, prop_clk);
    assign MSP = NOR34244_out;
    
    // PALE
    nor_2 #(1'b0) NOR34247(NOR34247_out,    PC15_,          NOR34245_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34248(NOR34248_out,    NOR34246_out,   PC15,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR34250(NOR34250_out,    SCAD,           NOR34248_out,   GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR34251(NOR34251_out,    TPARG_,         n8XP5,          NOR34247_out,                   reset, prop_clk);
    assign PALE = NOR34250_out & NOR34251_out;
    
    // MPAL
    nor_1 #(1'b0) NOR34252(NOR34252_out,    PALE,                                                           reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MPAL = NOR34252_out;
    
    // NOR34253 moved to A4 sheet 2
    // NOR34254 moved to A13 sheet 1
endmodule