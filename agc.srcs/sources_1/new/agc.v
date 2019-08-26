`timescale 1ns / 1ps

module agc(CLOCK, CLK, SIM_CLK);
    input wire CLOCK, SIM_CLK;
    output wire CLK;
    
    // A1
    reg RCHAT_ = 1;
    reg RCHBT_ = 1;
    
    wire FS02, FS02A, F02A, F02B,
        FS03, FS03A, F03A, F03B, F03B_,
        FS04, FS04A, F04A, F04B, F04B_,
        FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
        FS06, FS06_, F06A, F06B, F06B_,
        FS07, FS07_, FS07A, F07A, F07A_, F07B, F07B_, F07C_, F07D_,
        FS08, FS08_, F08A, F08B, F08B_,
        FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_,
        FS10, F10A, F10A_, F10B, F10B_,
        FS11, F11A, F11B,
        FS12, F12A, F12B,
        FS13, F13A, F13B,
        FS14, F14A, F14B,
        FS15, F15A, F15B,
        FS16, F16A, F16B,
        FS17, F17A, F17A_, F17B, F17B_,
        FS18, F18A, F18A_, F18B, F18B_, F18AX,
        FS19, F19A, F19B,
        FS20, F20A, F20B,
        FS21, F21A, F21B,
        FS22, F22A, F22B,
        FS23, F23A, F23B,
        FS24, F24A, F24B,
        FS25, F25A, F25B,
        FS26, F26A, F26B,
        FS27, F27A, F27B,
        FS28, F28A, F28B,
        FS29, F29A, F29B,
        FS30, F30A, F30B,
        FS31, F31A, F31B,
        FS32, F32A, F32B,
        FS33, F33A, F33B, 
        CHAT01, CHAT02, CHAT03, CHAT04, CHAT05, CHAT06, CHAT07, 
        CHAT08, CHAT09, CHAT10, CHAT11, CHAT12, CHAT13, CHAT14,
        CHBT01, CHBT02, CHBT03, CHBT04, CHBT05, CHBT06, CHBT07,
        CHBT08, CHBT09, CHBT10, CHBT11, CHBT12, CHBT13, CHBT14;
        
    // A2
    reg SBY = 0;
    reg ALGA = 0;
    reg MSTRTP = 0;
    reg STRT1 = 0;
    reg STRT2 = 0;
    reg GOJ1 = 0;
    reg MSTP = 0;
    
    wire PHS2, PHS2_, PHS3_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A;
    wire RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    wire F01A, F01B, F01C, F01D, FS01, FS01_;
    wire SB0, SB0_, SB1, SB1_, SB2, SB2_, SB4, EDSET;
    wire STOPA, GOJAM, GOJAM_, STOP, STOP_, TIMR;
    wire MSTPIT_, MGOJAM;
    reg WL01_ = 1;
    reg WL02_ = 1;
    reg WL03_ = 1;
    reg WL04_ = 1;
    reg WL05_ = 1;
    reg WL06_ = 1;
    reg WL07_ = 1;
    reg WL08_ = 1;
    reg WL09_ = 1;
    reg WL10_ = 1;
    reg WL11_ = 1;
    reg WL12_ = 1;
    reg WL13_ = 1;
    reg WL14_ = 1;
    reg WL15 = 0;
    reg WL15_ = 1;
    reg WL16 = 0;
    reg WL16_ = 1;
    wire T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_;
    wire T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_;
    wire T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_;
    wire MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET;
    wire UNF, UNF_, OVF, OVF_;
    
    // A3
    wire NISQ, NISQ_; 
    wire INKL, DBLTST;
    wire MTCSAI, INHPLS, RELPLS, KRPT, n5XP4, EXT, EXTPLS;
    wire RUPTOR_, MNHRPT;
    wire A15_, A16_, MP3;
    wire  QC0_, QC1_, QC2_, QC3_;
    wire SQ0_,  SQ1_, SQ2_, SQ3_, SQ4_, SQ5_, SQ6_, SQ7_, SQEXT_;
    wire MSQ10, MSQ11, MSQ12, MSQ13, MSQ14, MSQ16, MSQEXT;
    wire MINHL, MIIP;
    
    // A4
    reg SUMA16_ = 1; 
    reg SUMB16_ = 1;
    reg DVST = 0;
    reg RSTSTG = 0;
    reg STRTFC = 0;
    reg TRSM = 0;
    reg XT1_ = 0;
    reg XB7_ = 0;
    reg NDR100_ = 0;
    reg L15_ = 1;
    reg GEQZRO_ = 1;
    reg TPZG_ = 1;
    reg TSGN2 = 0;
    reg TMZ_ = 1;
    reg ST1 = 0;
    reg ST2 = 0;
    wire DIV_;
    reg TSGU_ = 1;
    reg TOV_ = 1;
    reg TL15 = 0;
    reg TSGN_ = 1;
    wire ST376, ST376_;
    wire DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764;
    wire ST0_, ST1_, STD2, ST3_, ST4_, ST1376_;
    wire MST1, MST2;
    wire SGUM;
    wire BR1, BR1_, MBR1, BR2, BR2_, MBR2;
    wire BR1B2B;
    wire RXOR0;
    
    a1_scaler a1(
        FS01_, RCHAT_, RCHBT_,
        FS02, FS02A, F02A, F02B,
        FS03, FS03A, F03A, F03B, F03B_,
        FS04, FS04A, F04A, F04B, F04B_,
        FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
        FS06, FS06_, F06A, F06B, F06B_,
        FS07, FS07_, FS07A, F07A, F07A_, F07B, F07B_, F07C_, F07D_,
        FS08, FS08_, F08A, F08B, F08B_,
        FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_,
        FS10, F10A, F10A_, F10B, F10B_,
        FS11, F11A, F11B,
        FS12, F12A, F12B,
        FS13, F13A, F13B,
        FS14, F14A, F14B,
        FS15, F15A, F15B,
        FS16, F16A, F16B,
        FS17, F17A, F17A_, F17B, F17B_,
        FS18, F18A, F18A_, F18B, F18B_, F18AX,
        FS19, F19A, F19B,
        FS20, F20A, F20B,
        FS21, F21A, F21B,
        FS22, F22A, F22B,
        FS23, F23A, F23B,
        FS24, F24A, F24B,
        FS25, F25A, F25B,
        FS26, F26A, F26B,
        FS27, F27A, F27B,
        FS28, F28A, F28B,
        FS29, F29A, F29B,
        FS30, F30A, F30B,
        FS31, F31A, F31B,
        FS32, F32A, F32B,
        FS33, F33A, F33B, 
        CHAT01, CHAT02, CHAT03, CHAT04, CHAT05, CHAT06, CHAT07, 
        CHAT08, CHAT09, CHAT10, CHAT11, CHAT12, CHAT13, CHAT14,
        CHBT01, CHBT02, CHBT03, CHBT04, CHBT05, CHBT06, CHBT07,
        CHBT08, CHBT09, CHBT10, CHBT11, CHBT12, CHBT13, CHBT14,
        SIM_CLK
    );

    a2_timer a2(
        CLOCK,
        CLK, PHS2, PHS2_, PHS3_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        F01A, F01B, F01C, F01D, FS01, FS01_,
        SB0, SB0_, SB1, SB1_, SB2, SB2_, SB4, EDSET,
        SBY, ALGA, MSTRTP, STRT1, STRT2, GOJ1, MSTP,
        STOPA, GOJAM, GOJAM_, STOP, STOP_, TIMR,
        MSTPIT_, MGOJAM,
        WL15, WL15_, WL16, WL16_,
        T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_,
        T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_,
        T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_,
        MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET,
        UNF, UNF_, OVF, OVF_,
        SIM_CLK
    );
   
    a3_sq_register a3(
        NISQ, NISQ_, 
        PHS2_, 
        CT_, WT_, RT_,
        T01_, T02, T12_, 
        FS09, FS10, 
        WL10_, WL11_, WL12_, WL13_, WL14_, WL16_,
        A15_, A16_,
        ST0_, ST1_, ST3_,
        BR2_, BR1B2B,
        INKL, STD2, 
        GOJAM, MTCSAI, 
        INHPLS, RELPLS, KRPT,
        EXT, EXTPLS,
        RUPTOR_, MNHRPT, 
        RXOR0,
        n5XP4, 
        DBLTST,
        
        SQ0_,  SQ1_, SQ2_, SQ3_, SQ4_, SQ5_, SQ6_, SQ7_, SQEXT_,
        QC0_, QC1_, QC2_, QC3_,
        MSQ10, MSQ11, MSQ12, MSQ13, MSQ14, MSQ16, MSQEXT,
        MINHL, MIIP,
        
        SIM_CLK
    );
    
    a4_stage_branch a4(
        PHS2_, PHS3_, PHS4, PHS4_, T01, T03_, T12_,
        SUMA16_, SUMB16_,
        WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_, WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL15_, WL16_,
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
        UNF_, L15_,
        TSGU_, TOV_, TL15, TSGN_,
        GEQZRO_, OVF_,
        TPZG_, TSGN2, TMZ_,
        DIV_,
        ST376, ST376_,
        DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764,
        ST0_, ST1_, STD2, ST3_, ST4_, ST1376_,
        MST1, MST2,
        SGUM,
        BR1, BR1_, MBR1, BR2, BR2_, MBR2,
        SIM_CLK
    );
    
endmodule
