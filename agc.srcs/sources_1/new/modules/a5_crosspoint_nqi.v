`timescale 1ns / 1ps

module a5_crosspoint_nqi(
    // inputs
    T01_, T02_, T03_, T04_, T05_, T06_, T10_,
    IC2, IC2_, IC3, IC4, IC10, IC10_, IC15_,
    STD2, TC0, TC0_, TCF0, RSM3, RSM3_, DIV_, MP3_, DAS0_, MASK0_, INKL_, SHIFT, MONpCH,
    PRINC, CCS0,
    
    // outputs
    A05_1_MONEX_,
    A05_1_RZ_,
    A05_1_RB_,
    A05_1_RA_,
    A05_1_WA_,
    A05_1_RL_,
    A05_1_TMZ_,
    A05_1_TSGN_,
    A05_1_WG_,
    A05_1_RG_,
    
    NISQ_,
    DVST,
    TPZG_,
    n2XP7, n3XP6, n5XP12, n7XP9, n9XP5,
    
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
    input wire T01_, T02_, T03_, T04_, T05_, T06_, T10_;
    input wire IC2, IC2_, IC3, IC4, IC10, IC10_, IC15_;
    input wire STD2, TC0, TC0_, TCF0, RSM3, RSM3_, DIV_, MP3_, DAS0_, MASK0_, INKL_, SHIFT, MONpCH;
    input wire PRINC, CCS0;
    
    output wire A05_1_MONEX_;
    output wire A05_1_RZ_;
    output wire A05_1_RB_;
    output wire A05_1_RA_;
    output wire A05_1_WA_;
    output wire A05_1_RL_;
    output wire A05_1_TMZ_;
    output wire A05_1_TSGN_;
    output wire A05_1_WG_;
    output wire A05_1_RG_;
    
    output wire NISQ_;
    output wire DVST;
    output wire TPZG_;
    output wire n2XP7, n3XP6, n5XP12, n7XP9, n9XP5;
    
    wire n3XP5, n8XP12, n8XP15, n10XP6, n10XP7;
    wire PARTC;
    
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
    wire NOR39149_out;
    
    
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
    
    // RA_
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
    
    
    
    
    
    
    
    
    
    // A2X_ part 1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0) NOR39148(A05_1_A2X_,      NOR39149_out,   NOR39143_out,   NOR39140_out,               SIM_CLK);
    
endmodule
