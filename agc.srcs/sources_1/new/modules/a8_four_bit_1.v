`timescale 1ns / 1ps

module a8_four_bit_1(
    // inputs
    A2XG_, PONEX, MONEX, TWOX, CLXC, CUG, WYLOG_, WYDLOG_, WYDG_, CI01_, RULOG_,
    WAG_, CAG, WALSG_, RAG_, 
    WLG_, G2LSG_, CLG1G, RLG_, 
    WQG_, CQG, RQG_,
    WZG_, CZG, RZG_,
    WBG_, CBG, RBLG_, RCG_,
    WG3G_, WG4G_, L2GDG_, MCRO_, WG1G_, CGG, RGG_,
    WL05_, WL06_, WL16_,
    SA01, SA02, SA03, SA04,
    G01ED, G02ED, G03ED, G04ED,
    RB1, R15, R1C, RB2,
    CH01, CH02, CH03, CH04,
    G05_, G06_, G07_,
    MDT01, MDT02, MDT03, MDT04,
    SETAB_, SETCD_,
    S08, S08_,
    XUY05_, XUY06_,
    WHOMP, WHOMPA,
    CAD1, CAD2, CAD3, CAD4,
    BBK1, BBK2, BBK3,
    RB1F, R6, RPTAD3, RPTAD4,
    
    // outputs
    WL01, WL01_, MWL01, WL02, WL02_, MWL02, WL03, WL03_, MWL03, WL04, WL04_, MWL04,
    CO06,
    CI05_,
    XUY01_, XUY02_,
    SUMA01_, SUMB01_, SUMA02_, SUMB02_, SUMA03_, SUMB03_, SUMA04_, SUMB04_,
    G01, G01_, GEM01, G02, GEM02, G03, GEM03, G04, GEM04,
    L01_, L02_, L03_, L04_,
    CLEARA, CLEARB, CLEARC, CLEARD,
    
    //input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    input wire A2XG_, PONEX, MONEX, TWOX, CLXC, CUG, WYLOG_, WYDLOG_, WYDG_, CI01_, RULOG_;
    input wire WAG_, CAG, WALSG_, RAG_;
    input wire WLG_, G2LSG_, CLG1G, RLG_;
    input wire WQG_, CQG, RQG_;
    input wire WZG_, CZG, RZG_;
    input wire WBG_, CBG, RBLG_, RCG_;
    input wire WG3G_, WG4G_, L2GDG_, MCRO_, WG1G_, CGG, RGG_;
    input wire WL05_, WL06_, WL16_;
    input wire SA01, SA02, SA03, SA04;
    input wire G01ED, G02ED, G03ED, G04ED;
    input wire RB1, R15, R1C, RB2;
    input wire CH01, CH02, CH03, CH04;
    input wire G05_, G06_, G07_;
    input wire MDT01, MDT02, MDT03, MDT04;
    input wire SETAB_, SETCD_;
    input wire S08, S08_;
    input wire XUY05_, XUY06_;
    input wire WHOMP, WHOMPA;
    input wire CAD1, CAD2, CAD3, CAD4;
    input wire BBK1, BBK2, BBK3;
    input wire RB1F, R6, RPTAD3, RPTAD4;
    
    output wire WL01, WL01_, MWL01, WL02, WL02_, MWL02, WL03, WL03_, MWL03, WL04, WL04_, MWL04;
    output wire CO06;
    output wire CI05_;
    output wire XUY01_, XUY02_;
    output wire SUMA01_, SUMB01_, SUMA02_, SUMB02_, SUMA03_, SUMB03_, SUMA04_, SUMB04_;
    output wire G01, G01_, GEM01, G02, GEM02, G03, GEM03, G04, GEM04;
    output wire L01_, L02_, L03_, L04_;
    output wire CLEARA, CLEARB, CLEARC, CLEARD;
    
    /**************************
    *
    *  Module A8 sheet 1
    *  Sheet number 2005255/1
    *
    **************************/
    
    wire NOR51101_out;
    wire NOR51102_out;
    wire NOR51103_out;
    wire NOR51104_out;
    wire NOR51105_out;
    wire NOR51106_out;
    wire NOR51107_out;
    wire NOR51108_out;
    wire NOR51109_out;
    wire NOR51111_out;
    wire NOR51113_out;
    wire NOR51117_out;
    wire NOR51118_out;
    wire NOR51119_out;
    wire NOR51121_out;
    wire NOR51122_out;
    wire NOR51123_out;
    wire NOR51124_out;
    wire NOR51125_out;
    wire NOR51127_out;
    wire NOR51128_out;
    wire NOR51129_out;
    wire NOR51130_out;
    wire NOR51131_out;
    wire NOR51132_out;
    wire NOR51133_out;
    wire NOR51134_out;
    wire NOR51136_out;
    wire NOR51137_out;
    wire NOR51138_out;
    wire NOR51139_out;
    wire NOR51140_out;
    wire NOR51141_out;
    wire NOR51142_out;
    wire NOR51143_out;
    wire NOR51144_out;
    wire NOR51145_out;
    wire NOR51146_out;
    wire NOR51147_out;
    wire NOR51148_out;
    wire NOR51151_out;
    wire NOR51153_out;
    wire NOR51157_out;
    wire NOR51158_out;
    
    wire NOR51201_out;
    wire NOR51202_out;
    wire NOR51203_out;
    wire NOR51204_out;
    wire NOR51205_out;
    wire NOR51206_out;
    wire NOR51207_out;
    wire NOR51208_out;
    wire NOR51209_out;
    wire NOR51211_out;
    wire NOR51213_out;
    wire NOR51217_out;
    wire NOR51218_out;
    wire NOR51219_out;
    wire NOR51221_out;
    wire NOR51222_out;
    wire NOR51223_out;
    wire NOR51224_out;
    wire NOR51225_out;
    wire NOR51227_out;
    wire NOR51228_out;
    wire NOR51229_out;
    wire NOR51230_out;
    wire NOR51231_out;
    wire NOR51232_out;
    wire NOR51233_out;
    wire NOR51234_out;
    wire NOR51236_out;
    wire NOR51237_out;
    wire NOR51238_out;
    wire NOR51239_out;
    wire NOR51240_out;
    wire NOR51241_out;
    wire NOR51242_out;
    wire NOR51243_out;
    wire NOR51244_out;
    wire NOR51245_out;
    wire NOR51246_out;
    wire NOR51247_out;
    wire NOR51248_out;
    wire NOR51251_out;
    wire NOR51253_out;
    wire NOR51257_out;
    wire NOR51258_out;
    
    wire NOR51401_out;
    wire NOR51402_out;
    wire NOR51403_out;
    wire NOR51404_out;
    wire NOR51405_out;
    wire NOR51406_out;
    wire NOR51407_out;
    wire NOR51408_out;
    wire NOR51409_out;
    wire NOR51411_out;
    wire NOR51413_out;
    wire NOR51417_out;
    wire NOR51418_out;
    wire NOR51419_out;
    wire NOR51421_out;
    wire NOR51422_out;
    wire NOR51423_out;
    wire NOR51424_out;
    wire NOR51425_out;
    wire NOR51427_out;
    wire NOR51428_out;
    wire NOR51429_out;
    wire NOR51430_out;
    wire NOR51431_out;
    wire NOR51432_out;
    wire NOR51433_out;
    wire NOR51434_out;
    wire NOR51436_out;
    wire NOR51437_out;
    wire NOR51438_out;
    wire NOR51439_out;
    wire NOR51440_out;
    wire NOR51441_out;
    wire NOR51442_out;
    wire NOR51443_out;
    wire NOR51444_out;
    wire NOR51445_out;
    wire NOR51446_out;
    wire NOR51447_out;
    wire NOR51448_out;
    wire NOR51451_out;
    wire NOR51453_out;
    wire NOR51457_out;
    wire NOR51458_out;
    
    wire NOR51301_out;
    wire NOR51302_out;
    wire NOR51303_out;
    wire NOR51304_out;
    wire NOR51305_out;
    wire NOR51306_out;
    wire NOR51307_out;
    wire NOR51308_out;
    wire NOR51309_out;
    wire NOR51311_out;
    wire NOR51313_out;
    wire NOR51317_out;
    wire NOR51318_out;
    wire NOR51319_out;
    wire NOR51321_out;
    wire NOR51322_out;
    wire NOR51323_out;
    wire NOR51324_out;
    wire NOR51325_out;
    wire NOR51327_out;
    wire NOR51328_out;
    wire NOR51329_out;
    wire NOR51330_out;
    wire NOR51331_out;
    wire NOR51332_out;
    wire NOR51333_out;
    wire NOR51334_out;
    wire NOR51336_out;
    wire NOR51337_out;
    wire NOR51338_out;
    wire NOR51339_out;
    wire NOR51340_out;
    wire NOR51341_out;
    wire NOR51342_out;
    wire NOR51343_out;
    wire NOR51344_out;
    wire NOR51345_out;
    wire NOR51346_out;
    wire NOR51347_out;
    wire NOR51348_out;
    wire NOR51351_out;
    wire NOR51353_out;
    wire NOR51357_out;
    wire NOR51358_out;
    
    wire NOR34450_out;
    wire NOR34451_out;
    wire NOR35359_out;
    wire NOR35360_out;
    wire NOR35460_out;
    wire NOR53462_out;
    
    
    wire A01_, A02_, A03_, A04_;
    wire RL01_, RL02_, RL03_, RL04_;
    wire XUY03_, XUY04_;
    wire CI02_, CI03_, CI04_;
    wire CO04;
    wire Z01_, Z02_, Z03_, Z04_;
    wire G02_, G03_, G04_;
    wire S08A, S08A_;
    
    // Bit column 1
     
    // CO04 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51101(NOR51101_out,    XUY03_,         XUY01_,         CI01_,                      SIM_CLK);
    
    // X flip-flop
    nor_2 #(1'b0) NOR51102(NOR51102_out,    A2XG_,          A01_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR51103(NOR51103_out,    PONEX,          NOR51102_out,   NOR51104_out,               SIM_CLK);
    nor_3 #(1'b0) NOR51104(NOR51104_out,    NOR51103_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR51105(NOR51105_out,    WYLOG_,         WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51106(NOR51106_out,    WL16_,          WYDLOG_,                                    SIM_CLK);
    
    nor_3 #(1'b1) NOR51107(NOR51107_out,    NOR51105_out,   NOR51106_out,   NOR51108_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51108(NOR51108_out,    NOR51107_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR51109(NOR51109_out,    NOR51103_out,   NOR51107_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51110(XUY01_,          NOR51104_out,   NOR51108_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR51112(SUMA01_,         NOR51109_out,   CI01_,          XUY01_,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR51113(NOR51113_out,    NOR51109_out,   XUY01_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR51111(NOR51111_out,    CI01_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR51115(SUMB01_,         NOR51113_out,   NOR51111_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR51114(CI02_,           NOR51109_out,   SUMA01_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR51117(NOR51117_out,    SUMA01_,        SUMB01_,        RULOG_,                     SIM_CLK);
    
    // NOR51116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR51118(NOR51118_out,    WAG_,           WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51119(NOR51119_out,    WL03_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51120(A01_,            NOR51118_out,   NOR51119_out,   NOR51121_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51121(NOR51121_out,    A01_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51122(NOR51122_out,    RAG_,           A01_,                                       SIM_CLK);
    
    // RL01_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51123(NOR51123_out,   NOR51117_out,   NOR51122_out,   CH01,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR51124(NOR51124_out,    WLG_,           WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51125(NOR51125_out,    G04_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51126(L01_,            NOR51124_out,   NOR51125_out,   NOR51127_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51127(NOR51127_out,    L01_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51128(NOR51128_out,    RLG_,           L01_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR51129(NOR51129_out,    WQG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51130(NOR51130_out,    NOR51129_out,   NOR51131_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51131(NOR51131_out,    NOR51130_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51132(NOR51132_out,    RQG_,           NOR51130_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR51134(NOR51134_out,    WZG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51135(Z01_,            NOR51134_out,   NOR51136_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51136(NOR51136_out,    Z01_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51137(NOR51137_out,    RZG_,           Z01_,                                       SIM_CLK);
    
    // RL01_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51133(NOR51133_out,    NOR51128_out,   NOR51132_out,   NOR51137_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR51138(NOR51138_out,    WBG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51139(NOR51139_out,    NOR51138_out,   NOR51140_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51140(NOR51140_out,    NOR51139_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51141(NOR51141_out,    RBLG_,          NOR51139_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51142(NOR51142_out,    NOR51140_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR51143(NOR51143_out,    WL16_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51144(NOR51144_out,    WL02_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51145(NOR51145_out,    L2GDG_,         MCRO_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51146(NOR51146_out,    WG1G_,          WL01_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR51147(NOR51147_out,    SA01,           NOR51143_out,   NOR51144_out,   G01ED,      SIM_CLK);
    // NOR51162 merged into NOR51147
    nor_3 #(1'b1) NOR51148(NOR51148_out,    NOR51145_out,   NOR51146_out,   G01,                        SIM_CLK);
    assign G01_ = NOR51147_out & NOR51148_out;
    nor_2 #(1'b0) NOR51149(G01,             G01_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR51150(GEM01,           G01_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR51151(NOR51151_out,    RGG_,           G01_,                                       SIM_CLK);
    
    // RL01_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51157(NOR51157_out,    NOR51141_out,   NOR51142_out,   NOR51151_out,               SIM_CLK);
    
    // RL01_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51158(NOR51158_out,    MDT01,          RB1,            R15,                        SIM_CLK);
    
    // RL01_ part 5
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0) NOR35460(NOR35460_out,    CAD1,           BBK1,           RB1F,                       SIM_CLK);
    
    // RL01_
    assign RL01_ = NOR51123_out & NOR51133_out & NOR51157_out & NOR51158_out & NOR35460_out;
    
    // WL01
    nor_1 #(1'b0) NOR51152(WL01,            RL01_,                                                      SIM_CLK);
    
    // MWL01
    nor_1 #(1'b0) NOR51153(NOR51153_out,    WL01,                                                       SIM_CLK);
    assign MWL01 = NOR51153_out;
    
    // WL01_
    nor_1 #(1'b0) NOR51154(WL01_,           WL01,                                                       SIM_CLK);
    // NOR51155 and NOR51156 omitted
    
    // CLEARA
    nor_2 #(1'b0) NOR51161(CLEARA,          SETAB_,         S08A_,                                      SIM_CLK);
    
    
    // Bit column 2
    
    // CO04 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR51201(NOR51201_out,    XUY04_,         XUY02_,                                     SIM_CLK);
    
    // CO04 part 3
    // // No cross-module fan-in, moved here from A10 sheet 2
    nor_1 #(1'b0) NOR53462(NOR53462_out,    WHOMPA,                                                     SIM_CLK);
    assign CO04 = NOR51101_out & NOR51201_out & NOR53462_out;
    
    // X flip-flop
    nor_2 #(1'b0) NOR51202(NOR51202_out,    A2XG_,          A02_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR51203(NOR51203_out,    TWOX,           NOR51202_out,   NOR51204_out,               SIM_CLK);
    nor_3 #(1'b0) NOR51204(NOR51204_out,    NOR51203_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR51205(NOR51205_out,    WYLOG_,         WL02_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51206(NOR51206_out,    WL01_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR51207(NOR51207_out,    NOR51205_out,   NOR51206_out,   NOR51208_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51208(NOR51208_out,    NOR51207_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR51209(NOR51209_out,    NOR51203_out,   NOR51207_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51210(XUY02_,          NOR51204_out,   NOR51208_out,                               SIM_CLK);
    
    nor_4 #(1'b0) NOR51212(SUMA02_,         NOR51209_out,   XUY02_,         CI02_,          WHOMP,      SIM_CLK);
    // NOR54162 merged into NOR51212
    
    nor_2 #(1'b0) NOR51213(NOR51213_out,    NOR51209_out,   XUY02_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR51211(NOR51211_out,    CI02_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR51215(SUMB02_,         NOR51213_out,   NOR51211_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR51214(CI03_,           NOR51209_out,   SUMA02_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR51217(NOR51217_out,    SUMA02_,        SUMB02_,        RULOG_,                     SIM_CLK);
    
    // NOR51216 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR51218(NOR51218_out,    WAG_,           WL02_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51219(NOR51219_out,    WL04_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51220(A02_,            NOR51218_out,   NOR51219_out,   NOR51221_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51221(NOR51221_out,    A02_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51222(NOR51222_out,    RAG_,           A02_,                                       SIM_CLK);
    
    // RL02_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51223(NOR51223_out,    NOR51217_out,   NOR51222_out,   CH02,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR51224(NOR51224_out,    WLG_,           WL02_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51225(NOR51225_out,    G05_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51226(L02_,            NOR51224_out,   NOR51225_out,   NOR51227_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51227(NOR51227_out,    L02_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51228(NOR51228_out,    RLG_,           L02_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR51229(NOR51229_out,    WQG_,           WL02_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51230(NOR51230_out,    NOR51229_out,   NOR51231_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51231(NOR51231_out,    NOR51230_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51232(NOR51232_out,    RQG_,           NOR51230_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR51234(NOR51234_out,    WZG_,           WL02_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51235(Z02_,            NOR51234_out,   NOR51236_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51236(NOR51236_out,    Z02_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51237(NOR51237_out,    RZG_,           Z02_,                                       SIM_CLK);
    
    // RL02_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51233(NOR51233_out,    NOR51228_out,   NOR51232_out,   NOR51237_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR51238(NOR51238_out,    WBG_,           WL02_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51239(NOR51239_out,    NOR51238_out,   NOR51240_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51240(NOR51240_out,    NOR51239_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51241(NOR51241_out,    RBLG_,          NOR51239_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51242(NOR51242_out,    NOR51240_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR51243(NOR51243_out,    WL01_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51244(NOR51244_out,    WL03_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51245(NOR51245_out,    L2GDG_,         L01_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR51246(NOR51246_out,    WG1G_,          WL02_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR51247(NOR51247_out,    SA02,           NOR51243_out,   NOR51244_out,   G02ED,      SIM_CLK);
    // NOR51163 merged into NOR51247
    
    nor_3 #(1'b1) NOR51248(NOR51248_out,    NOR51245_out,   NOR51246_out,   G02,                        SIM_CLK);
    assign G02_ = NOR51247_out & NOR51248_out;
    nor_2 #(1'b0) NOR51249(G02,             G02_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR51250(GEM02,           G02_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR51251(NOR51251_out,    RGG_,           G02_,                                       SIM_CLK);
    
    // RL02_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51257(NOR51257_out,    NOR51241_out,   NOR51242_out,   NOR51251_out,               SIM_CLK);
    
    // RL02_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51258(NOR51258_out,    MDT02,          R1C,            RB2,                        SIM_CLK);
    
    // RL02_ part 5
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0) NOR35360(NOR35360_out,    CAD2,           BBK2,           R6,                         SIM_CLK);
    
    // RL02_
    assign RL02_ = NOR51223_out & NOR51233_out & NOR51257_out & NOR51258_out & NOR35360_out;
    
    // WL02
    nor_1 #(1'b0) NOR51252(WL02,            RL02_,                                                      SIM_CLK);
    
    // MWL02
    nor_1 #(1'b0) NOR51253(NOR51253_out,    RL02_,                                                      SIM_CLK);
    assign MWL02 = NOR51253_out;
    
    // WL02_
    nor_1 #(1'b0) NOR51254(WL02_,           WL02,                                                       SIM_CLK);
    // NOR51255 and NOR51256 omitted
    
    // S08A_
    nor_1 #(1'b0) NOR51261(S08A_,           S08,                                                        SIM_CLK);
    
    // S08A
    nor_1 #(1'b0) NOR51262(S08A,            S08_,                                                       SIM_CLK);
    
    
    /**************************
    *
    *  Module A8 sheet 2
    *  Sheet number 2005255/2
    *
    **************************/
    
    // Bit column 3
    
    // CO06 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51401(NOR51401_out,    XUY05_,         XUY03_,         CI03_,                      SIM_CLK);
    
    // X register flip-flop
    nor_2 #(1'b0) NOR51402(NOR51402_out,    A2XG_,          A03_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR51403(NOR51403_out,    MONEX,          NOR51402_out,   NOR51404_out,               SIM_CLK);
    nor_3 #(1'b0) NOR51404(NOR51404_out,    NOR51403_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR51405(NOR51405_out,    WYLOG_,         WL03_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51406(NOR51406_out,    WL02_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR51407(NOR51407_out,    NOR51405_out,   NOR51406_out,   NOR51408_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51408(NOR51408_out,    NOR51407_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR51409(NOR51409_out,    NOR51403_out,   NOR51407_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51410(XUY03_,          NOR51404_out,   NOR51408_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR51412(SUMA03_,         NOR51409_out,   CI03_,          XUY03_,                     SIM_CLK);
        
    nor_2 #(1'b0) NOR51413(NOR51413_out,    NOR51409_out,   XUY03_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR51411(NOR51411_out,    CI03_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR51415(SUMB03_,         NOR51413_out,   NOR51411_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR51414(CI04_,           NOR51409_out,   SUMA03_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR51417(NOR51417_out,    SUMA03_,        SUMB03_,        RULOG_,                     SIM_CLK);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR51418(NOR51418_out,    WAG_,           WL03_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51419(NOR51419_out,    WL05_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51420(A03_,            NOR51418_out,   NOR51419_out,   NOR51421_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51421(NOR51421_out,    A03_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51422(NOR51422_out,    RAG_,           A03_,                                       SIM_CLK);
    
    // RL03_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51423(NOR51423_out,    NOR51417_out,   NOR51422_out,   CH03,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR51424(NOR51424_out,    WLG_,           WL03_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51425(NOR51425_out,    G06_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51426(L03_,            NOR51424_out,   NOR51425_out,   NOR51427_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51427(NOR51427_out,    L03_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51428(NOR51428_out,    RLG_,           L03_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR51429(NOR51429_out,    WQG_,           WL03_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51430(NOR51430_out,    NOR51429_out,   NOR51431_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51431(NOR51431_out,    NOR51430_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51432(NOR51432_out,    RQG_,           NOR51430_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR51434(NOR51434_out,    WZG_,           WL03_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51435(Z03_,            NOR51434_out,   NOR51436_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51436(NOR51436_out,    Z03_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51437(NOR51437_out,    RZG_,           Z03_,                                       SIM_CLK);
    
    // RL03_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51433(NOR51433_out,    NOR51428_out,   NOR51432_out,   NOR51437_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR51438(NOR51438_out,    WBG_,           WL03_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51439(NOR51439_out,    NOR51438_out,   NOR51440_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51440(NOR51440_out,    NOR51439_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51441(NOR51441_out,    RBLG_,          NOR51439_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51442(NOR51442_out,    NOR51440_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR51443(NOR51443_out,    WL02_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51444(NOR51444_out,    WL04_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51445(NOR51445_out,    L2GDG_,         L02_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR51446(NOR51446_out,    WG1G_,          WL03_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR51447(NOR51447_out,    SA03,           NOR51443_out,   NOR51444_out,   G03ED,      SIM_CLK);
    // NOR51263 merged with NOR51447
    nor_3 #(1'b1) NOR51448(NOR51448_out,    NOR51445_out,   NOR51446_out,   G03,                        SIM_CLK);
    assign G03_ = NOR51447_out & NOR51448_out;
    nor_2 #(1'b0) NOR51449(G03,             G03_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR51450(GEM03,           G03_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR51451(NOR51451_out,    RGG_,           G03_,                                       SIM_CLK);
    
    // RL03_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51457(NOR51457_out,    NOR51441_out,   NOR51442_out,   NOR51451_out,               SIM_CLK);
    
    // RL03_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51458(NOR51458_out,    MDT03,          R1C,            R15,                        SIM_CLK);
    
    // RL03_ part 5
    // No cross-module fan-in
    // Moved here from A12 sheet 2
    nor_1 #(1'b0) NOR34450(NOR34450_out,    R6,                                                         SIM_CLK);
    
    // RL03_ part 6
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0) NOR35359(NOR35359_out,    RPTAD3,         BBK3,           CAD3,                       SIM_CLK);
    
    // RL03_
    assign RL03_ = NOR51423_out & NOR51433_out & NOR51457_out & NOR51458_out & NOR34450_out & NOR35359_out;
    
    // WL03
    nor_1 #(1'b0) NOR51452(WL03,            RL03_,                                                      SIM_CLK);
    
    // MWL03
    nor_1 #(1'b0) NOR51453(NOR51453_out,    RL03_,                                                      SIM_CLK);
    assign MWL03 = NOR51453_out;
    
    // WL03_
    nor_1 #(1'b0) NOR51454(WL03_,           WL03,                                                       SIM_CLK);
    // NOR51455 and NOR51456 omitted
    
    // CLEARB
    nor_2 #(1'b0) NOR51461(CLEARB,          SETAB_,         S08A,                                       SIM_CLK);
    
    
    // Bit column 4
    
    // CO06
    // No cross-module fan-in
    nor_2 #(1'b0) NOR51301(NOR51301_out,    XUY06_,         XUY04_,                                     SIM_CLK);
    assign CO06 = NOR51401_out & NOR51301_out;
    
    // X register flip-flop
    nor_2 #(1'b0) NOR51302(NOR51302_out,    A2XG_,          A04_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR51303(NOR51303_out,    MONEX,          NOR51302_out,   NOR51304_out,               SIM_CLK);
    nor_3 #(1'b0) NOR51304(NOR51304_out,    NOR51303_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR51305(NOR51305_out,    WYLOG_,         WL04_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51306(NOR51306_out,    WL03_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR51307(NOR51307_out,    NOR51305_out,   NOR51306_out,   NOR51308_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51308(NOR51308_out,    NOR51307_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR51309(NOR51309_out,    NOR51303_out,   NOR51307_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51310(XUY04_,          NOR51304_out,   NOR51308_out,                               SIM_CLK);
    
    nor_4 #(1'b0) NOR51312(SUMA04_,         NOR51309_out,   XUY04_,         CI04_,          WHOMP,      SIM_CLK);
    // NOR54163 from A11 sheet 1 merged into NOR51312
    
    nor_2 #(1'b0) NOR51313(NOR51313_out,    NOR51309_out,   XUY04_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR51311(NOR51311_out,    CI04_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR51315(SUMB04_,         NOR51313_out,   NOR51311_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR51314(CI05_,           NOR51309_out,   SUMA04_,        CO04,                       SIM_CLK);
    
    nor_3 #(1'b0) NOR51317(NOR51317_out,    SUMA04_,        SUMB04_,        RULOG_,                     SIM_CLK);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR51318(NOR51318_out,    WAG_,           WL04_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51319(NOR51319_out,    WL06_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51320(A04_,            NOR51318_out,   NOR51319_out,   NOR51321_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51321(NOR51321_out,    A04_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51322(NOR51322_out,    RAG_,           A04_,                                       SIM_CLK);
    
    // RL04_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51323(NOR51323_out,    NOR51317_out,   NOR51322_out,   CH04,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR51324(NOR51324_out,    WLG_,           WL04_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51325(NOR51325_out,    G07_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR51326(L04_,            NOR51324_out,   NOR51325_out,   NOR51327_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51327(NOR51327_out,    L04_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51328(NOR51328_out,    RLG_,           L04_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR51329(NOR51329_out,    WQG_,           WL04_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51330(NOR51330_out,    NOR51329_out,   NOR51331_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51331(NOR51331_out,    NOR51330_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51332(NOR51332_out,    RQG_,           NOR51330_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR51334(NOR51334_out,    WZG_,           WL04_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51335(Z04_,            NOR51334_out,   NOR51336_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51336(NOR51336_out,    Z04_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51337(NOR51337_out,    RZG_,           Z04_,                                       SIM_CLK);
    
    // RL04_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51333(NOR51333_out,    NOR51328_out,   NOR51332_out,   NOR51337_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR51338(NOR51338_out,    WBG_,           WL04_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR51339(NOR51339_out,    NOR51338_out,   NOR51340_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51340(NOR51340_out,    NOR51339_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51341(NOR51341_out,    RBLG_,          NOR51339_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51342(NOR51342_out,    NOR51340_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR51343(NOR51343_out,    WL03_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51344(NOR51344_out,    WL05_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51345(NOR51345_out,    L2GDG_,         L03_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR51346(NOR51346_out,    WG1G_,          WL04_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR51347(NOR51347_out,    SA04,           NOR51343_out,   NOR51344_out,   G04ED,      SIM_CLK);
    // NOR51462 merged into NOR51347
    nor_3 #(1'b1) NOR51348(NOR51348_out,    NOR51345_out,   NOR51346_out,   G04,                        SIM_CLK);
    assign G04_ = NOR51347_out & NOR51348_out;
    nor_2 #(1'b0) NOR51349(G04,             G04_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR51350(GEM04,           G04_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR51351(NOR51351_out,    RGG_,           G04_,                                       SIM_CLK);
    
    // RL04_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51357(NOR51357_out,    NOR51341_out,   NOR51342_out,   NOR51351_out,               SIM_CLK);
    
    // RL04_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0) NOR51358(NOR51358_out,    MDT04,          R1C,            R15,                        SIM_CLK);
    
    // RL04_ part 5
    // No cross-module fan-in, moved here from A12 sheet 2
    nor_2 #(1'b0) NOR34451(NOR34451_out,    CAD4,           RPTAD4,                                     SIM_CLK);
    
    // RL04_
    assign RL04_ = NOR51323_out & NOR51333_out & NOR51357_out & NOR51358_out & NOR34451_out;
    
    // WL04
    nor_1 #(1'b0) NOR51352(WL04,            RL04_,                                                      SIM_CLK);
    
    // MWL04
    nor_1 #(1'b0) NOR51353(NOR51353_out,    RL04_,                                                      SIM_CLK);
    assign MWL04 = NOR51353_out;
    
    // WL04_
    nor_1 #(1'b0) NOR51354(WL04_,           WL04,                                                       SIM_CLK);
    // NOR51355 and NOR51356 omitted
    
    // CLEARC
    nor_2 #(1'b0) NOR51361(CLEARC,          SETCD_,         S08A_,                                      SIM_CLK);
    
    // CLEARD
    nor_2 #(1'b0) NOR51362(CLEARD,          SETCD_,         S08A,                                       SIM_CLK);
    
    
endmodule


