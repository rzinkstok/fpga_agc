`timescale 1ns / 1ps

module a04_stage_branch(
    input wire PHS2_, 
    input wire PHS3_, 
    input wire PHS4, 
    input wire PHS4_, 
    input wire T01, 
    input wire T03_, 
    input wire T12_,
    input wire SUMA16_, 
    input wire SUMB16_,
    input wire WL01_, 
    input wire WL02_, 
    input wire WL03_, 
    input wire WL04_, 
    input wire WL05_, 
    input wire WL06_, 
    input wire WL07_, 
    input wire WL08_, 
    input wire WL09_, 
    input wire WL10_, 
    input wire WL11_, 
    input wire WL12_, 
    input wire WL13_, 
    input wire WL14_, 
    input wire WL15_, 
    input wire WL16_,
    input wire QC0_, 
    input wire QC1_, 
    input wire QC2_, 
    input wire QC3_,
    input wire SQ0_, 
    input wire SQ1_, 
    input wire SQ2_, 
    input wire SQEXT, 
    input wire SQEXT_,
    input wire DVST,
    input wire ST1, 
    input wire ST2,
    input wire INKL,
    input wire MTCSAI,
    input wire GOJAM,
    input wire RSTSTG,
    input wire STRTFC,
    input wire TRSM,
    input wire XT1_,
    input wire XB7_,
    input wire NDR100_,
    input wire UNF_, 
    input wire L15_,
    input wire TSGU_, 
    input wire TOV_, 
    input wire TSGN_,
    input wire GEQZRO_, 
    input wire OVF_,
    input wire TPZG_, 
    input wire TMZ_,

    input wire T01_, 
    input wire T02_, 
    input wire T04_, 
    input wire T05_, 
    input wire T06_, 
    input wire T07_, 
    input wire T08_, 
    input wire T09_, 
    input wire T10_, 
    input wire T11_,
    input wire SQR10, 
    input wire SQR10_, 
    input wire SQR12_,
    input wire EXST0_, 
    input wire EXST1_,
    input wire IC12, 
    input wire IC13, 
    input wire IC15,
    input wire IC15_,
    input wire n7XP14,
    input wire RSM3, 
    input wire RSM3_,
    input wire STORE1_,
    input wire RSC_,
    input wire MP0_, 
    input wire MP1, 
    input wire MP3_, 
    input wire MP3A,
    input wire TS0_,
    input wire n7XP11,
    
    output wire T12USE_,
    output wire DIV_,
    output wire DV1,
    output wire DV1_, 
    output wire DV4, 
    output wire DV4_, 
    output wire DV376_,
    output wire DV1376, 
    output wire DV1376_, 
    output wire DV3764,
    output wire ST0_, 
    output wire ST1_, 
    output wire STD2, 
    output wire ST3_, 
    output wire MST1,
    output wire MST2,
    output wire MST3,
    output wire BR1, 
    output wire BR1_, 
    output wire MBR1, 
    output wire BR2, 
    output wire BR2_, 
    output wire MBR2,

    output wire READ0, 
    output wire RAND0,
    output wire WAND0, 
    output wire INOUT, 
    output wire INOUT_,
    output wire ROR0, 
    output wire WOR0, 
    output wire RXOR0,
    output wire RXOR0_,
    output wire RUPT0, 
    output wire RUPT1,
    output wire PRINC,
    output wire RRPA,
    output wire n1XP10, 
    output wire n2XP3, 
    output wire n2XP5, 
    output wire n3XP2, 
    output wire n3XP7, 
    output wire n4XP5, 
    output wire n4XP11,
    output wire n5XP4, 
    output wire n5XP11, 
    output wire n5XP28, 
    output wire n6XP5, 
    output wire n7XP19, 
    output wire n8XP5, 
    output wire n8XP6, 
    output wire n9XP1,
    output wire A04_1_RA_, 
    output wire A04_2_RA_,
    output wire A04_1_RB_, 
    output wire A04_2_RB_,
    output wire A04_1_RC_, 
    output wire A04_2_RC_,
    output wire A04_1_RB1_,
    output wire A04_1_RSC_,
    output wire A12_1_RSC_,
    output wire A04_1_WG_, 
    output wire A04_2_WG_, 
    output wire A04_3_WG_,
    output wire A12_1_WG_,
    output wire A04_1_WL_,
    output wire A04_1_WY_, 
    output wire A04_2_WY_,
    output wire A04_1_CI_,
    output wire A04_1_TMZ_,
    output wire A04_1_TSGN_, 
    output wire A04_2_TSGN_,
    output wire A04_1_L16_,
    output wire A04_1_n8PP4,
    output wire R1C,
    output wire R15, 
    output wire RB2, 
    output wire WCH_,
    output wire MRSC,
    output wire MP0T10,    
    output wire B15X,
    output wire BR1B2_,
    output wire BR1B2B,
    output wire BR12B_,
    output wire BRDIF_,
    output wire BR1B2B_,
    output wire TL15,
    output wire KRPT,
    output wire DIVSTG,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
);
    
    /**************************
    *
    *  Module A4 sheet 1
    *  Sheet number 2005262/1
    *
    **************************/
    
    
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
    wire NOR36134_out;
    wire NOR36135_out;
    wire NOR36136_out;
    wire NOR36138_out;
    wire NOR36139_out;
    wire NOR36140_out; 
    wire NOR36142_out;
    wire NOR36144_out;
    wire NOR36146_out;
    wire NOR36147_out;
    wire NOR36148_out;
    wire NOR36149_out;
    wire NOR36150_out;
    wire NOR36152_out;
    wire NOR36155_out;
    wire NOR36156_out;
    wire NOR36159_out;
    
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
    wire NOR36232_out;
    wire NOR36233_out;
    wire NOR36236_out;
    wire NOR36237_out;
    wire NOR36239_out;
    wire NOR36240_out;
    wire NOR36241_out;
    wire NOR36243_out;
    wire NOR36244_out;
    wire NOR36245_out;
    wire NOR36247_out;
    wire NOR36249_out;
    wire NOR36251_out;
    wire NOR36252_out;
    wire NOR36253_out;
    wire NOR36254_out;
    wire NOR36255_out;
    wire NOR36260_out;
    wire NOR36261_out;
    wire NOR36262_out;
    
    wire NOR36129_in;
    wire NOR36150_in;
    wire NOR36228_in;

    wire DV0;
    wire DV0_;
    wire DVST_;
    wire DV376;
    wire STG1;
    wire STG2;
    wire STG3;
    wire TRSM_;
    wire STFFA_;
    wire STFFB_;
    wire ST1D;
    wire TSGN2;
    wire BR1FF;
    wire BR1FF_;
    wire BR2FF;
    wire BR2FF_;
    wire TMZINP;
    wire SGUM;
    wire ST1376_;
    wire ST376;
    wire ST376_;
    wire ST4_;


    // Transfer to second stage time flip-flop (T03 or T12)
    nor_3 #(1'b0)  NOR36101(DIVSTG,         T12USE_,        T03_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36102(T12USE_,        DVST,           NOR36109_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36103(NOR36103_out,   T03_,           T12USE_,        PHS3_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36104(NOR36104_out,   NOR36103_out,   NOR36110_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR36111 removed (fan-out expansion)
    nor_3 #(1'b1)  NOR36109(NOR36109_out,   T12USE_,        RSTSTG,         GOJAM,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36110(NOR36110_out,   PHS3_,          NOR36109_out,   T12_,           p4SW, reset, prop_clk);
    
    // Flip-flop A
    nor_3 #(1'b1)  NOR36112(NOR36112_out,   GOJAM,          MTCSAI,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36113(NOR36113_out,   ST1,            NOR36124_out,   NOR36118_out,   p4SW, reset, prop_clk);
    // No cross-module fan-in; signal added for convenience
    assign STFFA_ = NOR36112_out & NOR36113_out;
    nor_3 #(1'b0)  NOR36118(NOR36118_out,   STFFA_,         T01,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR36264(DVST_,          DVST,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36124(NOR36124_out,   DVST_,          STG3,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Flip-flop A to STG1 transfer
    nor_3 #(1'b0)  NOR36114(NOR36114_out,   NOR36104_out,   STFFA_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36119(NOR36119_out,   NOR36104_out,   NOR36118_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Flip-flop STG1
    nor_3 #(1'b1)  NOR36115(NOR36115_out,   NOR36114_out,   STG1,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36120(STG1,           NOR36115_out,   NOR36119_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36116(NOR36116_out,   NOR36115_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MST1 = NOR36116_out;
    
    // Flip-flop B
    nor_3 #(1'b1)  NOR36129(NOR36129_out,   ST2,            NOR36129_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36130(NOR36130_out,   NOR36139_out,   MTCSAI,         NOR36135_out,   p4SW, reset, prop_clk);
    // No cross-module fan-in; signal added for convenience
    assign STFFB_ = NOR36129_out & NOR36130_out;
    nor_3 #(1'b0)  NOR36135(NOR36135_out,   STFFB_,         GOJAM,          T01,            p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR36139(NOR36139_out,   DVST_,          NOR36115_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36263(TRSM_,          TRSM,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36142(NOR36142_out,   TRSM_,          XT1_,           XB7_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36261(NOR36261_out,   NDR100_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR36129_in = NOR36142_out & NOR36261_out;
    
    // Flip-flop B to STG2 transfer
    nor_3 #(1'b0)  NOR36131(NOR36131_out,   NOR36104_out,   STFFB_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36136(NOR36136_out,   NOR36135_out,   NOR36104_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Flip-flop STG2
    nor_3 #(1'b1)  NOR36132(NOR36132_out,   NOR36131_out,   STG2,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR36133 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR36137(STG2,           NOR36132_out,   NOR36136_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36125(NOR36125_out,   NOR36132_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MST2 = NOR36125_out;
    
    // Flip-flop C
    nor_3 #(1'b1)  NOR36146(NOR36146_out,   NOR36155_out,   NOR36150_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36149(NOR36149_out,   NOR36146_out,   STRTFC,         T01,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36159(NOR36159_out,   RSTSTG,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR36150_in = NOR36149_out & NOR36159_out;
    
    nor_3 #(1'b0)  NOR36155(NOR36155_out,   DVST_,          NOR36132_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Flip-flop C to STG3 transfer
    nor_3 #(1'b0)  NOR36147(NOR36147_out,   NOR36104_out,   NOR36146_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36150(NOR36150_out,   NOR36150_in,    NOR36104_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Flip-flop STG3
    nor_3 #(1'b1)  NOR36148(NOR36148_out,   NOR36147_out,   STG3,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36151(STG3,           NOR36148_out,   NOR36150_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR36158 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR36143(MST3,           NOR36148_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Stage decoding
    
    // ST0
    nor_3 #(1'b1)  NOR36105(NOR36105_out,   STG1,           STG3,           STG2,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36106(ST0_,           NOR36105_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36107 removed (fan-out expansion)
    
    // ST1
    nor_3 #(1'b0)  NOR36121(ST1D,           STG2,           STG3,           NOR36115_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36117(ST1_,           ST1D,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36123 removed (fan-out expansion)
    // NOR36122 removed (fan-out expansion)
    
    // DV1376
    nor_3 #(1'b0)  NOR36126(ST1376_,        ST1D,           ST376,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36127(DV1376,         ST1376_,        DIV_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36128(DV1376_,        DV1376,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // STD2
    nor_3 #(1'b0)  NOR36134(NOR36134_out,   INKL,           STG1,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36138(NOR36138_out,   STG3,           NOR36132_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign STD2 = NOR36134_out & NOR36138_out;
    
    // ST3
    nor_3 #(1'b0)  NOR36140(NOR36140_out,   STG3,           NOR36132_out,   NOR36115_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36141(ST3_,           NOR36140_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // ST4
    nor_3 #(1'b0)  NOR36144(NOR36144_out,   NOR36148_out,   STG1,           STG2,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36145(ST4_,           NOR36144_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    //DV3764
    nor_3 #(1'b0)  NOR36156(NOR36156_out,   NOR36144_out,   ST376,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36157(DV3764,         DIV_,           NOR36156_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // ST376
    nor_3 #(1'b0)  NOR36152(NOR36152_out,   STG1,           STG3,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36153(ST376,          NOR36132_out,   NOR36152_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36154(ST376_,         ST376,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DIV_
    nor_3 #(1'b0)  NOR36201(NOR36201_out,   QC0_,           SQEXT_,         SQ1_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36202(DIV_,           NOR36201_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36203 removed (fan-out expansion)
    
    // DV0
    nor_3 #(1'b0)  NOR36204(DV0,            DIV_,           ST0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36205(DV0_,           DV0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);

    // DV376
    nor_3 #(1'b0)  NOR36206(DV376,          DIV_,           ST376_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36207(DV376_,         DV376,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DV4
    nor_3 #(1'b0)  NOR36208(DV4,            DIV_,           ST4_,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR36301 moved here from sheet 2
    nor_3 #(1'b0)  NOR36301(DV4_,           DV4,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DV1
    nor_3 #(1'b0)  NOR36209(DV1,            DIV_,           ST1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36210(DV1_,           DV1,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36211 removed (fan-out expansion)
    // NOR36212 removed (fan-out expansion)
    
    
    // Branch register
    
    // BR1 inputs: TSGU
    nor_3 #(1'b0)  NOR36213(NOR36213_out,   SUMA16_,        SUMB16_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36214(NOR36214_out,   SUMA16_,        SUMB16_,        TSGU_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36215(NOR36215_out,   PHS4,           PHS3_,          n0VDCA,         p4SW, reset, prop_clk);
    // No cross-module fan-in; signal not connected to outside
    assign SGUM = NOR36214_out & NOR36215_out;
    
    // BR1 inputs: TOV
    nor_3 #(1'b0)  NOR36216(NOR36216_out,   UNF_,           TOV_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1 inputs: TL15
    nor_3 #(1'b0)  NOR36217(NOR36217_out,   TL15,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36218(NOR36218_out,   L15_,           NOR36217_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1 input: TSGN
    nor_3 #(1'b0)  NOR36221(NOR36221_out,   PHS4_,          WL16_,          TSGN_,          p4SW, reset, prop_clk);
    
    // BR1 resets: TSGN
    nor_3 #(1'b0)  NOR36224(NOR36224_out,   TSGN_,          PHS3_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1 resets: TL15
    nor_3 #(1'b0)  NOR36227(NOR36227_out,   NOR36217_out,   PHS3_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1 resets: TOV
    nor_3 #(1'b0)  NOR36230(NOR36230_out,   TOV_,           PHS2_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1 resets: TSGU
    nor_3 #(1'b0)  NOR36231(NOR36231_out,   NOR36213_out,   PHS3_,          TSGU_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36232(NOR36232_out,   PHS4,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR36228_in = NOR36231_out & NOR36232_out;
    
    // BR1 flip-flop
    nor_3 #(1'b0)  NOR36219(NOR36219_out,   SGUM,           NOR36216_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36222(NOR36222_out,   NOR36218_out,   NOR36221_out,   BR1FF,          p4SW, reset, prop_clk);
    // No cross-module fan-in; signal added for convenience
    assign BR1FF_ = NOR36219_out & NOR36222_out;
    
    nor_3 #(1'b1)  NOR36225(NOR36225_out,   BR1FF_,         NOR36224_out,   NOR36227_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36228(NOR36228_out,   NOR36230_out,   NOR36228_in,    n0VDCA,         p4SW, reset, prop_clk);
    // No cross-module fan-in; signal added for convenience
    assign BR1FF = NOR36225_out & NOR36228_out;
    
    // BR1 outputs
    nor_3 #(1'b0)  NOR36220(BR1,            BR1FF_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36223 removed (fan-out expansion)
    // NOR36242 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR36260(NOR36260_out,   BR1FF_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MBR1 = NOR36260_out;
    
    nor_3 #(1'b0)  NOR36226(BR1_,           BR1FF,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36229 removed (fan-out expansion)
    // NOR36248 removed (fan-out expansion)
    
    // BR2 inputs: TPZG
    nor_3 #(1'b0)  NOR36233(NOR36233_out,   GEQZRO_,        PHS4_,          TPZG_,          p4SW, reset, prop_clk);
    
    // BR2 inputs: TOV
    nor_3 #(1'b0)  NOR36236(NOR36236_out,   TOV_,           OVF_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BR2 inouts: TSGN2
    nor_3 #(1'b0)  NOR36239(NOR36239_out,   TSGN2,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36240(NOR36240_out,   WL16_,          PHS4_,          NOR36239_out,   p4SW, reset, prop_clk);
    
    // BR2 inputs: TMZ
    nor_3 #(1'b0)  NOR36243(NOR36243_out,   WL16_,          WL15_,          WL14_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36247(NOR36247_out,   WL13_,          WL12_,          WL11_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36251(NOR36251_out,   WL10_,          WL09_,          WL08_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36253(NOR36253_out,   WL07_,          WL06_,          WL05_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36254(NOR36254_out,   WL04_,          WL03_,          WL02_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36255(NOR36255_out,   WL01_,          TMZ_,           PHS4_,          p4SW, reset, prop_clk);
    // No cross-module fan-in; not connected to outside
    assign TMZINP = NOR36243_out & NOR36247_out & NOR36251_out & NOR36253_out & NOR36254_out & NOR36255_out;
    
    // BR2 resets: TSGN2
    nor_3 #(1'b0)  NOR36244(NOR36244_out,   NOR36239_out,   PHS3_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // BR2 resets: TMZ
    nor_3 #(1'b0)  NOR36252(NOR36252_out,   PHS3_,          TMZ_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BR2 flip-flop
    nor_3 #(1'b0)  NOR36237(NOR36237_out,   NOR36233_out,   NOR36236_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36241(NOR36241_out,   NOR36240_out,   TMZINP,         BR2FF,          p4SW, reset, prop_clk);
    // No cross-module fan-in; signal added for convenience
    assign BR2FF_ = NOR36237_out & NOR36241_out;
    
    nor_3 #(1'b1)  NOR36245(NOR36245_out,   BR2FF_,         NOR36244_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR36249(NOR36249_out,   NOR36230_out,   NOR36252_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign BR2FF = NOR36245_out & NOR36249_out;
    
    // BR2 outputs
    nor_3 #(1'b0)  NOR36238(BR2,            BR2FF_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36262(NOR36262_out,   BR2FF_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MBR2 = NOR36262_out;
    nor_3 #(1'b0)  NOR36246(BR2_,           BR2FF,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36250 removed (fan-out expansion)
    
    
    /**************************
    *
    *  Module A4 sheet 2
    *  Sheet number 2005262/2
    *
    **************************/
    
    wire NOR36303_out;
    wire NOR36304_out;
    wire NOR36323_out;
    wire NOR36325_out;
    wire NOR36326_out;
    wire NOR36328_out;
    wire NOR36329_out;
    wire NOR36333_out;
    wire NOR36334_out;
    wire NOR36337_out;
    wire NOR36338_out;
    wire NOR36340_out;
    wire NOR36342_out;
    wire NOR36343_out;
    wire NOR36344_out;
    wire NOR36346_out;
    wire NOR36348_out;
    wire NOR36349_out;
    wire NOR36351_out;
    wire NOR36353_out;
    wire NOR36354_out;
    wire NOR36360_out;
    wire NOR36401_out;
    wire NOR36405_out;
    wire NOR40428_out;
    wire NOR36406_out;
    wire NOR36407_out;
    wire NOR36411_out;
    wire NOR36413_out;
    wire NOR36414_out;
    wire NOR36424_out;
    wire NOR36425_out;
    wire NOR36427_out;
    wire NOR36431_out;
    wire NOR36435_out;
    wire NOR36436_out;
    wire NOR36437_out;
    wire NOR36438_out;
    wire NOR36439_out;
    wire NOR36444_out;
    wire NOR36446_out;
    wire NOR36451_out;
    wire NOR36453_out;
    wire NOR36456_out;
    wire NOR36459_out;
    
    wire NOR40435_out;
    
    wire n2PP1;
    wire BRXP3;
    wire R1C_;
    wire BR12B;
    wire BR1B2;
    wire READ0_;
    wire WRITE0;
    wire WRITE0_;
    wire RUPT0_;
    wire RUPT1_;
    wire WOR0_;

    
    // NOR36302 removed (fan-out expansion)
    
    // READ0, WRITE0
    nor_3 #(1'b0)  NOR36303(NOR36303_out,   SQ0_,           EXST0_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36304(NOR36304_out,   NOR36303_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR36307 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR36305(READ0,          NOR36304_out,   SQR10,          QC0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36306(READ0_,         READ0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36308(WRITE0,         QC0_,           NOR36304_out,   SQR10_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36309(WRITE0_,        WRITE0,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RAND0, WAND0
    nor_3 #(1'b0)  NOR36310(RAND0,          SQR10,          NOR36304_out,   QC1_,           p4SW, reset, prop_clk);
    // NOR36311 removed (not used)
    nor_3 #(1'b0)  NOR36312(WAND0,          QC1_,           SQR10_,         NOR36304_out,   p4SW, reset, prop_clk);
    
    // INOUT
    nor_3 #(1'b0)  NOR36314(INOUT,          EXST0_,         SQ0_,           RUPT0,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36313(INOUT_,         INOUT,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);

    // ROR0, WOR0, RXOR0
    nor_3 #(1'b0)  NOR36315(ROR0,           SQR10,          NOR36304_out,   QC2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36316(WOR0,           QC2_,           NOR36304_out,   SQR10_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36317(WOR0_,          WOR0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36318(RXOR0,          SQR10,          NOR36304_out,   QC3_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36319(RXOR0_,         RXOR0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RUPT0, RUPT1
    nor_3 #(1'b0)  NOR36320(RUPT0,          QC3_,           NOR36304_out,   SQR10_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36321(RUPT0_,         RUPT0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36323(NOR36323_out,   SQ0_,           EXST1_,         QC3_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36325(NOR36325_out,   SQR10_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign RUPT1 = NOR36323_out & NOR36325_out;
    nor_3 #(1'b0)  NOR36324(RUPT1_,         RUPT1,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // 8PP4
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0)  NOR36322(A04_1_n8PP4,    INOUT,          DV4,            PRINC,          p4SW, reset, prop_clk);
    
    // PRINC
    nor_3 #(1'b0)  NOR36326(NOR36326_out,   QC3_,           SQEXT,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36327(PRINC,          NOR36326_out,   NOR36329_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR36330 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR36328(NOR36328_out,   ST0_,           SQR12_,         SQ2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36329(NOR36329_out,   NOR36328_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RRPA, 3XP7
    nor_3 #(1'b0)  NOR36331(RRPA,           T03_,           RUPT1_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36332(n3XP7,          T03_,           RXOR0_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RB_ part 1
    nor_3 #(1'b0)  NOR36348(NOR36348_out,   READ0_,         T05_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36333(NOR36333_out,   ROR0,           WOR0,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36334(NOR36334_out,   NOR36333_out,   T03_,           n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36335(A04_1_RB_,      NOR36334_out,   NOR36348_out,   NOR36343_out,   p4SW, reset, prop_clk);
    
    // 9XP1
    nor_3 #(1'b0)  NOR36336(n9XP1,          T09_,           RUPT0_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RC_ part 1
    nor_3 #(1'b0)  NOR36337(NOR36337_out,   RAND0,          WAND0,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36338(NOR36338_out,   T03_,           NOR36337_out,   n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36339(A04_1_RC_,      NOR36338_out,   NOR36354_out,   NOR36340_out,   p4SW, reset, prop_clk);
    
    // 5XP28
    nor_3 #(1'b0)  NOR36341(n5XP28,         DV4_,           T05_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BRXP3
    nor_3 #(1'b0)  NOR34253(BRXP3,          IC15_,          T03_,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR34253 moved here from A12 sheet 1
    
    // WG_
    nor_3 #(1'b0)  NOR36351(NOR36351_out,   T02_,           WRITE0_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36340(NOR36340_out,   T09_,           RXOR0_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36342(NOR36342_out,   RUPT1,          IC13,           IC12,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36343(NOR36343_out,   T09_,           NOR36342_out,   n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5, A6 and A12
    nor_3 #(1'b0)  NOR36345(A04_1_WG_,      n9XP1,          NOR36340_out,   NOR36354_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36347(A04_2_WG_,      NOR36343_out,   NOR36351_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34159(A12_1_WG_,      BRXP3,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR34159 moved here from A12 sheet 1
    
    // 5XP11
    nor_3 #(1'b0)  NOR36344(NOR36344_out,   T05_,           INOUT_,         READ0,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36346(NOR36346_out,   WRITE0,         RXOR0,          n0VDCA,         p4SW, reset, prop_clk);
    // No cross-module fan-in
    assign n5XP11 = NOR36344_out & NOR36346_out;
    
    // WCH_
    nor_3 #(1'b0)  NOR36349(NOR36349_out,   WRITE0_,        T05_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36353(NOR36353_out,   T05_,           WOR0_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36350(WCH_,           NOR36349_out,   n7XP14,         NOR36353_out,   p4SW, reset, prop_clk);
    
    // RA_ part 1
    nor_3 #(1'b0)  NOR36354(NOR36354_out,   T05_,           RXOR0_,         n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR36355(A04_1_RA_,      NOR36349_out,   NOR36354_out,   n2XP3,          p4SW, reset, prop_clk);
    
    // n2XP3
    nor_3 #(1'b0)  NOR36352(n2XP3,          T02_,           INOUT_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // R15
    nor_3 #(1'b0)  NOR36401(NOR36401_out,   RUPT0,          RUPT1,          RSM3,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36402(R15,            NOR36401_out,   T01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RB2
    nor_3 #(1'b0)  NOR36403(RB2,            T01_,           RUPT1_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // n1XP10
    nor_3 #(1'b0)  NOR36404(n1XP10,         T01_,           DV0_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // n2PP1
    nor_3 #(1'b0)  NOR36405(NOR36405_out,   INOUT,          MP1,            MP3A,           p4SW, reset, prop_clk);
    // Moved here from A6 sheet 2
    nor_3 #(1'b0)  NOR40428(NOR40428_out,   DV0,            DV1376,         IC15,           p4SW, reset, prop_clk);
    // No cross-module fan-in
    assign n2PP1 = NOR36405_out & NOR40428_out;

    // n2XP5
    nor_3 #(1'b0)  NOR36406(NOR36406_out,   n2PP1,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36407(NOR36407_out,   T02_,           NOR36406_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36408(n2XP5,          T02_,           DV0_,           BR1,            p4SW, reset, prop_clk);

    // RA_ part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR36409(A04_2_RA_,      n1XP10,         n8XP5,          NOR36446_out,   p4SW, reset, prop_clk);
    
    // RSC_
    nor_3 #(1'b0)  NOR36410(A04_1_RSC_,     NOR36407_out,   NOR36435_out,   NOR36456_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34158(A12_1_RSC_,     BRXP3,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR34158 moved here from A12 sheet 1
    
    // Monitor uses full signal
    nor_3 #(1'b0)  NOR36459(NOR36459_out,   RSC_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MRSC = NOR36459_out;

    // WG_ part 2
    nor_3 #(1'b0)  NOR36360(NOR36360_out,   STORE1_,        T09_,           n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5, A6 and A12
    nor_3 #(1'b0)  NOR36411(A04_3_WG_,      NOR36407_out,   NOR36360_out,   NOR36435_out,   p4SW, reset, prop_clk);
    
    // TMZ_
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR36412(A04_1_TMZ_,     n1XP10,         n2XP5,          n0VDCA,         p4SW, reset, prop_clk);
    
    // WY_ part 1
    nor_3 #(1'b0)  NOR36413(NOR36413_out,   MP0_,           T03_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36414(NOR36414_out,   INOUT_,         T03_,           n0VDCA,         p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36415(A04_1_WY_,      NOR36414_out,   B15X,           n7XP19,         p4SW, reset, prop_clk);
    
    // n3XP2
    nor_3 #(1'b0)  NOR36416(n3XP2,          T03_,           TS0_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1B2
    nor_3 #(1'b0)  NOR36417(BR1B2,          BR1,            BR2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36418(BR1B2_,         BR1B2,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // BR12B
    nor_3 #(1'b0)  NOR36419(BR12B,          BR1_,           BR2,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36420(BR12B_,         BR12B,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // BRDIF_
    nor_3 #(1'b0)  NOR36421(BRDIF_,         BR1B2,          BR12B,          n0VDCA,         p4SW, reset, prop_clk);
    
    // BR1B2B
    nor_3 #(1'b0)  NOR36422(BR1B2B,         BR2,            BR1,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36423(BR1B2B_,        BR1B2B,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    nor_3 #(1'b0)  NOR36424(NOR36424_out,   BRDIF_,         TS0_,           T04_,           p4SW, reset, prop_clk);
    
    // WL_
    nor_3 #(1'b0)  NOR36425(NOR36425_out,   T04_,           BR1,            MP0_,           p4SW, reset, prop_clk);
    // Cross-module fan-in, connected to A5, A6 and A7
    nor_3 #(1'b0)  NOR36426(A04_1_WL_,      NOR36425_out,   NOR36427_out,   n6XP5,          p4SW, reset, prop_clk);
    
    // RC_ part 2
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36427(NOR36427_out,   MP0_,           BR1_,           T04_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36428(A04_2_RC_,      NOR36427_out,   n2XP5,          NOR36439_out,   p4SW, reset, prop_clk);
    
    // 4XP5
    nor_3 #(1'b0)  NOR36429(n4XP5,          TS0_,           T04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RB_ part 2
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36430(A04_2_RB_,      NOR36425_out,   n7XP19,         NOR36437_out,   p4SW, reset, prop_clk);
    
    // Various XPs
    nor_3 #(1'b0)  NOR36431(NOR36431_out,   DV1_,           T04_,           BR2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36432(n8XP5,          T08_,           DV1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36433(n4XP11,         T04_,           INOUT_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36434(n8XP6,          T08_,           DV1_,           BR2,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36435(NOR36435_out,   T04_,           MP3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36436(NOR36436_out,   TS0_,           T05_,           BR1B2_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36437(NOR36437_out,   T09_,           BR1,            MP0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36438(NOR36438_out,   T05_,           TS0_,           BR12B_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36439(NOR36439_out,   T09_,           MP0_,           BR1_,           p4SW, reset, prop_clk);
    
    // CI_
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36440(A04_1_CI_,      NOR36424_out,   NOR36444_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WY_ part 2
    // Cross-module fan-in, connected to A5 and A6
    nor_3 #(1'b0)  NOR36441(A04_2_WY_,      NOR36439_out,   n8XP5,          NOR36437_out,   p4SW, reset, prop_clk);
    
    // TSGN_ part 1
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR36442(A04_1_TSGN_,    n1XP10,         MP0T10,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Various crosspoints
    nor_3 #(1'b0)  NOR36443(B15X,           T05_,           DV1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36444(NOR36444_out,   MP0_,           T09_,           BRDIF_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36445(n5XP4,          T05_,           RSM3_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36446(NOR36446_out,   T09_,           MP3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR36447(n6XP5,          T06_,           DV1_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // KRPT
    nor_3 #(1'b0)  NOR36448(KRPT,           T09_,           RUPT1_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // TL15
    nor_3 #(1'b0)  NOR36449(TL15,           T06_,           MP3_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // MP0T10
    nor_3 #(1'b0)  NOR36450(MP0T10,         T10_,           MP0_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Crosspoint
    nor_3 #(1'b0)  NOR36451(NOR36451_out,   BR1_,           MP0_,           T11_,           p4SW, reset, prop_clk);
    
    // RB1
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0)  NOR36452(A04_1_RB1_,     NOR36436_out,   NOR36451_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // R1C
    nor_3 #(1'b0)  NOR36453(NOR36453_out,   NOR36451_out,   NOR36438_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR40435(NOR40435_out,   n7XP11,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign R1C_ = NOR36453_out & NOR40435_out;
    // NOR40435 moved here from A6
    
    // Moved here from A14 sheet 2
    nor_3 #(1'b0)  NOR42454(R1C,            R1C_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // TSGN part 2
    // Cross-module fan-in, connected to A5
    nor_3 #(1'b0)  NOR36454(A04_2_TSGN_,    NOR36431_out,   NOR36413_out,   NOR36456_out,   p4SW, reset, prop_clk);
    
    // TSGM2
    nor_3 #(1'b0)  NOR36455(TSGN2,          T07_,           MP0_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Crosspoint
    nor_3 #(1'b0)  NOR36456(NOR36456_out,   T07_,           DV1_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // 7XP19
    nor_3 #(1'b0)  NOR36457(n7XP19,         T07_,           BR1_,           MP3_,           p4SW, reset, prop_clk);
    
    // L16
    // Cross-module fan-in, connected to A11
    nor_3 #(1'b0)  NOR36460(A04_1_L16_,     NOR36451_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
endmodule
