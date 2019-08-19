`timescale 1ns / 1ps
    
module a3_sq_register(
    NISQ, NISQ_, FS09, FS10, T01_, T02, T12_, CT_, WT_, RT_, INKL, STD2, DBLTST,
    GOJAM, MTCSAI, INHPLS, RELPLS, KRPT, n5XP4, EXT, EXTPLS,
    RUPTOR_, MNHRPT, PHS2_,
    WL10_, WL11_, WL12_, WL13_, WL14_, WL16_,
    A15_, A16_, MP3,
    SIM_CLK
);
    input wire SIM_CLK;
    
    /**************************
    *
    *  Module A3 sheet 1
    *  Sheet number 2005251/1
    *
    **************************/
    
    input wire NISQ, NISQ_, FS09, FS10, T01_, T02, T12_, CT_, WT_, RT_, INKL, STD2, DBLTST;
    input wire GOJAM, MTCSAI, INHPLS, RELPLS, KRPT, n5XP4, EXT, EXTPLS;
    input wire RUPTOR_, MNHRPT, PHS2_;
    input wire WL10_, WL11_, WL12_, WL13_, WL14_, WL16_;
    input wire A15_, A16_, MP3;
    
    wire INKBT1;
    wire STRTFC;
    wire RPTFRC;
    wire NISQL_;
    wire IIP;
    wire IIP_;
    wire FUTEXT;
    wire OVNHRP;
    
    wire CSQG;
    wire RBSQ;
    wire WSQG_;
    
    wire SQR10, SQR10_, SQR11, SQR12, SQR12_, SQR13, SQR14, SQR16;
    wire SQ0_, SQ1_, SQ2_, SQ3_, SQ4_, SQ5, SQ6_, SQ7_, SQEXT, SQEXT_;
    wire QC0, QC0_, QC1_, QC2_, QC3_;
    wire MSQ16, MSQ14, MSQ13, MSQ12, MSQ11, MSQ10, MSQEXT, MINHL, MIIP;
    
    wire CON1, CON2, SCAS10;
    
    wire INHINT;
    wire RPTSET;
    
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
    wire NOR30116_out;
    wire NOR30117_out;
    wire NOR30118_out;
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
    
    
    
    // NISQL flip-flop
    nor_2 #(1'b1) NOR30001(NOR30001_out,    NISQ,           NOR30002_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR30002(NOR30002_out,    NOR30001_out,   INKBT1,         STRTFC,         SIM_CLK);
    nor_3 #(1'b0) NOR30003(NOR30003_out,    T12_,           NOR30001_out,   RPTFRC,         SIM_CLK);
    nor_1 #(1'b0) NOR30004(NISQL_,          NOR30002_out,                                   SIM_CLK);
    
    nor_2 #(1'b0) NOR30005(NOR30005_out,    STRTFC,         NOR30003_out,                   SIM_CLK);
    nor_1 #(1'b1) NOR30006(NOR30006_out,    NOR30003_out,                                   SIM_CLK);
    
    //
    // Sequence register
    /////////////////////////////////
    
    // Sequence register clear, read, and write signals
    nor_3 #(1'b0) NOR30007(CSQG,            T12_,           NOR30005_out,   CT_,            SIM_CLK);
    //nor_3 #(1'b0) NOR30008(CSQG,          T12_,           NOR30005_out,   CT_,            SIM_CLK);
    nor_2 #(1'b0) NOR30009(RBSQ,            RT_,            NOR30006_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR30010(NOR30010_out,    NOR30006_out,   WT_,                            SIM_CLK);
    nor_1 #(1'b1) NOR30011(WSQG_,           NOR30010_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30012(WSQG_,         NOR30010_out,                                   SIM_CLK);
    
    // Sequence register input from write lines
    nor_2 #(1'b0) NOR30013(NOR30013_out,    WL16_,          WSQG_,                          SIM_CLK);
    nor_2 #(1'b0) NOR30014(NOR30014_out,    WL14_,          WSQG_,                          SIM_CLK);
    nor_2 #(1'b0) NOR30015(NOR30015_out,    WL13_,          WSQG_,                          SIM_CLK);
    
    // Sequence register flip-flops 
    nor_2 #(1'b1) NOR30016(NOR30016_out,    NOR30013_out,   SQR16,                          SIM_CLK);
    nor_3 #(1'b0) NOR30017(SQR16,           NOR30016_out,   RPTFRC,         CSQG,           SIM_CLK);
    
    nor_2 #(1'b1) NOR30018(NOR30018_out,    NOR30014_out,   SQR14,                          SIM_CLK);
    nor_3 #(1'b0) NOR30019(SQR14,           NOR30018_out,   RPTFRC,         CSQG,           SIM_CLK);
    
    nor_2 #(1'b1) NOR30020(NOR30020_out,    NOR30015_out,   SQR13,                          SIM_CLK);
    nor_3 #(1'b0) NOR30021(SQR13,           NOR30020_out,   RPTFRC,         CSQG,           SIM_CLK);
    
    // Sequence register monitor signals
    nor_1 #(1'b0) NOR30022(NOR30022_out,    NOR30016_out,                                   SIM_CLK);
    assign MSQ16 = NOR30022_out;
    
    // Moved here from below
    nor_1 #(1'b0) NOR30025(NOR30025_out,    NOR30018_out,                                   SIM_CLK);
    assign MSQ14 = NOR30025_out;
    
    // Moved here from below
    nor_1 #(1'b0) NOR30028(NOR30028_out,    NOR30020_out,                                   SIM_CLK);
    assign MSQ13 = NOR30028_out;
    
    // Sequence register decoding
    nor_2 #(1'b0) NOR30023(NOR30023_out,    NOR30016_out,   INKL,                           SIM_CLK);
    nor_2 #(1'b1) NOR30024(NOR30024_out,    SQR16,          INKL,                           SIM_CLK);
    // NOR30025 moved above
    // NOR30026 omitted, expansion gate for NOR30018
    // NOR30027 not found in schematics
    // NOR30028 moved above   
    // NOR30029 not found in schematics
    // NOR30030 not found in schematics
    nor_1 #(1'b0) NOR30031(NOR30031_out,    NOR30023_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30032(NOR30032_out,    NOR30024_out,                                   SIM_CLK);
    // NOR30033 not found in schematics
    nor_1 #(1'b0) NOR30034(NOR30034_out,    NOR30018_out,                                   SIM_CLK);
    // NOR30035 not found in schematics
    nor_1 #(1'b0) NOR30036(NOR30036_out,    NOR30020_out,                                   SIM_CLK);
    
    nor_3 #(1'b1) NOR30037(NOR30037_out,    NOR30036_out,   NOR30034_out,   NOR30032_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30038(NOR30038_out,    NOR30020_out,   NOR30034_out,   NOR30032_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30039(SQ5,             NOR30020_out,   NOR30034_out,   NOR30031_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30040(NOR30040_out,    NOR30036_out,   NOR30018_out,   NOR30032_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30041(NOR30041_out,    NOR30020_out,   NOR30018_out,   NOR30032_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30042(NOR30042_out,    NOR30036_out,   NOR30034_out,   NOR30031_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30043(NOR30043_out,    NOR30036_out,   NOR30018_out,   NOR30031_out,   SIM_CLK);
    nor_3 #(1'b0) NOR30044(NOR30044_out,    NOR30020_out,   NOR30018_out,   NOR30031_out,   SIM_CLK);
    
    nor_1 #(1'b0) NOR30045(SQ0_,            NOR30037_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30046(SQ0_,          NOR30037_out,                                   SIM_CLK);
    // NOR30047 not connected
    nor_1 #(1'b0) NOR30048(SQ1_,            NOR30038_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30049(SQ2_,            NOR30040_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30050(SQ2_,          NOR30040_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30051(SQ2_,          NOR30040_out,                                   SIM_CLK);
    // NOR30052 not found in schematics
    nor_1 #(1'b0) NOR30053(SQ3_,            NOR30041_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30054(SQ4_,            NOR30042_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30055(SQ6_,            NOR30043_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30056(SQ7_,            NOR30044_out,                                   SIM_CLK);
    
    // SCAS10 generation
    // These next 3 gates are probably better moved to another module
    nor_2 #(1'b0) NOR30057(CON1,            DBLTST,         1'b0,                           SIM_CLK);
    nor_2 #(1'b0) NOR30058(CON2,            CON1,           FS09,                           SIM_CLK);
    nor_2 #(1'b0) NOR30059(SCAS10,          CON2,           FS10,                           SIM_CLK);
    // NOR30060 not connected
    
    // INKBT1 signal
    // Combined with NOR32257 from A21 sheet 2
    nor_3 #(1'b0) NOR30061(INKBT1,          INKL,           T01_,           STD2,           SIM_CLK);
    
    // Gates 30062-30100 not used
    
    //
    // Extend bit
    /////////////////////////////////////////////
    
    // STRTFC
    nor_2 #(1'b0) NOR30101(NOR30101_out,    GOJAM,          MTCSAI,                         SIM_CLK);
    nor_1 #(1'b0) NOR30107(STRTFC,          NOR30101_out,                                   SIM_CLK);
    
    // NOR30102 not used
    
    nor_2 #(1'b0) NOR30108(NOR30108_out,    NISQL_,         T12_,                           SIM_CLK);
    
    // FUTEXT flip-flop
    nor_3 #(1'b1) NOR30109(NOR30109_out,    EXTPLS,         EXT,            FUTEXT,         SIM_CLK);
    nor_3 #(1'b0) NOR30110(FUTEXT,          NOR30109_out,   INKBT1,         STRTFC,         SIM_CLK);
    
    nor_2 #(1'b0) NOR30113(NOR30113_out,    STRTFC,         NOR30108_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR30114(NOR30114_out,    NOR30113_out,   NOR30109_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR30115(NOR30115_out,    NOR30113_out,   FUTEXT,                         SIM_CLK);
    
    // Extend bit flip-flop
    nor_3 #(1'b1) NOR30119(NOR30119_out,    RPTFRC,         NOR30114_out,   NOR30120_out,   SIM_CLK);
    nor_2 #(1'b0) NOR30120(NOR30120_out,    NOR30119_out,   NOR30115_out,                   SIM_CLK);
    
    // Extend bit signals
    nor_1 #(1'b0) NOR30123(NOR30123_out,    NOR30119_out,                                   SIM_CLK);
    assign MSQEXT = NOR30123_out;
    nor_1 #(1'b1) NOR30124(SQEXT_,          NOR30120_out,                                   SIM_CLK);
    //nor_1 #(1'b1) NOR30125(SQEXT_,        NOR30120_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30160(SQEXT,           NOR30119_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30161(SQEXT,         NOR30119_out,                                   SIM_CLK);
    
    //
    // Interupt inhibition logic
    /////////////////////////////////////////////////////////////
    
    // INHINT flip-flop
    nor_2 #(1'b1) NOR30103(NOR30103_out,    INHPLS,         INHINT,                         SIM_CLK);
    nor_3 #(1'b0) NOR30104(INHINT,          NOR30103_out,   RELPLS,         GOJAM,          SIM_CLK);
    nor_1 #(1'b0) NOR30111(NOR30111_out,    NOR30103_out,                                   SIM_CLK);
    assign MINHL = NOR30111_out;
    
    // Interrupt in progress flip-flop
    nor_2 #(1'b1) NOR30105(IIP_,            KRPT,           IIP,                            SIM_CLK);
    nor_3 #(1'b0) NOR30106(IIP,             IIP_,           GOJAM,          n5XP4,          SIM_CLK);
    nor_1 #(1'b0) NOR30112(NOR30112_out,    IIP_,                                           SIM_CLK);
    assign MIIP = NOR30112_out;
    
    // OVNHRP
    // Moved here from module A24 sheet 1
    nor_1 #(1'b0) NOR49101(NOR49101_out,    A16_,                                           SIM_CLK);
    nor_1 #(1'b0) NOR49102(NOR49102_out,    A15_,                                           SIM_CLK);
    nor_2 #(1'b0) NOR49103(NOR49103_out,    NOR49101_out,   A15_,                           SIM_CLK);
    nor_2 #(1'b0) NOR49104(NOR49104_out,    A16_,           NOR49102_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR49105(NOR49105_out,    NOR49103_out,   NOR49104_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR49106(NOR49106_out,    NOR49105_out,   NISQ_,                          SIM_CLK);
    nor_3 #(1'b0) NOR49107(NOR49107_out,    NOR49103_out,   NOR49104_out,   NISQ_,          SIM_CLK);
    nor_2 #(1'b1) NOR49108(NOR49108_out,    NOR49106_out,   OVNHRP,                         SIM_CLK);
    nor_3 #(1'b0) NOR49109(OVNHRP,          NOR49108_out,   NOR49107_out,   MP3,            SIM_CLK);
    
    // RPTSET
    nor_3 #(1'b0) NOR30116(NOR30116_out,    FUTEXT,         NISQL_,         T12_,           SIM_CLK);
    nor_3 #(1'b0) NOR30117(NOR30117_out,    PHS2_,          RUPTOR_,        MNHRPT,         SIM_CLK);
    nor_3 #(1'b0) NOR30118(NOR30118_out,    OVNHRP,         INHINT,         IIP,            SIM_CLK);
    assign RPTSET = NOR30116_out & NOR30117_out & NOR30118_out;
    
    // RPTFRC flip-flop
    nor_2 #(1'b1) NOR30121(NOR30121_out,    RPTSET,         NOR30122_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR30122(NOR30122_out,    STRTFC,         T02,                            SIM_CLK);
    nor_1 #(1'b0) NOR30127(RPTFRC,          NOR30121_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30128(RPTFRC,        NOR30121_out,                                   SIM_CLK);
    
    //
    // Quarter Code register, channel/interupt instruction bit
    /////////////////////////////////////////////////////////////////////////
    
    // Quarter Code register input from write lines
    nor_2 #(1'b0) NOR30129(NOR30129_out,    WL12_,          WSQG_,                          SIM_CLK);
    nor_2 #(1'b0) NOR30130(NOR30130_out,    WL11_,          WSQG_,                          SIM_CLK);
    nor_2 #(1'b0) NOR30131(NOR30131_out,    WL10_,          WSQG_,                          SIM_CLK);
    
    // Quarter Code register flip-flops
    nor_3 #(1'b1) NOR30132(NOR30132_out,    RPTFRC,         NOR30129_out,   SQR12,          SIM_CLK);
    nor_2 #(1'b0) NOR30133(SQR12,           NOR30132_out,   CSQG,                           SIM_CLK);
    nor_1 #(1'b0) NOR30157(SQR12_,          SQR12,                                          SIM_CLK);
    
    nor_3 #(1'b1) NOR30134(NOR30134_out,    RPTFRC,         NOR30130_out,   SQR12,          SIM_CLK);
    nor_2 #(1'b0) NOR30135(SQR11,           NOR30134_out,   CSQG,                           SIM_CLK);
    
    nor_3 #(1'b1) NOR30136(NOR30136_out,    RPTFRC,         NOR30131_out,   SQR12,          SIM_CLK);
    nor_2 #(1'b0) NOR30137(NOR30137_out,    NOR30136_out,   CSQG,                           SIM_CLK);
    
    // Quarter Code register monitor signals
    nor_1 #(1'b0) NOR30138(NOR30138_out,    NOR30132_out,                                   SIM_CLK);
    assign MSQ12 = NOR30138_out;
    
    nor_1 #(1'b0) NOR30139(NOR30139_out,    NOR30134_out,                                   SIM_CLK);
    assign MSQ11 = NOR30139_out;
    
    nor_1 #(1'b0) NOR30140(NOR30140_out,    NOR30136_out,                                   SIM_CLK);
    assign MSQ10 = NOR30140_out;
    
    // Quarter Code register decoding
    nor_2 #(1'b0) NOR30141(QC0,             SQR11,          SQR12,                          SIM_CLK);
    nor_2 #(1'b0) NOR30142(NOR30142_out,    NOR30134_out,   SQR12,                          SIM_CLK);
    nor_2 #(1'b0) NOR30143(NOR30143_out,    SQR11,          NOR30132_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR30144(NOR30144_out,    NOR30132_out,   NOR30134_out,                   SIM_CLK);
    
    nor_1 #(1'b0) NOR30145(QC0_,            QC0,                                            SIM_CLK);
    //nor_1 #(1'b0) NOR30146(QC0_,          QC0,                                            SIM_CLK);
    //nor_1 #(1'b0) NOR30147(QC0_,          QC0,                                            SIM_CLK);
    
    nor_1 #(1'b0) NOR30148(QC1_,            NOR30142_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30149(QC1_,          NOR30142_out,                                   SIM_CLK);
    
    nor_1 #(1'b0) NOR30151(QC2_,            NOR30143_out,                                   SIM_CLK);
    
    nor_1 #(1'b0) NOR30152(QC3_,            NOR30144_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR30153(QC3_,          NOR30144_out,                                   SIM_CLK);
    
    nor_1 #(1'b0) NOR30154(SQR10,           NOR30136_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR30156(SQR10_,          NOR30137_out,                                   SIM_CLK);
    
endmodule
