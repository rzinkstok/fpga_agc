`timescale 1ns / 1ps

module a5_crosspoint_nqi(
    // inputs
    T01, T01_, T02_, T03_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_, T12,
    BR1_, BR2, BR2_, BR12B_, BR1B2_,
    IC1, IC2, IC2_, IC3, IC4, IC10, IC10_, IC14, IC15_, IC16,
    STD2, TC0, TC0_, TCF0, RSM3, RSM3_, DIV_, MP0, MP3, MP3_, DAS0, DAS0_, MASK0_, INKL_, SHIFT, MONpCH,
    PRINC, CCS0, CCS0_, MSU0, MSU0_, FETCH0, DXCH0, GOJ1, GOJ1_, TCSAJ3_, RUPT0, GOJAM,
    n4XP5, n5XP11,
    C24A, C25A, C26A, C27A, C30A, C37P, C40P, C41P, C42P, C43P, C44P,
    INCSET_,
    
    // outputs
    A05_1_MONEX_,
    A05_1_RZ_, A05_2_RZ_,
    A05_1_RB_, A05_2_RB_, A05_3_RB_,
    A05_1_RA_, A05_2_RA_,
    A05_1_WA_, A05_2_WA_,
    A05_1_RL_,
    A05_1_TMZ_,
    A05_1_TSGN_,
    A05_1_WG_,
    A05_1_RG_,
    A05_1_RC_, A05_2_RC_,
    A05_1_A2X_,
    A05_1_WY_, A05_2_WY_,
    A05_1_CI_,
    A05_1_WY12_,
    A05_1_WZ_,
    A05_1_WB_,
    A05_1_RU_,
    A05_1_ST2_,
    
    NISQ_,
    DVST,
    TPZG_,
    n2XP7, n3XP6, n5XP12, n7XP9, n9XP5, n10XP1, n10XP8, n11XP2,
    PONEX, PTWOX,
    TSUDO_,
    RAD,
    RSTRT,
    GNHNC,
    PINC, PINC_,
    
    // input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    /**************************
    *
    *  Module A5 sheet 1
    *  Sheet number 2005261/1
    *
    **************************/
    input wire T01, T01_, T02_, T03_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_, T12;
    input wire BR1_, BR2, BR2_, BR12B_, BR1B2_;
    input wire IC1, IC2, IC2_, IC3, IC4, IC10, IC10_, IC14, IC15_, IC16;
    input wire STD2, TC0, TC0_, TCF0, RSM3, RSM3_, DIV_, MP0, MP3, MP3_, DAS0, DAS0_, MASK0_, INKL_, SHIFT, MONpCH;
    input wire PRINC, CCS0, CCS0_, MSU0, MSU0_, FETCH0, DXCH0, GOJ1, GOJ1_, TCSAJ3_, RUPT0, GOJAM;
    input wire n4XP5, n5XP11;
    input wire C24A, C25A, C26A, C27A, C30A, C37P, C40P, C41P, C42P, C43P, C44P;
    input wire INCSET_;
    
    output wire A05_1_MONEX_;
    output wire A05_1_RZ_, A05_2_RZ_;
    output wire A05_1_RB_, A05_2_RB_, A05_3_RB_;
    output wire A05_1_RA_, A05_2_RA_;
    output wire A05_1_WA_, A05_2_WA_;
    output wire A05_1_RL_;
    output wire A05_1_TMZ_;
    output wire A05_1_TSGN_;
    output wire A05_1_WG_;
    output wire A05_1_RG_;
    output wire A05_1_RC_, A05_2_RC_;
    output wire A05_1_A2X_;
    output wire A05_1_WY_, A05_2_WY_;
    output wire A05_1_CI_;
    output wire A05_1_WY12_;
    output wire A05_1_WZ_;
    output wire A05_1_WB_;
    output wire A05_1_RU_;
    output wire A05_1_ST2_;
    
    output wire NISQ_;
    output wire DVST;
    output wire TPZG_;
    output wire n2XP7, n3XP6, n5XP12, n7XP9, n9XP5, n10XP1, n10XP8, n11XP2;
    output wire PONEX, PTWOX;
    output wire TSUDO_;
    output wire RAD;
    output wire RSTRT;
    output wire GNHNC;
    output wire PINC, PINC_;
    
    wire n3XP5, n8XP3, n8XP12, n8XP15, n10XP6, n10XP7;
    wire PARTC, DV1B1B;
    wire nPINCSET;
    
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
    wire NOR39248_out;
    wire NOR39250_out;
    wire NOR39251_out;
    wire NOR39252_out;
    wire NOR39253_out;
    wire NOR39254_out;
    
    nor_3 #(1'b0) NOR39101(NOR39101_out,    IC10,           IC3,            IC2,                        SIM_CLK);
    nor_2 #(1'b0) NOR39102(NOR39102_out,    T01_,           NOR39101_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR39103(NOR39103_out,    T01_,           IC10_,                                      SIM_CLK);
    
    // MONEX_
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39104(A05_1_MONEX_,    n10XP6,         n10XP7,         NOR39103_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39105(NOR39105_out,    STD2,           IC2,                                        SIM_CLK);
    nor_2 #(1'b0) NOR39106(NOR39106_out,    T01_,           NOR39105_out,                               SIM_CLK);
    
    // RZ_
    // Cross-module fan-in, connacted to A6
    nor_3 #(1'b0) NOR39107(A05_1_RZ_,       NOR39106_out,   n3XP6,          NOR39131_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39108(NOR39108_out,    TC0,            TCF0,           IC4,                        SIM_CLK);
    nor_2 #(1'b0) NOR39109(NOR39109_out,    T01_,           NOR39108_out,                               SIM_CLK);
    
    // RB_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39110(A05_1_RB_,       NOR39109_out,   n3XP5,                                      SIM_CLK);
    
    nor_3 #(1'b0) NOR39111(NOR39111_out,    IC2,            IC3,            RSM3,                       SIM_CLK);
    nor_2 #(1'b0) NOR39112(NOR39112_out,    T02_,           NOR39111_out,                               SIM_CLK);
    
    // NISQ_
    nor_3 #(1'b0) NOR39113(NISQ_,           NOR39112_out,   n2XP7,          n8XP15,                     SIM_CLK);
    
    // NOR39114 not used
    
    // DVST
    nor_3 #(1'b0) NOR39115(DVST,            T02_,           STD2,           DIV_,                       SIM_CLK);
    
    nor_2 #(1'b0) NOR39116(NOR39116_out,    MP3_,           T10_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR39117(n2XP7,           T01_,           MP3_,                                       SIM_CLK);
    
    // NOR39118 and NOR39119 not used
    
    nor_2 #(1'b0) NOR39120(n3XP5,           T03_,           IC2_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR39121(NOR39121_out,    T01_,           IC15_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR39122(n3XP6,           T03_,           TC0_,                                       SIM_CLK);
    
    // RA_ part 1
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39123(A05_1_RA_,       NOR39121_out,   NOR39124_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39124(NOR39124_out,    T04_,           IC2_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR39125(NOR39125_out,    T02_,           IC15_,                                      SIM_CLK);
    
    // TPZG_
    nor_2 #(1'b0) NOR39126(TPZG_,           NOR39125_out,   NOR39134_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39127(NOR39127_out,    T04_,           DAS0_,                                      SIM_CLK);
    
    // WA_ part 1
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b0) NOR39128(A05_1_WA_,       NOR39127_out,   NOR39129_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39129(NOR39129_out,    T04_,           MASK0_,                                     SIM_CLK);
    
    // RL_ part 1
    // No cross-module fan-in, but intra-module fan-in
    nor_3 #(1'b0) NOR39130(A05_1_RL_,       NOR39127_out,   NOR39116_out,   n8XP12,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR39131(NOR39131_out,    T05_,           IC2_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR39132(PARTC,           INKL_,          SHIFT,          MONpCH,                     SIM_CLK);
    nor_3 #(1'b0) NOR39133(NOR39133_out,    PARTC,          PRINC,          CCS0,                       SIM_CLK);
    nor_2 #(1'b0) NOR39134(NOR39134_out,    T05_,           NOR39133_out,                               SIM_CLK);
    
    // TMZ_ part 1
    // Cross-module fan-in, connected to A4
    nor_2 #(1'b0) NOR39135(A05_1_TMZ_,      NOR39121_out,   NOR39134_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39136(n5XP12,          T05_,           DAS0_,                                      SIM_CLK);
    
    // TSGN_ part 1
    // Cross-module fan-in, connected to A4
    nor_3 #(1'b0) NOR39137(A05_1_TSGN_,     NOR39134_out,   NOR39121_out,   n7XP9,                      SIM_CLK);
    
    nor_2 #(1'b0) NOR39138(NOR39138_out,    T06_,           RSM3_,                                      SIM_CLK);
    
    // WG_ 
    // Cross-module fan-in, connected to A4, A6 and A12
    nor_3 #(1'b0) NOR39139(A05_1_WG_,       n9XP5,          NOR39121_out,   NOR39138_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39140(NOR39140_out,    T06_,           DAS0_,                                      SIM_CLK);
    
    // RG_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39141(A05_1_RG_,       NOR39134_out,   NOR39149_out,   NOR39140_out,               SIM_CLK);
    
    // NOR39142 not used
    
    nor_2 #(1'b0) NOR39143(NOR39143_out,    MSU0_,          T06_,                                       SIM_CLK);
    
    // RC_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39144(A05_1_RC_,       NOR39129_out,   NOR39143_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39145(NOR39145_out,    T07_,           DAS0_,                                      SIM_CLK);
    
    // RB_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39146(A05_2_RB_,       NOR39138_out,   NOR39145_out,                               SIM_CLK);
    
    // 7XP9
    nor_2 #(1'b0) NOR39147(n7XP9,           T07_,           MSU0_,                                      SIM_CLK);
    
    // A2X_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39148(A05_1_A2X_,      NOR39149_out,   NOR39143_out,   NOR39140_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39149(NOR39149_out,    T07_,           IC2_,                                       SIM_CLK);
    
    // PONEX, PTWOX
    nor_3 #(1'b0) NOR39150(PONEX,           CCS0_,          T07_,           BR2_,                       SIM_CLK);
    nor_3 #(1'b0) NOR39151(PTWOX,           BR1_,           CCS0_,          T07_,                       SIM_CLK);
    
    nor_2 #(1'b0) NOR39152(NOR39152_out,    T07_,           CCS0_,                                      SIM_CLK);
    
    // WY_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b0) NOR39153(A05_1_WY_,       NOR39149_out,   NOR39143_out,   NOR39140_out,               SIM_CLK);
    
    // CI_ part 1
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b0) NOR39154(A05_1_CI_,       NOR39143_out,   NOR39102_out,   n10XP6,                     SIM_CLK);
    
    // RZ_ part 2
    // Cross-module fan-in, connacted to A6
    nor_3 #(1'b0) NOR39155(A05_2_RZ_,       n8XP3,          NOR39152_out,   n4XP5,                      SIM_CLK);
    
    // WY12_
    // No cross-module fan-in, local fan-in expansion
    nor_3 #(1'b0) NOR39156(A05_1_WY12_,     n4XP5,          NOR39152_out,   NOR39102_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39201(NOR39201_out,    T08_,           CCS0_,                                      SIM_CLK);
    
    // WZ_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39202(A05_1_WZ_,       n3XP5,          NOR39221_out,   NOR39201_out,               SIM_CLK);
    
    nor_3 #(1'b0) NOR39203(NOR39203_out,    INKL_,          FETCH0,         T08_,                       SIM_CLK);
    
    // RB_ part 3
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39204(A05_3_RB_,       NOR39203_out,   NOR39223_out,                               SIM_CLK);
    
    // TSUDO_
    nor_4 #(1'b0) NOR39205(TSUDO_,          IC3,            RSM3,           MP3,            IC16,       SIM_CLK);
    // NOR39206 merged into NOR39205
    
    // RAD
    nor_2 #(1'b0) NOR39207(RAD,             TSUDO_,         T08_,                                       SIM_CLK);
    
    // WB_ part 1
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b0) NOR39208(A05_1_WB_,       RAD,            NOR39217_out,                               SIM_CLK);
    
    nor_1 #(1'b0) NOR39209(NOR39209_out,    IC16,                                                       SIM_CLK);
    
    // 8XP15
    nor_2 #(1'b0) NOR39210(n8XP15,          T08_,           NOR39209_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39211(NOR39211_out,    MP0,            IC1,                                        SIM_CLK);
    
    // 8XP3
    nor_2 #(1'b0) NOR39212(n8XP3,           T08_,           NOR39211_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR39213(NOR39213_out,    IC2,            IC4,            DXCH0,                      SIM_CLK);
    nor_2 #(1'b0) NOR39214(NOR39214_out,    T08_,           NOR39213_out,                               SIM_CLK);
    
    // RU_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39215(A05_1_RU_,       NOR39201_out,   NOR39214_out,   n9XP5,                      SIM_CLK);
    
    nor_3 #(1'b0) NOR39216(NOR39216_out,    DXCH0,          GOJ1,           DAS0,                       SIM_CLK);
    nor_2 #(1'b0) NOR39217(NOR39217_out,    T08_,           NOR39216_out,                               SIM_CLK);
    
    // NOR39218 not used
    
    // RSTRT
    nor_2 #(1'b0) NOR39219(RSTRT,           T08_,           GOJ1_,                                      SIM_CLK);
    
    // 8XP12
    nor_2 #(1'b0) NOR39220(n8XP12,          T08_,           DAS0_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR39221(NOR39211_out,    T08_,           TCSAJ3_,                                    SIM_CLK);
    
    nor_2 #(1'b0) NOR39222(NOR39222_out,    IC2,            DV1B1B,                                     SIM_CLK);
    nor_2 #(1'b0) NOR39223(NOR39223_out,    T09_,           NOR39222_out,                               SIM_CLK);
    
    // 9XP5
    nor_2 #(1'b0) NOR39224(n9XP5,           T09_,           DAS0_,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR39225(NOR39225_out,    T09_,           MASK0_,                                     SIM_CLK);
    
    // RA_ part 2
    nor_2 #(1'b0) NOR39226(A05_2_RA_,       NOR39225_out,   NOR39233_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39227(NOR39227_out,    T10_,           CCS0_,                                      SIM_CLK);
    
    // ST2_
    // Cross-module fan-in, connected to A6
    nor_2 #(1'b0) NOR39228(A05_1_ST2_,      NOR39221_out,   NOR39227_out,                               SIM_CLK);
    
    // 10XP6
    nor_3 #(1'b0) NOR39229(n10XP6,          CCS0_,          BR2,            T10_,                       SIM_CLK);
    
    nor3 #(1'b0) NOR39230(NOR39230_out,     IC1,            IC10,           RUPT0,                      SIM_CLK);
    
    // 10XP1
    nor_2 #(1'b0) NOR39231(n10XP1,          NOR39230_out,   T10_,                                       SIM_CLK);
    
    nor_2 #(1'b0) NOR39232(NOR39232_out,    DAS0,           NOR39239_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR39233(NOR39233_out,    T10_,           NOR39232_out,                               SIM_CLK);
    
    // WY_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_3 #(1'b0) NOR39234(A05_2_WY_,       NOR39227_out,   NOR39225_out,   NOR39233_out,               SIM_CLK);
    
    nor_2 #(1'b0) NOR39235(NOR39235_out,    NOR39239_out,   NOR39237_out,                               SIM_CLK);
    
    // 10XP7
    nor_2 #(1'b0) NOR39236(n10XP7,          T10_,           NOR39235_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39237(NOR39237_out,    BR12B_,         DAS0_,                                      SIM_CLK);
    
    // 10XP8
    nor_3 #(1'b0) NOR39238(n10XP8,          T10_,           DAS0_,          BR1B2_,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR39239(NOR39239_out,    MSU0_,          BR1_,                                       SIM_CLK);
    
    // 11XP2
    nor_2 #(1'b0) NOR39240(n11XP2,          T11_,           MSU0_,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR39241(NOR39241_out,    T11_,           MASK0_,                                     SIM_CLK);
    
    // RC_ part 2
    // Cross-module fan-in, connected to A4 and A6
    nor_2 #(1'b0) NOR39242(A05_2_RC_,       NOR39225_out,   NOR39241_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR39243(NOR39243_out,    T11_,           NOR39245_out,                               SIM_CLK);
    
    // WA_ part 2
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39244(A05_2_WA_,       NOR39223_out,   NOR39243_out,   n5XP11,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR39245(NOR39245_out,    MSU0,           IC14,                                       SIM_CLK);
    
    // NOR39246 not used
    // NOR39247 not used
    
    // GNHNC flip-flop
    nor_2 #(1'b1) NOR39248(NOR39248_out,    GOJAM,          GNHNC,                                      SIM_CLK);
    nor_2 #(1'b0) NOR39249(GNHNC,           NOR39248_out,   T01,                                        SIM_CLK);
    
    // PINC flip-flop
    nor_3 #(1'b0) NOR39250(NOR39250_out,    C24A,           C25A,           C26A,                       SIM_CLK);
    nor_2 #(1'b0) NOR39251(NOR39251_out,    C27A,           C30A,                                       SIM_CLK);
    nor_3 #(1'b0) NOR39252(NOR39252_out,    C37P,           C40P,           C41P,                       SIM_CLK);
    nor_3 #(1'b0) NOR39253(NOR39253_out,    C42P,           C43P,           C44P,                       SIM_CLK);
    assign nPINCSET = NOR39250_out & NOR39251_out & NOR39252_out & NOR39253_out;
    
    nor_2 #(1'b0) NOR39254(NOR39254_out,    INCSET_,        nPINCSET,                                   SIM_CLK);
    nor_2 #(1'b0) NOR39255(PINC_,           NOR39254_out,   PINC,                                       SIM_CLK);
    nor_2 #(1'b0) NOR39256(PINC,            PINC_,          T12,                                        SIM_CLK);
    
    // NOR39257 not used
    // NOR39258 not used
    // NOR39259 not used
    // NOR39260 not used
    // NOR39261 moved to A2 sheet 1 and merged 
    
endmodule
