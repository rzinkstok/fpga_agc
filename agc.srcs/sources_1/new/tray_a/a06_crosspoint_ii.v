`timescale 1ns / 1ps

module a06_crosspoint_ii(
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
    input wire L02_,
    input wire L15_,
    input wire R6, 
    input wire R15,
    input wire STBE, 
    input wire STBF, 
    input wire STFET1_,
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
    input wire NISQ,
    input wire RB1_,
    
    output wire A06_1_A2X_,
    output wire A06_1_RB_, 
    output wire A06_2_RB_,
    output wire A06_1_WYD_,
    output wire A06_1_WY_,
    output wire A06_1_RC_, 
    output wire A06_2_RC_,
    output wire A06_1_WL_,
    output wire A06_1_RG_,
    output wire A06_2_RG_,
    output wire A06_1_WB_,
    output wire A06_2_WB_,
    output wire A06_1_RU_, 
    output wire A06_2_RU_, 
    output wire A06_3_RU_,
    output wire A06_4_RU_,
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
    output wire A06_1_RB1_,
    output wire A06_1_RPTSET,
    output wire A06_1_ST2_,
    output wire A06_2_ST2_,
    output wire A06_1_n8PP4, 
    output wire A06_2_n8PP4, 
    output wire A06_3_n8PP4,
    output wire WHOMP,
    output wire WHOMPA,
    output wire RB1,
    output wire L2GD_, 
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
    output wire EXT,
    output wire ST1, 
    output wire ST2, 
    output wire RUS_, 
    output wire NEAC, 
    output wire PONEX, 
    output wire PSEUDO,
    output wire n7XP11,
    output wire n7XP14,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
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
    
    wire NOR40202_out;
    wire NOR40203_out;
    wire NOR40204_out;
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
    
    wire NOR34462_out;
    wire NOR34464_out;
    wire NOR54262_out;
    wire NOR54263_out;
    
    wire L02A_;
    wire L15A_;
    wire DVXP1;
    wire WHOMP_;
    wire ZAP;
    wire ZIP;
    wire ZIPCI;


    // DVXP1
    nor_3 #(1'b0)  NOR40101(NOR40101_out,   T04,            T07,            T10,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40102(NOR40102_out,   NOR40101_out,   DV376_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40103(NOR40103_out,   T01_,           DV1376_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40104(NOR40104_out,   T04_,           DV4_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40105(NOR40105_out,   NOR40102_out,   NOR40103_out,   NOR40104_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40106(DVXP1,          NOR40105_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // A2X_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40107(A06_1_A2X_,     n7XP19,         ZIP,            DVXP1,          p4SW, reset, prop_clk);
    
    // L2GD_
    nor_3 #(1'b1)  NOR40108(L2GD_,          DVXP1,          ZIP,            n0VDCA,         p4SW, reset, prop_clk);
    
    // RB_
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0)  NOR40109(A06_1_RB_,      DVXP1,          NOR40128_out,   RBSQ,           p4SW, reset, prop_clk);
    
    // WYD_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40110(A06_1_WYD_,     DVXP1,          NOR40118_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR40111(NOR40111_out,   T01,            T03,            T05,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40112(NOR40112_out,   T07,            T09,            T11,            p4SW, reset, prop_clk);
    assign NOR40113_in = NOR40111_out & NOR40112_out;
    nor_3 #(1'b0)  NOR40113(NOR40113_out,   MP1_,           NOR40113_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40114(NOR40114_out,   n2XP7,          NOR40113_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40115(NOR40115_out,   NOR40114_out,   NOR40125_out,   NOR40126_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40116(NOR40116_out,   NOR40126_out,   NOR40125_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // ZIP
    nor_3 #(1'b0)  NOR40117(ZIP,            NOR40114_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR40118(NOR40118_out,   NOR40114_out,   NOR40116_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WY_
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b1)  NOR40119(A06_1_WY_,      NOR40115_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Moved here from A12 sheet 2
    nor_3 #(1'b0)  NOR34462(NOR34462_out,   L02_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34463(L02A_,          NOR34462_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Moved here from A12 sheet 2
    nor_3 #(1'b0)  NOR34464(NOR34464_out,   L15_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34465(L15A_,          NOR34464_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    nor_3 #(1'b0)  NOR40120(NOR40120_out,   L01_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40121(NOR40121_out,   L02A_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40122(NOR40122_out,   L15A_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR40123(NOR40123_out,   NOR40126_out,   NOR40125_out,   L02A_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40124(NOR40124_out,   NOR40120_out,   NOR40121_out,   NOR40122_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40125(NOR40125_out,   NOR40122_out,   NOR40120_out,   L02A_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40126(NOR40126_out,   NOR40121_out,   L15A_,          L01_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40127(NOR40127_out,   NOR40123_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40128(NOR40128_out,   NOR40123_out,   NOR40124_out,   NOR40114_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40129(NOR40129_out,   NOR40114_out,   NOR40127_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // ZIPCI
    nor_3 #(1'b0)  NOR40130(ZIPCI,          NOR40114_out,   NOR40127_out,   NOR40133_out,   p4SW, reset, prop_clk);
    
    // RC_ part 1
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0)  NOR40131(A06_1_RC_,      ZIPCI,          n3XP7,          n0VDCA,         p4SW, reset, prop_clk);
    
    // RCH_
    nor_3 #(1'b0)  NOR40132(RCH_,           n3XP7,          n5XP21,         n4XP11,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR40133(NOR40133_out,   L15A_,          L02A_,          L01_,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40134(NOR40134_out,   T05,            T08,            T11,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40135(NOR40135_out,   NOR40134_out,   DV376_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40136(NOR40136_out,   DV1376_,        T02_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40137(NOR40137_out,   NOR40135_out,   NOR40136_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40138(NOR40138_out,   NOR40137_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // TSGU_
    nor_3 #(1'b0)  NOR40139(TSGU_,          n5XP28,         NOR40138_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WL_
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b1)  NOR40140(A06_1_WL_,      NOR40138_out,   n5XP12,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RG_ part 1
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40141(A06_1_RG_,      n5XP4,          RADRG,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR40142(NOR40142_out,   T06,            T09,            T12,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40143(NOR40143_out,   DV376_,         NOR40142_out,   T12USE_,        p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40144(NOR40144_out,   NOR40143_out,   DIVSTG,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40145(NOR40145_out,   NOR40144_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RG_ part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40146(A06_2_RG_,      NOR40138_out,   n5XP28,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR40147(NOR40147_out,   T02,            T04,            T06,            p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40148(NOR40148_out,   T08,            T10,            n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40150_in = NOR40147_out & NOR40148_out;
    nor_3 #(1'b1)  NOR40149(NOR40149_out,   T01,            T03,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40150(NOR40150_out,   MP1_,           NOR40150_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40151(NOR40151_out,   NOR40149_out,   MP3_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // ZAP_
    nor_3 #(1'b1)  NOR40152(ZAP_,           NOR40150_out,   NOR40151_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WB_ part 1
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40153(A06_1_WB_,      n2XP3,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // ZAP
    nor_3 #(1'b0)  NOR40154(ZAP,            ZAP_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // WB_ part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40155(A06_2_WB_,      n5XP28,         n1XP10,         NOR40145_out,   p4SW, reset, prop_clk);
    
    // RU_ part 1 and 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40156(A06_1_RU_,      NOR40145_out,   ZAP,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40157(A06_2_RU_,      n5XP12,         n6XP5,          n0VDCA,         p4SW, reset, prop_clk);
    
    // WZ_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40158(A06_1_WZ_,      RRPA,           n5XP4,          n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40159 removed (fan-out expansion)
    
    // MCRO_
    nor_3 #(1'b0)  NOR40160(MCRO_,          NOR40129_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RB1F
    nor_3 #(1'b0)  NOR40201(RB1F,           BR1_,           PHS4_,          TSGU_,          p4SW, reset, prop_clk);
    
    // CLXC
    nor_3 #(1'b0)  NOR40202(NOR40202_out,   TSGU_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40203(NOR40203_out,   BR1,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40204(NOR40204_out,   PHS4_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign CLXC = NOR40202_out & NOR40203_out & NOR40204_out;
    
    // NOR40205 removed (not used)
    
    // WQ_
    nor_3 #(1'b1)  NOR40206(WQ_,            n5XP15,         n3XP6,          n0VDCA,         p4SW, reset, prop_clk);
    
    // TOV_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40207(A06_1_TOV_,     n6XP5,          n3XP2,          n9XP5,          p4SW, reset, prop_clk);
    
    // WSC_ part 1
    // No cross-module fan-in
    nor_3 #(1'b1)  NOR40208(A06_1_WSC_,     n9XP5,          n6XP8,          n0VDCA,         p4SW, reset, prop_clk);
    
    // WG_ part 1
    // Cross-module fan-in, connected to A4, A5 and A12
    nor_3 #(1'b0)  NOR40209(A06_1_WG_,      n6XP8,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MONEX
    nor_3 #(1'b0)  NOR40210(MONEX,          MONEX_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR40211 removed (fan-out expansion)
    // NOR40212 removed (fan-out expansion)
    
    nor_3 #(1'b1)  NOR40213(NOR40213_out,   PTWOX,          MONEX,          n0VDCA,         p4SW, reset, prop_clk);
    
    // TWOX
    nor_3 #(1'b0)  NOR40214(TWOX,           NOR40213_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR40215(NOR40215_out,   MONEX,          B15X,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BXVX
    nor_3 #(1'b0)  NOR40216(BXVX,           NOR40215_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR40217(NOR40217_out,   NOR40134_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR40218 removed (not used)
    // NOR40219 removed (not used)
    
    // PIFL flip-flop
    nor_3 #(1'b1)  NOR40220(PIFL_,          DVXP1,          NOR40221_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40221(NOR40221_out,   PIFL_,          NOR40217_out,   T02,            p4SW, reset, prop_clk);
    
    // NOR40222, NOR40223, NOR40224 and NOR40225 moved to A14 sheet 1
    // NOR40226 - NOR40239 moved to A14 sheet 2
    
    // CGMC
    nor_3 #(1'b0)  NOR40240(NOR40240_out,   STBE,           n1XP10,         STBF,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40241(CGMC,           NOR40240_out,   NOR40258_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40242(NOR40242_out,   CGMC,           NOR40243_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40243(NOR40243_out,   NOR40242_out,   NOR40240_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40244(NOR40244_out,   NOR40243_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40245(NOR40245_out,   NOR40244_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40253(NOR40253_out,   NOR40245_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40254(NOR40254_out,   NOR40253_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40255(NOR40255_out,   NOR40254_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40256(NOR40256_out,   NOR40255_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40257(NOR40257_out,   NOR40256_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40258(NOR40258_out,   NOR40257_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // WHOMP flip-flop
    
    // Moved here from A11 sheet 1
    nor_3 #(1'b0)  NOR54262(NOR54262_out,   DVXP1,          WHOMP_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR54263(NOR54263_out,   NISQ,           GOJAM,          n0VDCA,         p4SW, reset, prop_clk);
    assign WHOMP = NOR54262_out & NOR54263_out;
    
    // Moved here from A11 sheet 1
    nor_3 #(1'b1)  NOR54161(WHOMP_,         WHOMP,          CLXC,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Moved here from A14 sheet 1
    nor_3 #(1'b0)  NOR42157(WHOMPA,         WHOMP_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RB1
    nor_3 #(1'b0)  NOR42426(RB1,            RB1_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A6 sheet 2
    *  Sheet number 2005263/2
    *
    **************************/
    
    wire NOR40302_out;
    wire NOR40303_out;
    wire NOR40304_out;
    wire NOR40306_out;
    wire NOR40307_out;
    wire NOR40309_out;
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
    wire NOR40339_out;
    wire NOR40340_out;
    wire NOR40345_out;
    wire NOR40346_out;
    wire NOR40350_out;
    wire NOR40351_out;
    wire NOR40352_out;
    wire NOR40353_out;
    wire NOR40354_out;
    wire NOR40355_out;
    wire NOR40356_out;
    
    wire NOR40401_out;
    wire NOR40405_out;
    wire NOR40406_out;
    wire NOR40407_out;
    wire NOR40408_out;
    wire NOR40409_out;
    wire NOR40410_out;
    wire NOR40411_out;
    wire NOR40412_out;
    wire NOR40413_out;
    wire NOR40421_out;
    wire NOR40422_out;
    wire NOR40426_out;
    wire NOR40432_out;
    wire NOR40433_out;
    wire NOR40438_out;
    wire NOR40439_out;
    
    wire NOR40305_in;
    wire NOR40310_in;
    wire NOR40338_in;
    wire NOR40354_in;
    wire NOR40403_in;
    wire NOR40410_in;
    wire NOR40423_in;
    wire NOR40434_in;
    
    wire n6XP10;
    wire n6XP12;
    wire n7XP7;
    wire n7XP10;
    wire n7XP15;
    wire n8XP4;
    wire n8XP10;
    wire n10XP9;
    wire RDBANK;
    
    // NOR40301 removed (not used)
    
    // 6XP10
    nor_3 #(1'b0)  NOR40302(NOR40302_out,   BR1,            AUG0_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40303(NOR40303_out,   DIM0_,          BR12B_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40304(NOR40304_out,   NOR40302_out,   NOR40303_out,   INCR0,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40306(NOR40306_out,   PINC,           NOR40307_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40305_in = NOR40304_out & NOR40306_out;
    nor_3 #(1'b0)  NOR40307(NOR40307_out,   BR12B_,         DINC_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40305(n6XP10,         T06_,           NOR40305_in,    n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40308 removed (not used)
    
    // MONEX
    nor_3 #(1'b0)  NOR40312(NOR40312_out,   AUG0_,          BR1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40313(NOR40313_out,   DIM0_,          BR1B2B_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40314(NOR40314_out,   BR1B2B_,        DINC_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40309(NOR40309_out,   MINC,           MCDU,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40315(NOR40315_out,   NOR40312_out,   NOR40313_out,   NOR40314_out,   p4SW, reset, prop_clk);
    assign NOR40310_in = NOR40309_out & NOR40315_out;
    nor_3 #(1'b0)  NOR40310(NOR40310_out,   T06_,           NOR40310_in,    n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40311(A06_1_MONEX_,   NOR40310_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40316 removed (not used)
    
    // 6XP12
    nor_3 #(1'b0)  NOR40318(NOR40318_out,   PCDU,           MCDU,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40317(n6XP12,         T06_,           NOR40318_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40319 removed (not used)
    
    // POUT, MOUT, ZOUT
    nor_3 #(1'b0)  NOR40320(POUT,           BR1B2B_,        CDUSTB_,        DINC_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40321(MOUT,           BR12B_,         CDUSTB_,        DINC_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40322(ZOUT,           BR2_,           DINC_,          CDUSTB_,        p4SW, reset, prop_clk);
    
    // WA_ part 1
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40323(NOR40323_out,   DAS0,           DAS1,           MSU0,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40324(NOR40324_out,   DV4_,           BR1B2B,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40325(NOR40325_out,   NOR40324_out,   WAND0,          RAND0,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40326(NOR40326_out,   NOR40323_out,   T07_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40327(n7XP7,          T07_,           NOR40325_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40328(A06_1_WA_,      NOR40326_out,   n7XP7,          NOR40354_out,   p4SW, reset, prop_clk);
    
    // 7XP14
    nor_3 #(1'b0)  NOR40329(NOR40329_out,   WAND0,          INOTLD,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40331(n7XP14,         T07_,           NOR40329_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40332 removed (not used)

    // 7XP10
    nor_3 #(1'b0)  NOR40333(n7XP10,         DAS1_,          T07_,           BR1B2_,         p4SW, reset, prop_clk);

    // 7XP11
    nor_3 #(1'b0)  NOR40334(n7XP11,         DAS1_,          T07_,           BR12B_,         p4SW, reset, prop_clk);

    // 7XP15
    nor_3 #(1'b0)  NOR40335(NOR40335_out,   PCDU,           MCDU,           SHIFT,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40337(n7XP15,         NOR40335_out,   T07_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RU_ part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40336(NOR40336_out,   PRINC,          PINC,           MINC,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40339(NOR40339_out,   DINC,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40338_in = NOR40336_out & NOR40339_out;
    
    nor_3 #(1'b0)  NOR40338(NOR40338_out,   NOR40336_out,   T07_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40344(A06_3_RU_,      NOR40338_out,   NOR40438_out,   NOR40354_out,   p4SW, reset, prop_clk);
    
    // WOVR
    nor_3 #(1'b0)  NOR40340(NOR40340_out,   PRINC,          INKL,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40341(WOVR,           NOR40340_out,   T07_,           MONpCH,         p4SW, reset, prop_clk);
    
    // WG_ part 2
    // Cross-module fan-in, connected to A4, A5 and A12
    nor_3 #(1'b0)  NOR40342(A06_2_WG_,      WOVR,           NOR40346_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WSC_ part 2
    // No cross-module fan-in 
    nor_3 #(1'b0)  NOR40330(NOR40330_out,   T04_,           MON_,           FETCH1,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40343(A06_2_WSC_,     WOVR,           NOR40330_out,   NOR40346_out,   p4SW, reset, prop_clk);

    // RB_ part 2
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0)  NOR40345(NOR40345_out,   IC9,            DXCH0,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40346(NOR40346_out,   T07_,           NOR40345_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40347(A06_2_RB_,      NOR40346_out,   n10XP9,         n0VDCA,         p4SW, reset, prop_clk);

    // 8PP4
    // Cross-module fan-in, connected to A4
    nor_3 #(1'b0)  NOR40348(A06_1_n8PP4,    RUPT1,          DAS1,           MSU0,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40417(A06_2_n8PP4,    IC17,           MASK0,          IC11,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40418(A06_3_n8PP4,    IC6,            IC7,            IC9,            p4SW, reset, prop_clk);
    
    // 8XP4
    nor_3 #(1'b0)  NOR40349(n8XP4,          T08_,           n8PP4,          n0VDCA,         p4SW, reset, prop_clk);
    
    // 8XP10
    nor_3 #(1'b0)  NOR40350(NOR40350_out,   T08_,           RUPT0,          DAS0,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40351(NOR40351_out,   MP1,            DV1376,         n0VDCA,         p4SW, reset, prop_clk);
    assign n8XP10 = NOR40350_out & NOR40351_out;

    // Misc
    nor_3 #(1'b0)  NOR40352(NOR40352_out,   MP3_,           BR1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40355(NOR40355_out,   DAS1_,          BR2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40353(NOR40353_out,   NOR40352_out,   CCS0,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40356(NOR40356_out,   ADS0,           IC11,           NOR40355_out,   p4SW, reset, prop_clk);
    assign NOR40354_in = NOR40353_out & NOR40356_out;
    nor_3 #(1'b0)  NOR40354(NOR40354_out,   T11_,           NOR40354_in,    n0VDCA,         p4SW, reset, prop_clk);

    // RDBANK
    nor_3 #(1'b0)  NOR40357(RDBANK,         T06_,           STFET1_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // RU part 3
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40358(A06_4_RU_,      RDBANK,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // EXT
    nor_3 #(1'b0)  NOR40402(EXT,            T10_,           NDXX1_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // 10XP9
    nor_3 #(1'b0)  NOR40405(NOR40405_out,   CCS0_,          BR1B2B_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40401(NOR40401_out,   IC6,            DCA0,           AD0,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40406(NOR40406_out,   NOR40405_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40403_in = NOR40401_out & NOR40406_out;
    
    nor_3 #(1'b0)  NOR40403(n10XP9,         T10_,           NOR40403_in,    n0VDCA,         p4SW, reset, prop_clk);
    // NOR40404 removed (not used)
    
    // WA_ part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40407(NOR40407_out,   IC6,            IC7,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40408(NOR40408_out,   T10_,           NOR40407_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40414(A06_2_WA_,      NOR40408_out,   NOR40438_out,   n2XP5,          p4SW, reset, prop_clk);
    
    // RC_ part 2
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0)  NOR40409(NOR40409_out,   IC7,            DCS0,           SU0,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40411(NOR40411_out,   CCS0_,          BR12B_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40412(NOR40412_out,   NOR40411_out,   DV4B1B,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40410_in = NOR40409_out & NOR40412_out;
    nor_3 #(1'b0)  NOR40410(NOR40410_out,   T10_,           NOR40410_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40415(A06_2_RC_,      NOR40410_out,   n7XP7,          n0VDCA,         p4SW, reset, prop_clk);
    
    // ST1
    nor_3 #(1'b0)  NOR40413(NOR40413_out,   T10_,           MP1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40421(NOR40421_out,   n2XP8,          n10XP1,         MP0T10,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40422(NOR40422_out,   NOR40413_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40423_in = NOR40421_out & NOR40422_out;
    nor_3 #(1'b0)  NOR40423(ST1,            NOR40423_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // ST2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40416(A06_1_ST2_,     n8XP4,          NOR40413_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40424(A06_2_ST2_,     RADRZ,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40425(ST2,            ST2_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RUS_
    nor_3 #(1'b0)  NOR40419(RUS_,           n7XP9,          n11XP2,         n7XP15,         p4SW, reset, prop_clk);
    
    // RZ_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR40420(A06_1_RZ_,      n8XP4,          RADRZ,          n9XP1,          p4SW, reset, prop_clk);
    
    // NEAC flip-flop
    nor_3 #(1'b1)  NOR40426(NOR40426_out,   MP0T10,         NEAC,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40427(NEAC,           TL15,           NOR40426_out,   GOJAM,          p4SW, reset, prop_clk);
    
    // NOR40428 moved to A4 sheet 2
    
    // WS_ 
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b1)  NOR40430(A06_1_WS_,      n8XP10,         R6,             R15,            p4SW, reset, prop_clk);
    
    // CI_
    // Cross-module fan-in, connected to A4 and A5
    nor_3 #(1'b0)  NOR40431(A06_1_CI_,      ZIPCI,          n6XP12,         n0VDCA,         p4SW, reset, prop_clk);
    
    // PONEX
    nor_3 #(1'b1)  NOR40432(NOR40432_out,   n8XP6,          n7XP4,          n10XP8,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40433(NOR40433_out,   n6XP10,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR40434_in = NOR40432_out & NOR40433_out;
    nor_3 #(1'b0)  NOR40434(PONEX,          NOR40434_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40435 moved to A4 sheet 2
    
    // RB1_
    // Cross-module fan-in, connected to A4
    nor_3 #(1'b0)  NOR40436(A06_1_RB1_,     n7XP10,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR40437 removed (not connected)
    
    nor_3 #(1'b0)  NOR40438(NOR40438_out,   DAS1_,          ADS0,           T03_,           p4SW, reset, prop_clk);
    
    // PSEUDO flip-flop
    nor_3 #(1'b0)  NOR40439(NOR40439_out,   RADRZ,          PSEUDO,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR40440(PSEUDO,         NOR40439_out,   GOJAM,          RADRG,          p4SW, reset, prop_clk);
    
    // RTPSET
    // Cross-module fan-in, connected to A3
    nor_3 #(1'b0)  NOR40441(A06_1_RPTSET,   PSEUDO,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
endmodule
