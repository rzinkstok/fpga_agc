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
    
    input wire WL01_,
    input wire WL02_,
    input wire WL03_,
    input wire WL04_,
    input wire WL05_,
    input wire WL06_,
    input wire WL07_,
    input wire WL08_,
    input wire WL09_,
    input wire WL10_,
    input wire WL11_,
    input wire WL12_,
    input wire WL13_,
    input wire WL14_,
    
    input wire WEDOPG_,
    input wire WSG_,
    input wire CSG,
    
    output wire G01ED,
    output wire G02ED,
    output wire G03ED,
    output wire G04ED,
    output wire G05ED,
    output wire G06ED,
    output wire G07ED,
    
    output wire S01,
    output wire S01_,
    output wire S02,
    output wire S02_,
    output wire S03,
    output wire S03_,
    output wire S04,
    output wire S04_,
    output wire S05,
    output wire S05_,
    output wire S06,
    output wire S06_,
    output wire S07,
    output wire S07_,
    output wire S08,
    output wire S08_,
    output wire S09,
    output wire S09_,
    output wire S10,
    output wire S10_,
    output wire S11,
    output wire S11_,
    output wire S12,
    output wire S12_,
    
    input wire OCTAD2,
    input wire T02_,
    input wire XB0_,
    input wire XB1_,
    input wire XB2_,
    input wire XB3_, 
    
    output wire CYR_,
    output wire SR_,
    output wire CYL_,
    output wire EDOP_,
    output wire GINH,
    
    input wire SUMA16_,
    input wire SUMB16_,
    output wire G16SW_,
    
    input wire reset,
    input wire prop_clk
);

    /**************************
    *
    *  Module A12 sheet 1
    *  Sheet number 2005253/1
    *
    **************************/

    wire G01A;
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
    nor_3 #(1'b1) NOR34245(NOR34245_out,    NOR34246_out,   MONPAR,         SAP,                            reset, prop_clk);
    
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
    
    
    /**************************
    *
    *  Module A12 sheet 2
    *  Sheet number 2005253/2
    *
    **************************/

    wire NOR34302_out;
    wire NOR34303_out;
    wire NOR34304_out;
    wire NOR34310_out;
    wire NOR34311_out;
    wire NOR34312_out;
    wire NOR34318_out;
    wire NOR34319_out;
    wire NOR34320_out;
    wire NOR34326_out;
    wire NOR34327_out;
    wire NOR34328_out;
    wire NOR34334_out;
    wire NOR34335_out;
    wire NOR34336_out;
    wire NOR34343_out;
    wire NOR34344_out;
    wire NOR34345_out;
    wire NOR34346_out;
    wire NOR34347_out;
    wire NOR34349_out;
    wire NOR34351_out;
    wire NOR34353_out;
    wire NOR34355_out;
    wire NOR34356_out;
    
    wire NOR34401_out;
    wire NOR34402_out;
    wire NOR34403_out;
    wire NOR34408_out;
    wire NOR34409_out;
    wire NOR34410_out;
    wire NOR34415_out;
    wire NOR34416_out;
    wire NOR34417_out;
    wire NOR34422_out;
    wire NOR34423_out;
    wire NOR34424_out;
    wire NOR34429_out;
    wire NOR34430_out;
    wire NOR34431_out;
    wire NOR34436_out;
    wire NOR34437_out;
    wire NOR34438_out;
    wire NOR34443_out;
    wire NOR34444_out;
    wire NOR34445_out;
    wire NOR41129_out;
    wire NOR41130_out;
    
    // S register part 2
    
    // S08
    nor_2 #(1'b0) NOR34301(G01ED,           WEDOPG_,        WL08_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34302(NOR34302_out,    WL08_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34303(NOR34303_out,    NOR34302_out,   NOR34304_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34304(NOR34304_out,    NOR34303_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34306(S08,             NOR34303_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34307(S08_,            NOR34304_out,                                                   reset, prop_clk);
    
    // S09
    nor_2 #(1'b0) NOR34309(G02ED,           WEDOPG_,        WL09_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34310(NOR34310_out,    WL08_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34311(NOR34311_out,    NOR34310_out,   NOR34312_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34312(NOR34312_out,    NOR34311_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34314(S09,             NOR34311_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34315(S09_,            NOR34312_out,                                                   reset, prop_clk);
    // NOR34316 omitted (fan-out expansion)
    
    // S10
    nor_2 #(1'b0) NOR34317(G03ED,           WEDOPG_,        WL10_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34318(NOR34318_out,    WL10_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34319(NOR34319_out,    NOR34318_out,   NOR34320_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34320(NOR34320_out,    NOR34319_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34322(S10,             NOR34319_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34323(S10_,            NOR34320_out,                                                   reset, prop_clk);
    
    // S11
    nor_2 #(1'b0) NOR34325(G04ED,           WEDOPG_,        WL11_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34326(NOR34326_out,    WL11_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34327(NOR34327_out,    NOR34326_out,   NOR34328_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34328(NOR34328_out,    NOR34327_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34330(S11,             NOR34327_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34331(S11_,            NOR34328_out,                                                   reset, prop_clk);
    
    // S12
    nor_2 #(1'b0) NOR34333(G05ED,           WEDOPG_,        WL12_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR34334(NOR34334_out,    WL12_,          WSG_,                                           reset, prop_clk);
    nor_3 #(1'b1) NOR34335(NOR34335_out,    n8XP5,          NOR34334_out,   NOR34336_out,                  reset, prop_clk);
    nor_2 #(1'b0) NOR34336(NOR34336_out,    NOR34335_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34338(S12,             NOR34335_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34339(S12_,            NOR34336_out,                                                   reset, prop_clk);
    
    // NOR34340 moved to A21 sheet 1
    
    // G06ED
    nor_2 #(1'b0) NOR34341(G06ED,           WEDOPG_,        WL13_,                                          reset, prop_clk);
    
    // G07ED
    nor_2 #(1'b0) NOR34342(G07ED,           WEDOPG_,        WL14_,                                          reset, prop_clk);
    
    
    // Editing control
    nor_1 #(1'b0) NOR34343(NOR34343_out,    OCTAD2,                                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR34344(NOR34344_out,    XB0_,           T02_,           NOR34343_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34345(NOR34345_out,    XB1_,           T02_,           NOR34343_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34346(NOR34346_out,    XB2_,           T02_,           NOR34343_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR34347(NOR34347_out,    XB3_,           T02_,           NOR34343_out,                   reset, prop_clk);
    
    // CYR_
    nor_2 #(1'b0) NOR34348(CYR_,            NOR34344_out,   NOR34349_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34349(NOR34349_out,    CYR_,           T12A,                                           reset, prop_clk);
    
    // SR_
    nor_2 #(1'b0) NOR34350(SR_ ,            NOR34345_out,   NOR34351_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34351(NOR34351_out,    SR_,            T12A,                                           reset, prop_clk);
    
    // CYL_
    nor_2 #(1'b0) NOR34352(CYL_,            NOR34346_out,   NOR34353_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34353(NOR34353_out,    CYL_,           T12A,                                           reset, prop_clk);
    
    // EDOP_
    nor_2 #(1'b0) NOR34354(EDOP_,           NOR34347_out,   NOR34355_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34355(NOR34355_out,    EDOP_,          T12A,                                           reset, prop_clk);
    
    // GINH
    nor_4 #(1'b0) NOR34356(NOR34356_out,    NOR34349_out,   NOR34351_out,   NOR34353_out,   NOR34355_out,   reset, prop_clk);
    // NOR34357 merged with NOR34356
    nor_1 #(1'b0) NOR34358(GINH,            NOR34356_out,                                                   reset, prop_clk);
    
    // NOR34359 omitted (not used)
    // NOR34360 omitted (not used)
    // NOR34361 omitted (not connected)
    // NOR34362 moved to A21 sheet 1
    
    
    // S register part 1
    
    // S01
    nor_2 #(1'b0) NOR34401(NOR34401_out,    WL01_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34402(NOR34402_out,    NOR34401_out,   NOR34403_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34403(NOR34403_out,    NOR34402_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34404(S01,             NOR34402_out,                                                   reset, prop_clk);
    // NOR34405 merged with NOR34404
    nor_1 #(1'b0) NOR34406(S01_,            NOR34403_out,                                                   reset, prop_clk);
    // NOR34407 merged with NOR34406
    
    // S02
    nor_2 #(1'b0) NOR34408(NOR34408_out,    WL02_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34409(NOR34409_out,    NOR34408_out,   NOR34410_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34410(NOR34410_out,    NOR34409_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34411(S02,             NOR34409_out,                                                   reset, prop_clk);
    // NOR34412 merged with NOR34411
    nor_1 #(1'b0) NOR34413(S02_,            NOR34410_out,                                                   reset, prop_clk);
    // NOR34414 merged with NOR34413
    
    // S03
    nor_2 #(1'b0) NOR34415(NOR34415_out,    WL03_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34416(NOR34416_out,    NOR34415_out,   NOR34417_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34417(NOR34417_out,    NOR34416_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34418(S03,             NOR34416_out,                                                   reset, prop_clk);
    // NOR34419 merged with NOR34418
    nor_1 #(1'b0) NOR34420(S03_,            NOR34417_out,                                                   reset, prop_clk);
    // NOR34421 merged with NOR34420
    
    // S04
    nor_2 #(1'b0) NOR34422(NOR34422_out,    WL04_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34423(NOR34423_out,    NOR34422_out,   NOR34424_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34424(NOR34424_out,    NOR34423_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34425(S04,             NOR34423_out,                                                   reset, prop_clk);
    // NOR34426 merged with NOR34425
    nor_1 #(1'b0) NOR34427(S04_,            NOR34424_out,                                                   reset, prop_clk);
    // NOR34428 merged with NOR34427
    
    // S05
    nor_2 #(1'b0) NOR34429(NOR34429_out,    WL05_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34430(NOR34430_out,    NOR34429_out,   NOR34431_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34431(NOR34431_out,    NOR34430_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34432(S05,             NOR34430_out,                                                   reset, prop_clk);
    // NOR34433 merged with NOR34432
    nor_1 #(1'b0) NOR34434(S05_,            NOR34431_out,                                                   reset, prop_clk);
    // NOR34435 merged with NOR34434
    
    // S06
    nor_2 #(1'b0) NOR34436(NOR34436_out,    WL06_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34437(NOR34437_out,    NOR34436_out,   NOR34438_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34438(NOR34438_out,    NOR34437_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34439(S06,             NOR34437_out,                                                   reset, prop_clk);
    // NOR34439 merged with NOR34440
    nor_1 #(1'b0) NOR34441(S06_,            NOR34438_out,                                                   reset, prop_clk);
    // NOR34442 merged with NOR34441
    
    // S07
    nor_2 #(1'b0) NOR34443(NOR34443_out,    WL07_,          WSG_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR34444(NOR34444_out,    NOR34443_out,   NOR34445_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34445(NOR34445_out,    NOR34444_out,   CSG,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR34447(S07,             NOR34444_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR34449(S07_,            NOR34445_out,                                                   reset, prop_clk);
    
    // G01A
    nor_1 #(1'b0) NOR34466(G01A,            G01A_,                                                          reset, prop_clk);
    // G16SW_ (moved here from A13)
    nor_2 #(1'b0) NOR41129(NOR41129_out,    G01A,           G16A_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR41130(NOR41130_out,    SUMA16_,        SUMB16_,            G01A_,                      reset, prop_clk);
    nor_2 #(1'b0) NOR41131(G16SW_,          NOR41129_out,   NOR41130_out,                                   reset, prop_clk);
    
    
    // NOR34446 moved to A7 sheet 1
    // NOR34448 removed (fan-out expansion)
    
    // NOR34454 removed (not used)
    // NOR34455 removed (not used)
    // NOR34456 removed (not used)
    // NOR34457 removed (not used)
    // NOR34458 removed (not used)
    // NOR34459 removed (not used)
    // NOR34460 removed (not used)
    // NOR34461 removed (not connected)
    // NOR34462 moved to A6 sheet 1
    // NOR34463 moved to A6 sheet 1
    // NOR34464 moved to A6 sheet 1
    // NOR34465 moved to A6 sheet 1
    // NOR34467 moved to A7 sheet 1
    
    
endmodule