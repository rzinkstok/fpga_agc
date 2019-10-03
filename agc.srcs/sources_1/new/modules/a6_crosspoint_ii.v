`timescale 1ns / 1ps

module a6_crosspoint_ii(
    input wire T01, 
    input wire T01_, 
    input wire T02, 
    input wire T02_, 
    input wire T03, 
    input wire T03_, 
    input wire T04, 
    input wire T04_, 
    input wire T05, 
    input wire T06, 
    input wire T06_, 
    input wire T07, 
    input wire T07_, 
    input wire T08, 
    input wire T08_, 
    input wire T09, 
    input wire T10, 
    input wire T10_, 
    input wire T11, 
    input wire T11_, 
    input wire T12,
    input wire DV4_, 
    input wire DV376_, 
    input wire DV1376_, 
    input wire DIVSTG, 
    input wire DV4B1B,
    input wire RBSQ, 
    input wire MP1, 
    input wire MP1_, 
    input wire MP3_, 
    input wire T12USE_, 
    input wire RRPA, 
    input wire BR1, 
    input wire BR1_, 
    input wire BR2_, 
    input wire BR12B_, 
    input wire BR1B2B, 
    input wire BR1B2_, 
    input wire BR1B2B_, 
    input wire PHS4_, 
    input wire MONEX_, 
    input wire PTWOX, 
    input wire B15X,
    input wire AUG0_, 
    input wire DIM0_, 
    input wire INCR0, 
    input wire PRINC, 
    input wire DINC, 
    input wire DINC_, 
    input wire PINC, 
    input wire MINC, 
    input wire MCDU, 
    input wire PCDU, 
    input wire CDUSTB_, 
    input wire DAS0, 
    input wire DAS1, 
    input wire DAS1_, 
    input wire MSU0, 
    input wire WAND0, 
    input wire RAND0, 
    input wire INOTLD, 
    input wire SHIFT, 
    input wire INKL,
    input wire MONpCH, 
    input wire MON_, 
    input wire FETCH1, 
    input wire DXCH0, 
    input wire RUPT0, 
    input wire RUPT1, 
    input wire MASK0, 
    input wire DV1376, 
    input wire CCS0, 
    input wire CCS0_, 
    input wire ADS0, 
    input wire NDXX1_, 
    input wire AD0, 
    input wire DCA0, 
    input wire DCS0, 
    input wire SU0, 
    input wire RADRZ, 
    input wire RADRG,
    input wire IC6, 
    input wire IC7, 
    input wire IC9, 
    input wire IC11, 
    input wire IC17,
    input wire L01_, 
    input wire L02A_, 
    input wire L15A_,
    input wire R6, 
    input wire R15,
    input wire STBE, 
    input wire STBF, 
    input wire STFETI_,
    input wire n1XP10, 
    input wire n2XP3, 
    input wire n2XP5, 
    input wire n2XP7, 
    input wire n2XP8, 
    input wire n3XP2, 
    input wire n3XP6, 
    input wire n3XP7, 
    input wire n4XP11, 
    input wire n5XP4, 
    input wire n5XP12, 
    input wire n5XP15, 
    input wire n5XP21, 
    input wire n5XP28, 
    input wire n6XP5, 
    input wire n6XP8, 
    input wire n7XP4, 
    input wire n7XP9, 
    input wire n7XP19, 
    input wire n8XP6, 
    input wire n9XP1, 
    input wire n9XP5, 
    input wire n10XP1, 
    input wire n10XP8, 
    input wire n11XP2,
    input wire n8PP4,
    input wire MP0T10, 
    input wire TL15,
    input wire ST2_,
    input wire GOJAM,
    
    output wire A06_1_A2X_,
    output wire A06_1_RB_, 
    output wire A06_2_RB_,
    output wire A06_1_WYD_,
    output wire A06_1_WY_,
    output wire A06_1_RC_, 
    output wire A06_2_RC_,
    output wire A06_1_WL_,
    output wire A06_1_RG_,
    output wire A06_1_WB_,
    output wire A06_1_RU_, 
    output wire A06_2_RU_, 
    output wire A06_3_RU_,
    output wire A06_1_WZ_,
    output wire A06_1_TOV_,
    output wire A06_1_WSC_, 
    output wire A06_2_WSC_,
    output wire A06_1_WG_, 
    output wire A06_2_WG_,
    output wire A06_1_MONEX_,
    output wire A06_1_WA_, 
    output wire A06_2_WA_,
    output wire A06_1_RZ_,
    output wire A06_1_WS_,
    output wire A06_1_CI_,
    output wire A06_1_R1C_,
    output wire A06_1_RB1_,
    output wire A06_1_RPTSET,
    output wire A06_1_ST2_,
    output wire A06_1_n8PP4, 
    output wire A06_2_n8PP4, 
    output wire A06_3_n8PP4,
    
    output wire DVXP1, 
    output wire L2GD_, 
    output wire ZIP, 
    output wire ZIPCI, 
    output wire ZAP, 
    output wire ZAP_, 
    output wire MCRO_, 
    output wire RB1F, 
    output wire RCH_, 
    output wire TSGU_, 
    output wire CLXC, 
    output wire WQ_, 
    output wire MONEX, 
    output wire TWOX, 
    output wire BXVX, 
    output wire PIFL_, 
    output wire CGMC,
    output wire POUT, 
    output wire MOUT, 
    output wire ZOUT, 
    output wire WOVR, 
    output wire RDBANK, 
    output wire EXT, 
    output wire ST1, 
    output wire ST2, 
    output wire RUS_, 
    output wire NEAC, 
    output wire PONEX, 
    output wire PSEUDO,
    output wire n6XP10, 
    output wire n7XP14, 
    output wire n8XP4, 
    output wire n8XP10,
    
    input wire SIM_CLK
    );
    
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
    
    // RC_ part 1
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
    
    nor_2 #(1'b1) NOR40213(NOR40213_out,    PTWOX,          MONEX,                                      SIM_CLK);
    
    // TWOX
    nor_1 #(1'b0) NOR40214(TWOX,            NOR40213_out,                                               SIM_CLK);
    
    nor_2 #(1'b1) NOR40215(NOR40215_out,    MONEX,          B15X,                                       SIM_CLK);
    
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
    wire NOR40306_out;
    wire NOR40307_out;
    wire NOR40309_out;
    wire NOR40310_in;
    wire NOR40310_out;
    wire NOR40312_out;
    wire NOR40313_out;
    wire NOR40314_out;
    wire NOR40315_out;
    wire NOR40318_out;
    wire NOR40323_out;
    wire NOR40324_out;
    wire NOR40325_out;
    wire NOR40326_out;
    wire NOR40329_out;
    wire NOR40330_out;
    wire NOR40335_out;
    wire NOR40336_out;
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
    
    wire NOR40401_out;
    wire NOR40405_out;
    wire NOR40407_out;
    wire NOR40408_out;
    wire NOR40409_out;
    wire NOR40410_in;
    wire NOR40410_out;
    wire NOR40411_out;
    wire NOR40412_out;
    wire NOR40413_out;
    wire NOR40421_out;
    wire NOR40426_out;
    wire NOR40432_out;
    wire NOR40439_out;
    
    wire n6XP12, n7XP7, n7XP10, n7XP11, n7XP15, n10XP9;
    
    // NOR40301 not used
    
    // 6XP10
    nor_2 #(1'b0) NOR40302(NOR40302_out,    BR1,            AUG0_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR40303(NOR40303_out,    DIM0_,          BR12B_,                                     SIM_CLK);
    nor_3 #(1'b0) NOR40304(NOR40304_out,    NOR40302_out,   NOR40303_out,   INCR0,                      SIM_CLK);
    nor_2 #(1'b0) NOR40306(NOR40306_out,    PINC,           NOR40307_out,                               SIM_CLK);
    assign NOR40305_in = NOR40304_out & NOR40306_out;
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
    nor_1 #(1'b1) NOR40311(A06_1_MONEX_,    NOR40310_out,                                               SIM_CLK);
    
    // NOR40316 not used
    
    // 6XP12
    nor_2 #(1'b0) NOR40318(NOR40318_out,    PCDU,           MCDU,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40317(n6XP12,          T06_,           NOR40318_out,                               SIM_CLK);
    
    // NOR40319 not used
    
    // POUT, MOUT, ZOUT
    nor_3 #(1'b0) NOR40320(POUT,            BR1B2B_,        CDUSTB_,        DINC_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40321(MOUT,            BR12B_,         CDUSTB_,        DINC_,                      SIM_CLK);
    nor_3 #(1'b0) NOR40322(ZOUT,            BR2_,           DINC_,          CDUSTB_,                    SIM_CLK);
    
    // WA_ part 1
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1) NOR40323(NOR40323_out,    DAS0,           DAS1,           MSU0,                       SIM_CLK);
    nor_2 #(1'b0) NOR40324(NOR40324_out,    DV4_,           BR1B2B,                                     SIM_CLK);
    nor_3 #(1'b0) NOR40325(NOR40325_out,    NOR40324_out,   WAND0,          RAND0,                      SIM_CLK);
    nor_2 #(1'b0) NOR40326(NOR40326_out,    NOR40323_out,   T07_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR40327(n7XP7,           T07_,           NOR40325_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR40328(A06_1_WA_,       NOR40326_out,   n7XP7,          NOR40354_out,               SIM_CLK);
    
    // 7XP14
    nor_2 #(1'b0) NOR40329(NOR40329_out,    WAND0,          INOTLD,                                     SIM_CLK);
    nor_2 #(1'b0) NOR40331(n7XP14,          T07_,           NOR40329_out,                               SIM_CLK);
    
    // NOR40332 not used

    // 7XP10
    nor_3 #(1'b0) NOR40333(n7XP10,          DAS1_,          T07_,           BR1B2_,                     SIM_CLK);

    // 7XP11
    nor_3 #(1'b0) NOR40334(n7XP11,          DAS1_,          T07_,           BR12B_,                     SIM_CLK);

    // 7XP15
    nor_3 #(1'b0) NOR40335(NOR40335_out,    PCDU,           MCDU,           SHIFT,                      SIM_CLK);
    nor_2 #(1'b0) NOR40337(n7XP15,          NOR40335_out,   T07_,                                       SIM_CLK);
    
    // RU_ part 2
    // Cross-module fan-in, connected to A5
    nor_4 #(1'b0) NOR40336(NOR40336_out,    PRINC,          PINC,           MINC,           DINC,       SIM_CLK);
    // NOR40339 merged into NOR40446
    nor_2 #(1'b0) NOR40338(NOR40338_out,    NOR40336_out,   T07_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40344(A06_2_RU_,       NOR40338_out,   NOR40438_out,   NOR40354_out,               SIM_CLK);
    
    // WOVR
    nor_2 #(1'b0) NOR40340(NOR40340_out,    PRINC,          INKL,                                       SIM_CLK);
    nor_3 #(1'b1) NOR40341(WOVR,            NOR40340_out,   T07_,           MONpCH,                     SIM_CLK);
    
    // WG_ part 2
    // Cross-module fan-in, connected to A4, A5 and A12
    nor_2 #(1'b0) NOR40342(A06_2_WG_,       WOVR,           NOR40346_out,                               SIM_CLK);
    
    // WSC_ part 2
    // No cross-module fan-in 
    nor_3 #(1'b0) NOR40330(NOR40330_out,    T04_,           MON_,           FETCH1,                     SIM_CLK);
    nor_3 #(1'b1) NOR40343(A06_2_WSC_,      WOVR,           NOR40330_out,   NOR40346_out,               SIM_CLK);

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
    nor_3 #(1'b0) NOR40356(NOR40356_out,    ADS0,           IC11,           NOR40355_out,               SIM_CLK);
    assign NOR40354_in = NOR40353_out & NOR40356_out;
    nor_2 #(1'b0) NOR40354(NOR40354_out,    T11_,           NOR40354_in,                                SIM_CLK);

    // RDBANK
    nor_2 #(1'b0) NOR40357(RDBANK,          T06_,           STFETI_,                                    SIM_CLK);
    
    // RU part 3
    // Cross-module fan-in, connected to A5
    nor_1 #(1'b0) NOR40358(A06_3_RU_,       RDBANK,                                                     SIM_CLK);
    
    // EXT
    nor_2 #(1'b0) NOR40402(EXT,             T10_,           NDXX1_,                                     SIM_CLK);
    
    // 10XP9
    nor_2 #(1'b0) NOR40405(NOR40405_out,    CCS0_,          BR1B2B_,                                    SIM_CLK);
    nor_4 #(1'b0) NOR40401(NOR40401_out,    IC6,            DCA0,           AD0,        NOR40405_out,   SIM_CLK);
    // NOR40406 merged into NOR40401
    nor_2 #(1'b0) NOR40403(n10XP9,          T10_,           NOR40401_out,                               SIM_CLK);
    // NOR40404 nut used
    
    // WA_ part 2
    // Cross-module fan-in, connected to A5
    nor_2 #(1'b0) NOR40407(NOR40407_out,    IC6,            IC7,                                        SIM_CLK);
    nor_2 #(1'b0) NOR40408(NOR40408_out,    T10_,           NOR40407_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR40414(A06_2_WA_,       NOR40408_out,   NOR40438_out,   n2XP5,                      SIM_CLK);
    
    // RC_ part 2
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0) NOR40409(NOR40409_out,    IC7,            DCS0,           SU0,                        SIM_CLK);
    nor_2 #(1'b0) NOR40411(NOR40411_out,    CCS0_,          BR12B_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR40412(NOR40412_out,    NOR40411_out,   DV4B1B,                                     SIM_CLK);
    assign NOR40410_in = NOR40409_out & NOR40412_out;
    nor_2 #(1'b0) NOR40410(NOR40410_out,    T10_,           NOR40410_in,                                SIM_CLK);
    nor_2 #(1'b0) NOR40415(A06_2_RC_,       NOR40410_out,   n7XP7,                                      SIM_CLK);
    
    // ST1
    nor_2 #(1'b0) NOR40413(NOR40413_out,    T10_,           MP1_,                                       SIM_CLK);
    nor_4 #(1'b0) NOR40421(NOR40421_out,    n2XP8,          n10XP1,         MP0T10,     NOR40413_out,   SIM_CLK);
    // NOR40422 merged into NOR40421
    nor_1 #(1'b0) NOR40423(ST1,             NOR40421_out,                                               SIM_CLK);
    
    // ST2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0) NOR40416(A06_1_ST2_,      n8XP4,          NOR40413_out,   RADRZ,                      SIM_CLK);
    // NOR40424 merged into NOR40416
    nor_1 #(1'b0) NOR40425(ST2,             ST2_,                                                       SIM_CLK);
    
    // RUS_
    nor_3 #(1'b0) NOR40419(RUS_,            n7XP9,          n11XP2,         n7XP15,                     SIM_CLK);
    
    // RZ_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0) NOR40420(A06_1_RZ_,       n8XP4,          RADRZ,          n9XP1,                      SIM_CLK);
    
    // NEAC flip-flop
    nor_2 #(1'b1) NOR40426(NOR40426_out,    MP0T10,         NEAC,                                       SIM_CLK);
    nor_3 #(1'b0) NOR40427(NEAC,            TL15,           NOR40426_out,   GOJAM,                      SIM_CLK);
    
    // NOR40428 moved to A4 sheet 2
    
    // WS_ 
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1) NOR40430(A06_1_WS_,       n8XP10,         R6,             R15,                        SIM_CLK);
    
    // CI_
    // Cross-module fan-in, connected to A4 and A5
    nor_2 #(1'b0) NOR40431(A06_1_CI_,       ZIPCI,          n6XP12,                                     SIM_CLK);
    
    // PONEX
    nor_4 #(1'b1) NOR40432(NOR40432_out,    n8XP6,          n7XP4,          n10XP8,         n6XP10,     SIM_CLK);
    // NOR40433 merged into NOR40432
    nor_1 #(1'b0) NOR40434(PONEX,           NOR40432_out,                                               SIM_CLK);
    
    // R1C_
    // Cross-module fan-in, connected to A4
    nor_1 #(1'b0) NOR40435(A06_1_R1C_,      n7XP11,                                                     SIM_CLK);
    
    // RB1_
    // Cross-module fan-in, connected to A4
    nor_1 #(1'b0) NOR40436(A06_1_RB1_,      n7XP10,                                                     SIM_CLK);
    
    // NOR40437 not connected
    
    nor_3 #(1'b0) NOR40438(NOR40438_out,    DAS1_,          ADS0,           T03_,                       SIM_CLK);
    
    // PSEUDO flip-flop
    nor_2 #(1'b0) NOR40439(NOR40439_out,    RADRZ,          PSEUDO,                                     SIM_CLK);
    nor_3 #(1'b1) NOR40440(PSEUDO,          NOR40439_out,   GOJAM,          RADRG,                      SIM_CLK);
    
    // RTPSET
    // Cross-module fan-in, connected to A3
    nor_1 #(1'b0) NOR40441(A06_1_RPTSET,    PSEUDO,                                                     SIM_CLK);
    
endmodule
