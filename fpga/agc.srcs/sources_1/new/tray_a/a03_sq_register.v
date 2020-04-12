`timescale 1ns / 1ps
    
module a03_sq_register(
    input wire NISQ, 
    input wire NISQ_, 
    input wire PHS2_, 
    input wire CT_, 
    input wire WT_, 
    input wire RT_,
    input wire T01_, 
    input wire T02, 
    input wire T12_, 
    input wire WL10_, 
    input wire WL11_, 
    input wire WL12_, 
    input wire WL13_, 
    input wire WL14_, 
    input wire WL16_,
    input wire A15_, 
    input wire A16_,
    input wire ST0_, 
    input wire ST1_, 
    input wire ST3_,
    input wire BR2_, 
    input wire BR1B2B,
    input wire INKL, 
    input wire STD2, 
    input wire GOJAM, 
    input wire MTCSAI, 
    input wire INHPLS, 
    input wire RELPLS, 
    input wire KRPT,
    input wire EXT, 
    input wire EXTPLS,
    input wire RUPTOR_, 
    input wire MNHRPT, 
    input wire RXOR0,
    input wire n5XP4, 
    input wire RPTSET,
    
    output wire NISQL_,
    output wire RBSQ,
    output wire SQR10, 
    output wire SQR10_,  
    output wire SQR12_,
    output wire SQ0_,  
    output wire SQ1_, 
    output wire SQ2_, 
    output wire SQEXT,
    output wire SQEXT_,
    output wire QC0_, 
    output wire QC1_, 
    output wire QC2_, 
    output wire QC3_,
    output wire FUTEXT,
    output wire IIP, 
    output wire IIP_,
    output wire STRTFC,
    output wire MSQ10, 
    output wire MSQ11, 
    output wire MSQ12, 
    output wire MSQ13, 
    output wire MSQ14, 
    output wire MSQ16, 
    output wire MSQEXT,
    output wire MINHL, 
    output wire MIIP,
    
    output wire TC0, 
    output wire TC0_, 
    output wire TCF0, 
    output wire TS0, 
    output wire TS0_, 
    output wire DCS0, 
    output wire DCA0,
    output wire QXCH0_, 
    output wire DXCH0, 
    output wire DAS0, 
    output wire DAS0_,
    output wire INCR0, 
    output wire CCS0, 
    output wire CCS0_, 
    output wire DAS1, 
    output wire DAS1_, 
    output wire ADS0, 
    output wire AD0, 
    output wire SU0,
    output wire AUG0_, 
    output wire DIM0_, 
    output wire MSU0, 
    output wire MSU0_,
    output wire MP0, 
    output wire MP0_, 
    output wire MP1, 
    output wire MP1_, 
    output wire MP3,
    output wire MP3_, 
    output wire MP3A,
    output wire TCSAJ3, 
    output wire TCSAJ3_, 
    output wire RSM3, 
    output wire RSM3_, 
    output wire MASK0, 
    output wire MASK0_,
    output wire NDX0_, 
    output wire NDXX1_, 
    output wire GOJ1, 
    output wire GOJ1_,
    output wire IC1, 
    output wire IC2, 
    output wire IC2_, 
    output wire IC3, 
    output wire IC4, 
    output wire IC5, 
    output wire IC5_, 
    output wire IC6, 
    output wire IC7, 
    output wire IC8_, 
    output wire IC9, 
    output wire IC10, 
    output wire IC10_, 
    output wire IC11, 
    output wire IC11_, 
    output wire IC12, 
    output wire IC12_, 
    output wire IC13, 
    output wire IC14, 
    output wire IC15, 
    output wire IC15_, 
    output wire IC16, 
    output wire IC16_, 
    output wire IC17, 
    output wire EXST0_, 
    output wire EXST1_, 
    output wire MTCSA_,
    output wire A03_1_RPTSET, 
    output wire A03_2_RPTSET, 
    output wire A03_3_RPTSET,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
);
    
    /**************************
    *
    *  Module A3 sheet 1
    *  Sheet number 2005251/1
    *
    **************************/
    
    
    wire NOR30001_out;
    wire NOR30002_out;
    wire NOR30003_out;
    wire NOR30005_out;
    wire NOR30006_out;
    wire NOR30010_out;
    wire NOR30013_out;
    wire NOR30014_out;
    wire NOR30015_out;
    wire NOR30016_out;
    wire NOR30018_out;
    wire NOR30020_out;
    wire NOR30022_out;
    wire NOR30023_out;
    wire NOR30024_out;
    wire NOR30025_out;
    wire NOR30028_out;
    wire NOR30031_out;
    wire NOR30032_out;
    wire NOR30034_out;
    wire NOR30036_out;
    wire NOR30037_out;
    wire NOR30038_out;
    wire NOR30039_out;
    wire NOR30040_out;
    wire NOR30041_out;
    wire NOR30042_out;
    wire NOR30043_out;
    wire NOR30044_out;
    wire NOR30045_out;
    wire NOR30048_out;
    wire NOR30049_out;
    wire NOR30053_out;
    wire NOR30054_out;
    wire NOR30055_out;
    wire NOR30056_out;
    wire NOR30061_out;
    
    wire NOR30101_out;
    wire NOR30103_out;
    wire NOR30104_out;
    wire NOR30108_out;
    wire NOR30109_out;
    wire NOR30111_out;
    wire NOR30112_out;
    wire NOR30113_out;
    wire NOR30114_out;
    wire NOR30115_out;
    wire NOR30119_out;
    wire NOR30120_out;
    wire NOR30121_out;
    wire NOR30122_out;
    wire NOR30123_out;
    wire NOR30124_out;
    wire NOR30129_out;
    wire NOR30130_out;
    wire NOR30131_out;
    wire NOR30132_out;
    wire NOR30134_out;
    wire NOR30136_out;
    wire NOR30137_out;
    wire NOR30138_out;
    wire NOR30139_out;
    wire NOR30140_out;
    wire NOR30142_out;
    wire NOR30143_out;
    wire NOR30144_out;
    wire NOR30160_out;
    
    wire NOR49101_out;
    wire NOR49102_out;
    wire NOR49103_out;
    wire NOR49104_out;
    wire NOR49105_out;
    wire NOR49106_out;
    wire NOR49107_out;
    wire NOR49108_out;
    
    wire NOR32257_out;
    
    wire INKBT1;
    wire RPTFRC;
    wire OVNHRP;
    
    wire CSQG;
    wire WSQG_;

    wire SQ3_;
    wire SQ4_;
    wire SQ5_;
    wire SQ6_;
    wire SQ7_;

    wire SQR11;
    wire SQR12;
    wire SQR13;
    wire SQR14;
    wire SQR16;
    wire QC0;
    
    wire INHINT;

    // NISQL flip-flop
    nor_3 #(1'b1)  NOR30001(NOR30001_out,   NISQ,           NOR30002_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30002(NOR30002_out,   NOR30001_out,   INKBT1,         STRTFC,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30003(NOR30003_out,   T12_,           NOR30001_out,   RPTFRC,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30004(NISQL_,         NOR30002_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30005(NOR30005_out,   STRTFC,         NOR30003_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR30006(NOR30006_out,   NOR30003_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Sequence register
    
    // Sequence register clear, read, and write signals
    nor_3 #(1'b0)  NOR30007(CSQG,           T12_,           NOR30005_out,   CT_,            p4SW, reset, prop_clk);
    // NOR30008 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30009(RBSQ,           RT_,            NOR30006_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30010(NOR30010_out,   NOR30006_out,   WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR30011(WSQG_,          NOR30010_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30012 removed (fan-out expansion)
    
    // Sequence register input from write lines
    nor_3 #(1'b0)  NOR30013(NOR30013_out,   WL16_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30014(NOR30014_out,   WL14_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30015(NOR30015_out,   WL13_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // Sequence register flip-flops 
    nor_3 #(1'b1)  NOR30016(NOR30016_out,   NOR30013_out,   SQR16,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30017(SQR16,          NOR30016_out,   RPTFRC,         CSQG,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR30018(NOR30018_out,   NOR30014_out,   SQR14,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30019(SQR14,          NOR30018_out,   RPTFRC,         CSQG,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR30020(NOR30020_out,   NOR30015_out,   SQR13,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30021(SQR13,          NOR30020_out,   RPTFRC,         CSQG,           p4SW, reset, prop_clk);
    
    // Sequence register monitor signals
    nor_3 #(1'b0)  NOR30022(NOR30022_out,   NOR30016_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ16 = NOR30022_out;
    
    // Moved here from below
    nor_3 #(1'b0)  NOR30025(NOR30025_out,   NOR30018_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ14 = NOR30025_out;
    
    // Moved here from below
    nor_3 #(1'b0)  NOR30028(NOR30028_out,   NOR30020_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ13 = NOR30028_out;
    
    // Sequence register decoding
    nor_3 #(1'b0)  NOR30023(NOR30023_out,   NOR30016_out,   INKL,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR30024(NOR30024_out,   SQR16,          INKL,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR30026 removed (fan-out expansion)
    // NOR30027 removed (not used)
    // NOR30029 removed (not used)
    // NOR30030 removed (not used)
    nor_3 #(1'b0)  NOR30031(NOR30031_out,   NOR30023_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30032(NOR30032_out,   NOR30024_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30033 removed (not used)
    nor_3 #(1'b0)  NOR30034(NOR30034_out,   NOR30018_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30035 removed (not used)
    nor_3 #(1'b0)  NOR30036(NOR30036_out,   NOR30020_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR30037(NOR30037_out,   NOR30036_out,   NOR30034_out,   NOR30032_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30038(NOR30038_out,   NOR30020_out,   NOR30034_out,   NOR30032_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30039(NOR30039_out,   NOR30020_out,   NOR30034_out,   NOR30031_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30040(NOR30040_out,   NOR30036_out,   NOR30018_out,   NOR30032_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30041(NOR30041_out,   NOR30020_out,   NOR30018_out,   NOR30032_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30042(NOR30042_out,   NOR30036_out,   NOR30034_out,   NOR30031_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30043(NOR30043_out,   NOR30036_out,   NOR30018_out,   NOR30031_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30044(NOR30044_out,   NOR30020_out,   NOR30018_out,   NOR30031_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30045(SQ0_,           NOR30037_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30046 removed (fan-out expansion)
    // NOR30047 removed (not connected)
    nor_3 #(1'b0)  NOR30048(SQ1_,           NOR30038_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30049(SQ2_,           NOR30040_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30050 removed (fan-out expansion)
    // NOR30051 removed (fan-out expansion)
    // NOR30052 removed (not used)
    nor_3 #(1'b0)  NOR30053(SQ3_,           NOR30041_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30054(SQ4_,           NOR30042_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Moved here from sheet 2
    nor_3 #(1'b0)  NOR30310(SQ5_,           NOR30039_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30312 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30055(SQ6_,           NOR30043_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30056(SQ7_,           NOR30044_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR30057 removed (moved to A13)
    // NOR30058 removed (moved to A13)
    // NOR30059 removed (moved to A13)
    // NOR30060 removed (not connected)
    
    // INKBT1
    nor_3 #(1'b0)  NOR30061(NOR30061_out,   INKL,           T01_,           n0VDCA,         p4SW, reset, prop_clk);
    // Moved here from A21 sheet 2
    nor_3 #(1'b0)  NOR32257(NOR32257_out,   STD2,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign INKBT1 = NOR30061_out & NOR32257_out;
    
    // Extend bit
    
    // STRTFC
    nor_3 #(1'b0)  NOR30101(NOR30101_out,   GOJAM,          MTCSAI,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30107(STRTFC,         NOR30101_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR30102 removed (not used)
    
    nor_3 #(1'b0)  NOR30108(NOR30108_out,   NISQL_,         T12_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // FUTEXT flip-flop
    nor_3 #(1'b1)  NOR30109(NOR30109_out,   EXTPLS,         EXT,            FUTEXT,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30110(FUTEXT,         NOR30109_out,   INKBT1,         STRTFC,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30113(NOR30113_out,   STRTFC,         NOR30108_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30114(NOR30114_out,   NOR30113_out,   NOR30109_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30115(NOR30115_out,   NOR30113_out,   FUTEXT,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Extend bit flip-flop
    nor_3 #(1'b1)  NOR30119(NOR30119_out,   RPTFRC,         NOR30114_out,   NOR30120_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30120(NOR30120_out,   NOR30119_out,   NOR30115_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Extend bit signals
    nor_3 #(1'b0)  NOR30123(NOR30123_out,   NOR30119_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQEXT = NOR30123_out;
    nor_3 #(1'b1)  NOR30124(SQEXT_,         NOR30120_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30125 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30160(SQEXT,          NOR30119_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30161 removed (fan-out expansion)
    
    // Interupt inhibition logic
    
    // INHINT flip-flop
    nor_3 #(1'b1)  NOR30103(NOR30103_out,   INHPLS,         INHINT,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30104(INHINT,         NOR30103_out,   RELPLS,         GOJAM,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30111(NOR30111_out,   NOR30103_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MINHL = NOR30111_out;
    
    // Interrupt in progress flip-flop
    nor_3 #(1'b1)  NOR30105(IIP_,           KRPT,           IIP,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30106(IIP,            IIP_,           GOJAM,          n5XP4,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30112(NOR30112_out,   IIP_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MIIP = NOR30112_out;
    
    // OVNHRP
    // Moved here from module A24 sheet 1
    nor_3 #(1'b0)  NOR49101(NOR49101_out,   A16_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49102(NOR49102_out,   A15_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49103(NOR49103_out,   NOR49101_out,   A15_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49104(NOR49104_out,   A16_,           NOR49102_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49105(NOR49105_out,   NOR49103_out,   NOR49104_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49106(NOR49106_out,   NOR49105_out,   NISQ_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49107(NOR49107_out,   NOR49103_out,   NOR49104_out,   NISQ_,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49108(NOR49108_out,   NOR49106_out,   OVNHRP,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49109(OVNHRP,         NOR49108_out,   NOR49107_out,   MP3,            p4SW, reset, prop_clk);
    
    // RPTSET
    // Cross-module fan-in, connected to A6
    nor_3 #(1'b0)  NOR30116(A03_1_RPTSET,   FUTEXT,         NISQL_,         T12_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30117(A03_2_RPTSET,   PHS2_,          RUPTOR_,        MNHRPT,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30118(A03_3_RPTSET,   OVNHRP,         INHINT,         IIP,            p4SW, reset, prop_clk);
    
    // RPTFRC flip-flop
    nor_3 #(1'b1)  NOR30121(NOR30121_out,   RPTSET,         NOR30122_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30122(NOR30122_out,   NOR30121_out,   STRTFC,         T02,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30127(RPTFRC,         NOR30121_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30128 removed (fan-out expansion)
    
    // Quarter Code register, channel/interupt instruction bit
    
    // Quarter Code register input from write lines
    nor_3 #(1'b0)  NOR30129(NOR30129_out,   WL12_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30130(NOR30130_out,   WL11_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30131(NOR30131_out,   WL10_,          WSQG_,          n0VDCA,         p4SW, reset, prop_clk);
    
    // Quarter Code register flip-flops
    nor_3 #(1'b1)  NOR30132(NOR30132_out,   RPTFRC,         NOR30129_out,   SQR12,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30133(SQR12,          NOR30132_out,   CSQG,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30157(SQR12_,         SQR12,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR30134(NOR30134_out,   RPTFRC,         NOR30130_out,   SQR11,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30135(SQR11,          NOR30134_out,   CSQG,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR30136(NOR30136_out,   RPTFRC,         NOR30131_out,   SQR10,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30137(NOR30137_out,   NOR30136_out,   CSQG,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Quarter Code register monitor signals
    nor_3 #(1'b0)  NOR30138(NOR30138_out,   NOR30132_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ12 = NOR30138_out;
    
    nor_3 #(1'b0)  NOR30139(NOR30139_out,   NOR30134_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ11 = NOR30139_out;
    
    nor_3 #(1'b0)  NOR30140(NOR30140_out,   NOR30136_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MSQ10 = NOR30140_out;
    
    // Quarter Code register decoding
    nor_3 #(1'b0)  NOR30141(QC0,            SQR11,          SQR12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30142(NOR30142_out,   NOR30134_out,   SQR12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30143(NOR30143_out,   SQR11,          NOR30132_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30144(NOR30144_out,   NOR30132_out,   NOR30134_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30145(QC0_,           QC0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30146 removed (fan-out expansion)
    // NOR30147 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR30148(QC1_,           NOR30142_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30149 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR30151(QC2_,           NOR30143_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30152(QC3_,           NOR30144_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30153 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR30154(SQR10,          NOR30136_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30155 removed (not used)
    nor_3 #(1'b0)  NOR30156(SQR10_,         NOR30137_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A3 sheet 2
    *  Sheet number 2005251/2
    *
    **************************/
    
    wire NOR30301_out;
    wire NOR30302_out;
    wire NOR30304_out;
    wire NOR30314_out;
    wire NOR30315_out;
    wire NOR30331_out;
    wire NOR30332_out;
    wire NOR30335_out;
    wire NOR30336_out;
    wire NOR30337_out;
    wire NOR30340_out;
    wire NOR30344_out;
    wire NOR30347_out;
    wire NOR30360_out;
    
    wire NOR30407_out;
    wire NOR30408_out;
    wire NOR30417_out;
    wire NOR30418_out;
    wire NOR30438_out;
    wire NOR30455_out;
    
    wire NOR30419_in;
    
    wire SQ5QC0_;
    wire IC3_;
    wire IC4_;
    wire IC9_;
    wire IC13_;
    wire NEXST0;
    wire NEXST0_;
    wire QXCH0;
    wire LXCH0;
    wire BZF0;
    wire BZF0_;
    wire BMF0;
    wire BMF0_;
    wire AUG0;
    wire DIM0;
    wire NDX0;
    wire NDXX1;
    
    
    
    nor_3 #(1'b0)  NOR30301(NOR30301_out,   SQ5_,           QC0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30302(NOR30302_out,   SQ5_,           SQEXT_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30303(SQ5QC0_,        NOR30301_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30304(NOR30304_out,   NOR30301_out,   NOR30302_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30305(IC1,            NOR30304_out,   ST0_,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR30306 removed (not used)
    nor_3 #(1'b0)  NOR30307(IC2,            NOR30304_out,   ST1_,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR30308 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30309(IC2_,           IC2,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30311 removed (not used)
    nor_3 #(1'b0)  NOR30360(NOR30360_out,   SQEXT_,         QC0,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30313(IC11,           SQ6_,           NOR30360_out,   ST0_,           p4SW, reset, prop_clk);
    // Moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49419(IC11_,          IC11,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30314(NOR30314_out,   SQEXT_,         ST1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30315(NOR30315_out,   NOR30314_out,   NEXST0,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30316(EXST1_,         NOR30314_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30317(IC6,            NOR30315_out,   SQ3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30318(IC7,            NOR30315_out,   SQ4_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30319(TC0,            SQ0_,           NEXST0_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30320(TCF0,           SQ1_,           NEXST0_,        QC0,            p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30321(NEXST0,         SQEXT,          ST0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30322(TC0_,           TC0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30323(IC3_,           TC0,            STD2,           TCF0,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR30324(NEXST0_,        NEXST0,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30325 removed (fan-out expansion)
    // NOR30361 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30326(IC3,            IC3_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30327(DCS0,           SQ4_,           EXST0_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30328(DCA0,           EXST0_,         SQ3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30329(IC4_,           DCS0,           DCA0,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30330(IC4,            IC4_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30331(NOR30331_out,   IC7,            IC6,            IC11,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30332(NOR30332_out,   IC1,            DCS0,           DCA0,           p4SW, reset, prop_clk);
    // Single source signal, no cross-module fan-in
    assign IC13_ = NOR30331_out & NOR30332_out;
    nor_3 #(1'b0)  NOR30333(IC13,           IC13_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR30334 removed (not used)
    nor_3 #(1'b0)  NOR30335(NOR30335_out,   QC1_,           ST1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30336(NOR30336_out,   QC3_,           ST0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30337(NOR30337_out,   NOR30335_out,   NOR30336_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30338(IC5,            NOR30337_out,   SQ5_,           SQEXT,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30339(IC5_,           IC5,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30340(NOR30340_out,   IC5,            TS0,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30344(NOR30344_out,   QXCH0,          LXCH0,          n0VDCA,         p4SW, reset, prop_clk);
    assign IC9_ = NOR30340_out & NOR30344_out;
    
    nor_3 #(1'b0)  NOR30345(IC9,            IC9_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30341(LXCH0,          NEXST0_,        QC1_,           SQ2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30342(QXCH0,          SQ2_,           QC1_,           EXST0_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30343(QXCH0_,         QXCH0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30346(IC8_,           DXCH0,          LXCH0,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30347(NOR30347_out,   ST0_,           SQEXT_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30348(TS0,            SQ5_,           QC2_,           NEXST0_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30349(EXST0_,         NOR30347_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30350(TS0_,           TS0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30351 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30352(DXCH0,          SQ5_,           NEXST0_,        QC1_,           p4SW, reset, prop_clk);
    // NOR30353 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30354(DAS0,           SQ2_,           NEXST0_,        QC0_,           p4SW, reset, prop_clk);
    // NOR30355 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30356(IC10_,          IC4,            DXCH0,          DAS0,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30357(IC10,           IC10_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30401(DAS0_,          DAS0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30402 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR30403(BZF0,           SQ1_,           QC0,            EXST0_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30404(BZF0_,          BZF0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30405(BMF0,           EXST0_,         QC0,            SQ6_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30406(BMF0_,          BMF0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30407(NOR30407_out,   BZF0_,          BR2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30408(NOR30408_out,   BMF0_,          BR1B2B,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30409(IC16_,          NOR30407_out,   NOR30408_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30410(IC15_,          BMF0,           BZF0,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30411(IC16,           IC16_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30412(IC17,           IC16,           IC15_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30413(IC15,           IC15_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR30414 removed (not used)
    nor_3 #(1'b0)  NOR30415(CCS0,           SQ1_,           QC0_,           NEXST0_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30416(CCS0_,          CCS0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30458 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR30417(NOR30417_out,   SQ2_,           QC0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30418(NOR30418_out,   SQEXT,          ST1_,           n0VDCA,         p4SW, reset, prop_clk);
    assign NOR30419_in = NOR30417_out & NOR30418_out;
    nor_3 #(1'b0)  NOR30419(DAS1_,          NOR30417_out,   ADS0,           n0VDCA,         p4SW, reset, prop_clk);
    // NOR30420 omitted (fan-out expansion)
    nor_3 #(1'b0)  NOR30421(DAS1,           DAS1_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30422(IC12_,          CCS0,           MSU0,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30423(IC12,           IC12_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30424(ADS0,           SQ2_,           QC3_,           NEXST0_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30425(INCR0,          QC2_,           SQ2_,           NEXST0_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30426(MSU0,           SQ2_,           EXST0_,         QC0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30427(MSU0_,          MSU0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30428(AUG0,           SQ2_,           EXST0_,         QC2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30429(AUG0_,          AUG0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30430(DIM0,           SQ2_,           EXST0_,         QC3_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30431(DIM0_,          DIM0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30432(MP3,            ST3_,           SQ7_,           SQEXT_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30433(MP3_,           MP3,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30434 removed (fan-out expansion)
    // NOR36108 moved here from A4 sheet 1
    nor_3 #(1'b0)  NOR36108(MP3A,           MP3_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30435(MP1,            ST1_,           SQEXT_,         SQ7_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30436(MP1_,           MP1,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30437(MP0,            ST0_,           SQEXT_,         SQ7_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30439(MP0_,           MP0,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30440 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR30441(TCSAJ3,         SQ0_,           SQEXT,          ST3_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30442(TCSAJ3_,        TCSAJ3,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30438(NOR30438_out,   TCSAJ3,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MTCSA_ = NOR30438_out;
    
    nor_3 #(1'b0)  NOR30443(RSM3,           ST3_,           SQ5QC0_,        SQEXT,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30444(RSM3_,          RSM3,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30445(SU0,            SQ6_,           EXST0_,         QC0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30446(MASK0,          SQ7_,           NEXST0_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30447(MASK0_,         MASK0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30448(AD0,            NEXST0_,        SQ6_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30449(NDX0,           NEXST0_,        SQ5_,           QC0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30450(NDX0_,          NDX0,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30451(NDXX1,          SQEXT_,         SQ5_,           ST1_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30452(NDXX1_,         NDXX1,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30453(GOJ1,           SQEXT,          ST1_,           SQ0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30454(GOJ1_,          GOJ1,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR30455(NOR30455_out,   MASK0,          MP0,            RXOR0,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30456(IC14,           NOR30455_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR30457 removed (fan-out expansion)
    
endmodule
