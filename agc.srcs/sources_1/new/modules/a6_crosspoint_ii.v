`timescale 1ns / 1ps

module a6_crosspoint_ii(
    // Inputs
    T01, T01_, T02, T02_, T03, T04, T04_, T05, T06, T06_, T07, T07_, T08, T08_, T09, T10, T11, T11_, T12,
    DV4_, DV376_, DV1376_, DIVSTG,
    RBSQ, MP1, MP1_, MP3_, RADRG, T12USE_, RRPA, RB1F, BR1, BR1_, BR2, BR2_, BR12B_, BR1B2B, BR1B2_, BR1B2B_, PHS4_, MONEX_, PTWOX, B15X,
    AUG0_, DIM0_, INCR0, PRINC, DINC, DINC_, PINC, MINC, MCDU, PCDU, CDUSTB_, DAS0, DAS1, DAS1_, MSU0, WAND0, RAND0, INOTLD, SHIFT, INKL,
    MONpCH, MON_, FETCH1, DXCH0, RUPT0, RUPT1, MASK0, DV1376, CCS0, ADS0,
    IC6, IC7, IC9, IC11, IC17,
    L01_, L02A_, L15A_,
    STBE, STBF, STFETI_,
    n1XP10, n2XP3, n2XP7, n3XP2, n3XP6, n3XP7, n4XP11, n5XP4, n5XP12, n5XP15, n5XP21, n5XP28, n6XP5, n6XP8, n7XP19, n9XP5,
    n8PP4,
    
    // Outputs
    A06_1_A2X_,
    A06_1_RB_, A06_2_RB_,
    A06_1_WYD_,
    A06_1_WY_,
    A06_1_RC_,
    A06_1_WL_,
    A06_1_RG_,
    A06_1_WB_,
    A06_1_RU_, A06_2_RU_, A06_3_RU_,
    A06_1_WZ_,
    A06_1_TOV_,
    A06_1_WSC_, A06_2_WSC_,
    A06_1_WG_, A06_2_WG_,
    A06_1_MONEX_,
    A06_1_WA_,
    A06_1_n8PP4, A06_2_n8PP4, A06_3_n8PP4,
    
    DVXP1, L2GD_, ZIP, ZIPCI, ZAP, ZAP_, MCRO_, RCH_, TSGU_, CLXC, WQ_, MONEX, TWOX, BXVX, PIFL_, CGMC,
    POUT, MOUT, ZOUT, WOVR, RDBANK,
    n6XP10, n7XP14, n8XP4, n8XP10,
    
    // Input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    input wire T01, T01_, T02, T02_, T03, T04, T04_, T05, T06, T06_, T07, T07_, T08, T08_, T09, T10, T11, T11_, T12;
    input wire DV4_, DV376_, DV1376_, DIVSTG;
    input wire RBSQ, MP1, MP1_, MP3_, RADRG, T12USE_, RRPA, RB1F, BR1, BR1_, BR2, BR2_, BR12B_, BR1B2B, BR1B2_, BR1B2B_, PHS4_, MONEX_, PTWOX, B15X;
    input wire AUG0_, DIM0_, INCR0, PRINC, DINC, DINC_, PINC, MINC, MCDU, PCDU, CDUSTB_, DAS0, DAS1, DAS1_, MSU0, WAND0, RAND0, INOTLD,  SHIFT, INKL;
    input wire MONpCH, MON_, FETCH1, DXCH0, RUPT0, RUPT1, MASK0, DV1376, CCS0, ADS0;
    input wire IC6, IC7, IC9, IC11, IC17;
    input wire L01_, L02A_, L15A_;
    input wire STBE, STBF, STFETI_;
    input wire n1XP10, n2XP3, n2XP7, n3XP2, n3XP6, n3XP7, n4XP11, n5XP4, n5XP12, n5XP15, n5XP21, n5XP28, n6XP5, n6XP8, n7XP19, n9XP5;
    input wire n8PP4;
    
    output wire A06_1_A2X_;
    output wire A06_1_RB_, A06_2_RB_;
    output wire A06_1_WYD_;
    output wire A06_1_WY_;
    output wire A06_1_RC_;
    output wire A06_1_WL_;
    output wire A06_1_RG_;
    output wire A06_1_WB_;
    output wire A06_1_RU_, A06_2_RU_, A06_3_RU_;
    output wire A06_1_WZ_;
    output wire A06_1_TOV_;
    output wire A06_1_WSC_, A06_2_WSC_;
    output wire A06_1_WG_, A06_2_WG_;
    output wire A06_1_MONEX_;
    output wire A06_1_WA_;
    output wire A06_1_n8PP4, A06_2_n8PP4, A06_3_n8PP4;
    
    output wire DVXP1, L2GD_, ZIP, ZIPCI, ZAP, ZAP_, MCRO_, RCH_, TSGU_, CLXC, WQ_, MONEX, TWOX, BXVX, PIFL_, CGMC;
    output wire POUT, MOUT, ZOUT, WOVR, RDBANK;
    output wire n6XP10, n7XP14, n8XP4, n8XP10;
    
    
    /**************************
    *
    *  Module A6 sheet 1
    *  Sheet number 2005263/1
    *
    **************************/
    
    wire NOR40101_out;
    wire NOR40102_out;
    wire NOR40103_out;
    wire NOR40104_out;
    wire NOR40105_out;
    wire NOR40111_out;
    wire NOR40112_out;
    wire NOR40113_in;
    wire NOR40113_out;
    wire NOR40114_out;
    wire NOR40115_out;
    wire NOR40116_out;
    wire NOR40118_out;
    wire NOR40120_out;
    wire NOR40121_out;
    wire NOR40122_out;
    wire NOR40123_out;
    wire NOR40124_out;
    wire NOR40125_out;
    wire NOR40126_out;
    wire NOR40127_out;
    wire NOR40128_out;
    wire NOR40129_out;
    wire NOR40133_out;
    wire NOR40134_out;
    wire NOR40135_out;
    wire NOR40136_out;
    wire NOR40137_out;
    wire NOR40138_out;
    wire NOR40142_out;
    wire NOR40143_out;
    wire NOR40144_out;
    wire NOR40145_out;
    wire NOR40147_out;
    wire NOR40148_out;
    wire NOR40149_out;
    wire NOR40150_in;
    wire NOR40150_out;
    wire NOR40151_out;
    wire NOR40213_out;
    wire NOR40215_out;
    wire NOR40217_out;
    wire NOR40221_out;
    wire NOR40240_out;
    wire NOR40242_out;
    wire NOR40243_out;
    wire NOR40244_out;
    wire NOR40245_out;
    wire NOR40253_out;
    wire NOR40254_out;
    wire NOR40255_out;
    wire NOR40256_out;
    wire NOR40257_out;
    wire NOR40258_out;
    
    
    // DVXP1
    nor_3 #(1'b0) NOR40101(NOR40101_out,    T04,            T07,            T10,                        SIM_CLK);
    nor_2 #(1'b0) NOR40102(NOR40102_out,    NOR40101_out,   DV376_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR40103(NOR40103_out,    T01_,           DV1376_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR40104(NOR40104_out,    T04_,           DV4_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40105(NOR40105_out,    NOR40102_out,   NOR40103_out,   NOR40104_out,               SIM_CLK);
    nor_1 #(1'b1) NOR40106(DVXP1,           NOR40105_out,                                               SIM_CLK);
    
    // A2X_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1) NOR40107(A06_1_A2X_,      n7XP19,         ZIP,            DVXP1,                      SIM_CLK);
    
    // L2GD_
    nor_2 #(1'b1) NOR40108(L2GD_,           DVXP1,          ZIP,                                        SIM_CLK);
    
    // RB_
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0) NOR40109(A06_1_RB_,       DVXP1,          NOR40128_out,   RBSQ,                       SIM_CLK);
    
    // WYD_
    // Cross-module fan-in, connected to A5
    nor_2 #(1'b1) NOR40110(A06_1_WYD_,      DVXP1,          NOR40118_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR40111(NOR40111_out,    T01,            T03,            T05,                        SIM_CLK);
    nor_3 #(1'b0) NOR40112(NOR40112_out,    T07,            T09,            T11,                        SIM_CLK);
    assign NOR40113_in = NOR40111_out & NOR40112_out;
    nor_2 #(1'b0) NOR40113(NOR40113_out,    MP1_,           NOR40113_in,                                SIM_CLK);
    nor_2 #(1'b1) NOR40114(NOR40114_out,    n2XP7,          NOR40113_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR40115(NOR40115_out,    NOR40114_out,   NOR40125_out,   NOR40126_out,               SIM_CLK);
    nor_2 #(1'b0) NOR40116(NOR40116_out,    NOR40126_out,   NOR40125_out,                               SIM_CLK);
    
    // ZIP
    nor_1 #(1'b0) NOR40117(ZIP,             NOR40114_out,                                               SIM_CLK);
    
    nor_2 #(1'b0) NOR40118(NOR40118_out,    NOR40114_out,   NOR40116_out,                               SIM_CLK);
    
    // WY_
    // Cross-module fan-in, connected to A4 and A5
    nor_1 #(1'b1) NOR40119(A06_1_WY_,       NOR40115_out,                                               SIM_CLK);
    
    nor_1 #(1'b0) NOR40120(NOR40120_out,    L01_,                                                       SIM_CLK);
    nor_1 #(1'b0) NOR40121(NOR40121_out,    L02A_,                                                      SIM_CLK);
    nor_1 #(1'b0) NOR40122(NOR40122_out,    L15A_,                                                      SIM_CLK);
    
    nor_3 #(1'b0) NOR40123(NOR40123_out,    NOR40126_out,   NOR40125_out,   L02A_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40124(NOR40124_out,    NOR40120_out,   NOR40121_out,   NOR40122_out,               SIM_CLK);
    nor_3 #(1'b0) NOR40125(NOR40125_out,    NOR40122_out,   NOR40120_out,   L02A_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40126(NOR40126_out,    NOR40121_out,   L15A_,          L01_,                       SIM_CLK);
    nor_1 #(1'b0) NOR40127(NOR40127_out,    NOR40123_out,                                               SIM_CLK);
    nor_3 #(1'b0) NOR40128(NOR40128_out,    NOR40123_out,   NOR40124_out,   NOR40114_out,               SIM_CLK);
    nor_2 #(1'b0) NOR40129(NOR40129_out,    NOR40114_out,   NOR40127_out,                               SIM_CLK);
    
    // ZIPCI
    nor_3 #(1'b0) NOR40130(ZIPCI,           NOR40114_out,   NOR40127_out,   NOR40133_out,               SIM_CLK);
    
    // RC_
    // Cross-module fan-in, connected to A4 and A5
    nor_2 #(1'b0) NOR40131(A06_1_RC_,       ZIPCI,          n3XP7,                                      SIM_CLK);
    
    // RCH_
    nor_3 #(1'b0) NOR40132(RCH_,            n3XP7,          n5XP21,         n4XP11,                     SIM_CLK);
    
    nor_3 #(1'b0) NOR40133(NOR40133_out,    L15A_,          L02A_,          L01_,                       SIM_CLK);
    nor_3 #(1'b1) NOR40134(NOR40134_out,    T05,            T08,            T11,                        SIM_CLK);
    nor_2 #(1'b0) NOR40135(NOR40135_out,    NOR40134_out,   DV376_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR40136(NOR40136_out,    DV1376_,        T02_,                                       SIM_CLK);
    nor_2 #(1'b1) NOR40137(NOR40137_out,    NOR40135_out,   NOR40136_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR40138(NOR40138_out,    NOR40137_out,                                               SIM_CLK);
    
    // TSGU_
    nor_2 #(1'b0) NOR40139(TSGU_,           n5XP28,         NOR40138_out,                               SIM_CLK);
    
    // WL_
    // Cross-module fan-in, connected to A4 and A5
    nor_2 #(1'b1) NOR40140(A06_1_WL_,       NOR40138_out,   n5XP12,                                     SIM_CLK);
    
    // RG_
    // Cross-module fan-in, connected to A5
    nor_4 #(1'b0) NOR40141(A06_1_RG_,       n5XP4,          RADRG,          NOR40138_out,       n5XP28, SIM_CLK);
    // NOR40146 merged into NOR40141
    
    nor_3 #(1'b1) NOR40142(NOR40142_out,    T06,            T09,            T12,                        SIM_CLK);
    nor_3 #(1'b0) NOR40143(NOR40143_out,    DV376_,         NOR40142_out,   T12USE_,                    SIM_CLK);
    nor_2 #(1'b1) NOR40144(NOR40144_out,    NOR40143_out,   DIVSTG,                                     SIM_CLK);
    nor_1 #(1'b0) NOR40145(NOR40145_out,    NOR40144_out,                                               SIM_CLK);
    // NOR40146 merged with NOR40141
    nor_3 #(1'b1) NOR40147(NOR40147_out,    T02,            T04,            T06,                        SIM_CLK);
    nor_2 #(1'b1) NOR40148(NOR40148_out,    T08,            T10,                                        SIM_CLK);
    assign NOR40150_in = NOR40147_out & NOR40148_out;
    nor_2 #(1'b1) NOR40149(NOR40149_out,    T01,            T03,                                        SIM_CLK);
    nor_2 #(1'b0) NOR40150(NOR40150_out,    MP1_,           NOR40150_in,                                SIM_CLK);
    nor_2 #(1'b0) NOR40151(NOR40151_out,    NOR40149_out,   MP3_,                                       SIM_CLK);
    
    // ZAP_
    nor_2 #(1'b1) NOR40152(ZAP_,            NOR40150_out,   NOR40151_out,                               SIM_CLK);
    
    // NOR40153 merged with NOR40155
    
    // ZAP
    nor_1 #(1'b0) NOR40154(ZAP,             ZAP_,                                                       SIM_CLK);
    
    // WB_
    // Cross-module fan-in, connected to A5
    nor_4 #(1'b1) NOR40155(A06_1_WB_,       n5XP28,         n1XP10,         NOR40145_out,   n2XP3,      SIM_CLK);
    
    // RU_ part 1
    // Cross-module fan-in, connected to A5
    nor_4 #(1'b0) NOR40156(A06_1_RU_,       NOR40145_out,   ZAP,            n5XP12,         n6XP5,      SIM_CLK);
    // NOR40157 merged with NOR40156
    
    // WZ_
    // Cross-module fan-in, connected to A5
    nor_2 #(1'b1) NOR40158(A06_1_WZ_,       RRPA,           n5XP4,                                      SIM_CLK);
    
    // NOR40159 omitted (fan-out expansion)
    
    // MCRO_
    nor_1 #(1'b0) NOR40160(MCRO_,           NOR40129_out,                                               SIM_CLK);
    
    // RB1F
    nor_3 #(1'b0) NOR40201(RB1F,            BR1_,           PHS4_,          TSGU_,                      SIM_CLK);
    
    // CLXC
    nor_3 #(1'b0) NOR40202(CLXC,            TSGU_,          BR1,            PHS4_,                      SIM_CLK);
    // NOR40203 and NOR40204 merged into NOR40202
    
    // NOR40205 not used
    
    // WQ_
    nor_2 #(1'b1) NOR40206(WQ_,             n5XP15,         n3XP6,                                      SIM_CLK);
    
    // TOV_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1) NOR40207(A06_1_TOV_,      n6XP5,          n3XP2,          n9XP5,                      SIM_CLK);
    
    // WSC_ part 1
    // No cross-module fan-in
    nor_2 #(1'b1) NOR40208(A06_1_WSC_,      n9XP5,          n6XP8,                                      SIM_CLK);
    
    // WG_ part 1
    // Cross-module fan-in, connected to A4, A5 and A12
    nor_1 #(1'b0) NOR40209(A06_1_WG_,       n6XP8,                                                      SIM_CLK);
    
    // MONEX
    nor_1 #(1'b0) NOR40210(MONEX,           MONEX_,                                                     SIM_CLK);
    // NOR40211 and NOR40212 merged into NOR40210
    
    nor_2 #(1'b0) NOR40213(NOR40213_out,    PTWOX,          MONEX,                                      SIM_CLK);
    
    // TWOX
    nor_1 #(1'b0) NOR40214(TWOX,            NOR40213_out,                                               SIM_CLK);
    
    nor_2 #(1'b0) NOR40215(NOR40215_out,    MONEX,          B15X,                                       SIM_CLK);
    
    // BXVX
    nor_1 #(1'b0) NOR40216(BXVX,            NOR40215_out,                                               SIM_CLK);
    
    nor_1 #(1'b0) NOR40217(NOR40217_out,    NOR40134_out,                                               SIM_CLK);
    // NOR40218 and NOR40219 not used
    
    // PIFL flip-flop
    nor_2 #(1'b1) NOR40220(PIFL_,           DVXP1,          NOR40221_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR40221(NOR40221_out,    PIFL_,          NOR40217_out,   T02,                        SIM_CLK);
    
    // NOR40222, NOR40223, NOR40224 and NOR40225 moved to A14 sheet 1
    // NOR40226 - NOR40239 moved to A14 sheet 2
    
    // CGMC
    nor_3 #(1'b0) NOR40240(NOR40240_out,    STBE,           n1XP10,         STBF,                       SIM_CLK);
    nor_2 #(1'b0) NOR40241(CGMC,            NOR40240_out,   NOR40258_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR40242(NOR40242_out,    CGMC,           NOR40243_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR40243(NOR40243_out,    NOR40242_out,   NOR40240_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR40244(NOR40244_out,    NOR40243_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40245(NOR40245_out,    NOR40244_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40253(NOR40253_out,    NOR40245_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40254(NOR40254_out,    NOR40253_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40255(NOR40255_out,    NOR40254_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40256(NOR40256_out,    NOR40255_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40257(NOR40257_out,    NOR40256_out,                                               SIM_CLK);
    nor_1 #(1'b0) NOR40258(NOR40258_out,    NOR40257_out,                                               SIM_CLK);
    
    /**************************
    *
    *  Module A6 sheet 2
    *  Sheet number 2005263/2
    *
    **************************/
    
    wire NOR40302_out;
    wire NOR40303_out;
    wire NOR40304_out;
    wire NOR40305_in;
    wire NOR40305_out;
    wire NOR40306_out;
    wire NOR40307_out;
    wire NOR40309_out;
    wire NOR40310_in;
    wire NOR40310_out;
    wire NOR40312_out;
    wire NOR40313_out;
    wire NOR40314_out;
    wire NOR40315_out;
    wire NOR40317_out;
    wire NOR40318_out;
    wire NOR40323_out;
    wire NOR40324_out;
    wire NOR40325_out;
    wire NOR40326_out;
    wire NOR40327_out;
    wire NOR40329_out;
    wire NOR40330_out;
    wire NOR40333_out;
    wire NOR40334_out;
    wire NOR40335_out;
    wire NOR40336_out;
    wire NOR40337_out;
    wire NOR40338_out;
    wire NOR40438_out;
    wire NOR40340_out;
    wire NOR40345_out;
    wire NOR40346_out;
    wire NOR40350_out;
    wire NOR40351_out;
    wire NOR40352_out;
    wire NOR40353_out;
    wire NOR40354_in;
    wire NOR40354_out;
    wire NOR40355_out;
    wire NOR40356_out;
    
    wire n10XP9;
    
    // NOR40301 not used
    
    // 6XP10
    nor_2 #(1'b0) NOR40302(NOR40302_out,    BR1,            AUG0_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR40303(NOR40303_out,    DIM0_,          BR12B_,                                     SIM_CLK);
    nor_3 #(1'b0) NOR40304(NOR40304_out,    NOR40302_out,   NOR40303_out,   INCR0,                      SIM_CLK);
    nor_2 #(1'b0) NOR40306(NOR40306_out,    PINC,           NOR40307_out,                               SIM_CLK);
    assign NOR40305_in = NOR40304_out & NOR40305_out;
    nor_2 #(1'b0) NOR40307(NOR40307_out,    BR12B_,         DINC_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR40305(n6XP10,          T06_,           NOR40305_in,                                SIM_CLK);
    
    // NOR40308 not used
    
    // MONEX
    nor_2 #(1'b0) NOR40312(NOR40312_out,    AUG0_,          BR1_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40313(NOR40313_out,    DIM0_,          BR1B2B_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR40314(NOR40314_out,    BR1B2B_,        DINC_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR40309(NOR40309_out,    MINC,           MCDU,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40315(NOR40315_out,    NOR40312_out,   NOR40313_out,   NOR40314_out,               SIM_CLK);
    assign NOR40310_in = NOR40309_out & NOR40315_out;
    nor_2 #(1'b0) NOR40310(NOR40310_out,    T06_,           NOR40310_in,                                SIM_CLK);
    // Cross-module fan-in, connected to A5
    nor_1 #(1'b0) NOR40311(A06_1_MONEX_,    NOR40310_out,                                               SIM_CLK);
    
    // NOR40316 not used
    
    // 6XP12
    nor_2 #(1'b0) NOR40318(NOR40318_out,    PCDU,           MCDU,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40317(NOR40317_out,    T06_,           NOR40318_out,                               SIM_CLK);
    
    // NOR40319 not used
    
    // POUT, MOUT, ZOUT
    nor_3 #(1'b0) NOR40320(POUT,            BR1B2B_,        CDUSTB_,        DINC_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40321(MOUT,            BR12B_,         CDUSTB_,        DINC_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40322(ZOUT,            BR2_,           DINC_,          CDUSTB_,                    SIM_CLK);
    
    // WA_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0) NOR40323(NOR40323_out,    DAS0,           DAS1,           MSU0,                       SIM_CLK);
    nor_2 #(1'b0) NOR40324(NOR40324_out,    DV4_,           BR1B2B,                                     SIM_CLK);
    nor_3 #(1'b0) NOR40325(NOR40325_out,    NOR40324_out,   WAND0,          RAND0,                      SIM_CLK);
    nor_2 #(1'b0) NOR40326(NOR40326_out,    NOR40323_out,   T07_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40327(NOR40327_out,    T07_,           NOR40325_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR40328(A06_1_WA_,       NOR40326_out,   NOR40327_out,   NOR40354_out,               SIM_CLK);
    
    // 7XP14
    nor_2 #(1'b0) NOR40329(NOR40329_out,    WAND0,          INOTLD,                                     SIM_CLK);
    nor_2 #(1'b0) NOR40331(n7XP14,          T07_,           NOR40329_out,                               SIM_CLK);
    
    // NOR40332 not used

    // 7XP10
    nor_3 #(1'b0) NOR40333(NOR40333_out,    DAS1_,          T07_,           BR1B2_,                     SIM_CLK);

    // 7XP11
    nor_3 #(1'b0) NOR40334(NOR40334_out,    DAS1_,          T07_,           BR12B_,                     SIM_CLK);

    // 7XP15
    nor_3 #(1'b0) NOR40335(NOR40335_out,    PCDU,           MCDU,           SHIFT,                      SIM_CLK);
    nor_2 #(1'b0) NOR40337(NOR40337_out,    NOR40335_out,   T07_,                                       SIM_CLK);
    
    // RU_ part 2
    // Cross-module fan-in, connected to A5
    nor_4 #(1'b0) NOR40336(NOR40336_out,    PRINC,          PINC,           MINC,           DINC,       SIM_CLK);
    // NOR40339 merged into NOR40446
    nor_2 #(1'b0) NOR40338(NOR40338_out,    NOR40336_out,   T07_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40344(A06_2_RU_,       NOR40338_out,   NOR40438_out,   NOR40354_out,               SIM_CLK);
    
    // WOVR
    nor_2 #(1'b0) NOR40340(NOR40340_out,    PRINC,          INKL,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40341(WOVR,            NOR40340_out,   T07_,           MONpCH,                     SIM_CLK);
    
    // WG_ part 2
    // Cross-module fan-in, connected to A4, A5 and A12
    nor_2 #(1'b0) NOR40342(A06_2_WG_,       WOVR,           NOR40346_out,                               SIM_CLK);
    
    // WSC_ part 2
    // No cross-module fan-in 
    nor_3 #(1'b0) NOR40330(NOR40330_out,    T04_,           MON_,           FETCH1,                     SIM_CLK);
    nor_3 #(1'b0) NOR40343(A06_2_WSC_,      WOVR,           NOR40330_out,   NOR40346_out,               SIM_CLK);

    // RB_ part 2
    // Cross-module fan-in, connected to A4 and A5
    nor_2 #(1'b0) NOR40345(NOR40345_out,    IC9,            DXCH0,                                      SIM_CLK);
    nor_2 #(1'b0) NOR40346(NOR40346_out,    T07_,           NOR40345_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR40347(A06_2_RB_,       NOR40346_out,   n10XP9,                                     SIM_CLK);

    // 8PP4
    // Cross-module fan-in, connected to A4
    nor_3 #(1'b0) NOR40348(A06_1_n8PP4,     RUPT1,          DAS1,           MSU0,                       SIM_CLK);
    nor_3 #(1'b0) NOR40417(A06_2_n8PP4,     IC17,           MASK0,          IC11,                       SIM_CLK);
    nor_3 #(1'b0) NOR40418(A06_3_n8PP4,     IC6,            IC7,            IC9,                        SIM_CLK);
    
    // 8XP4
    nor_2 #(1'b0) NOR40349(n8XP4,           T08_,           n8PP4,                                      SIM_CLK);
    
    // 8XP10
    nor_3 #(1'b0) NOR40350(NOR40350_out,    T08_,           RUPT0,          DAS0,                       SIM_CLK);
    nor_2 #(1'b0) NOR40351(NOR40351_out,    MP1,            DV1376,                                     SIM_CLK);
    assign n8XP10 = NOR40350_out & NOR40351_out;

    // Misc
    nor_2 #(1'b0) NOR40352(NOR40352_out,    MP3_,           BR1_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40355(NOR40355_out,    DAS1_,          BR2_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40353(NOR40353_out,    NOR40352_out,   CCS0,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40356(NOR40356_out,    ADS0,           IC11,           NOR40355_out,               SIM_CLK);
    assign NOR40354_in = NOR40353_out & NOR40356_out;
    nor_2 #(1'b0) NOR40354(NOR40354_out,    T11_,           NOR40354_in,                                SIM_CLK);

    // RDBANK
    nor_2 #(1'b0) NOR40357(RDBANK,          T06_,           STFETI_,                                    SIM_CLK);
    
    // RU part 3
    // Cross-module fan-in, connected to A5
    nor_1 #(1'b0) NOR40358(A06_3_RU_,       RDBANK,                                                     SIM_CLK);
    
    
    
endmodule
