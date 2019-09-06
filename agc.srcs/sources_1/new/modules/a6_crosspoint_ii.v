`timescale 1ns / 1ps

module a6_crosspoint_ii(
    // Inputs
    T01, T01_, T02, T02_, T03, T04, T04_, T05, T06, T07, T08, T09, T10, T11, T12,
    DV4_, DV376_, DV1376_, DIVSTG,
    RBSQ, MP1_, MP3_, RADRG, T12USE_, RRPA, RB1F, BR1, BR1_, PHS4_, MONEX_, PTWOX, B15X,
    L01_, L02A_, L15A_,
    n1XP10, n2XP3, n2XP7, n3XP2, n3XP6, n3XP7, n4XP11, n5XP4, n5XP12, n5XP15, n5XP21, n5XP28, n6XP5, n6XP8, n7XP19, n9XP5,
    
    // Outputs
    A06_1_A2X_,
    A06_1_RB_,
    A06_1_WYD_,
    A06_1_WY_,
    A06_1_RC_,
    A06_1_WL_,
    A06_1_RG_,
    A06_1_WB_,
    A06_1_RU_,
    A06_1_WZ_,
    A06_1_TOV_,
    A06_1_WSC_,
    A06_1_WG_,
    
    DVXP1, L2GD_, ZIP, ZIPCI, ZAP, ZAP_, MCRO_, RCH_, TSGU_, CLXC, WQ_, MONEX, TWOX, BXVX, PIFL_,
    
    // Input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    input wire T01, T01_, T02, T02_, T03, T04, T04_, T05, T06, T07, T08, T09, T10, T11, T12;
    input wire DV4_, DV376_, DV1376_, DIVSTG;
    input wire RBSQ, MP1_, MP3_, RADRG, T12USE_, RRPA, RB1F, BR1, BR1_, PHS4_, MONEX_, PTWOX, B15X;
    input wire L01_, L02A_, L15A_;
    input wire n1XP10, n2XP3, n2XP7, n3XP2, n3XP6, n3XP7, n4XP11, n5XP4, n5XP12, n5XP15, n5XP21, n5XP28, n6XP5, n6XP8, n7XP19, n9XP5;
    
    output wire A06_1_A2X_;
    output wire A06_1_RB_;
    output wire A06_1_WYD_;
    output wire A06_1_WY_;
    output wire A06_1_RC_;
    output wire A06_1_WL_;
    output wire A06_1_RG_;
    output wire A06_1_WB_;
    output wire A06_1_RU_;
    output wire A06_1_WZ_;
    output wire A06_1_TOV_;
    output wire A06_1_WSC_;
    output wire A06_1_WG_;
    
    output wire DVXP1, L2GD_, ZIP, ZIPCI, ZAP, ZAP_, MCRO_, RCH_, TSGU_, CLXC, WQ_, MONEX, TWOX, BXVX, PIFL_;
    
    
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
    
    // WSC_
    // No cross-module fan-in
    nor_2 #(1'b1) NOR40208(A06_1_WSC_,      n9XP5,          n6XP8,                                      SIM_CLK);
    
    // WG_
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
    //NO40218 and NOR40219 not used
    
    // PIFL flip-flop
    nor_2 #(1'b1) NOR40220(PIFL_,           DVXP1,          NOR40221_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR40221(NOR40221_out,    PIFL_,          NOR40217_out,   T02,                        SIM_CLK);
    
endmodule
