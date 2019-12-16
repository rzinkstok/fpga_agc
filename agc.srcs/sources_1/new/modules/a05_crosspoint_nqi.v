`timescale 1ns / 1ps
module a05_crosspoint_nqi(
    input wire T01_, 
    input wire T02_, 
    input wire T03_, 
    input wire T04_, 
    input wire T05_, 
    input wire T06_, 
    input wire T07_, 
    input wire T08_, 
    input wire T09_, 
    input wire T10_, 
    input wire T11_, 
    input wire T12_,
    input wire BR1, 
    input wire BR1_, 
    input wire BR2, 
    input wire BR2_, 
    input wire BR12B_, 
    input wire BR1B2_, 
    input wire BRDIF_,
    input wire IC1, 
    input wire IC2, 
    input wire IC2_, 
    input wire IC3, 
    input wire IC4, 
    input wire IC5, 
    input wire IC5_, 
    input wire IC8_,
    input wire IC9, 
    input wire IC10, 
    input wire IC10_, 
    input wire IC11_, 
    input wire IC12, 
    input wire IC12_, 
    input wire IC13, 
    input wire IC14, 
    input wire IC15_, 
    input wire IC16, 
    input wire IC16_,
    input wire STD2, 
    input wire TC0, 
    input wire TC0_, 
    input wire TCF0, 
    input wire RSM3, 
    input wire RSM3_, 
    input wire DIV_, 
    input wire MP0, 
    input wire MP3, 
    input wire MP3_, 
    input wire DAS0, 
    input wire DAS0_, 
    input wire DAS1, 
    input wire DAS1_, 
    input wire MASK0, 
    input wire MASK0_, 
    input wire INKL_, 
    input wire SHIFT, 
    input wire SHIFT_, 
    input wire MONpCH,
    input wire PRINC, 
    input wire CCS0, 
    input wire CCS0_, 
    input wire MSU0, 
    input wire MSU0_, 
    input wire FETCH0, 
    input wire FETCH0_, 
    input wire DXCH0, 
    input wire GOJ1, 
    input wire GOJ1_, 
    input wire TCSAJ3_, 
    input wire RUPT0, 
    input wire INOUT, 
    input wire INOUT_, 
    input wire CHINC_, 
    input wire SHANC_,
    input wire TS0, 
    input wire TS0_, 
    input wire QXCH0_, 
    input wire DV1, 
    input wire DV1_, 
    input wire DV4, 
    input wire DV4_, 
    input wire NDX0_, 
    input wire RAND0, 
    input wire WAND0, 
    input wire ROR0, 
    input wire WOR0, 
    input wire READ0,
    input wire RXOR0, 
    input wire RXOR0_, 
    input wire STFET1_, 
    input wire MONWBK, 
    input wire ADS0, 
    input wire T12USE_,
    input wire n4XP5, 
    input wire n5XP11,
    input wire YT0_, 
    input wire YB0_, 
    input wire S11, 
    input wire S12,
    input wire XT0_, 
    input wire XT2_, 
    input wire XT3_, 
    input wire XT4_, 
    input wire XT5_, 
    input wire XT6_,
    
    output wire A05_1_MONEX_,
    output wire A05_1_RZ_, 
    output wire A05_2_RZ_, 
    output wire A05_3_RZ_,
    output wire A05_1_RB_, 
    output wire A05_2_RB_, 
    output wire A05_3_RB_, 
    output wire A05_4_RB_,
    output wire A05_1_RA_, 
    output wire A05_2_RA_, 
    output wire A05_3_RA_,
    output wire A05_1_WA_, 
    output wire A05_2_WA_, 
    output wire A05_3_WA_,
    output wire A05_1_RL_, 
    output wire A05_2_RL_,
    output wire A05_1_TMZ_, 
    output wire A05_2_TMZ_,
    output wire A05_1_TSGN_, 
    output wire A05_2_TSGN_,
    output wire A05_1_WG_,
    output wire A05_1_RG_, 
    output wire A05_2_RG_, 
    output wire A05_3_RG_, 
    output wire A05_4_RG_,
    output wire A05_1_RC_, 
    output wire A05_2_RC_, 
    output wire A05_3_RC_,
    output wire A05_1_A2X_, 
    output wire A05_2_A2X_,
    output wire A05_1_WY_, 
    output wire A05_2_WY_, 
    output wire A05_3_WY_,
    output wire A05_1_CI_, 
    output wire A05_2_CI_,
    output wire A05_1_WY12_, 
    output wire A05_2_WY12_,
    output wire A05_1_WZ_, 
    output wire A05_2_WZ_,
    output wire A05_1_WB_, 
    output wire A05_2_WB_, 
    output wire A05_3_WB_, 
    output wire A05_4_WB_,
    output wire A05_1_RU_, 
    output wire A05_2_RU_, 
    output wire A05_3_RU_,
    output wire A05_1_ST2_,
    output wire A05_1_WS_,
    output wire A05_1_Z15_, 
    output wire A05_1_Z16_,
    output wire A05_1_TOV_,
    output wire A05_1_WL_,
    output wire A05_1_WYD_,
    
    output wire NISQ_,
    output wire DVST,
    output wire TPZG_,
    output wire n2XP7,
    output wire n2XP8, 
    output wire n3XP6, 
    output wire n5XP12, 
    output wire n5XP15, 
    output wire n5XP21, 
    output wire n6XP8, 
    output wire n7XP4, 
    output wire n7XP9, 
    output wire n9XP5, 
    output wire n10XP1, 
    output wire n10XP8, 
    output wire n11XP2,
    output wire PTWOX,
    output wire TSUDO_,
    output wire RAD,
    output wire RSTRT,
    output wire RL10BB,
    output wire RSCT,
    output wire R6,
    output wire RQ,
    output wire TRSM,
    output wire SCAD, 
    output wire SCAD_,
    output wire NDR100_,
    output wire OCTAD2, 
    output wire OCTAD3, 
    output wire OCTAD4, 
    output wire OCTAD5, 
    output wire OCTAD6,
    output wire U2BBK,
    output wire RSTSTG,
    output wire DV4B1B,

    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A5 sheet 1
    *  Sheet number 2005261/1
    *
    **************************/
    
    wire n3XP5, n8XP3, n8XP12, n8XP15, n10XP6, n10XP7;
    wire PARTC, DV1B1B;
    
    wire NOR39101_out;
    wire NOR39102_out;
    wire NOR39103_out;
    wire NOR39105_out;
    wire NOR39106_out;
    wire NOR39108_out;
    wire NOR39109_out;
    wire NOR39111_out;
    wire NOR39112_out;
    wire NOR39116_out;
    wire NOR39121_out;
    wire NOR39124_out;
    wire NOR39125_out;
    wire NOR39127_out;
    wire NOR39129_out;
    wire NOR39131_out;
    wire NOR39133_out;
    wire NOR39134_out;
    wire NOR39138_out;
    wire NOR39140_out;
    wire NOR39143_out;
    wire NOR39145_out;
    wire NOR39149_out;
    wire NOR39152_out;
    wire NOR39201_out;
    wire NOR39203_out;
    wire NOR39209_out;
    wire NOR39211_out;
    wire NOR39213_out;
    wire NOR39214_out;
    wire NOR39216_out;
    wire NOR39217_out;
    wire NOR39221_out;
    wire NOR39222_out;
    wire NOR39223_out;
    wire NOR39225_out;
    wire NOR39227_out;
    wire NOR39230_out;
    wire NOR39232_out;
    wire NOR39239_out;
    wire NOR39233_out;
    wire NOR39235_out;
    wire NOR39237_out;
    wire NOR39241_out;
    wire NOR39243_out;
    wire NOR39245_out;
    
    nor_3 #(1'b0) NOR39101(NOR39101_out,    IC10,           IC3,            IC2,                        reset, prop_clk);
    nor_2 #(1'b0) NOR39102(NOR39102_out,    T01_,           NOR39101_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR39103(NOR39103_out,    T01_,           IC10_,                                      reset, prop_clk);
    
    // MONEX_
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39104(A05_1_MONEX_,    n10XP6,         n10XP7,         NOR39103_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39105(NOR39105_out,    STD2,           IC2,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR39106(NOR39106_out,    T01_,           NOR39105_out,                               reset, prop_clk);
    
    // RZ_
    // Cross-module fan-in, connacted to A6
    nor_3 #(1'b0) NOR39107(A05_1_RZ_,       NOR39106_out,   n3XP6,          NOR39131_out,               reset, prop_clk);
    
    nor_3 #(1'b0) NOR39108(NOR39108_out,    TC0,            TCF0,           IC4,                        reset, prop_clk);
    nor_2 #(1'b0) NOR39109(NOR39109_out,    T01_,           NOR39108_out,                               reset, prop_clk);
    
    // RB_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39110(A05_1_RB_,       NOR39109_out,   n3XP5,                                      reset, prop_clk);
    
    nor_3 #(1'b0) NOR39111(NOR39111_out,    IC2,            IC3,            RSM3,                       reset, prop_clk);
    nor_2 #(1'b0) NOR39112(NOR39112_out,    T02_,           NOR39111_out,                               reset, prop_clk);
    
    // NISQ_
    nor_3 #(1'b0) NOR39113(NISQ_,           NOR39112_out,   n2XP7,          n8XP15,                     reset, prop_clk);
    
    // NOR39114 not used
    
    // DVST
    nor_3 #(1'b0) NOR39115(DVST,            T02_,           STD2,           DIV_,                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39116(NOR39116_out,    MP3_,           T10_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39117(n2XP7,           T01_,           MP3_,                                       reset, prop_clk);
    
    // NOR39118 and NOR39119 not used
    
    nor_2 #(1'b0) NOR39120(n3XP5,           T03_,           IC2_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39121(NOR39121_out,    T01_,           IC15_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR39122(n3XP6,           T03_,           TC0_,                                       reset, prop_clk);
   
    // RA_ part 1
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39123(A05_1_RA_,       NOR39121_out,   NOR39124_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39124(NOR39124_out,    T04_,           IC2_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39125(NOR39125_out,    T02_,           IC15_,                                      reset, prop_clk);
    
    // TPZG_
    nor_2 #(1'b0) NOR39126(TPZG_,           NOR39125_out,   NOR39134_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39127(NOR39127_out,    T04_,           DAS0_,                                      reset, prop_clk);
    
    // WA_ part 1
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39128(A05_1_WA_,       NOR39127_out,   NOR39129_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39129(NOR39129_out,    T04_,           MASK0_,                                     reset, prop_clk);
    
    // RL_ part 1
    // No cross-module fan-in, but intra-module fan-in
    nor_3 #(1'b0) NOR39130(A05_1_RL_,       NOR39127_out,   NOR39116_out,   n8XP12,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR39131(NOR39131_out,    T05_,           IC2_,                                       reset, prop_clk);
    nor_3 #(1'b0) NOR39132(PARTC,           INKL_,          SHIFT,          MONpCH,                     reset, prop_clk);
    nor_3 #(1'b0) NOR39133(NOR39133_out,    PARTC,          PRINC,          CCS0,                       reset, prop_clk);
    nor_2 #(1'b0) NOR39134(NOR39134_out,    T05_,           NOR39133_out,                               reset, prop_clk);
    
    // TMZ_ part 1
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39135(A05_1_TMZ_,      NOR39121_out,   NOR39134_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39136(n5XP12,          T05_,           DAS0_,                                      reset, prop_clk);
    
    // TSGN_ part 1
    // Cross-module fan-in, connected to A4
    nor_3 #(1'b0) NOR39137(A05_1_TSGN_,     NOR39134_out,   NOR39121_out,   n7XP9,                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR39138(NOR39138_out,    T06_,           RSM3_,                                      reset, prop_clk);
    
    // WG_ 
    // Cross-module fan-in, connected to A4, A6 and A12
    nor_3 #(1'b0) NOR39139(A05_1_WG_,       n9XP5,          NOR39121_out,   NOR39138_out,               reset, prop_clk);
    
    
    
    nor_2 #(1'b0) NOR39140(NOR39140_out,    T06_,           DAS0_,                                      reset, prop_clk);
    
    // RG_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39141(A05_1_RG_,       NOR39134_out,   NOR39149_out,   NOR39140_out,               reset, prop_clk);
    
    // NOR39142 not used
    
    nor_2 #(1'b0) NOR39143(NOR39143_out,    MSU0_,          T06_,                                       reset, prop_clk);
    
    // RC_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39144(A05_1_RC_,       NOR39129_out,   NOR39143_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39145(NOR39145_out,    T07_,           DAS0_,                                      reset, prop_clk);
    
    // RB_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39146(A05_2_RB_,       NOR39138_out,   NOR39145_out,                               reset, prop_clk);
    
    // 7XP9
    nor_2 #(1'b0) NOR39147(n7XP9,           T07_,           MSU0_,                                      reset, prop_clk);
    
    // A2X_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39148(A05_1_A2X_,      NOR39149_out,   NOR39143_out,   NOR39140_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39149(NOR39149_out,    T07_,           IC2_,                                       reset, prop_clk);
    
    // PONEX, PTWOX
    nor_3 #(1'b0) NOR39150(n7XP4,           CCS0_,          T07_,           BR2_,                       reset, prop_clk);
    nor_3 #(1'b0) NOR39151(PTWOX,           BR1_,           CCS0_,          T07_,                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39152(NOR39152_out,    T07_,           CCS0_,                                      reset, prop_clk);
    
    // WY_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b1) NOR39153(A05_1_WY_,       NOR39149_out,   NOR39143_out,   NOR39140_out,               reset, prop_clk);
    
    // CI_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b0) NOR39154(A05_1_CI_,       NOR39143_out,   NOR39102_out,   n10XP6,                     reset, prop_clk);
    
    // RZ_ part 2
    // Cross-module fan-in, connacted to A6
    nor_3 #(1'b0) NOR39155(A05_2_RZ_,       n8XP3,          NOR39152_out,   n4XP5,                      reset, prop_clk);
    
    // WY12_ part 1
    // No cross-module fan-in, local fan-in expansion
    nor_3 #(1'b1) NOR39156(A05_1_WY12_,     n4XP5,          NOR39152_out,   NOR39102_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39201(NOR39201_out,    T08_,           CCS0_,                                      reset, prop_clk);
    
    // WZ_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39202(A05_1_WZ_,       n3XP5,          NOR39221_out,   NOR39201_out,               reset, prop_clk);
    
    nor_3 #(1'b0) NOR39203(NOR39203_out,    INKL_,          FETCH0,         T08_,                       reset, prop_clk);
    
    // RB_ part 3
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39204(A05_3_RB_,       NOR39203_out,   NOR39223_out,                               reset, prop_clk);
    
    // TSUDO_
    nor_4 #(1'b0) NOR39205(TSUDO_,          IC3,            RSM3,           MP3,            IC16,       reset, prop_clk);
    // NOR39206 merged into NOR39205
    
    // RAD
    nor_2 #(1'b0) NOR39207(RAD,             TSUDO_,         T08_,                                       reset, prop_clk);
    
    // WB_ part 1
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39208(A05_1_WB_,       RAD,            NOR39217_out,                               reset, prop_clk);
    
    nor_1 #(1'b0) NOR39209(NOR39209_out,    IC16,                                                       reset, prop_clk);
    
    // 8XP15
    nor_2 #(1'b0) NOR39210(n8XP15,          T08_,           NOR39209_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39211(NOR39211_out,    MP0,            IC1,                                        reset, prop_clk);
    
    // 8XP3
    nor_2 #(1'b0) NOR39212(n8XP3,           T08_,           NOR39211_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR39213(NOR39213_out,    IC2,            IC4,            DXCH0,                      reset, prop_clk);
    nor_2 #(1'b0) NOR39214(NOR39214_out,    T08_,           NOR39213_out,                               reset, prop_clk);
    
    // RU_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39215(A05_1_RU_,       NOR39201_out,   NOR39214_out,   n9XP5,                      reset, prop_clk);
    
    nor_3 #(1'b0) NOR39216(NOR39216_out,    DXCH0,          GOJ1,           DAS0,                       reset, prop_clk);
    nor_2 #(1'b0) NOR39217(NOR39217_out,    T08_,           NOR39216_out,                               reset, prop_clk);
    
    // NOR39218 not used
    
    // RSTRT
    nor_2 #(1'b0) NOR39219(RSTRT,           T08_,           GOJ1_,                                      reset, prop_clk);
    
    // 8XP12
    nor_2 #(1'b0) NOR39220(n8XP12,          T08_,           DAS0_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR39221(NOR39221_out,    T08_,           TCSAJ3_,                                    reset, prop_clk);
    
    nor_2 #(1'b0) NOR39222(NOR39222_out,    IC2,            DV1B1B,                                     reset, prop_clk);
    nor_2 #(1'b0) NOR39223(NOR39223_out,    T09_,           NOR39222_out,                               reset, prop_clk);
    
    // 9XP5
    nor_2 #(1'b0) NOR39224(n9XP5,           T09_,           DAS0_,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR39225(NOR39225_out,    T09_,           MASK0_,                                     reset, prop_clk);
    
    // RA_ part 2
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39226(A05_2_RA_,       NOR39225_out,   NOR39233_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39227(NOR39227_out,    T10_,           CCS0_,                                      reset, prop_clk);
    
    // ST2_
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b0) NOR39228(A05_1_ST2_,      NOR39221_out,   NOR39227_out,                               reset, prop_clk);
    
    // 10XP6
    nor_3 #(1'b0) NOR39229(n10XP6,          CCS0_,          BR2,            T10_,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR39230(NOR39230_out,    IC1,            IC10,           RUPT0,                      reset, prop_clk);
    
    // 10XP1
    nor_2 #(1'b0) NOR39231(n10XP1,          NOR39230_out,   T10_,                                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39232(NOR39232_out,    DAS0,           NOR39239_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR39233(NOR39233_out,    T10_,           NOR39232_out,                               reset, prop_clk);
    
    // WY_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b1) NOR39234(A05_2_WY_,       NOR39227_out,   NOR39225_out,   NOR39233_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39235(NOR39235_out,    NOR39239_out,   NOR39237_out,                               reset, prop_clk);
    
    // 10XP7
    nor_2 #(1'b0) NOR39236(n10XP7,          T10_,           NOR39235_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39237(NOR39237_out,    BR12B_,         DAS0_,                                      reset, prop_clk);
    
    // 10XP8
    nor_3 #(1'b0) NOR39238(n10XP8,          T10_,           DAS0_,          BR1B2_,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR39239(NOR39239_out,    MSU0_,          BR1_,                                       reset, prop_clk);
    
    // 11XP2
    nor_2 #(1'b0) NOR39240(n11XP2,          T11_,           MSU0_,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR39241(NOR39241_out,    T11_,           MASK0_,                                     reset, prop_clk);
    
    // RC_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39242(A05_2_RC_,       NOR39225_out,   NOR39241_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39243(NOR39243_out,    T11_,           NOR39245_out,                               reset, prop_clk);
    
    // WA_ part 2
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39244(A05_2_WA_,       NOR39223_out,   NOR39243_out,   n5XP11,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR39245(NOR39245_out,    MSU0,           IC14,                                       reset, prop_clk);
    
    // NOR39246 not used
    // NOR39247 not used
    
    // NOR39248 - NOR39256 moved to A21 sheet 1
    
    // NOR39257 not used
    // NOR39258 not used
    // NOR39259 not used
    // NOR39260 not used
    // NOR39261 moved to A2 sheet 1 and merged 
    
    /**************************
    *
    *  Module A5 sheet 2
    *  Sheet number 2005261/2
    *
    **************************/
    
    wire NOR39301_out;
    wire NOR39302_out;
    wire NOR39303_out;
    wire NOR39304_in;
    wire NOR39307_out;
    wire NOR39310_out;
    wire NOR39311_out;
    wire NOR39312_in;
    wire NOR39312_out;
    wire NOR39313_out;
    wire NOR39318_out;
    wire NOR39319_out;
    wire NOR39320_out;
    wire NOR39324_out;
    wire NOR39327_out;
    wire NOR39329_out;
    wire NOR39330_out;
    wire NOR39335_out;
    wire NOR39341_out;
    wire NOR39342_out;
    wire NOR39343_out;
    wire NOR39344_out;
    wire NOR39345_out;
    wire NOR39346_out;
    wire NOR39348_out;
    wire NOR39401_out;
    wire NOR39403_out;
    wire NOR39404_out;
    wire NOR39405_out;
    wire NOR39406_out;
    wire NOR39408_out;
    wire NOR39409_out;
    wire NOR39410_out;
    wire NOR39411_out;
    wire NOR39412_in;
    wire NOR39412_out;
    wire NOR39414_out;
    wire NOR39415_out;
    wire NOR39416_in;
    wire NOR39416_out;
    wire NOR39425_out;
    wire NOR39427_out;
    wire NOR39428_out;
    wire NOR39432_out;
    wire NOR39436_out;
    wire NOR39439_out;
    wire NOR39441_out;
    wire NOR39445_out;
    wire NOR39447_out;
    wire NOR39448_out;
    wire NOR39449_out;
    wire NOR39451_out;
    wire NOR39452_out;
    
    wire n5XP9, n5XP13, n5XP19, n6XP2, n6XP7, n10XP10, n11XP6;
    
    nor_3 #(1'b0) NOR39301(NOR39301_out,    IC12,           DAS0,           DAS1,                       reset, prop_clk);
    nor_2 #(1'b0) NOR39302(NOR39302_out,    IC9,            DXCH0,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR39303(NOR39303_out,    PRINC,          INOUT,                                      reset, prop_clk);
    assign NOR39304_in = NOR39301_out & NOR39302_out & NOR39303_out;
    
    // RL10BB
    nor_2 #(1'b0) NOR39304(RL10BB,          T01_,           NOR39304_in,                                reset, prop_clk);
    
    // WS_
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39305(A05_1_WS_,       RL10BB,         NOR39307_out,   RSCT,                       reset, prop_clk);
    
    // R6
    nor_2 #(1'b0) NOR39306(R6,              T01_,           FETCH0_,                                    reset, prop_clk);
    
    nor_2 #(1'b0) NOR39307(NOR39307_out,    T01_,           CHINC_,                                     reset, prop_clk);
    
    // 2XP8
    nor_2 #(1'b0) NOR39308(n2XP8,           FETCH0_,        T02_,                                       reset, prop_clk);
    
    // RSCT
    nor_3 #(1'b0) NOR39309(RSCT,            MONpCH,         T01_,           INKL_,                      reset, prop_clk);
    
    nor_3 #(1'b0) NOR39310(NOR39310_out,    TS0,            DAS0,           MASK0,                      reset, prop_clk);
    nor_2 #(1'b0) NOR39311(NOR39311_out,    IC5,            MP0,                                        reset, prop_clk);
    assign NOR39312_in = NOR39310_out & NOR39311_out;
    
    nor_2 #(1'b0) NOR39312(NOR39312_out,    T03_,           NOR39312_in,                                reset, prop_clk);
    nor_2 #(1'b0) NOR39313(NOR39313_out,    T03_,           IC8_,                                       reset, prop_clk);
    
    // RQ
    nor_2 #(1'b0) NOR39314(RQ,              T03_,           QXCH0_,                                     reset, prop_clk);
    
    // WB_ part 2
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39315(A05_2_WB_,       NOR39312_out,   RQ,             NOR39313_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR39316(A05_3_WB_,       NOR39320_out,   NOR39324_out,   n6XP2,                      reset, prop_clk);
    
    // NOR39317 not used
    
    nor_3 #(1'b0) NOR39318(NOR39318_out,    DV1,            INOUT,          IC2,                        reset, prop_clk);
    nor_2 #(1'b0) NOR39319(NOR39319_out,    T04_,           DV1_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39320(NOR39320_out,    T04_,           NOR39318_out,                               reset, prop_clk);
    
    // RL_ part 2
    // No cross-module fan-in, but intra-module fan-in
    nor_3 #(1'b0) NOR39321(A05_2_RL_,       NOR39313_out,   NOR39319_out,   n11XP6,                     reset, prop_clk);
    
    // RA_ part 3
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39322(A05_3_RA_,       NOR39312_out,   n6XP2,                                      reset, prop_clk);
    
    // TRSM
    nor_2 #(1'b0) NOR39323(TRSM,            T05_,           NDX0_,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR39324(NOR39324_out,    IC12_,          T05_,                                       reset, prop_clk);
    
    // RG_ part 2
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39325(A05_2_RG_,       NOR39324_out,   NOR39327_out,   n5XP9,                      reset, prop_clk);
    nor_3 #(1'b0) NOR39326(A05_3_RG_,       n5XP13,         n5XP15,         NOR39344_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39327(NOR39327_out,    DAS1_,           T05_,                                      reset, prop_clk);
    
    // CI_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b0) NOR39328(A05_2_CI_,       NOR39335_out,   NOR39341_out,   NOR39343_out,               reset, prop_clk);
    
    nor_3 #(1'b0) NOR39329(NOR39329_out,    PRINC,          DAS1,           PARTC,                      reset, prop_clk);
    nor_2 #(1'b0) NOR39330(NOR39330_out,    NOR39329_out,   T05_,                                       reset, prop_clk);
    
    // WY12_ part 2
    // No cross-module fan-in, local fan-in expansion
    nor_2 #(1'b1) NOR39331(A05_2_WY12_,     NOR39341_out,   NOR39343_out,                               reset, prop_clk);
    
    // 5XP9
    nor_2 #(1'b0) NOR39332(n5XP9,           SHIFT_,         T05_,                                       reset, prop_clk);
    
    // WY_ part 3
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b1) NOR39333(A05_3_WY_,       NOR39330_out,   n2XP8,          n10XP10,                    reset, prop_clk);
    
    // A2X_ part 2
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39334(A05_2_A2X_,      NOR39327_out,   n10XP10,                                    reset, prop_clk);
    
    nor_2 #(1'b0) NOR39335(NOR39335_out,    SHANC_,         T05_,                                       reset, prop_clk);
    
    // RB_ part 4
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39336(A05_4_RB_,       n5XP19,         NOR39341_out,                               reset, prop_clk);
    
    // 5XP13
    nor_2 #(1'b0) NOR39337(n5XP13,          IC8_,           T05_,                                       reset, prop_clk);
    
    // RZ_ part 3
    // Cross-module fan-in, connacted to A6
    nor_2 #(1'b0) NOR39338(A05_3_RZ_,       NOR39343_out,   n6XP7,                                      reset, prop_clk);
    
    // 5XP15
    nor_2 #(1'b0) NOR39339(n5XP15,          QXCH0_,         T05_,                                       reset, prop_clk);
    
    // 5XP21
    nor_2 #(1'b0) NOR39340(n5XP21,          CHINC_,         T05_,                                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39341(NOR39341_out,    IC16_,          T05_,                                       reset, prop_clk);
    nor_1 #(1'b0) NOR39342(NOR39342_out,    MP3,                                                        reset, prop_clk);
    nor_2 #(1'b0) NOR39343(NOR39343_out,    NOR39342_out,   T05_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39344(NOR39344_out,    IC5_,           T05_,                                       reset, prop_clk);
    
    // SCAD
    nor_2 #(1'b0) NOR39345(NOR39345_out,    S11,            S12,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR39346(NOR39346_out,    YT0_,           YB0_,           XT0_,                       reset, prop_clk);
    assign SCAD = NOR39345_out & NOR39346_out;
    nor_1 #(1'b0) NOR39347(SCAD_,           SCAD,                                                       reset, prop_clk);
    
    // NDR100_
    nor_4 #(1'b0) NOR39348(NOR39348_out,    YB0_,           YT0_,           S12,            S11,        reset, prop_clk);
    // NOR39349 merged with NOR39348
    nor_1 #(1'b0) NOR39350(NDR100_,         NOR39348_out,                                               reset, prop_clk);
    // NOR39351 merged with NOR39350
    
    // OCTAD2 - OCTAD6
    nor_2 #(1'b0) NOR39352(OCTAD2,          XT2_,           NDR100_,                                    reset, prop_clk);
    nor_2 #(1'b0) NOR39353(OCTAD3,          XT3_,           NDR100_,                                    reset, prop_clk);
    nor_2 #(1'b0) NOR39354(OCTAD4,          XT4_,           NDR100_,                                    reset, prop_clk);
    nor_2 #(1'b0) NOR39355(OCTAD5,          XT5_,           NDR100_,                                    reset, prop_clk);
    nor_2 #(1'b0) NOR39356(OCTAD6,          XT6_,           NDR100_,                                    reset, prop_clk);
    
    nor_2 #(1'b0) NOR39401(NOR39401_out,    BR1_,           DV1_,                                       reset, prop_clk);
    
    // DV1B1B
    nor_2 #(1'b0) NOR39402(DV1B1B,          DV1_,           BR1,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR39403(NOR39403_out,    NOR39401_out,                                               reset, prop_clk);
    nor_3 #(1'b0) NOR39404(NOR39404_out,    RAND0,          WAND0,          NOR39401_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR39405(NOR39405_out,    ROR0,           DV1B1B,         WOR0,                       reset, prop_clk);
    nor_2 #(1'b0) NOR39406(NOR39406_out,    NOR39404_out,   T05_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39407(n5XP19,          T05_,           NOR39405_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39408(NOR39408_out,    TS0_,           BRDIF_,                                     reset, prop_clk);
    
    nor_3 #(1'b0) NOR39409(NOR39409_out,    IC2,            IC5,            READ0,                      reset, prop_clk);
    nor_2 #(1'b0) NOR39410(NOR39410_out,    NOR39408_out,   DV4,                                        reset, prop_clk);
    assign NOR39412_in = NOR39409_out & NOR39410_out;
    
    nor_2 #(1'b0) NOR39411(NOR39411_out,    NOR39403_out,   T05_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR39412(NOR39412_out,    NOR39412_in,    T05_,                                       reset, prop_clk);
    
    // Z16_
    // Cross-module fan-in, connected to A11
    nor_1 #(1'b1) NOR39413(A05_1_Z16_,      NOR39411_out,                                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR39414(NOR39414_out,    IC2,            IC3,            TS0,                        reset, prop_clk);
    nor_2 #(1'b0) NOR39415(NOR39415_out,    IC16,           MP3,                                        reset, prop_clk);
    assign NOR39416_in = NOR39414_out & NOR39415_out;
    
    nor_2 #(1'b0) NOR39416(NOR39416_out,    T06_,           NOR39416_in,                                reset, prop_clk);
    
    // WZ_ part 2
    // Cross-module fan-in, connected to A6
    nor_1 #(1'b1) NOR39417(A05_2_WZ_,       NOR39416_out,                                               reset, prop_clk);
    
    // RC_ part 3
    // Cross-module fan-in, connected to A4 and A6
    nor_4 #(1'b0) NOR39418(A05_3_RC_,       NOR39406_out,   NOR39432_out,   NOR39439_out,   NOR39451_out,   reset, prop_clk);
    
    // 6XP8
    nor_2 #(1'b0) NOR39419(n6XP8,           T06_,           DAS1_,                                      reset, prop_clk);
    
    // 6XP7
    nor_2 #(1'b0) NOR39420(n6XP7,           DV4_,           T06_,                                       reset, prop_clk);
    
    // 6XP2
    nor_3 #(1'b0) NOR39421(n6XP2,           T06_,           RXOR0,          INOUT_,                     reset, prop_clk);
    
    // WA_ part 3
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39422(A05_3_WA_,       NOR39412_out,   NOR39432_out,                               reset, prop_clk);
    
    // NOR39423 merged into NOR39418
    
    // TOV_
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39424(A05_1_TOV_,      n6XP7,          n6XP8,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR39425(NOR39425_out,    STFET1_,        T07_,                                       reset, prop_clk);
    
    // U2BBK
    nor_3 #(1'b0) NOR39426(U2BBK,           STFET1_,        MONWBK,         T08_,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR39427(NOR39427_out,    IC13,           IC14,           DV1,                        reset, prop_clk);
    nor_2 #(1'b0) NOR39428(NOR39428_out,    T07_,           NOR39427_out,                               reset, prop_clk);
    
    
    // RU_ part 2
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39429(A05_2_RU_,       NOR39416_out,   n6XP8,          n5XP11,                     reset, prop_clk);
    nor_3 #(1'b0) NOR39430(A05_3_RU_,       NOR39441_out,   NOR39436_out,   NOR39452_out,               reset, prop_clk);
    
    // RSTSTG
    nor_2 #(1'b0) NOR39431(RSTSTG,          T08_,           DV4_,                                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39432(NOR39432_out,    T09_,           NOR39403_out,                               reset, prop_clk);
    
    // Z15_
    // Cross-module fan-in, connected to A11
    nor_1 #(1'b1) NOR39433(A05_1_Z15_,      NOR39432_out,                                               reset, prop_clk);
    
    // WB_ part 3
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b1) NOR39434(A05_4_WB_,       NOR39428_out,   NOR39436_out,   NOR39441_out,               reset, prop_clk);
    
    // RG_ part 3
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39435(A05_4_RG_,       NOR39428_out,   NOR39425_out,   NOR39451_out,               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39436(NOR39436_out,    T09_,           DV4_,                                       reset, prop_clk);
    
    // WL_
    // Cross-module fan-in, connected to A4 and A6
    nor_4 #(1'b1) NOR39437(A05_1_WL_,       n5XP13,         NOR39452_out,   NOR39436_out,   NOR39449_out,   reset, prop_clk);
    // NOR39438 merged into NOR39437
    
    nor_2 #(1'b0) NOR39439(NOR39439_out,    T09_,           DAS1_,                                      reset, prop_clk);
    
    // TMZ_ part 2
    // Cross-module fan-in, connected to A4
    nor_1 #(1'b0) NOR39440(A05_2_TMZ_,      NOR39439_out,                                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR39441(NOR39441_out,    T10_,           NOR39445_out,                               reset, prop_clk);
    
    // 10XP10
    nor_2 #(1'b0) NOR39442(n10XP10,         T10_,           IC11_,                                      reset, prop_clk);
    
    // TSGN_ part 2
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39443(A05_2_TSGN_,     RSTSTG,         n5XP9,                                      reset, prop_clk);
    
    // WYD_
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b1) NOR39444(A05_1_WYD_,      n5XP9,          n11XP6,                                     reset, prop_clk);
    
    nor_3 #(1'b0) NOR39445(NOR39445_out,    IC14,           IC2,            DV1,                        reset, prop_clk);
    
    // DV4B1B
    nor_2 #(1'b0) NOR39446(DV4B1B,          DV4_,           BR1,                                        reset, prop_clk);
    
    nor_3 #(1'b0) NOR39447(NOR39447_out,    DAS1_,          ADS0,           BR2,                        reset, prop_clk);
    nor_3 #(1'b0) NOR39448(NOR39448_out,    DV4B1B,         IC4,            NOR39447_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR39449(NOR39449_out,    T10_,           NOR39448_out,                               reset, prop_clk);
    
    // 11XP6
    nor_2 #(1'b0) NOR39450(n11XP6,          T11_,           DV1_,                                       reset, prop_clk);
    
    nor_2 #(1'b0) NOR39451(NOR39451_out,    T11_,           RXOR0_,                                     reset, prop_clk);
    nor_3 #(1'b0) NOR39452(NOR39452_out,    T12_,           T12USE_,        DV1_,                       reset, prop_clk);
    
    // NOR39453 - NOR39460 not used
    // NOR39461 not connected
endmodule
