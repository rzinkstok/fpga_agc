`timescale 1ns / 1ps

module a21_counter_cell_ii(
    input wire C24A,
    input wire C25A,
    input wire C26A,
    input wire C27A,
    input wire C30A,
    input wire C31A,
    input wire C32A,
    input wire C33A,
    input wire C34A,
    input wire C35A,
    input wire C36A,
    input wire C37A,
    input wire C40A,
    input wire C41A,
    input wire C50A,
    input wire C51A,
    input wire C52A,
    input wire C53A,
    input wire C54A,
    input wire C55A,
    
    input wire C32P,
    input wire C32M,
    input wire C33P,
    input wire C33M,
    input wire C34P,
    input wire C34M,
    input wire C35P,
    input wire C35M,
    input wire C36P,
    input wire C36M,
    input wire C37P,
    input wire C37M,
    input wire C40P,
    input wire C40M,
    input wire C41P,
    input wire C41M,
    
    input wire RSCT_,
    input wire T01,
    input wire T02_,
    input wire T07_,
    input wire T10_,
    input wire T11_,
    input wire T12,
    input wire T12_,
    input wire T12A,
    input wire FS17,
    
    input wire GOJAM,
    
    input wire PSEUDO,
    input wire CT,
    input wire PHS2_,
    input wire PHS3_,
    input wire PHS4_,
    input wire NISQL_,
    input wire ST0_,
    input wire ST1_,
    input wire MLOAD,
    input wire MREAD,
    input wire MLDCH,
    input wire MRDCH,
    input wire MNHNC,
    input wire DOSCAL,
    
    input wire OCTAD5,
    input wire XB0,
    input wire XB5,
    input wire XB6,
    
    input wire CA4_,
    input wire CA6_,
    input wire CXB2_,
    input wire CXB3_,
    input wire CXB4_,
    input wire CXB7_,
    
    input wire CG13,
    input wire CG23,
    
    input wire BMAGXP,
    input wire BMAGXM,
    input wire BMAGYP,
    input wire BMAGYM,
    input wire BMAGZP,
    input wire BMAGZM,
    input wire EMSD,
    input wire OTLNKM,
    input wire ALTM,
    input wire INLNKP,
    input wire INLNKM,
    input wire RNRADP,
    input wire RNRADM,
    input wire GYROD,
    
    input wire RQ,
    
    output wire CAD1,
    output wire CAD2,
    output wire CAD3,
    output wire CAD4,
    output wire CAD5,
    output wire CAD6,

    output wire SHINC_,
    output wire SHANC_,
    output wire DINC,
    output wire DINC_,
    output wire SHIFT,
    output wire SHIFT_,
    output wire PINC,
    output wire MINC,
    output wire PCDU,
    output wire MCDU,

    output wire FETCH0,
    output wire FETCH0_,
    output wire FETCH1,
    output wire STORE1_,
    output wire STFET1_,
    
    output wire MON_,
    output wire CHINC,
    output wire CHINC_,
    output wire INOTLD,
    output wire MREQIN,
    output wire MONpCH,
    output wire INKL,
    output wire INKL_,
    output wire MINKL,
    output wire SCAS17,
    output wire RSSB,
    output wire BKTF_,
    output wire CTROR,
    
    output wire CA5_,
    output wire CXB0_,
    output wire CXB5_,
    output wire CXB6_,
    
    output wire CG26,
    output wire C45R,
    
    output wire RQ_,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    
    /**************************
    *
    *  Module A21 sheet 1
    *  Sheet number 2005250/1
    *
    **************************/
    
    wire NOR32001_out;
    wire NOR32002_out;
    wire NOR32003_out;
    wire NOR32004_out;
    wire NOR32005_out;
    wire NOR32006_out;
    wire NOR32007_out;
    wire NOR32011_out;
    wire NOR32012_out;
    wire NOR32013_out;
    wire NOR32014_out;
    wire NOR32015_out;
    wire NOR32016_out;
    wire NOR32021_out;
    wire NOR32022_out;
    wire NOR32023_out;
    wire NOR32024_out;
    wire NOR32026_out;
    wire NOR32031_out;
    wire NOR32032_out;
    wire NOR32033_out;
    wire NOR32034_out;
    wire NOR32035_out;
    wire NOR32036_out;
    wire NOR32041_out;
    wire NOR32042_out;
    wire NOR32043_out;
    wire NOR32044_out;
    wire NOR32049_out;
    wire NOR32053_out;
    wire NOR32054_out;
    wire NOR32055_out;
    wire NOR32056_out;
    wire NOR32058_out;
    wire NOR32062_out;
    wire NOR32064_out;
    wire NOR32067_out;
    wire NOR32068_out;
    wire NOR32069_out;
    
    wire NOR35236_out;
    wire NOR35237_out;
    wire NOR35238_out;
    wire NOR35241_out;
    wire NOR35242_out;
    wire NOR35243_out;
    wire NOR35246_out;
    wire NOR35247_out;
    wire NOR35248_out;
    
    wire NOR39250_out;
    wire NOR39251_out;
    wire NOR39252_out;
    wire NOR39253_out;
    wire NOR39254_out;
    
    wire nCAD1_in;
    wire nCAD2_in;
    wire nCAD3_in;
    wire nCAD5_in;
    wire nCAD6_in;
    
    wire n32004K;
    wire n32034K;
    wire n30SUM;
    wire n50SUM;
    
    wire C42A;
    wire C42P;
    wire C42M;
    
    wire C43A;
    wire C43P;
    wire C43M;
    
    wire C44A;
    wire C44P;
    wire C44M;
    
    wire C45A;
    wire C45P;
    wire C45M;
    
    wire C46A;
    wire C46P;
    wire C46M;
    
    wire C47A;
    
    wire C56A;
    wire C57A;
    wire C60A;

    wire INCSET_;
    wire nSHINCSET_;
    wire nSHANCSET_;
    wire nDINCSET_;
    wire DINCNC_;
    wire nPINCSET_;
    wire nMINCSET_;
    wire nPCDUSET_;
    wire nMCDUSET_;
    wire PCDU_;
    wire MCDU_;
    wire PINC_;
    wire MINC_;
    wire SHINC;
    wire SHANC;
    
    // CAD1
    nor_3 #(1'b0)  NOR32001(NOR32001_out,   C25A,           C27A,           C31A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32011(NOR32011_out,   C33A,           C35A,           C37A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32021(NOR32021_out,   C41A,           C43A,           C45A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32031(NOR32031_out,   C47A,           C51A,           C53A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32041(NOR32041_out,   C55A,           C57A,           n0VDCA,         p4SW, reset, prop_clk);
    assign nCAD1_in = NOR32001_out & NOR32011_out & NOR32021_out & NOR32031_out & NOR32041_out;
    nor_3 #(1'b0)  NOR32051(CAD1,           RSCT_,          nCAD1_in,       n0VDCA,         p4SW, reset, prop_clk);
    
    // CAD2
    nor_3 #(1'b0)  NOR32002(NOR32002_out,   C26A,           C27A,           C32A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32012(NOR32012_out,   C33A,           C36A,           C37A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32022(NOR32022_out,   C42A,           C43A,           C46A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32032(NOR32032_out,   C47A,           C52A,           C53A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32042(NOR32042_out,   C56A,           C57A,           n0VDCA,         p4SW, reset, prop_clk);
    assign nCAD2_in = NOR32002_out & NOR32012_out & NOR32022_out & NOR32032_out & NOR32042_out;
    nor_3 #(1'b0)  NOR32052(CAD2,           RSCT_,          nCAD2_in,       n0VDCA,         p4SW, reset, prop_clk);
    
    // CAD3
    nor_3 #(1'b0)  NOR32003(NOR32003_out,   C24A,           C25A,           C26A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32013(NOR32013_out,   C27A,           C34A,           C35A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32023(NOR32023_out,   C36A,           C37A,           C44A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32033(NOR32033_out,   C45A,           C46A,           C47A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32043(NOR32043_out,   C54A,           C55A,           C56A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32053(NOR32053_out,   C57A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign nCAD3_in = NOR32003_out & NOR32013_out & NOR32023_out & NOR32033_out & NOR32043_out & NOR32053_out;
    nor_3 #(1'b0)  NOR32063(CAD3,           RSCT_,          nCAD3_in,       n0VDCA,         p4SW, reset, prop_clk);
    
    // CAD4
    nor_3 #(1'b0)  NOR32004(NOR32004_out,   C30A,           C31A,           C32A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32014(NOR32014_out,   C33A,           C34A,           C35A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32024(NOR32024_out,   C36A,           C37A,           n0VDCA,         p4SW, reset, prop_clk);
    assign n32004K = NOR32004_out & NOR32014_out & NOR32024_out;
    nor_3 #(1'b0)  NOR32064(n30SUM,         n32004K,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32034(NOR32034_out,   C50A,           C51A,           C52A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32044(NOR32044_out,   C53A,           C54A,           C55A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32054(NOR32054_out,   C56A,           C57A,           n0VDCA,         p4SW, reset, prop_clk);
    assign n32034K = NOR32034_out & NOR32044_out & NOR32054_out;
    nor_3 #(1'b0)  NOR32050(n50SUM,         n32034K,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32007(NOR32007_out,   n30SUM,         n50SUM,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32008(CAD4,           RSCT_,          NOR32007_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // CAD5
    nor_3 #(1'b0)  NOR32005(NOR32005_out,   C24A,           C25A,           C26A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32015(NOR32015_out,   C27A,           n30SUM,         C60A,           p4SW, reset, prop_clk);
    // NOR32025 removed (no inputs)
    assign nCAD5_in = NOR32005_out & NOR32015_out;
    nor_3 #(1'b0)  NOR32035(CAD5,           RSCT_,          nCAD5_in,       n0VDCA,         p4SW, reset, prop_clk);
    
    // CAD6
    nor_3 #(1'b0)  NOR32006(NOR32006_out,   C40A,           C41A,           C42A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32016(NOR32016_out,   C43A,           C44A,           C45A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32026(NOR32026_out,   C46A,           C47A,           n50SUM,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32036(NOR32036_out,   C60A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign nCAD6_in = NOR32006_out & NOR32016_out & NOR32026_out & NOR32036_out;
    nor_3 #(1'b0)  NOR32046(CAD6,           RSCT_,          nCAD6_in,       n0VDCA,         p4SW, reset, prop_clk);
    
    // SHINC
    nor_3 #(1'b0)  NOR32055(NOR32055_out,   C45M,           C46M,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32056(NOR32056_out,   C57A,           C60A,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR32057 removed (no inputs)
    assign nSHINCSET_ = NOR32055_out & NOR32056_out;
    nor_3 #(1'b0)  NOR32058(NOR32058_out,   INCSET_,        nSHINCSET_,     n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32059(SHINC_,         NOR32058_out,   SHINC,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32060(SHINC,          SHINC_,         T12A,           n0VDCA,         p4SW, reset, prop_clk);
    
    // SHANC
    nor_3 #(1'b0)  NOR32061(nSHANCSET_,     C45P,           C46P,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32062(NOR32062_out,   INCSET_,        nSHANCSET_,     n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32065(SHANC_,         NOR32062_out,   SHANC,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32066(SHANC,          SHANC_,         T12A,           n0VDCA,         p4SW, reset, prop_clk);
    
    // SHIFT (moved here from A12 sheet 2)
    nor_3 #(1'b0)  NOR34340(SHIFT_,         SHINC,          SHANC,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34362(SHIFT,          SHIFT_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DINC
    nor_3 #(1'b0)  NOR32067(NOR32067_out,   C31A,           C47A,           C50A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32068(NOR32068_out,   C51A,           C52A,           C53A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32069(NOR32069_out,   C54A,           C55A,           C56A,           p4SW, reset, prop_clk);
    assign nDINCSET_ = NOR32067_out & NOR32068_out & NOR32069_out;
    nor_3 #(1'b0)  NOR32049(NOR32049_out,   INCSET_,        nDINCSET_,      n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32048(DINCNC_,        NOR32049_out,   DINC,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32047(DINC,           DINCNC_,        T12A,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32045(DINC_,          DINC,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // PINC (moved here from A5 sheet 1)
    nor_3 #(1'b0)  NOR39250(NOR39250_out,   C24A,           C25A,           C26A,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39251(NOR39251_out,   C27A,           C30A,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39252(NOR39252_out,   C37P,           C40P,           C41P,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39253(NOR39253_out,   C42P,           C43P,           C44P,           p4SW, reset, prop_clk);
    assign nPINCSET_ = NOR39250_out & NOR39251_out & NOR39252_out & NOR39253_out;
    
    nor_3 #(1'b0)  NOR39254(NOR39254_out,   INCSET_,        nPINCSET_,      n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39255(PINC_,          NOR39254_out,   PINC,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39256(PINC,           PINC_,          T12,            n0VDCA,         p4SW, reset, prop_clk);
    
    // MINC (moved here from A15 sheet 1)
    nor_3 #(1'b0)  NOR35237(NOR35237_out,   C42M,           C43M,           C44M,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35236(NOR35236_out,   C37M,           C40M,           C41M,           p4SW, reset, prop_clk);
    assign nMINCSET_ = NOR35237_out & NOR35236_out;
    nor_3 #(1'b0)  NOR35238(NOR35238_out,   INCSET_,        nMINCSET_,      n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR35239(MINC_,          NOR35238_out,   MINC,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35240(MINC,           MINC_,          T12A,           n0VDCA,         p4SW, reset, prop_clk);
    
    // PCDU (moved here from A15 sheet 1);
    nor_3 #(1'b0)  NOR35241(NOR35241_out,   C32P,           C33P,           C34P,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35242(NOR35242_out,   C35P,           C36P,           n0VDCA,         p4SW, reset, prop_clk);
    assign nPCDUSET_ = NOR35241_out & NOR35242_out;
    nor_3 #(1'b0)  NOR35243(NOR35243_out,   INCSET_,        nPCDUSET_,      n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR35244(PCDU_,          NOR35243_out,   PCDU,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35245(PCDU,           PCDU_,          T12A,           n0VDCA,         p4SW, reset, prop_clk);
    
    // MCDU (moved here from A15 sheet 1);
    nor_3 #(1'b0)  NOR35246(NOR35246_out,   C32M,           C33M,           C34M,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35247(NOR35247_out,   C35M,           C36M,           n0VDCA,         p4SW, reset, prop_clk);
    assign nMCDUSET_ = NOR35246_out & NOR35247_out;
    nor_3 #(1'b0)  NOR35248(NOR35248_out,   INCSET_,        nMCDUSET_,      n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR35249(MCDU_,          NOR35248_out,   MCDU,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR35250(MCDU,           MCDU_,          T12A,           n0VDCA,         p4SW, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A21 sheet 2
    *  Sheet number 2005250/2
    *
    **************************/
    
    wire NOR32201_out;
    wire NOR32202_out;
    wire NOR32203_out;
    wire NOR32204_out;
    wire NOR32205_out;
    wire NOR32206_out;
    wire NOR32207_out;
    wire NOR32211_out;
    wire NOR32212_out;
    wire NOR32213_out;
    wire NOR32214_out;
    wire NOR32218_out;
    wire NOR32220_out;
    wire NOR32221_out;
    wire NOR32222_out;
    wire NOR32224_out;
    wire NOR32225_out;
    wire NOR32226_out;
    wire NOR32228_out;
    wire NOR32229_out;
    wire NOR32232_out;
    wire NOR32233_out;
    wire NOR32234_out;
    wire NOR32235_out;
    wire NOR32236_out;
    wire NOR32237_out;
    wire NOR32238_out;
    wire NOR32239_out;
    wire NOR32240_out;
    wire NOR32241_out;
    wire NOR32242_out;
    wire NOR32243_out;
    wire NOR32244_out;
    wire NOR32245_out;
    wire NOR32246_out;
    wire NOR32249_out;
    wire NOR32250_out;
    wire NOR32259_out;
    
    wire NOR39248_out;
    
    wire NOR32203_in;
    wire NOR32230_in;
    wire NOR32237_in;
    wire NOR32244_in;
    
    wire GNHNC;
    wire STORE1;
    wire INOTRD;
    wire CTROR_;
    
    
    // GNHNC flip-flop (moved here from A05 sheet 1
    nor_3 #(1'b1)  NOR39248(NOR39248_out,   GOJAM,          GNHNC,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR39249(GNHNC,          NOR39248_out,   T01,            n0VDCA,         p4SW, reset, prop_clk);
    
    
    nor_3 #(1'b0)  NOR32201(NOR32201_out,   T12_,           PHS4_,          NISQL_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32202(NOR32202_out,   GNHNC,          PSEUDO,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR32203_in = NOR32201_out & NOR32202_out;
    nor_3 #(1'b0)  NOR32203(NOR32203_out,   NOR32203_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MLOAD
    nor_3 #(1'b0)  NOR32204(NOR32204_out,   MLOAD,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32205(NOR32205_out,   NOR32203_out,   NOR32204_out,   NOR32238_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32206(NOR32206_out,   NOR32205_out,   NOR32207_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32207(NOR32207_out,   NOR32206_out,   GOJAM,          NOR32218_out,   p4SW, reset, prop_clk);
    
    // STORE1
    nor_3 #(1'b0)  NOR32208(STORE1,         ST1_,           NOR32206_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32209(STORE1_,        STORE1,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // MREAD
    nor_3 #(1'b0)  NOR32211(NOR32211_out,   MREAD,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32212(NOR32212_out,   NOR32203_out,   NOR32211_out,   NOR32238_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32213(NOR32213_out,   NOR32212_out,   NOR32214_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32214(NOR32214_out,   NOR32213_out,   GOJAM,          NOR32218_out,   p4SW, reset, prop_clk);
    
    // FETCH1
    nor_3 #(1'b0)  NOR32216(FETCH1,         ST1_,           NOR32213_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // STFET1_
    nor_3 #(1'b0)  NOR32210(STFET1_,        STORE1,         FETCH1,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MON
    nor_3 #(1'b0)  NOR32215(MON_,           NOR32207_out,   NOR32214_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // FETCH0
    nor_3 #(1'b0)  NOR32217(FETCH0,         ST0_,           MON_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32219(FETCH0_,        FETCH0,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32218(NOR32218_out,   MON_,           NOR32234_out,   ST1_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32259(NOR32259_out,   FETCH1,         STORE1,         CHINC,          p4SW, reset, prop_clk);
    
    // INOTLD
    nor_3 #(1'b0)  NOR32220(NOR32220_out,   MLDCH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32221(NOR32221_out,   NOR32203_out,   NOR32220_out,   NOR32238_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32222(NOR32222_out,   NOR32221_out,   INOTLD,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32223(INOTLD,         NOR32222_out,   NOR32233_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // INOTRD
    nor_3 #(1'b0)  NOR32224(NOR32224_out,   MRDCH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32225(NOR32225_out,   NOR32203_out,   NOR32224_out,   NOR32238_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32226(NOR32226_out,   NOR32225_out,   INOTRD,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32227(INOTRD,         NOR32226_out,   NOR32233_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32228(NOR32228_out,   NOR32207_out,   NOR32214_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32229(NOR32229_out,   INOTLD,         INOTRD,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR32230_in = NOR32228_out & NOR32229_out;
    
    nor_3 #(1'b0)  NOR32230(MREQIN,         NOR32230_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32231(MONpCH,         NOR32230_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32232(NOR32232_out,   NOR32259_out,   T11_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32233(NOR32233_out,   T12_,           CT,             PHS2_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32234(NOR32234_out,   NOR32233_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32235(NOR32235_out,   MLDCH,          MRDCH,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32236(NOR32236_out,   MREAD,          MLOAD,          n0VDCA,         p4SW, reset, prop_clk);
    assign NOR32237_in = NOR32235_out & NOR32236_out;
    
    nor_3 #(1'b0)  NOR32237(NOR32237_out,   PHS2_,          NOR32237_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32238(NOR32238_out,   NOR32237_out,   NOR32239_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32239(NOR32239_out,   NOR32238_out,   GOJAM,          NOR32232_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32240(NOR32240_out,   NOR32203_out,   MNHNC,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32241(NOR32241_out,   NOR32239_out,   CTROR_,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR32244_in = NOR32240_out & NOR32241_out;
    
    nor_3 #(1'b0)  NOR32242(NOR32242_out,   CTROR_,         NOR32239_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32243(NOR32243_out,   NOR32242_out,   T12_,           PHS3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR32244(NOR32244_out,   NOR32244_in,    NOR32245_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32245(NOR32245_out,   NOR32244_out,   NOR32243_out,   GOJAM,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32246(NOR32246_out,   T02_,           NOR32244_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32247(INCSET_,        NOR32246_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32248 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32249(NOR32249_out,   NOR32245_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32250(NOR32250_out,   MONpCH,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign INKL_ = NOR32249_out & NOR32250_out;
    nor_3 #(1'b0)  NOR32251(INKL,           INKL_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32252 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR32253(MINKL,          INKL_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32254(RSSB,           NOR32244_out,   T07_,           PHS3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR32255(BKTF_,          T10_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32256(CHINC_,         INOTLD,         INOTRD,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32257 removed (moved to A3 sheet 1
    nor_3 #(1'b0)  NOR32258(SCAS17,         FS17,           DOSCAL,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A21 sheet 3
    *  Sheet number 2005250/3
    *
    **************************/
    
    wire NOR32501_out;
    wire NOR32502_out;
    wire NOR32503_out;
    wire NOR32504_out;
    wire NOR32505_out;
    wire NOR32506_out;
    wire NOR32507_out;
    wire NOR32509_out;
    wire NOR32510_out;
    wire NOR32511_out;
    wire NOR32515_out;
    wire NOR32516_out;
    wire NOR32517_out;
    wire NOR32518_out;
    wire NOR32519_out;
    wire NOR32520_out;
    wire NOR32522_out;
    wire NOR32524_out;
    wire NOR32525_out;
    wire NOR32529_out;
    wire NOR32530_out;
    wire NOR32531_out;
    wire NOR32532_out;
    wire NOR32533_out;
    wire NOR32536_out;
    wire NOR32537_out;
    wire NOR32538_out;
    wire NOR32539_out;
    wire NOR32540_out;
    wire NOR32543_out;
    wire NOR32544_out;
    wire NOR32545_out;
    wire NOR32546_out;
    wire NOR32547_out;
    wire NOR32548_out;
    wire NOR32549_out;
    wire NOR32550_out;
    wire NOR32551_out;
    
    wire NOR32601_out;
    wire NOR32602_out;
    wire NOR32603_out;
    wire NOR32604_out;
    wire NOR32605_out;
    wire NOR32606_out;
    wire NOR32607_out;
    wire NOR32609_out;
    wire NOR32610_out;
    wire NOR32611_out;
    wire NOR32615_out;
    wire NOR32616_out;
    wire NOR32617_out;
    wire NOR32618_out;
    wire NOR32619_out;
    wire NOR32620_out;
    wire NOR32622_out;
    wire NOR32624_out;
    wire NOR32625_out;
    wire NOR32629_out;
    wire NOR32630_out;
    wire NOR32631_out;
    wire NOR32632_out;
    wire NOR32633_out;
    wire NOR32636_out;
    wire NOR32637_out;
    wire NOR32638_out;
    wire NOR32643_out;
    wire NOR32644_out;
    wire NOR32645_out;
    wire NOR32646_out;
    wire NOR32647_out;
    wire NOR32650_out;
    
    wire C42R;
    wire C43R;
    wire C44R;
    wire C46R;
    wire C47R;
    wire C56R;
    wire C57R;
    wire C60R;
    
    wire CG15;
    wire CG16;
    
    
    nor_3 #(1'b0)  NOR32501(NOR32501_out,   BKTF_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Counter 42
    nor_3 #(1'b1)  NOR32502(NOR32502_out,   BMAGXP,         NOR32503_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32503(NOR32503_out,   NOR32502_out,   C42R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32504(NOR32504_out,   NOR32503_out,   NOR32510_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32505(NOR32505_out,   NOR32501_out,   NOR32504_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32506(NOR32506_out,   NOR32505_out,   NOR32507_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32507(NOR32507_out,   NOR32506_out,   C42R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32508(C42A,           CG13,           NOR32506_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32509(NOR32509_out,   BMAGXM,         NOR32510_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32510(NOR32510_out,   NOR32509_out,   C42R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32511(NOR32511_out,   RSSB,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32512(C42R,           NOR32511_out,   CA4_,           CXB2_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32513(C42P,           NOR32502_out,   CA4_,           CXB2_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32514(C42M,           NOR32509_out,   CA4_,           CXB2_,          p4SW, reset, prop_clk);
    
    // Counter 43
    nor_3 #(1'b1)  NOR32515(NOR32515_out,   BMAGYP,         NOR32516_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32516(NOR32516_out,   NOR32515_out,   C43R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32517(NOR32517_out,   NOR32516_out,   NOR32525_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32518(NOR32518_out,   NOR32501_out,   NOR32517_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32519(NOR32519_out,   NOR32518_out,   NOR32520_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32520(NOR32520_out,   NOR32519_out,   C43R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32521(C43A,           CG13,           NOR32507_out,   NOR32519_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32522(NOR32522_out,   CG13,           NOR32520_out,   NOR32507_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32523(CG15,           NOR32522_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32524(NOR32524_out,   BMAGYM,         NOR32525_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32525(NOR32525_out,   NOR32524_out,   C43R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32526(C43R,           NOR32511_out,   CA4_,           CXB3_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32527(C43P,           NOR32515_out,   CA4_,           CXB3_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32528(C43M,           NOR32524_out,   CA4_,           CXB3_,          p4SW, reset, prop_clk);
    
    // Counter 56
    nor_3 #(1'b1)  NOR32529(NOR32529_out,   EMSD,           NOR32530_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32530(NOR32530_out,   NOR32529_out,   C56R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32531(NOR32531_out,   NOR32501_out,   NOR32529_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32532(NOR32532_out,   NOR32531_out,   NOR32533_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32533(NOR32533_out,   NOR32532_out,   C56R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32534(C56A,           NOR32532_out,   CG23,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32535(C56R,           NOR32511_out,   CA5_,           CXB6_,          p4SW, reset, prop_clk);
    
    // Counter 57
    nor_3 #(1'b1)  NOR32536(NOR32536_out,   OTLNKM,         NOR32537_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32537(NOR32537_out,   NOR32536_out,   C57R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32538(NOR32538_out,   NOR32501_out,   NOR32536_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32539(NOR32539_out,   NOR32538_out,   NOR32540_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32540(NOR32540_out,   NOR32539_out,   C57R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32541(C57A,           CG23,           NOR32539_out,   NOR32533_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32542(C57R,           NOR32511_out,   CA5_,           CXB7_,          p4SW, reset, prop_clk);
    
    // Counter 60
    nor_3 #(1'b1)  NOR32543(NOR32543_out,   ALTM,           NOR32544_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32544(NOR32544_out,   NOR32543_out,   C60R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32545(NOR32545_out,   NOR32501_out,   NOR32543_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32546(NOR32546_out,   NOR32545_out,   NOR32547_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32547(NOR32547_out,   NOR32546_out,   C60R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32548(NOR32548_out,   CG23,           NOR32533_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32549(NOR32549_out,   NOR32540_out,   NOR32546_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign C60A = NOR32548_out & NOR32549_out;
    nor_3 #(1'b0)  NOR32550(NOR32550_out,   CG23,           NOR32533_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32551(NOR32551_out,   NOR32540_out,   NOR32547_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign CTROR_ = NOR32550_out & NOR32551_out;
    nor_3 #(1'b0)  NOR32552(CTROR,          CTROR_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32553(C60R,           NOR32511_out,   CA6_,           CXB0_,          p4SW, reset, prop_clk);
    
    // Addressing
    
    nor_3 #(1'b0)  NOR32554(CA5_,           OCTAD5,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32555 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32556(CXB5_,          XB5,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32557 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32558(CHINC,          CHINC_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32559 removed (not connected)
    
    
    nor_3 #(1'b0)  NOR32601(NOR32601_out,   BKTF_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Counter 44
    nor_3 #(1'b1)  NOR32602(NOR32602_out,   BMAGZP,         NOR32603_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32603(NOR32603_out,   NOR32602_out,   C44R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32604(NOR32604_out,   NOR32603_out,   NOR32610_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32605(NOR32605_out,   NOR32601_out,   NOR32604_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32606(NOR32606_out,   NOR32605_out,   NOR32607_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32607(NOR32607_out,   NOR32606_out,   C44R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32608(C44A,           CG15,           NOR32606_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32609(NOR32609_out,   BMAGZM,         NOR32610_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32610(NOR32610_out,   NOR32609_out,   C44R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32611(NOR32611_out,   RSSB,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32612(C44R,           NOR32611_out,   CA4_,           CXB4_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32613(C44P,           NOR32602_out,   CA4_,           CXB4_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32614(C44M,           NOR32609_out,   CA4_,           CXB4_,          p4SW, reset, prop_clk);
    
    // Counter 45
    nor_3 #(1'b1)  NOR32615(NOR32615_out,   INLNKP,         NOR32616_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32616(NOR32616_out,   NOR32615_out,   C45R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32617(NOR32617_out,   NOR32616_out,   NOR32625_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32618(NOR32618_out,   NOR32601_out,   NOR32617_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32619(NOR32619_out,   NOR32618_out,   NOR32620_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32620(NOR32620_out,   NOR32619_out,   C45R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32621(C45A,           CG15,           NOR32607_out,   NOR32619_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32622(NOR32622_out,   CG15,           NOR32620_out,   NOR32607_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32623(CG16,           NOR32622_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32624(NOR32624_out,   INLNKM,         NOR32625_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32625(NOR32625_out,   NOR32624_out,   C45R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32626(C45R,           NOR32611_out,   CA4_,           CXB5_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32627(C45P,           NOR32615_out,   CA4_,           CXB5_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32628(C45M,           NOR32624_out,   CA4_,           CXB5_,          p4SW, reset, prop_clk);
   
    // Counter 46
    nor_3 #(1'b1)  NOR32629(NOR32629_out,   RNRADP,         NOR32630_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32630(NOR32630_out,   NOR32629_out,   C46R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32631(NOR32631_out,   NOR32601_out,   NOR32638_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32632(NOR32632_out,   NOR32631_out,   NOR32633_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32633(NOR32633_out,   NOR32632_out,   C46R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32634(C46A,           NOR32632_out,   CG16,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32635(C46R,           NOR32611_out,   CA4_,           CXB6_,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32636(NOR32636_out,   RNRADM,         NOR32637_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32637(NOR32637_out,   NOR32636_out,   C46R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32638(NOR32638_out,   NOR32630_out,   NOR32637_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32639(C46P,           NOR32629_out,   CA4_,           CXB6_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32640(C46M,           CXB6_,          CA4_,           NOR32636_out,   p4SW, reset, prop_clk);
    // NOR32641 removed (not connected)
    // NOR32642 removed (not used)
    
    // Counter 47
    nor_3 #(1'b1)  NOR32643(NOR32643_out,   GYROD,          NOR32644_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32644(NOR32644_out,   NOR32643_out,   C47R,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32645(NOR32645_out,   NOR32601_out,   NOR32643_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR32646(NOR32646_out,   NOR32645_out,   NOR32647_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32647(NOR32647_out,   NOR32646_out,   C47R,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR32648 removed (not connected)
    nor_3 #(1'b0)  NOR32649(C47A,           CG16,           NOR32646_out,   NOR32633_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32650(NOR32650_out,   CG16,           NOR32647_out,   NOR32633_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32652(CG26,           NOR32650_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR32653(C47R,           NOR32611_out,   CA4_,           CXB6_,          p4SW, reset, prop_clk);
    
    // Addressing
    // NOR32651 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32654(CXB0_,          XB0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32655 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32656(CXB6_,          XB6,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32657 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR32658(RQ_,            RQ,             n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR32659 removed (not connected)

endmodule
