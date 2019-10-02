`timescale 1ns / 1ps

module a9_four_bit_2(
    // inputs
    A2XG_, PONEX, MONEX, TWOX, CLXC, CUG, WYLOG_, WYDLOG_, WYDG_, CI05_, RULOG_,
    WAG_, CAG, WALSG_, RAG_, 
    WLG_, G2LSG_, CLG1G, RLG_, 
    WQG_, CQG, RQG_,
    WZG_, CZG, RZG_,
    WBG_, CBG, RBLG_, RCG_,
    WG3G_, WG4G_, L2GDG_, MCRO_, WG1G_, CGG, RGG_,
    L04_,
    WL04_, WL09_, WL10_, WL16_,
    SA05, SA06, SA07, SA08,
    G05ED, G06ED, G07ED, G08ED,
    RB1, R15, R1C, RB2,
    CH05, CH06, CH07, CH08,
    G09_, G10_, G11_,
    MDT05, MDT06, MDT07, MDT08,
    SETAB_, SETCD_,
    S08, S08_,
    XUY09_, XUY10_,
    WHOMP, WHOMPA,
    CAD5, CAD6, CAD7, CAD8,
    BBK1, BBK2, BBK3,
    RB1F, R6, RPTAD3, RPTAD5, RPTAD6,
    
    // outputs
    WL05, WL05_, MWL05, WL06, WL06_, MWL06, WL07, WL07_, MWL07, WL08, WL08_, MWL08,
    CI09_, 
    CO10,
    XUY05_, XUY06_,
    L08_,
    G05, G05_, GEM05, G06, G06_, GEM06, G07, G07_, GEM07, G08, GEM08,
    CLEARA, CLEARB, CLEARC, CLEARD,
    
    //input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    input wire A2XG_, PONEX, MONEX, TWOX, CLXC, CUG, WYLOG_, WYDLOG_, WYDG_, CI05_, RULOG_;
    input wire WAG_, CAG, WALSG_, RAG_;
    input wire WLG_, G2LSG_, CLG1G, RLG_;
    input wire WQG_, CQG, RQG_;
    input wire WZG_, CZG, RZG_;
    input wire WBG_, CBG, RBLG_, RCG_;
    input wire WG3G_, WG4G_, L2GDG_, MCRO_, WG1G_, CGG, RGG_;
    input wire L04_;
    input wire WL04_, WL09_, WL10_, WL16_;
    input wire SA05, SA06, SA07, SA08;
    input wire G05ED, G06ED, G07ED, G08ED;
    input wire RB1, R15, R1C, RB2;
    input wire CH05, CH06, CH07, CH08;
    input wire G09_, G10_, G11_;
    input wire MDT05, MDT06, MDT07, MDT08;
    input wire SETAB_, SETCD_;
    input wire S08, S08_;
    input wire XUY09_, XUY10_;
    input wire WHOMP, WHOMPA;
    input wire CAD5, CAD6, CAD7, CAD8;
    input wire BBK1, BBK2, BBK3;
    input wire RB1F, R6, RPTAD3, RPTAD5, RPTAD6;
    
    output wire WL05, WL05_, MWL05, WL06, WL06_, MWL06, WL07, WL07_, MWL07, WL08, WL08_, MWL08;
    output wire CI09_;
    output wire CO10;
    output wire XUY05_, XUY06_;
    output wire L08_;
    output wire G05, G05_, GEM05, G06, G06_, GEM06, G07, G07_, GEM07, G08, GEM08;
    output wire CLEARA, CLEARB, CLEARC, CLEARD;
    
    /**************************
    *
    *  Module A9 sheet 1
    *  Sheet number 2005256/1
    *
    **************************/
    
    wire NOR52101_out;
    wire NOR52102_out;
    wire NOR52103_out;
    wire NOR52104_out;
    wire NOR52105_out;
    wire NOR52106_out;
    wire NOR52107_out;
    wire NOR52108_out;
    wire NOR52109_out;
    wire NOR52111_out;
    wire NOR52113_out;
    wire NOR52117_out;
    wire NOR52118_out;
    wire NOR52119_out;
    wire NOR52121_out;
    wire NOR52122_out;
    wire NOR52123_out;
    wire NOR52124_out;
    wire NOR52125_out;
    wire NOR52127_out;
    wire NOR52128_out;
    wire NOR52129_out;
    wire NOR52130_out;
    wire NOR52131_out;
    wire NOR52132_out;
    wire NOR52133_out;
    wire NOR52134_out;
    wire NOR52136_out;
    wire NOR52137_out;
    wire NOR52138_out;
    wire NOR52139_out;
    wire NOR52140_out;
    wire NOR52141_out;
    wire NOR52142_out;
    wire NOR52143_out;
    wire NOR52144_out;
    wire NOR52145_out;
    wire NOR52146_out;
    wire NOR52147_out;
    wire NOR52148_out;
    wire NOR52151_out;
    wire NOR52153_out;
    wire NOR52157_out;
    wire NOR52158_out;
    
    wire NOR52201_out;
    wire NOR52202_out;
    wire NOR52203_out;
    wire NOR52204_out;
    wire NOR52205_out;
    wire NOR52206_out;
    wire NOR52207_out;
    wire NOR52208_out;
    wire NOR52209_out;
    wire NOR52211_out;
    wire NOR52213_out;
    wire NOR52217_out;
    wire NOR52218_out;
    wire NOR52219_out;
    wire NOR52221_out;
    wire NOR52222_out;
    wire NOR52223_out;
    wire NOR52224_out;
    wire NOR52225_out;
    wire NOR52227_out;
    wire NOR52228_out;
    wire NOR52229_out;
    wire NOR52230_out;
    wire NOR52231_out;
    wire NOR52232_out;
    wire NOR52233_out;
    wire NOR52234_out;
    wire NOR52236_out;
    wire NOR52237_out;
    wire NOR52238_out;
    wire NOR52239_out;
    wire NOR52240_out;
    wire NOR52241_out;
    wire NOR52242_out;
    wire NOR52243_out;
    wire NOR52244_out;
    wire NOR52245_out;
    wire NOR52246_out;
    wire NOR52247_out;
    wire NOR52248_out;
    wire NOR52251_out;
    wire NOR52253_out;
    wire NOR52257_out;
    wire NOR52258_out;
    
    wire NOR52401_out;
    wire NOR52402_out;
    wire NOR52403_out;
    wire NOR52404_out;
    wire NOR52405_out;
    wire NOR52406_out;
    wire NOR52407_out;
    wire NOR52408_out;
    wire NOR52409_out;
    wire NOR52411_out;
    wire NOR52413_out;
    wire NOR52417_out;
    wire NOR52418_out;
    wire NOR52419_out;
    wire NOR52421_out;
    wire NOR52422_out;
    wire NOR52423_out;
    wire NOR52424_out;
    wire NOR52425_out;
    wire NOR52427_out;
    wire NOR52428_out;
    wire NOR52429_out;
    wire NOR52430_out;
    wire NOR52431_out;
    wire NOR52432_out;
    wire NOR52433_out;
    wire NOR52434_out;
    wire NOR52436_out;
    wire NOR52437_out;
    wire NOR52438_out;
    wire NOR52439_out;
    wire NOR52440_out;
    wire NOR52441_out;
    wire NOR52442_out;
    wire NOR52443_out;
    wire NOR52444_out;
    wire NOR52445_out;
    wire NOR52446_out;
    wire NOR52447_out;
    wire NOR52448_out;
    wire NOR52451_out;
    wire NOR52453_out;
    wire NOR52457_out;
    wire NOR52458_out;
    
    wire NOR52301_out;
    wire NOR52302_out;
    wire NOR52303_out;
    wire NOR52304_out;
    wire NOR52305_out;
    wire NOR52306_out;
    wire NOR52307_out;
    wire NOR52308_out;
    wire NOR52309_out;
    wire NOR52311_out;
    wire NOR52313_out;
    wire NOR52317_out;
    wire NOR52318_out;
    wire NOR52319_out;
    wire NOR52321_out;
    wire NOR52322_out;
    wire NOR52323_out;
    wire NOR52324_out;
    wire NOR52325_out;
    wire NOR52327_out;
    wire NOR52328_out;
    wire NOR52329_out;
    wire NOR52330_out;
    wire NOR52331_out;
    wire NOR52332_out;
    wire NOR52333_out;
    wire NOR52334_out;
    wire NOR52336_out;
    wire NOR52337_out;
    wire NOR52338_out;
    wire NOR52339_out;
    wire NOR52340_out;
    wire NOR52341_out;
    wire NOR52342_out;
    wire NOR52343_out;
    wire NOR52344_out;
    wire NOR52345_out;
    wire NOR52346_out;
    wire NOR52347_out;
    wire NOR52348_out;
    wire NOR52351_out;
    wire NOR52353_out;
    wire NOR52357_out;
    wire NOR52358_out;
    
    wire NOR34450_out;
    wire NOR34451_out;
    wire NOR35359_out;
    wire NOR35360_out;
    wire NOR35460_out;
    wire NOR53462_out;
    
    wire SUMA05_, SUMB05_, SUMA06_, SUMB06_, SUMA07_, SUMB07_, SUMA08_, SUMB08_;
    wire A05_, A06_, A07_, A08_;
    wire L05_, L06_, L07_;
    wire RL05_, RL06_, RL07_, RL08_;
    wire XUY07_, XUY08_;
    wire CI06_, CI07_, CI08_;
    wire CO08;
    wire Z05_, Z06_, Z07_, Z08_;
    wire G08_;
    wire S08A, S08A_;
    
    // Bit column 5
     
    // CO08 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52101(NOR52101_out,    XUY07_,         XUY05_,         CI05_,                      SIM_CLK);
    
    // X flip-flop
    nor_2 #(1'b0) NOR52102(NOR52102_out,    A2XG_,          A05_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR52103(NOR52103_out,    MONEX,          NOR52102_out,   NOR52104_out,               SIM_CLK);
    nor_3 #(1'b0) NOR52104(NOR52104_out,    NOR52103_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR52105(NOR52105_out,    WYLOG_,         WL05_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52106(NOR52106_out,    WL04_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR52107(NOR52107_out,    NOR52105_out,   NOR52106_out,   NOR52108_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52108(NOR52108_out,    NOR52107_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR52109(NOR52109_out,    NOR52103_out,   NOR52107_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52110(XUY05_,          NOR52104_out,   NOR52108_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR52112(SUMA05_,         NOR52109_out,   CI05_,          XUY05_,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR52113(NOR52113_out,    NOR52109_out,   XUY05_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR52111(NOR52111_out,    CI05_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR52115(SUMB05_,         NOR52113_out,   NOR52111_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR52114(CI06_,           NOR52109_out,   SUMA05_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR52117(NOR52117_out,    SUMA05_,        SUMB05_,        RULOG_,                     SIM_CLK);
    
    // NOR52116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR52118(NOR52118_out,    WAG_,           WL05_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52119(NOR52119_out,    WL07_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52120(A05_,            NOR52118_out,   NOR52119_out,   NOR52121_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52121(NOR52121_out,    A05_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52122(NOR52122_out,    RAG_,           A05_,                                       SIM_CLK);
    
    // RL05_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52123(NOR52123_out,   NOR52117_out,   NOR52122_out,   CH05,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR52124(NOR52124_out,    WLG_,           WL05_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52125(NOR52125_out,    G08_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52126(L05_,            NOR52124_out,   NOR52125_out,   NOR52127_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52127(NOR52127_out,    L05_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR52128(NOR52128_out,    RLG_,           L05_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR52129(NOR52129_out,    WQG_,           WL05_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52130(NOR52130_out,    NOR52129_out,   NOR52131_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52131(NOR52131_out,    NOR52130_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52132(NOR52132_out,    RQG_,           NOR52130_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR52134(NOR52134_out,    WZG_,           WL05_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52135(Z05_,            NOR52134_out,   NOR52136_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52136(NOR52136_out,    Z05_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52137(NOR52137_out,    RZG_,           Z05_,                                       SIM_CLK);
    
    // RL05_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52133(NOR52133_out,    NOR52128_out,   NOR52132_out,   NOR52137_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR52138(NOR52138_out,    WBG_,           WL05_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52139(NOR52139_out,    NOR52138_out,   NOR52140_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52140(NOR52140_out,    NOR52139_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52141(NOR52141_out,    RBLG_,          NOR52139_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52142(NOR52142_out,    NOR52140_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR52143(NOR52143_out,    WL04_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52144(NOR52144_out,    WL06_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52145(NOR52145_out,    L2GDG_,         L04_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR52146(NOR52146_out,    WG1G_,          WL05_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR52147(NOR52147_out,    SA05,           NOR52143_out,   NOR52144_out,   G05ED,      SIM_CLK);
    // NOR52463 moved here from A8 sheet 2 and merged into NOR52147
    nor_3 #(1'b1) NOR52148(NOR52148_out,    NOR52145_out,   NOR52146_out,   G05,                        SIM_CLK);
    assign G05_ = NOR52147_out & NOR52148_out;
    nor_2 #(1'b0) NOR52149(G05,             G05_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR52150(GEM05,           G05_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR52151(NOR52151_out,    RGG_,           G05_,                                       SIM_CLK);
    
    // RL05_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52157(NOR52157_out,    NOR52141_out,   NOR52142_out,   NOR52151_out,               SIM_CLK);
    
    // RL05_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52158(NOR52158_out,    MDT05,          R1C,                                        SIM_CLK);
    
    // RL5_ part 5
    // No cross-module fan-in
    // Moved here from A12 sheet 2
    nor_3 #(1'b0) NOR34452(NOR35460_out,    CAD5,           RPTAD5,                                     SIM_CLK);
    
    // RL05_
    assign RL05_ = NOR52123_out & NOR52133_out & NOR52157_out & NOR52158_out & NOR35460_out;
    
    // WL01
    nor_1 #(1'b0) NOR52152(WL05,            RL05_,                                                      SIM_CLK);
    
    // MWL01
    nor_1 #(1'b0) NOR52153(NOR52153_out,    WL05,                                                       SIM_CLK);
    assign MWL05 = NOR52153_out;
    
    // WL01_
    nor_1 #(1'b0) NOR52154(WL05_,           WL05,                                                       SIM_CLK);
    // NOR52155 and NOR52156 omitted
    
    
    // Bit column 6
    
    // CO08 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52201(NOR52201_out,    XUY08_,         XUY06_,                                     SIM_CLK);
    
    // CO04 part 3
    // // No cross-module fan-in, moved here from A10 sheet 2
    assign CO08 = NOR52101_out & NOR52201_out;
    
    // X flip-flop
    nor_2 #(1'b0) NOR52202(NOR52202_out,    A2XG_,          A06_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR52203(NOR52203_out,    MONEX,          NOR52202_out,   NOR52204_out,               SIM_CLK);
    nor_3 #(1'b0) NOR52204(NOR52204_out,    NOR52203_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR52205(NOR52205_out,    WYLOG_,         WL06_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52206(NOR52206_out,    WL05_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR52207(NOR52207_out,    NOR52205_out,   NOR52206_out,   NOR52208_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52208(NOR52208_out,    NOR52207_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR52209(NOR52209_out,    NOR52203_out,   NOR52207_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52210(XUY06_,          NOR52204_out,   NOR52208_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR52212(SUMA06_,         NOR52209_out,   XUY06_,         CI06_,                      SIM_CLK);
    
    nor_2 #(1'b0) NOR52213(NOR52213_out,    NOR52209_out,   XUY06_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR52211(NOR52211_out,    CI06_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR52215(SUMB06_,         NOR52213_out,   NOR52211_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR52214(CI07_,           NOR52209_out,   SUMA06_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR52217(NOR52217_out,    SUMA06_,        SUMB06_,        RULOG_,                     SIM_CLK);
    
    // NOR52216 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR52218(NOR52218_out,    WAG_,           WL06_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52219(NOR52219_out,    WL08_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52220(A06_,            NOR52218_out,   NOR52219_out,   NOR52221_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52221(NOR52221_out,    A06_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52222(NOR52222_out,    RAG_,           A06_,                                       SIM_CLK);
    
    // RL06_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52223(NOR52223_out,    NOR52217_out,   NOR52222_out,   CH06,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR52224(NOR52224_out,    WLG_,           WL06_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52225(NOR52225_out,    G09_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52226(L06_,            NOR52224_out,   NOR52225_out,   NOR52227_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52227(NOR52227_out,    L06_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR52228(NOR52228_out,    RLG_,           L06_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR52229(NOR52229_out,    WQG_,           WL06_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52230(NOR52230_out,    NOR52229_out,   NOR52231_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52231(NOR52231_out,    NOR52230_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52232(NOR52232_out,    RQG_,           NOR52230_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR52234(NOR52234_out,    WZG_,           WL06_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52235(Z06_,            NOR52234_out,   NOR52236_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52236(NOR52236_out,    Z06_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52237(NOR52237_out,    RZG_,           Z06_,                                       SIM_CLK);
    
    // RL06_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52233(NOR52233_out,    NOR52228_out,   NOR52232_out,   NOR52237_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR52238(NOR52238_out,    WBG_,           WL06_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52239(NOR52239_out,    NOR52238_out,   NOR52240_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52240(NOR52240_out,    NOR52239_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52241(NOR52241_out,    RBLG_,          NOR52239_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52242(NOR52242_out,    NOR52240_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR52243(NOR52243_out,    WL05_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52244(NOR52244_out,    WL07_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52245(NOR52245_out,    L2GDG_,         L05_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR52246(NOR52246_out,    WG1G_,          WL06_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR52247(NOR52247_out,    SA06,           NOR52243_out,   NOR52244_out,   G06ED,      SIM_CLK);
    // NOR52363 moved here from A8 sheet 2 and merged into NOR52247
    
    nor_3 #(1'b1) NOR52248(NOR52248_out,    NOR52245_out,   NOR52246_out,   G06,                        SIM_CLK);
    assign G06_ = NOR52247_out & NOR52248_out;
    nor_2 #(1'b0) NOR52249(G06,             G06_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR52250(GEM06,           G06_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR52251(NOR52251_out,    RGG_,           G06_,                                       SIM_CLK);
    
    // RL06_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52257(NOR52257_out,    NOR52241_out,   NOR52242_out,   NOR52251_out,               SIM_CLK);
    
    // RL06_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52258(NOR52258_out,    MDT06,          R1C,                                        SIM_CLK);
    
    // RL06_ part 5
    // No cross-module fan-in
    // Moved here from A12 sheet 2
    nor_3 #(1'b0) NOR35360(NOR35360_out,    CAD6,           RPTAD6,                                     SIM_CLK);
    
    // RL06_
    assign RL06_ = NOR52223_out & NOR52233_out & NOR52257_out & NOR52258_out & NOR35360_out;
    
    // WL06
    nor_1 #(1'b0) NOR52252(WL06,            RL06_,                                                      SIM_CLK);
    
    // MWL06
    nor_1 #(1'b0) NOR52253(NOR52253_out,    RL06_,                                                      SIM_CLK);
    assign MWL06 = NOR52253_out;
    
    // WL06_
    nor_1 #(1'b0) NOR52254(WL06_,           WL06,                                                       SIM_CLK);
    // NOR52255 and NOR52256 omitted
    
    
    /**************************
    *
    *  Module A9 sheet 2
    *  Sheet number 2005256/2
    *
    **************************/
    
    // Bit column 7
    
    // CO10 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52401(NOR52401_out,    XUY09_,         XUY07_,         CI07_,                      SIM_CLK);
    
    // X register flip-flop
    nor_2 #(1'b0) NOR52402(NOR52402_out,    A2XG_,          A07_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR52403(NOR52403_out,    MONEX,          NOR52402_out,   NOR52404_out,               SIM_CLK);
    nor_3 #(1'b0) NOR52404(NOR52404_out,    NOR52403_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR52405(NOR52405_out,    WYLOG_,         WL07_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52406(NOR52406_out,    WL06_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR52407(NOR52407_out,    NOR52405_out,   NOR52406_out,   NOR52408_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52408(NOR52408_out,    NOR52407_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR52409(NOR52409_out,    NOR52403_out,   NOR52407_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52410(XUY07_,          NOR52404_out,   NOR52408_out,                               SIM_CLK);
    
    nor_4 #(1'b0) NOR52412(SUMA07_,         NOR52409_out,   CI07_,          XUY07_,         WHOMP,      SIM_CLK);
    // NOR54462 moved here from A11 sheet 2 and merged with NOR52412
        
    nor_2 #(1'b0) NOR52413(NOR52413_out,    NOR52409_out,   XUY07_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR52411(NOR52411_out,    CI07_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR52415(SUMB07_,         NOR52413_out,   NOR52411_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR52414(CI08_,           NOR52409_out,   SUMA07_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR52417(NOR52417_out,    SUMA07_,        SUMB07_,        RULOG_,                     SIM_CLK);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR52418(NOR52418_out,    WAG_,           WL07_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52419(NOR52419_out,    WL09_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52420(A07_,            NOR52418_out,   NOR52419_out,   NOR52421_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52421(NOR52421_out,    A07_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52422(NOR52422_out,    RAG_,           A07_,                                       SIM_CLK);
    
    // RL07_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52423(NOR52423_out,    NOR52417_out,   NOR52422_out,   CH07,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR52424(NOR52424_out,    WLG_,           WL07_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52425(NOR52425_out,    G10_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52426(L07_,            NOR52424_out,   NOR52425_out,   NOR52427_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52427(NOR52427_out,    L07_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR52428(NOR52428_out,    RLG_,           L07_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR52429(NOR52429_out,    WQG_,           WL07_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52430(NOR52430_out,    NOR52429_out,   NOR52431_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52431(NOR52431_out,    NOR52430_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52432(NOR52432_out,    RQG_,           NOR52430_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR52434(NOR52434_out,    WZG_,           WL07_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52435(Z07_,            NOR52434_out,   NOR52436_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52436(NOR52436_out,    Z07_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52437(NOR52437_out,    RZG_,           Z07_,                                       SIM_CLK);
    
    // RL07_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52433(NOR52433_out,    NOR52428_out,   NOR52432_out,   NOR52437_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR52438(NOR52438_out,    WBG_,           WL07_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52439(NOR52439_out,    NOR52438_out,   NOR52440_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52440(NOR52440_out,    NOR52439_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52441(NOR52441_out,    RBLG_,          NOR52439_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52442(NOR52442_out,    NOR52440_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR52443(NOR52443_out,    WL06_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52444(NOR52444_out,    WL08_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52445(NOR52445_out,    L2GDG_,         L06_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR52446(NOR52446_out,    WG1G_,          WL07_,                                      SIM_CLK);
    
    nor_4 #(1'b1) NOR52447(NOR52447_out,    SA07,           NOR52443_out,   NOR52444_out,   G07ED,      SIM_CLK);
    // NOR52163 moved here from A9 sheet 1 and merged with NOR52447
    nor_3 #(1'b1) NOR52448(NOR52448_out,    NOR52445_out,   NOR52446_out,   G07,                        SIM_CLK);
    assign G07_ = NOR52447_out & NOR52448_out;
    nor_2 #(1'b0) NOR52449(G07,             G07_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR52450(GEM07,           G07_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR52451(NOR52451_out,    RGG_,           G07_,                                       SIM_CLK);
    
    // RL07_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52457(NOR52457_out,    NOR52441_out,   NOR52442_out,   NOR52451_out,               SIM_CLK);
    
    // RL07_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52458(NOR52458_out,    MDT07,          R1C,                                        SIM_CLK);
    
    // RL07_
    assign RL07_ = NOR52423_out & NOR52433_out & NOR52457_out & NOR52458_out;
    
    // WL07
    nor_1 #(1'b0) NOR52452(WL07,            RL07_,                                                      SIM_CLK);
    
    // MWL07
    nor_1 #(1'b0) NOR52453(NOR52453_out,    RL07_,                                                      SIM_CLK);
    assign MWL07 = NOR52453_out;
    
    // WL07_
    nor_1 #(1'b0) NOR52454(WL07_,           WL07,                                                       SIM_CLK);
    // NOR52455 and NOR52456 omitted
    
    // Bit column 8
    
    // CO10
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52301(NOR52301_out,    XUY10_,         XUY08_,                                     SIM_CLK);
    assign CO10 = NOR52401_out & NOR52301_out;
    
    // X register flip-flop
    nor_2 #(1'b0) NOR52302(NOR52302_out,    A2XG_,          A08_,                                       SIM_CLK);
    
    nor_3 #(1'b1) NOR52303(NOR52303_out,    MONEX,          NOR52302_out,   NOR52304_out,               SIM_CLK);
    nor_3 #(1'b0) NOR52304(NOR52304_out,    NOR52303_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR52305(NOR52305_out,    WYLOG_,         WL08_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52306(NOR52306_out,    WL05_,          WYDG_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR52307(NOR52307_out,    NOR52305_out,   NOR52306_out,   NOR52308_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52308(NOR52308_out,    NOR52307_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR52309(NOR52309_out,    NOR52303_out,   NOR52307_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52310(XUY08_,          NOR52304_out,   NOR52308_out,                               SIM_CLK);
    
    nor_4 #(1'b0) NOR52312(SUMA08_,         NOR52309_out,   XUY08_,         CI08_,                      SIM_CLK);

    
    nor_2 #(1'b0) NOR52313(NOR52313_out,    NOR52309_out,   XUY08_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR52311(NOR52311_out,    CI08_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR52315(SUMB08_,         NOR52313_out,   NOR52311_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR52314(CI09_,           NOR52309_out,   SUMA08_,        CO08,                       SIM_CLK);
    
    nor_3 #(1'b0) NOR52317(NOR52317_out,    SUMA08_,        SUMB08_,        RULOG_,                     SIM_CLK);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR52318(NOR52318_out,    WAG_,           WL08_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52319(NOR52319_out,    WL10_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52320(A08_,            NOR52318_out,   NOR52319_out,   NOR52321_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52321(NOR52321_out,    A08_,           CAG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52322(NOR52322_out,    RAG_,           A08_,                                       SIM_CLK);
    
    // RL08_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52323(NOR52323_out,    NOR52317_out,   NOR52322_out,   CH08,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR52324(NOR52324_out,    WLG_,           WL08_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52325(NOR52325_out,    G11_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b1) NOR52326(L08_,            NOR52324_out,   NOR52325_out,   NOR52327_out,               SIM_CLK);
    nor_2 #(1'b0) NOR52327(NOR52327_out,    L08_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR52328(NOR52328_out,    RLG_,           L08_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR52329(NOR52329_out,    WQG_,           WL08_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52330(NOR52330_out,    NOR52329_out,   NOR52331_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52331(NOR52331_out,    NOR52330_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52332(NOR52332_out,    RQG_,           NOR52330_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR52334(NOR52334_out,    WZG_,           WL08_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52335(Z08_,            NOR52334_out,   NOR52336_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52336(NOR52336_out,    Z08_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52337(NOR52337_out,    RZG_,           Z08_,                                       SIM_CLK);
    
    // RL08_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52333(NOR52333_out,    NOR52328_out,   NOR52332_out,   NOR52337_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR52338(NOR52338_out,    WBG_,           WL08_,                                      SIM_CLK);
    
    nor_2 #(1'b1) NOR52339(NOR52339_out,    NOR52338_out,   NOR52340_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52340(NOR52340_out,    NOR52339_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR52341(NOR52341_out,    RBLG_,          NOR52339_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR52342(NOR52342_out,    NOR52340_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR52343(NOR52343_out,    WL07_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52344(NOR52344_out,    WL09_,          WG4G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR52345(NOR52345_out,    L2GDG_,         L07_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR52346(NOR52346_out,    WG1G_,          WL08_,                                      SIM_CLK);
    
    nor_3 #(1'b1) NOR52347(NOR52347_out,    SA08,           NOR52343_out,   NOR52344_out,               SIM_CLK);
    nor_3 #(1'b1) NOR52348(NOR52348_out,    NOR52345_out,   NOR52346_out,   G08,                        SIM_CLK);
    assign G08_ = NOR52347_out & NOR52348_out;
    nor_2 #(1'b0) NOR52349(G08,             G08_,           CGG,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR52350(GEM08,           G08_,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR52351(NOR52351_out,    RGG_,           G08_,                                       SIM_CLK);
    
    // RL08_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0) NOR52357(NOR52357_out,    NOR52341_out,   NOR52342_out,   NOR52351_out,               SIM_CLK);
    
    // RL08_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR52358(NOR52358_out,    MDT08,          R1C,                                        SIM_CLK);
    
    // RL08_
    assign RL08_ = NOR52323_out & NOR52333_out & NOR52357_out & NOR52358_out;
    
    // WL08
    nor_1 #(1'b0) NOR52352(WL08,            RL08_,                                                      SIM_CLK);
    
    // MWL08
    nor_1 #(1'b0) NOR52353(NOR52353_out,    RL08_,                                                      SIM_CLK);
    assign MWL08 = NOR52353_out;
    
    // WL08_
    nor_1 #(1'b0) NOR52354(WL08_,           WL08,                                                       SIM_CLK);
    // NOR52355 and NOR52356 omitted
    
endmodule


