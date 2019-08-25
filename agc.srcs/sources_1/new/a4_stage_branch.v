`timescale 1ns / 1ps

module a4_stage_branch(
    PHS3_, T01, T03_, T12_,
    QC0_, SQ1_, SQEXT_,
    DVST,
    ST1, ST2,
    INKL,
    MTCSAI,
    GOJAM,
    RSTSTG,
    STRTFC,
    TRSM,
    XT1_,
    XB7_,
    NDR100_,
    
    DIV_,
    ST376, ST376_,
    DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764,
    ST0_, ST1_, STD2, ST3_, ST4_, ST1376_,
    MST1, MST2,
    
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    /**************************
    *
    *  Module A4 sheet 1
    *  Sheet number 2005262/1
    *
    **************************/
    input wire T01, T03_, T12_, PHS3_;
    input wire QC0_, SQ1_, SQEXT_;
    input wire ST1, ST2;
    input wire INKL;
    input wire DVST;
    input wire MTCSAI;
    input wire GOJAM, RSTSTG;
    input wire STRTFC;
    input wire TRSM;
    input wire XT1_, XB7_, NDR100_; 
    
    output wire DIV_;
    output wire ST376, ST376_;
    output wire DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764;
    output wire ST0_, ST1_, STD2, ST3_, ST4_, ST1376_;
    output wire MST1, MST2;
    
    wire DIVSTG, T12USE_, DVST_, TRSM_;
    wire STFFA_, STFFB_;
    wire STG1, STG2, STG3;
    wire ST1D;
     
    wire NOR36103_out;
    wire NOR36104_out;
    wire NOR36105_out;
    wire NOR36109_out;
    wire NOR36110_out;
    wire NOR36112_out;
    wire NOR36113_out;
    wire NOR36114_out;
    wire NOR36115_out;
    wire NOR36116_out;
    wire NOR36118_out;
    wire NOR36119_out;
    wire NOR36124_out;
    wire NOR36125_out;
    wire NOR36129_out;
    wire NOR36130_out;
    wire NOR36131_out;
    wire NOR36132_out;
    wire NOR36135_out;
    wire NOR36136_out;
    wire NOR36139_out;
    wire NOR36140_out; 
    wire NOR36142_out;
    wire NOR36143_out;
    wire NOR36144_out;
    wire NOR36146_out;
    wire NOR36147_out;
    wire NOR36148_out;
    wire NOR36149_out;
    wire NOR36150_out;
    wire NOR36152_out;
    wire NOR36155_out;
    wire NOR36156_out;
    
    wire NOR36201_out;
    
    
    // Transfer to second stage time flip-flop (T03 or T12)
    nor_2 #(1'b0) NOR36101(DIVSTG,          T12USE_,        T03_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36102(T12USE_,         DVST,           NOR36109_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36103(NOR36103_out,    T03_,           T12USE_,        PHS3_,                      SIM_CLK);
    nor_2 #(1'b0) NOR36104(NOR36104_out,    NOR36103_out,   NOR36110_out,                               SIM_CLK);
    //nor_2 #(1'b0) NOR36104(NOR361011_out, NOR36103_out,   NOR36110_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR36109(NOR36109_out,    T12USE_,        RSTSTG,         GOJAM,                      SIM_CLK);
    nor_3 #(1'b0) NOR36110(NOR36110_out,    PHS3_,          NOR36109_out,   T12_,                       SIM_CLK);
    
    // Flip-flop A
    nor_2 #(1'b1) NOR36112(NOR36112_out,    GOJAM,          MTCSAI,                                     SIM_CLK);
    nor_3 #(1'b1) NOR36113(NOR36113_out,    ST1,            NOR36124_out,   NOR36118_out,               SIM_CLK);
    assign STFFA_ = NOR36112_out & NOR36113_out;
    nor_2 #(1'b0) NOR36118(NOR36118_out,    STFFA_,         T01,                                        SIM_CLK);
    
    nor_1 #(1'b0) NOR36264(DVST_,           DVST,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR36124(NOR36124_out,    DVST_,          STG3,                                       SIM_CLK);
    
    // Flip-flop A to STG1 transfer
    nor_2 #(1'b0) NOR36114(NOR36114_out,    NOR36104_out,   STFFA_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR36119(NOR36119_out,    NOR36104_out,   NOR36118_out,                               SIM_CLK);
    
    // Flip-flop STG1
    nor_2 #(1'b1) NOR36115(NOR36115_out,    NOR36114_out,   STG1,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36120(STG1,            NOR36115_out,   NOR36119_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR36116(NOR36116_out,    NOR36115_out,                                               SIM_CLK);
    assign MST1 = NOR36116_out;
    
    // Flip-flop B
    nor_2 #(1'b1) NOR36129(NOR36129_out,    ST2,            NOR36142_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR36130(NOR36130_out,    NOR36139_out,   MTCSAI,         NOR36135_out,               SIM_CLK);
    assign STFFB_ = NOR36129_out & NOR36130_out;
    nor_3 #(1'b0) NOR36135(NOR36135_out,    STFFB_,         GOJAM,          T01,                        SIM_CLK);
    
    nor_2 #(1'b0) NOR36139(NOR36139_out,    DVST_,          NOR36115_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR36263(TRSM_,           TRSM,                                                       SIM_CLK);
    nor_4 #(1'b0) NOR36142(NOR36142_out,    TRSM_,          XT1_,           XB7_,           NDR100_,    SIM_CLK);
    // NOR36261 merged into NOR36142 (fan-in expansion)
    
    // Flip-flop B to STG2 transfer
    nor_2 #(1'b0) NOR36131(NOR36131_out,    NOR36104_out,   STFFB_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR36136(NOR36136_out,    NOR36135_out,   NOR36104_out,                               SIM_CLK);
    
    // Flip-flop STG2
    nor_2 #(1'b1) NOR36132(NOR36132_out,    NOR36131_out,   STG2,                                       SIM_CLK);
    //nor_2 #(1'b1) NOR36133(NOR36133_out,  NOR36131_out,   STG2,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36137(STG2,            NOR36132_out,   NOR36136_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR36125(NOR36125_out,    NOR36132_out,                                               SIM_CLK);
    assign MST2 = NOR36125_out;
    
    // Flip-flop C
    nor_2 #(1'b1) NOR36146(NOR36146_out,    NOR36155_out,   NOR36149_out,                               SIM_CLK);
    nor_4 #(1'b0) NOR36149(NOR36149_out,    NOR36146_out,   STRTFC,         T01,            RSTSTG,     SIM_CLK);
    // NOR36159 merged into NOR36149 (fan-in expansion)
    
    nor_2 #(1'b0) NOR36155(NOR36155_out,    DVST_,          NOR36132_out,                               SIM_CLK);
    
    // Flip-flop C to STG3 transfer
    nor_2 #(1'b0) NOR36147(NOR36147_out,    NOR36104_out,   NOR36146_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR36150(NOR36150_out,    NOR36149_out,   NOR36104_out,                               SIM_CLK);
    
    // Flip-flop STG3
    nor_2 #(1'b1) NOR36148(NOR36148_out,    NOR36147_out,   STG3,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36151(STG3,            NOR36148_out,   NOR36150_out,                               SIM_CLK);
    // NOR36158 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR36143(NOR36143_out,    NOR36148_out,                                               SIM_CLK);
    
    // Stage decoding
    
    // ST0
    nor_3 #(1'b1) NOR36105(NOR36105_out,    STG1,           STG3,           STG2,                       SIM_CLK);
    nor_1 #(1'b0) NOR36106(ST0_,            NOR36105_out,                                               SIM_CLK);
    //nor_1 #(1'b0) NOR36107(ST0_,          NOR36105_out,                                               SIM_CLK);
    
    // ST1
    nor_3 #(1'b0) NOR36121(ST1D,            STG2,           STG3,           NOR36115_out,               SIM_CLK);
    nor_1 #(1'b1) NOR36117(ST1_,            ST1D,                                                       SIM_CLK);
    //nor_1 #(1'b0) NOR36123(ST1_,          ST1D,                                                       SIM_CLK);
    //nor_1 #(1'b0) NOR36122(ST1_,          ST1D,                                                       SIM_CLK);
    
    // DV1376
    nor_2 #(1'b0) NOR36126(ST1376_,         ST1D,           ST376,                                      SIM_CLK);
    nor_2 #(1'b0) NOR36127(DV1376,          ST1376_,        DIV_,                                       SIM_CLK);
    nor_1 #(1'b0) NOR36128(DV1376_,         DV1376,                                                     SIM_CLK);
    
    // STD2
    nor_4 #(1'b0) NOR36138(STD2,            INKL,           STG1,           STG3,       NOR36132_out,   SIM_CLK);
    // NOR36134 merged into NOR36138 (fan-in expansion)
    
    // ST3
    nor_3 #(1'b0) NOR36140(NOR36140_out,    STG3,           NOR36132_out,   NOR36115_out,               SIM_CLK);
    nor_1 #(1'b1) NOR36141(ST3_,            NOR36140_out,                                               SIM_CLK);
    
    // ST4
    nor_3 #(1'b0) NOR36144(NOR36144_out,    NOR36148_out,   STG1,           STG2,                       SIM_CLK);
    nor_1 #(1'b1) NOR36145(ST4_,            NOR36144_out,                                               SIM_CLK);
    
    //DV3764
    nor_2 #(1'b0) NOR36156(NOR36156_out,    NOR36144_out,   ST376,                                      SIM_CLK);
    nor_2 #(1'b0) NOR36157(DV3764,          DIV_,           NOR36156_out,                               SIM_CLK);
    
    // ST376
    nor_2 #(1'b0) NOR36152(NOR36152_out,    STG1,           STG3,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36153(ST376,           NOR36132_out,   NOR36152_out,                               SIM_CLK);
    nor_1 #(1'b0) NOR36154(ST376_,          ST376,                                                      SIM_CLK);
    
    // DIV_
    nor_3 #(1'b0) NOR36201(NOR36201_out,    QC0_,           SQEXT_,         SQ1_,                       SIM_CLK);
    nor_1 #(1'b0) NOR36202(DIV_,            NOR36201_out,                                               SIM_CLK);
    //nor_1 #(1'b0) NOR36203(DIV_,          NOR36201_out,                                               SIM_CLK);
    
    // DV0
    nor_2 #(1'b0) NOR36204(DV0,             DIV_,           ST0_,                                       SIM_CLK);
    nor_1 #(1'b0) NOR36205(DV0_,            DV0,                                                        SIM_CLK);

    // DV376
    nor_2 #(1'b0) NOR36206(DV376,             DIV_,           ST376_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR36207(DV376_,            DV376,                                                    SIM_CLK);
    
    // DV4
    nor_2 #(1'b0) NOR36208(DV4,             DIV_,           ST4_,                                       SIM_CLK);
    // NOR36301 moved here from sheet 2
    nor_1 #(1'b0) NOR36301(DV4_,            DV4,                                                        SIM_CLK);
    
    // DV1
    nor_2 #(1'b0) NOR36209(DV1,             DIV_,           ST1_,                                       SIM_CLK);
    nor_1 #(1'b0) NOR36210(DV1_,            DV1,                                                        SIM_CLK);
    //nor_1 #(1'b0) NOR36211(DV1_,          DV1,                                                        SIM_CLK);
    //nor_1 #(1'b0) NOR36212(DV1_,          DV1,                                                        SIM_CLK);
    
    // Branch register
    
    


endmodule
