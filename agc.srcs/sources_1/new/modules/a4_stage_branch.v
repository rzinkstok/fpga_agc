`timescale 1ns / 1ps

module a4_stage_branch(
    // inputs
    PHS2_, PHS3_, PHS4, PHS4_, T01, T03_, T12_,
    SUMA16_, SUMB16_,
    WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_, WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL15_, WL16_,
    QC0_, QC1_, QC2_, QC3_,
    SQ0_, SQ1_, SQ2_, SQEXT, SQEXT_,
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
    UNF_, L15_,
    TSGU_, TOV_, TSGN_,
    GEQZRO_, OVF_,
    TPZG_, TMZ_,

    T01_, T02_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_,
    SQR10, SQR10_, SQR12_,
    EXST0_, EXST1_,
    IC12, IC13, IC15,
    n7XP14,
    RSM3, RSM3_,
    STORE1_,
    RSC_,
    MP0_, MP1, MP3_, MP3A,
    TS0_,
    
    // outputs
    DIV_,
    ST376, ST376_,
    DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764,
    ST0_, ST1_, STD2, ST3_, ST4_, ST1376_,
    MST1, MST2,
    SGUM,
    BR1, BR1_, MBR1, BR2, BR2_, MBR2,

    READ0, READ0_, WRITE0, WRITE0_, RAND0, WAND0, INOUT, INOUT_,
    ROR0, WOR0, WOR0_, RXOR0, RXOR0_,
    RUPT0, RUPT0_, RUPT1, RUPT1_,
    BPP4, PRINC, RRPA,
    n1XP10, n2XP3, n2XP5, n3XP2, n3XP7, n4XP5, n4XP11, n5XP4, n5XP11, n5XP28, n6XP5, n7XP19, n8XP5, n8XP6, n9XP1,
    A04_RA_, A04_RB_, A04_RC_, A04_RB1_, A04_R1C_, A04_RSC_, A04_WG_, A04_WL_, A04_WY_, A04_CI_, A04_TMZ_, A04_TSGN_, A04_L16_,
    R15, RB2, WCH_,
    MRSC_, MP0T10,    
    B15X, BR1B2, BR1B2_, BR12B, BR12B_, BRDIF_, BR1B2B, BR1B2B_,
    TL15,
    KRPT,
    
    // input
    SIM_CLK
);
    
    input wire SIM_CLK;
    output wire TL15;
    wire TSGN2;
    
    /**************************
    *
    *  Module A4 sheet 1
    *  Sheet number 2005262/1
    *
    **************************/
    
    input wire PHS2_, PHS3_, PHS4, PHS4_, T01, T03_, T12_;
    input wire SUMA16_, SUMB16_;
    input wire WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_, WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL15_, WL16_;
    input wire QC0_, SQ1_, SQEXT_;
    input wire ST1, ST2;
    input wire INKL;
    input wire DVST;
    input wire MTCSAI;
    input wire GOJAM, RSTSTG;
    input wire STRTFC;
    input wire TRSM;
    input wire XT1_, XB7_, NDR100_; 
    input wire UNF_, L15_;
    input wire TSGU_, TOV_, TSGN_;
    input wire GEQZRO_, OVF_;
    input wire TPZG_, TMZ_;
    
    output wire DIV_;
    output wire ST376, ST376_;
    output wire DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764;
    output wire ST0_, ST1_, STD2, ST3_, ST4_, ST1376_;
    output wire MST1, MST2;
    output wire SGUM;
    
    output wire BR1, BR1_, MBR1, BR2, BR2_, MBR2;
    
    wire DIVSTG, T12USE_, DVST_, TRSM_;
    wire STFFA_, STFFB_;
    wire STG1, STG2, STG3;
    wire ST1D;
    wire BR1FF, BR1FF_, BR2FF, BR2FF_;
    wire TMZINP;
    
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
    wire NOR36213_out;
    wire NOR36214_out;
    wire NOR36215_out;
    wire NOR36216_out;
    wire NOR36217_out;
    wire NOR36218_out;
    wire NOR36219_out;
    wire NOR36221_out;
    wire NOR36222_out;
    wire NOR36224_out;
    wire NOR36225_out;
    wire NOR36227_out;
    wire NOR36228_out;
    wire NOR36230_out;
    wire NOR36231_out;
    wire NOR36233_out;
    wire NOR36236_out;
    wire NOR36237_out;
    wire NOR36239_out;
    wire NOR36240_out;
    wire NOR36241_out;
    wire NOR36243_out;
    wire NOR36244_out;
    wire NOR36247_out;
    wire NOR36251_out;
    wire NOR36252_out;
    wire NOR36253_out;
    wire NOR36254_out;
    wire NOR36255_out;
    wire NOR36260_out;
    wire NOR36262_out;
    
    // Transfer to second stage time flip-flop (T03 or T12)
    nor_2 #(1'b0) NOR36101(DIVSTG,          T12USE_,        T03_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36102(T12USE_,         DVST,           NOR36109_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36103(NOR36103_out,    T03_,           T12USE_,        PHS3_,                      SIM_CLK);
    nor_2 #(1'b0) NOR36104(NOR36104_out,    NOR36103_out,   NOR36110_out,                               SIM_CLK);
    //nor_2 #(1'b0) NOR36111(NOR361011_out, NOR36103_out,   NOR36110_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR36109(NOR36109_out,    T12USE_,        RSTSTG,         GOJAM,                      SIM_CLK);
    nor_3 #(1'b0) NOR36110(NOR36110_out,    PHS3_,          NOR36109_out,   T12_,                       SIM_CLK);
    
    // Flip-flop A
    nor_2 #(1'b1) NOR36112(NOR36112_out,    GOJAM,          MTCSAI,                                     SIM_CLK);
    nor_3 #(1'b1) NOR36113(NOR36113_out,    ST1,            NOR36124_out,   NOR36118_out,               SIM_CLK);
    // No cross-module fan-in; signal added for convenience
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
    // Single monitor fan-in output, no cross-module fan-in
    assign MST1 = NOR36116_out;
    
    // Flip-flop B
    nor_2 #(1'b1) NOR36129(NOR36129_out,    ST2,            NOR36142_out,                               SIM_CLK);
    nor_3 #(1'b1) NOR36130(NOR36130_out,    NOR36139_out,   MTCSAI,         NOR36135_out,               SIM_CLK);
    // No cross-module fan-in; signal added for convenience
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
    // Single monitor fan-in output, no cross-module fan-in
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
    nor_2 #(1'b0) NOR36206(DV376,           DIV_,           ST376_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR36207(DV376_,          DV376,                                                      SIM_CLK);
    
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
    
    // BR1 inputs: TSGU
    nor_2 #(1'b0) NOR36213(NOR36213_out,    SUMA16_,        SUMB16_,                                    SIM_CLK);
    nor_3 #(1'b0) NOR36214(NOR36214_out,    SUMA16_,        SUMB16_,        TSGU_,                      SIM_CLK);
    nor_2 #(1'b0) NOR36215(NOR36215_out,    PHS4,           PHS3_,                                      SIM_CLK);
    // No cross-module fan-in; signal not connected to outside
    assign SGUM = NOR36214_out & NOR36215_out;
    
    // BR1 inputs: TOV
    nor_2 #(1'b0) NOR36216(NOR36216_out,    UNF_,           TOV_,                                       SIM_CLK);
    
    // BR1 inputs: TL15
    nor_1 #(1'b0) NOR36217(NOR36217_out,    TL15,                                                       SIM_CLK);
    nor_2 #(1'b0) NOR36218(NOR36218_out,    L15_,           NOR36217_out,                               SIM_CLK);
    
    // BR1 input: TSGN
    nor_3 #(1'b0) NOR36221(NOR36221_out,    PHS4_,          WL16_,          TSGN_,                      SIM_CLK);
    
    // BR1 resets: TSGN
    nor_2 #(1'b0) NOR36224(NOR36224_out,    TSGN_,          PHS3_,                                      SIM_CLK);
    
    // BR1 resets: TL15
    nor_2 #(1'b0) NOR36227(NOR36227_out,    NOR36217_out,   PHS3_,                                      SIM_CLK);
    
    // BR1 resets: TOV
    nor_2 #(1'b0) NOR36230(NOR36230_out,    TOV_,           PHS2_,                                      SIM_CLK);
    
    // BR1 resets: TSGU
    nor_4 #(1'b0) NOR36231(NOR36231_out,    NOR36213_out,   PHS3_,          TSGU_,      PHS4,           SIM_CLK);
    // NOR36232 merged into NOR36231

    // BR1 flip-flop
    nor_2 #(1'b0) NOR36219(NOR36219_out,    SGUM,           NOR36216_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36222(NOR36222_out,    NOR36218_out,   NOR36221_out,   BR1FF,                      SIM_CLK);
    // No cross-module fan-in; signal added for convenience
    assign BR1FF_ = NOR36219_out & NOR36222_out;
    
    nor_3 #(1'b1) NOR36225(NOR36225_out,    BR1FF_,         NOR36224_out,   NOR36227_out,               SIM_CLK);
    nor_2 #(1'b1) NOR36228(NOR36228_out,    NOR36230_out,   NOR36231_out,                               SIM_CLK);
    // No cross-module fan-in; signal added for convenience
    assign BR1FF = NOR36225_out & NOR36228_out;
    
    // BR1 outputs
    nor_1 #(1'b0) NOR36220(BR1,             BR1FF_,                                                     SIM_CLK);
    //nor_1 #(1'b0) NOR36223(BR1,           BR1FF_,                                                     SIM_CLK);
    //nor_1 #(1'b0) NOR36242(BR1,           BR1FF_,                                                     SIM_CLK);
    
    nor_1 #(1'b0) NOR36260(NOR36260_out,    BR1FF_,                                                     SIM_CLK);
    // Single monitor fan-in output, no cross-module fan-in
    assign MBR1 = NOR36260_out;
    
    nor_1 #(1'b0) NOR36226(BR1_,            BR1FF,                                                      SIM_CLK);
    //nor_1 #(1'b0) NOR36229(BR1_,          BR1FF,                                                      SIM_CLK);
    //nor_1 #(1'b0) NOR36248(BR1_,          BR1FF,                                                      SIM_CLK);
    
    // BR2 inputs: TPZG
    nor_3 #(1'b0) NOR36233(NOR36233_out,    GEQZRO_,        PHS4_,          TPZG_,                      SIM_CLK);
    
    // BR2 inputs: TOV
    nor_2 #(1'b0) NOR36236(NOR36236_out,    TOV_,           OVF_,                                       SIM_CLK);
    
    // BR2 inouts: TSGN2
    nor_1 #(1'b0) NOR36239(NOR36239_out,    TSGN2,                                                      SIM_CLK);
    nor_3 #(1'b0) NOR36240(NOR36240_out,    WL16_,          PHS4_,          NOR36239_out,               SIM_CLK);
    
    // BR2 inputs: TMZ
    nor_3 #(1'b0) NOR36243(NOR36243_out,    WL16_,          WL15_,          WL14_,                      SIM_CLK);
    nor_3 #(1'b0) NOR36247(NOR36247_out,    WL13_,          WL12_,          WL11_,                      SIM_CLK);
    nor_3 #(1'b0) NOR36251(NOR36251_out,    WL10_,          WL09_,          WL08_,                      SIM_CLK);
    nor_3 #(1'b0) NOR36253(NOR36253_out,    WL07_,          WL06_,          WL05_,                      SIM_CLK);
    nor_3 #(1'b0) NOR36254(NOR36254_out,    WL04_,          WL03_,          WL02_,                      SIM_CLK);
    nor_3 #(1'b0) NOR36255(NOR36255_out,    WL01_,          TMZ_,           PHS4_,                      SIM_CLK);
    // No cross-module fan-in; not connected to outside
    assign TMZINP = NOR36243_out & NOR36247_out & NOR36251_out & NOR36253_out & NOR36254_out & NOR36255_out;
    
    // BR2 resets: TSGN2
    nor_2 #(1'b0) NOR36244(NOR36244_out,    NOR36239_out,   PHS3_,                                      SIM_CLK);
    
    // BR2 resets: TMZ
    nor_2 #(1'b0) NOR36252(NOR36252_out,    PHS3_,          TMZ_,                                       SIM_CLK);
    
    // BR2 flip-flop
    nor_2 #(1'b0) NOR36237(NOR36237_out,    NOR36233_out,   NOR36236_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36241(NOR36241_out,    NOR36240_out,   TMZINP,         BR2FF,                      SIM_CLK);
    // No cross-module fan-in; signal added for convenience
    assign BR2FF_ = NOR36237_out & NOR36241_out;
    
    nor_4 #(1'b1) NOR36245(BR2FF,           BR2FF_,         NOR36244_out,   NOR36230_out,   NOR36252_out,   SIM_CLK);
    // NOR36249 merged into NOR36245

    // BR2 outputs
    nor_1 #(1'b0) NOR36238(BR2,             BR2FF_,                                                     SIM_CLK);
    nor_1 #(1'b0) NOR36262(NOR36262_out,    BR2FF_,                                                     SIM_CLK);
    // Single monitor fan-in output, no cross-module fan-in
    assign MBR2 = NOR36262_out;
    nor_1 #(1'b0) NOR36246(BR2_,            BR2FF,                                                      SIM_CLK);
    //nor_1 #(1'b0) NOR36250(BR2_,          BR2FF,                                                      SIM_CLK);
    
    
    /**************************
    *
    *  Module A4 sheet 2
    *  Sheet number 2005262/2
    *
    **************************/
    
    input wire T01_, T02_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_;
    input wire QC1_, QC2_, QC3_;
    input wire SQR10, SQR10_, SQR12_, SQ0_, SQ2_, SQEXT;
    input wire EXST0_, EXST1_;
    input wire IC12, IC13, IC15;
    input wire n7XP14;
    input wire RSM3, RSM3_;
    input wire STORE1_;
    input wire RSC_;
    input wire MP0_, MP1, MP3_, MP3A;
    input wire TS0_;
    
    output wire READ0, READ0_;
    output wire WRITE0, WRITE0_;
    output wire RAND0, WAND0;
    output wire INOUT, INOUT_;
    output wire ROR0, WOR0, WOR0_, RXOR0, RXOR0_;
    output wire RUPT0, RUPT0_;
    output wire RUPT1, RUPT1_;
    output wire BPP4;
    output wire PRINC;
    output wire RRPA;
    
    // Crosspoints
    output wire n1XP10;
    output wire n2XP3;
    output wire n2XP5;
    output wire n3XP2;
    output wire n3XP7;
    output wire n4XP5;
    output wire n4XP11;
    output wire n5XP4;
    output wire n5XP11;
    output wire n5XP28;
    output wire n6XP5;
    output wire n7XP19;
    output wire n8XP5;
    output wire n8XP6;
    output wire n9XP1;
    
    // Partial cross-module fan-in signals
    
    output wire A04_RA_;
    output wire A04_RB_;
    output wire A04_RC_;
    output wire A04_RB1_;
    output wire A04_R1C_;
    output wire A04_RSC_;
    
    output wire A04_WG_;
    output wire A04_WL_;
    output wire A04_WY_;
    
    output wire A04_CI_;
    
    output wire A04_TMZ_;
    output wire A04_TSGN_;
    output wire A04_L16_;
    
    output wire R15;
    output wire RB2;
    output wire WCH_;
    
    output wire MRSC_;
    
    output wire B15X;
    output wire BR1B2, BR1B2_;
    output wire BR12B, BR12B_;
    output wire BRDIF_;
    output wire BR1B2B, BR1B2B_;
    
    output wire MP0T10;
    output wire KRPT;
    
    wire n2PP1;
    
    wire NOR36303_out;
    wire NOR36304_out;
    wire NOR36326_out;
    wire NOR36328_out;
    wire NOR36329_out;
    wire NOR36333_out;
    wire NOR36334_out;
    wire NOR36335_out;
    wire NOR36337_out;
    wire NOR36338_out;
    wire NOR36339_out;
    wire NOR36340_out;
    wire NOR36342_out;
    wire NOR36343_out;
    wire NOR36344_out;
    wire NOR36345_out;
    wire NOR36346_out;
    wire NOR36347_out;
    wire NOR36348_out;
    wire NOR36349_out;
    wire NOR36351_out;
    wire NOR36353_out;
    wire NOR36354_out;
    wire NOR36355_out;
    wire NOR36360_out;
    wire NOR36401_out;
    wire NOR36405_out;
    wire NOR40428_out;
    wire NOR36406_out;
    wire NOR36407_out;
    wire NOR36409_out;
    wire NOR36410_out;
    wire NOR36411_out;
    wire NOR36412_out;
    wire NOR36413_out;
    wire NOR36414_out;
    wire NOR36415_out;
    wire NOR36424_out;
    wire NOR36425_out;
    wire NOR36426_out;
    wire NOR36427_out;
    wire NOR36428_out;
    wire NOR36430_out;
    wire NOR36431_out;
    wire NOR36435_out;
    wire NOR36436_out;
    wire NOR36437_out;
    wire NOR36438_out;
    wire NOR36439_out;
    wire NOR36440_out;
    wire NOR36441_out;
    wire NOR36442_out;
    wire NOR36444_out;
    wire NOR36446_out;
    wire NOR36451_out;
    wire NOR36452_out;
    wire NOR36453_out;
    wire NOR36454_out;
    wire NOR36456_out;
    wire NOR36459_out;
    wire NOR36460_out;
    
    // NOR36301 moved to sheet 1
    // NOR36302 removed (fan-out expansion)
    
    // READ0, WRITE0
    nor_2 #(1'b0) NOR36303(NOR36303_out,    SQ0_,           EXST0_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR36304(NOR36304_out,    NOR36303_out,                                               SIM_CLK);
    //nor_1 #(1'b0) NOR36307(NOR36304_out,  NOR36303_out,                                               SIM_CLK);
    nor_3 #(1'b0) NOR36305(READ0,           NOR36304_out,   SQR10,          QC0_,                       SIM_CLK);      
    nor_1 #(1'b0) NOR36306(READ0_,          READ0,                                                      SIM_CLK);
    nor_3 #(1'b0) NOR36308(WRITE0,          QC0_,           NOR36304_out,   SQR10_,                     SIM_CLK);
    nor_1 #(1'b0) NOR36309(WRITE0_,         WRITE0,                                                     SIM_CLK);
    
    // RAND0, WAND0
    nor_3 #(1'b0) NOR36310(RAND0,           SQR10,          NOR36304_out,   QC1_,                       SIM_CLK);
    // NOR36311 not used
    nor_3 #(1'b0) NOR36312(WAND0,           QC1_,           SQR10_,         NOR36304_out,               SIM_CLK);
    
    // INOUT
    nor_3 #(1'b0) NOR36314(INOUT,           EXST0_,         SQ0_,           RUPT0,                      SIM_CLK);
    nor_2 #(1'b0) NOR36313(INOUT_,          INOUT,                                                      SIM_CLK);

    // ROR0, WOR0, RXOR0
    nor_3 #(1'b0) NOR36315(ROR0,            SQR10,          NOR36304_out,   QC2_,                       SIM_CLK);
    nor_3 #(1'b0) NOR36316(WOR0,            QC2_,           NOR36304_out,   SQR10_,                     SIM_CLK);
    nor_1 #(1'b0) NOR36317(WOR0_,           WOR0,                                                       SIM_CLK);
    nor_3 #(1'b0) NOR36318(RXOR0,           SQR10,          NOR36304_out,   QC3_,                       SIM_CLK);
    nor_1 #(1'b0) NOR36319(RXOR0_,          RXOR0,                                                      SIM_CLK);
    
    // RUPT0, RUPT1
    nor_3 #(1'b0) NOR36320(RUPT0,           QC3_,           NOR36304_out,   SQR10_,                     SIM_CLK);
    nor_1 #(1'b0) NOR36321(RUPT0_,          RUPT0,                                                      SIM_CLK);
    nor_4 #(1'b0) NOR36323(RUPT1,           SQ0_,           EXST1_,         QC3_,           SQR10_,     SIM_CLK);
    // NOR36325 merged into NOR36323
    nor_1 #(1'b0) NOR36324(RUPT1_,          RUPT1,                                                      SIM_CLK);
    
    // BPP4
    nor_3 #(1'b0) NOR36322(BPP4,            INOUT,          DV4,            PRINC,                      SIM_CLK);
    
    // PRINC
    nor_2 #(1'b0) NOR36326(NOR36326_out,    QC3_,           SQEXT,                                      SIM_CLK);
    nor_2 #(1'b0) NOR36327(PRINC,           NOR36326_out,   NOR36329_out,                               SIM_CLK);
    //nor_2 #(1'b0) NOR36330(PRINC,         NOR36326_out,   NOR36329_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36328(NOR36328_out,    ST0_,           SQR12_,         SQ2_,                       SIM_CLK);
    nor_1 #(1'b0) NOR36329(NOR36329_out,    NOR36328_out,                                               SIM_CLK);
    
    // RRPA, 3XP7
    nor_2 #(1'b0) NOR36331(RRPA,            T03_,           RUPT1_,                                     SIM_CLK);
    nor_2 #(1'b0) NOR36332(n3XP7,           T03_,           RXOR0_,                                     SIM_CLK);
    
    // RB_ part 1
    nor_2 #(1'b0) NOR36348(NOR36348_out,    READ0_,         T05_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36333(NOR36333_out,    ROR0,           WOR0,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36334(NOR36334_out,    NOR36333_out,   T03_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR36335(NOR36335_out,    NOR36334_out,   NOR36348_out,   NOR36343_out,               SIM_CLK);
    
    // 9XP1
    nor_2 #(1'b0) NOR36336(n9XP1,           T09_,           RUPT0_,                                     SIM_CLK);
    
    // RC_ part 1
    nor_2 #(1'b0) NOR36337(NOR36337_out,    RAND0,          WAND0,                                      SIM_CLK);
    nor_2 #(1'b0) NOR36338(NOR36338_out,    T03_,           NOR36337_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36339(NOR36339_out,    NOR36338_out,   NOR36354_out,   NOR36340_out,               SIM_CLK);
    
    // 5XP28
    nor_2 #(1'b0) NOR36341(n5XP28,          DV4_,           T05_,                                       SIM_CLK);
    
    // WG_
    nor_2 #(1'b0) NOR36351(NOR36351_out,    T02_,           WRITE0_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR36340(NOR36340_out,    T09_,           RUPT0_,                                     SIM_CLK);
    nor_3 #(1'b0) NOR36342(NOR36342_out,    RUPT1,          IC13,           IC12,                       SIM_CLK);
    nor_2 #(1'b0) NOR36343(NOR36343_out,    T09_,           NOR36342_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36345(NOR36345_out,    n9XP1,          NOR36340_out,   NOR36354_out,               SIM_CLK);
    nor_2 #(1'b0) NOR36347(NOR36347_out,    NOR36343_out,   NOR36351_out,                               SIM_CLK);
    // Cross-module fan-in, connected to A5, A6 and A12
    assign A04_WG_ = NOR36345_out & NOR36347_out;

    // 5XP11
    nor_3 #(1'b0) NOR36344(NOR36344_out,    T05_,           INOUT_,         READ0,                      SIM_CLK);
    nor_2 #(1'b0) NOR36346(NOR36346_out,    WRITE0,         RXOR0,                                      SIM_CLK);
    assign n5XP11 = NOR36344_out & NOR36346_out;
    
    // WCH_
    nor_2 #(1'b0) NOR36349(NOR36349_out,    WRITE0_,        T05_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36353(NOR36353_out,    T05_,           WOR0_,                                      SIM_CLK);
    nor_3 #(1'b0) NOR36350(WCH_,            NOR36349_out,   n7XP14,         NOR36353_out,               SIM_CLK);
    
    // RA_
    nor_2 #(1'b0) NOR36354(NOR36354_out,    T05_,           RXOR0_,                                     SIM_CLK);
    nor_3 #(1'b0) NOR36355(NOR36355_out,    NOR36349_out,   NOR36354_out,   n2XP3,                      SIM_CLK);
    assign A04_RA_ = NOR36355_out;
    
    // n2XP3
    nor_2 #(1'b0) NOR36352(n2XP3,           T02_,           INOUT_,                                     SIM_CLK);
    
    // R15
    nor_3 #(1'b0) NOR36401(NOR36401_out,    RUPT0,          RUPT1,          RSM3,                       SIM_CLK);
    nor_2 #(1'b0) NOR36402(R15,             NOR36401_out,   T01_,                                       SIM_CLK);
    
    // RB2
    nor_2 #(1'b0) NOR36403(RB2,             T01_,           RUPT1_,                                     SIM_CLK);
    
    // n1XP10
    nor_2 #(1'b0) NOR36404(n1XP10,          T01_,           DV0_,                                       SIM_CLK);
    
    // n2PP1, n2XP5, RA_, RSC_, WG_
    nor_3 #(1'b0) NOR36405(NOR36405_out,    INOUT,          MP1,            MP3A,                       SIM_CLK);
    // Moved here from A6 sheet 2
    nor_3 #(1'b0) NOR40428(NOR40428_out,    DV0,            DV1376,         IC15,                       SIM_CLK);
    assign n2PP1 = NOR36405_out & NOR40428_out;
    nor_1 #(1'b0) NOR36406(NOR36406_out,    n2PP1,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR36407(NOR36407_out,    T02_,           NOR36406_out,                               SIM_CLK);
    nor_3 #(1'b0) NOR36408(n2XP5,           T02_,           DV0_,           BR1,                        SIM_CLK);
    
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0) NOR36409(NOR36409_out,    n1XP10,         n8XP5,          NOR36446_out,               SIM_CLK);
    assign A04_RA_ = NOR36409_out;
    
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0) NOR36410(NOR36410_out,    NOR36407_out,   NOR36435_out,   NOR36456_out,               SIM_CLK);
    assign A04_RSC_ = NOR36410_out;
    nor_1 #(1'b0) NOR36459(NOR36459_out,    RSC_,                                                       SIM_CLK);
    assign MRSC_ = NOR36459_out;
    
    // Cross-module fan-in, connected to A5, A6 and A12
    nor_2 #(1'b0) NOR36360(NOR36360_out,    STORE1_,        T09_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR36411(NOR36411_out,    NOR36407_out,   NOR36360_out,   NOR36435_out,               SIM_CLK);
    assign A04_WG_ = NOR36411_out;
    
    // TMZ_
    nor_2 #(1'b0) NOR36412(NOR36412_out,    n1XP10,         n2XP5,                                      SIM_CLK);
    assign A04_TMZ_ = NOR36412_out;
    
    // WY_ part 1
    nor_2 #(1'b0) NOR36413(NOR36413_out,    MP0_,           T03_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36414(NOR36414_out,    INOUT_,         T03_,                                       SIM_CLK);
    // part of WY_, connected below with NOR36441
    nor_3 #(1'b0) NOR36415(NOR36415_out,    NOR36414_out,   B15X,           n7XP19,                     SIM_CLK);
    
    // n3XP2
    nor_2 #(1'b0) NOR36416(n3XP2,           T03_,           TS0_,                                       SIM_CLK);
    
    // BR1B2
    nor_2 #(1'b0) NOR36417(BR1B2,           BR1,            BR2_,                                       SIM_CLK);
    nor_1 #(1'b0) NOR36418(BR1B2_,          BR1B2,                                                      SIM_CLK);
    
    // BR12B
    nor_2 #(1'b0) NOR36419(BR12B,           BR1_,           BR2,                                        SIM_CLK);
    nor_1 #(1'b0) NOR36420(BR12B_,          BR12B,                                                      SIM_CLK);
    
    // BRDIF_
    nor_2 #(1'b0) NOR36421(BRDIF_,          BR1B2,          BR1B2,                                      SIM_CLK);
    
    // BR1B2B
    nor_2 #(1'b0) NOR36422(BR1B2B,          BR2,            BR1,                                        SIM_CLK);
    nor_1 #(1'b0) NOR36423(BR1B2B_,         BR1B2B,                                                     SIM_CLK);
    
    
    nor_3 #(1'b0) NOR36424(NOR36424_out,    BRDIF_,         TS0_,           T04_,                       SIM_CLK);
    
    // WL_
    nor_3 #(1'b0) NOR36425(NOR36425_out,    T04_,           BR1,            MP0_,                       SIM_CLK);
    // Cross-module fan-in, connected to A5, A6 and A7
    nor_3 #(1'b0) NOR36426(NOR36426_out,    NOR36425_out,   NOR36427_out,   n6XP5,                      SIM_CLK);
    assign A04_WL_ = NOR36426_out;
    
    // RC_ part 2
    nor_3 #(1'b0) NOR36427(NOR36427_out,    MP0_,           BR1_,           T04_,                       SIM_CLK);
    nor_3 #(1'b0) NOR36428(NOR36428_out,    NOR36427_out,   n2XP5,          NOR36439_out,               SIM_CLK);
    // Cross-module fan-in, connected to A5 and A6
    assign A04_RC_ = NOR36339_out & NOR36428_out;
    
    // 4XP5
    nor_2 #(1'b0) NOR36429(n4XP5,           TS0_,           T04_,                                       SIM_CLK);
    
    // RB_ part 2
    nor_3 #(1'b0) NOR36430(NOR36430_out,    NOR36425_out,   n7XP19,         NOR36437_out,               SIM_CLK);
    // Cross-module fan-in, connected to A5 and A6
    assign A04_RB_ = NOR36335_out & NOR36430_out;
    
    // Various XPs
    nor_3 #(1'b0) NOR36431(NOR36431_out,    DV1_,           T04_,           BR2_,                       SIM_CLK);
    nor_2 #(1'b0) NOR36432(n8XP5,           T08_,           DV1_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36433(n4XP11,           T04_,           INOUT_,                                     SIM_CLK);
    nor_3 #(1'b0) NOR36434(n8XP6,           T08_,           DV1_,           BR2,                        SIM_CLK);
    nor_2 #(1'b0) NOR36435(NOR36435_out,    T04_,           MP3_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR36436(NOR36436_out,    TS0_,           T05_,           BR1B2_,                     SIM_CLK);
    nor_3 #(1'b0) NOR36437(NOR36437_out,    T09_,           BR1,            MP0_,                       SIM_CLK);
    nor_3 #(1'b0) NOR36438(NOR36438_out,    T05_,           TS0_,           BR12B_,                     SIM_CLK);
    nor_3 #(1'b0) NOR36439(NOR36439_out,    T09_,           MP0_,           BR1_,                       SIM_CLK);
    
    // CI_
    nor_2 #(1'b0) NOR36440(NOR36440_out,    NOR36424_out,   NOR36444_out,                               SIM_CLK);
    // Cross-module fan-in, connected to A5 and A6
    assign A04_CI_ = NOR36440_out;
    
    // WY_
    nor_3 #(1'b0) NOR36441(NOR36441_out,    NOR36439_out,   n8XP5,          NOR36437_out,               SIM_CLK);
    // Cross-module fan-in, connected to A5 and A6
    assign A04_WY_ = NOR36441_out;
    
    // TSGN_ part 1
    nor_2 #(1'b0) NOR36442(NOR36442_out,    n1XP10,         MP0T10,                                     SIM_CLK);
    
    // Various crosspoints
    nor_2 #(1'b0) NOR36443(B15X,            T05_,           DV1_,                                       SIM_CLK);
    nor_3 #(1'b0) NOR36444(NOR36444_out,    MP0_,           T09_,           BRDIF_,                     SIM_CLK);
    nor_2 #(1'b0) NOR36445(n5XP4,           T05_,           RSM3_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR36446(NOR36446_out,    T09_,           MP3_,                                       SIM_CLK);
    nor_2 #(1'b0) NOR36447(n6XP5,           T06_,           DV1_,                                       SIM_CLK);
    
    // KRPT
    nor_2 #(1'b0) NOR36448(KRPT,            T09_,           RUPT1_,                                     SIM_CLK);
    
    // TL15
    nor_2 #(1'b0) NOR36449(TL15,            T06_,           MP3_,                                       SIM_CLK);
    
    // MP0T10
    nor_2 #(1'b0) NOR36450(MP0T10,          T10_,           MP0_,                                       SIM_CLK);
    
    // Crosspoint
    nor_3 #(1'b0) NOR36451(NOR36451_out,    BR1_,           MP0_,           T11_,                       SIM_CLK);
    
    // RB1
    nor_2 #(1'b0) NOR36452(NOR36452_out,    NOR36436_out,   NOR36451_out,                               SIM_CLK);
    // Cross-module fan-in, connected to A6
    assign A04_RB1_ = NOR36452_out;
    
    // R1C
    nor_2 #(1'b0) NOR36453(NOR36453_out,    NOR36451_out,   NOR36438_out,                               SIM_CLK);
    // Cross-module fan-in, connected to A6
    assign A04_R1C_ = NOR36453_out;
    
    // TSGN part 2
    nor_3 #(1'b0) NOR36454(NOR36454_out,    NOR36431_out,   NOR36413_out,   NOR36456_out,               SIM_CLK);
    // Cross-module fan-in, connected to A5
    assign A04_TSGN_ = NOR36442_out & NOR36454_out;
    
    // TSGM2
    nor_2 #(1'b0) NOR36455(TSGN2,           T07_,           MP0_,                                       SIM_CLK);
    
    // Crosspoint
    nor_2 #(1'b0) NOR36456(NOR36456_out,    T07_,           DV1_,                                       SIM_CLK);
    
    // 7XP19
    nor_3 #(1'b0) NOR36457(n7XP19,          T07_,           BR1_,           MP3_,                       SIM_CLK);
    
    // L16
    nor_1 #(1'b0) NOR36460(NOR36460_out,    NOR36451_out,                                               SIM_CLK);
    // Cross-module fan-in, connected to A11
    assign A04_L16_ = NOR36460_out;
    
endmodule
