`timescale 1ns / 1ps

module a23_inout_vi(
    input wire GOJAM,
    
    input wire T07_,
    input wire PHS4_,
    
    input wire F18B_,
    input wire F5ASB0_,
    input wire F5ASB2,
    input wire F5ASB2_,
    
    input wire XB0_,
    input wire XB1_,
    input wire XB2_,
    input wire XB3_,
    input wire XB4_,
    input wire XB5_,
    input wire XB7_,
    input wire XT0_,
    input wire XT3_,
    input wire OCTAD5,
    
    input wire CHWL01_,
    input wire CHWL05_,
    input wire CHWL06_,
    input wire CHWL07_,
    input wire CHWL08_,
    input wire CHWL10_,
    input wire CHWL11_,
    input wire CHWL12_,
    input wire CHWL13_,
    input wire CHWL14_,
    input wire CHWL16_,
    input wire PC15_,
    
    input wire CCHG_,
    input wire WCHG_,
    input wire RCHG_,
    
    input wire WCH11_,
    input wire CCH11,
    input wire RCH11_,
    
    input wire WCH12_,
    input wire CCH12,
    input wire RCH12_,
    
    input wire WCH13_,
    input wire CCH13,
    input wire RCH13_,
    
    input wire WCH14_,
    input wire CCH14,
    input wire RCH14_,
    
    input wire CCH33,
    
    input wire LOW6_,
    input wire LOW7_,
    input wire HIGH3_,
    
    input wire PIPSAM,
    input wire F18AX,
    
    input wire PIPAXp,
    input wire PIPAXm,
    input wire PIPAYp,
    input wire PIPAYm,
    
    input wire CHAT01,
    input wire CHAT02,
    input wire CHAT03,
    input wire CHAT04,
    input wire CHAT05,
    input wire CHAT06,
    input wire CHAT07,
    input wire CHAT08,
    input wire CHAT09,
    input wire CHAT10,
    input wire CHBT01,
    input wire CHBT02,
    input wire CHBT03,
    input wire CHBT04,
    input wire CHBT05,
    input wire CHBT06,
    input wire CHBT07,
    input wire CHBT08,
    input wire CHBT09,
    input wire CHBT10,
    
    input wire CHOR01_,
    input wire CHOR02_,
    input wire CHOR03_,
    input wire CHOR04_,
    input wire CHOR05_,
    input wire CHOR06_,
    input wire CHOR07_,
    input wire CHOR08_,
    input wire CHOR09_,
    input wire CHOR10_,
    
    input wire CH1109,
    input wire CH1110,
    
    input wire CH1208,
    input wire CH1209,
    input wire CH1210,
    
    input wire CH1505,
    
    input wire CH1601,
    input wire CH1602,
    input wire CH1603,
    input wire CH1604,
    input wire CH1605,
    input wire CH1606,
    input wire CH1607,

    input wire CH3209,
    input wire CH3210,
        
    input wire POUT,
    input wire MOUT,
    input wire ZOUT,
    
    input wire FUTEXT,
    input wire T6RPT,
    
    input wire NOZP,
    input wire NOZM,
    input wire MISSZ,
    input wire BOTHZ,
    
    output wire PIPAFL,
    output wire A23_1_DATA_,
    output wire PIPSAM_,
    output wire PIPXP,
    output wire PIPXM,
    output wire PIPYP,
    output wire PIPYM,
    
    output wire A23_1_CHOR01_,
    output wire A23_1_CHOR02_,
    output wire A23_1_CHOR03_,
    output wire A23_1_CHOR04_,
    output wire A23_1_CHOR05_,
    output wire A23_2_CHOR05_,
    output wire A23_1_CHOR06_,
    output wire A23_1_CHOR07_,
    output wire A23_1_CHOR08_,
    output wire A23_2_CHOR08_,
    output wire A23_1_CHOR09_,
    output wire A23_2_CHOR09_,
    output wire A23_1_CHOR10_,
    output wire A23_2_CHOR10_,
    
    output wire CH01,
    output wire CH02,
    output wire CH03,
    output wire CH04,
    output wire CH05,
    output wire CH06,
    output wire CH07,
    output wire CH08,
    output wire CH09,
    output wire CH10,
    
    output wire WCH34_,
    output wire CCH34,
    
    output wire WCH35_,
    output wire CCH35,
    
    output wire CH0705,
    output wire CH0706,
    output wire CH0707,
    
    output wire CH1113,
    output wire CH1114,
    output wire CH1116,
    
    output wire OT1108,
    output wire OT1113,
    output wire OT1114,
    output wire OT1116,
    
    output wire CH1216,
    
    output wire CH1310,
    output wire CH1316,    
    
    output wire CH1411,
    output wire CH1412,
    output wire CH1413,
    output wire CH1414,
    output wire CH1416,
    
    output wire CDUXD,
    output wire CDUXDP,
    output wire CDUXDM,
    output wire CDUYD,
    output wire CDUYDP,
    output wire CDUYDM,
    output wire CDUZD,
    output wire CDUZDP,
    output wire CDUZDM,
    output wire TRUND,
    output wire TRNDP,
    output wire TRNDM,
    output wire SHAFTD,
    output wire SHFTDP,
    output wire SHFTDM,
    
    output wire POUT_,
    output wire MOUT_,
    output wire ZOUT_,
    
    output wire T7PHS4_,
    
    output wire E5,
    output wire E6,
    output wire E7_,
    
    output wire ISSTDC,
    output wire T6ON_,
    output wire ALTEST,
    
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A23 sheet 1
    *  Sheet number 2005272/1
    *
    **************************/
    
    wire NOR48101_out;
    wire NOR48102_out;
    wire NOR48103_out;
    wire NOR48104_out;
    wire NOR48105_out;
    wire NOR48106_out;
    wire NOR48107_out;
    wire NOR48109_out;
    wire NOR48110_out;
    wire NOR48111_out;
    wire NOR48112_out;
    wire NOR48113_out;
    wire NOR48114_out;
    wire NOR48115_out;
    wire NOR48116_out;
    wire NOR48118_out;
    wire NOR48119_out;
    wire NOR48123_out;
    wire NOR48128_out;
    wire NOR48129_out;
    wire NOR48130_out;
    wire NOR48131_out;
    wire NOR48132_out;
    wire NOR48133_out;
    wire NOR48134_out;
    wire NOR48135_out;
    wire NOR48136_out;
    wire NOR48137_out;
    wire NOR48138_out;
    wire NOR48139_out;
    wire NOR48140_out;
    wire NOR48141_out;
    wire NOR48142_out;
    wire NOR48143_out;
    wire NOR48144_out;
    wire NOR48145_out;
    wire NOR48146_out;
    wire NOR48147_out;
    wire NOR48148_out;
    wire NOR48150_out;
    wire NOR48152_out;
    wire NOR48154_out;
    
    wire NOR48219_out;
    wire NOR48220_out;
    wire NOR48224_out;
    wire NOR48229_out;
    wire NOR48230_out;
    wire NOR48231_out;
    wire NOR48232_out;
    wire NOR48233_out;
    wire NOR48234_out;
    wire NOR48235_out;
    wire NOR48236_out;
    wire NOR48237_out;
    wire NOR48238_out;
    wire NOR48239_out;
    wire NOR48240_out;
    wire NOR48241_out;
    wire NOR48242_out;
    wire NOR48243_out;
    wire NOR48244_out;
    wire NOR48245_out;
    wire NOR48246_out;
    wire NOR48247_out;
    wire NOR48248_out;
    wire NOR48249_out;
    wire NOR48253_out;
    wire NOR48255_out;
    wire NOR48257_out;
    
    wire NOR48103_in;
    wire nPIPAFL_;
    
    wire NOXP;
    wire NOXM;
    wire NOYP;
    wire NOYM;
    wire MISSX;
    wire MISSY;
    wire BOTHX;
    wire BOTHY;
    
    wire PIPAXp_;
    wire PIPAXm_;
    wire PIPGXp;
    wire PIPGXm;
    
    wire PIPAYp_;
    wire PIPAYm_;
    wire PIPGYp;
    wire PIPGYm;
    
    wire CH1108;
    
    
    //r_3 #(1'b0) NOR32002(NOR32002_out,    C26A,           C27A,           C32A,                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR48101(NOR48101_out,    NOXP,           NOXM,           NOYP,                           reset, prop_clk);
    nor_3 #(1'b0) NOR48102(NOR48102_out,    NOYM,           NOZP,           NOZM,                           reset, prop_clk);
    assign NOR48103_in = NOR48101_out & NOR48102_out;
    nor_2 #(1'b0) NOR48103(NOR48103_out,    F18B_,          NOR48103_in,                                    reset, prop_clk);
    nor_3 #(1'b0) NOR48104(NOR48104_out,    MISSX,          MISSY,          MISSZ,                          reset, prop_clk);
    nor_2 #(1'b0) NOR48105(NOR48105_out,    F5ASB0_,        NOR48104_out,                                   reset, prop_clk);
    nor_3 #(1'b1) NOR48106(NOR48106_out,    BOTHX,          BOTHY,          BOTHZ,                          reset, prop_clk);
    nor_3 #(1'b1) NOR48107(NOR48107_out,    NOR48103_out,   NOR48105_out,   PIPAFL,                         reset, prop_clk);
    assign nPIPAFL_= NOR48106_out & NOR48107_out;
    nor_2 #(1'b0) NOR48108(PIPAFL,          nPIPAFL_,       CCH33,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48109(NOR48109_out,    CHWL01_,        WCH35_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48110(NOR48110_out,    PC15_,          WCH35_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48111(NOR48111_out,    NOR48109_out,   NOR48112_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48112(NOR48112_out,    NOR48111_out,   CCH35,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR48113(NOR48113_out,    NOR48110_out,   NOR48114_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48114(NOR48114_out,    NOR48113_out,   CCH35,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR48115(NOR48115_out,    HIGH3_,         NOR48111_out,   LOW6_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR48116(NOR48116_out,    HIGH3_,         NOR48113_out,   LOW7_,                          reset, prop_clk);
    nor_2 #(1'b0) NOR48117(A23_1_DATA_,     NOR48115_out,   NOR48116_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR48118(NOR48118_out,    WCHG_,          XB5_,           XT3_,                           reset, prop_clk);
    nor_3 #(1'b0) NOR48119(NOR48119_out,    XT3_,           XB5_,           CCHG_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR48120(WCH35_,          NOR48118_out,                                                   reset, prop_clk);
    // NOR48121 removed (fan-out expansion)
    // NOR48122 removed (fan-out expansion)
    nor_2 #(1'b0) NOR48123(NOR48123_out,    NOR48119_out,   GOJAM,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR48124(CCH35,           NOR48123_out,                                                   reset, prop_clk);
    // NOR48125 removed (fan-out expansion)
    // NOR48126 removed (fan-out expansion)
    
    // Moved here from A9 sheet 1
    nor_1 #(1'b0) NOR52261(PIPSAM_,         PIPSAM,                                                         reset, prop_clk);
    
    // PIPA precount logic X
    nor_2 #(1'b0) NOR48127(BOTHX,           NOR48129_out,   NOR48130_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48128(NOR48128_out,    F5ASB2,                                                         reset, prop_clk);
    
    // Moved here from A10 sheet 2
    nor_1 #(1'b0) NOR53461(PIPAXp_,         PIPAXp,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR53361(PIPAXm_,         PIPAXm,                                                         reset, prop_clk);
    
    // Moved here from A9 sheet 2
    nor_2 #(1'b0) NOR52461(PIPGXp,          PIPSAM_,        PIPAXp_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR52361(PIPGXm,          PIPSAM_,        PIPAXm_,                                        reset, prop_clk);
    
    
    nor_1 #(1'b0) NOR48129(NOR48129_out,    PIPGXp,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR48130(NOR48130_out,    PIPGXm,                                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR48131(NOR48131_out,    NOR48130_out,   NOR48148_out,   NOR48138_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48132(NOR48132_out,    NOR48137_out,   NOR48148_out,   NOR48129_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48133(NOR48133_out,    NOR48131_out,   NOR48134_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48134(NOR48134_out,    NOR48133_out,   NOR48132_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48135(NOR48135_out,    NOR48128_out,   NOR48133_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48136(NOR48136_out,    NOR48128_out,   NOR48134_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48137(NOR48137_out,    NOR48135_out,   NOR48138_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48138(NOR48138_out,    NOR48137_out,   NOR48136_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR48139(NOR48139_out,    NOR48138_out,   NOR48148_out,   NOR48129_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48140(NOR48140_out,    NOR48137_out,   NOR48148_out,   NOR48130_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48141(NOR48141_out,    NOR48138_out,   NOR48147_out,   NOR48130_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48142(NOR48142_out,    NOR48137_out,   NOR48147_out,   NOR48129_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48143(NOR48143_out,    NOR48139_out,   NOR48140_out,   NOR48144_out,                   reset, prop_clk);
    nor_3 #(1'b1) NOR48144(NOR48144_out,    NOR48143_out,   NOR48141_out,   NOR48142_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48145(NOR48145_out,    NOR48128_out,   NOR48143_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48146(NOR48146_out,    NOR48128_out,   NOR48144_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48147(NOR48147_out,    NOR48145_out,   NOR48148_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48148(NOR48148_out,    NOR48147_out,   NOR48146_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR48149(NOXM,            PIPGXm,         NOR48150_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48150(NOR48150_out,    NOXM,           F18AX,                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR48151(NOXP,            PIPGXp,         NOR48152_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48152(NOR48152_out,    NOXP,           F18AX,                                          reset, prop_clk);
    
    nor_3 #(1'b1) NOR48153(MISSX,           PIPGXp,         PIPGXm,         NOR48154_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48154(NOR48154_out,    MISSX,          F5ASB2,                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR48155(PIPXP,           NOR48138_out,   NOR48129_out,   NOR48147_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48156(PIPXM,           NOR48137_out,   NOR48130_out,   NOR48147_out,                   reset, prop_clk);
    
    // NOR48157 removed (moved to A1)
    
    
    // Channel outputs
    nor_3 #(1'b0) NOR48201(A23_1_CHOR01_,   CHAT01,         CHBT01,         CH1601,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48202(CH01,            RCHG_,          CHOR01_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR48203(A23_1_CHOR02_,   CHAT02,         CHBT02,         CH1602,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48204(CH02,            RCHG_,          CHOR02_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR48205(A23_1_CHOR03_,   CHAT03,         CHBT03,         CH1603,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48206(CH03,            RCHG_,          CHOR03_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR48207(A23_1_CHOR04_,   CHAT04,         CHBT04,         CH1604,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48208(CH04,            RCHG_,          CHOR04_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR48209(A23_1_CHOR05_,   CHAT05,         CHBT05,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48210(A23_2_CHOR05_,   CH1605,         CH1505,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48211(CH05,            RCHG_,          CHOR05_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR48212(A23_1_CHOR06_,   CHAT06,         CHBT06,         CH1606,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48213(CH06,            RCHG_,          CHOR06_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR48214(A23_1_CHOR07_,   CHAT07,         CHBT07,         CH1607,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48215(CH07,            RCHG_,          CHOR07_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR48216(A23_1_CHOR08_,   CHAT08,         CHBT08,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48217(A23_2_CHOR08_,   CH1108,         CH1208,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48218(CH08,            RCHG_,          CHOR08_,                                        reset, prop_clk);
    
    
    // Channel 34 service 
    nor_3 #(1'b0) NOR48219(NOR48219_out,    WCHG_,          XB4_,           XT3_,                           reset, prop_clk);
    nor_3 #(1'b0) NOR48220(NOR48220_out,    XT3_,           XB4_,           CCHG_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR48221(WCH34_,          NOR48219_out,                                                   reset, prop_clk);
    // NOR48222 removed (fan-out expansion)
    // NOR48223 removed (fan-out expansion)
    nor_2 #(1'b0) NOR48224(NOR48224_out,    NOR48220_out,   GOJAM,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR48225(CCH34,           NOR48224_out,                                                   reset, prop_clk);
    // NOR48226 removed (fan-out expansion)
    // NOR48227 removed (fan-out expansion)
    
    // PIPA precount logic Y
    nor_2 #(1'b0) NOR48228(BOTHY,           NOR48230_out,   NOR48231_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48229(NOR48229_out,    F5ASB2,                                                         reset, prop_clk);
    
    // Moved here from A10 sheet 2
    nor_1 #(1'b0) NOR53362(PIPAYp_,         PIPAYp,                                                         reset, prop_clk);
    // Moved here from A11 sheet 2
    nor_1 #(1'b0) NOR54461(PIPAYm_,         PIPAYm,                                                         reset, prop_clk);
    
    // Moved here from A9 sheet 2
    nor_2 #(1'b0) NOR52362(PIPGYp,          PIPSAM_,        PIPAYp_,                                        reset, prop_clk);
    // Moved here from A10 sheet 1
    nor_2 #(1'b0) NOR53161(PIPGYm,          PIPSAM_,        PIPAYm_,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR48230(NOR48230_out,    PIPGYp,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR48231(NOR48231_out,    PIPGYm,                                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR48232(NOR48232_out,    NOR48231_out,   NOR48249_out,   NOR48239_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48233(NOR48233_out,    NOR48238_out,   NOR48249_out,   NOR48230_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48234(NOR48234_out,    NOR48232_out,   NOR48235_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48235(NOR48235_out,    NOR48234_out,   NOR48233_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48236(NOR48236_out,    NOR48229_out,   NOR48234_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48237(NOR48237_out,    NOR48229_out,   NOR48235_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48238(NOR48238_out,    NOR48236_out,   NOR48239_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48239(NOR48239_out,    NOR48238_out,   NOR48237_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR48240(NOR48240_out,    NOR48239_out,   NOR48249_out,   NOR48230_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48241(NOR48241_out,    NOR48238_out,   NOR48249_out,   NOR48231_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48242(NOR48242_out,    NOR48239_out,   NOR48248_out,   NOR48231_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48243(NOR48243_out,    NOR48238_out,   NOR48248_out,   NOR48230_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48244(NOR48244_out,    NOR48240_out,   NOR48241_out,   NOR48245_out,                   reset, prop_clk);
    nor_3 #(1'b1) NOR48245(NOR48245_out,    NOR48244_out,   NOR48242_out,   NOR48243_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48246(NOR48246_out,    NOR48229_out,   NOR48244_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48247(NOR48247_out,    NOR48229_out,   NOR48245_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48248(NOR48248_out,    NOR48246_out,   NOR48249_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR48249(NOR48249_out,    NOR48248_out,   NOR48247_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR48250(PIPYP,           NOR48239_out,   NOR48248_out,   NOR48230_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR48251(PIPYM,           NOR48238_out,   NOR48248_out,   NOR48231_out,                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR48252(NOYM,            PIPGYm,         NOR48253_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48253(NOR48253_out,    NOYM,           F18AX,                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR48254(NOYP,            PIPGYp,         NOR48255_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48255(NOR48255_out,    NOYP,           F18AX,                                          reset, prop_clk);
    
    nor_3 #(1'b1) NOR48256(MISSY,           PIPGYp,         PIPGYm,         NOR48257_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48257(NOR48257_out,    MISSY,          F5ASB2,                                         reset, prop_clk);
    
    // NOR48258 moved to sheet 2
    
    
    /**************************
    *
    *  Module A23 sheet 2
    *  Sheet number 2005272/2
    *
    **************************/
    
    wire NOR48301_out;
    wire NOR48302_out;
    wire NOR48303_out;
    wire NOR48306_out;
    wire NOR48307_out;
    wire NOR48310_out;
    wire NOR48311_out;
    wire NOR48312_out;
    wire NOR48313_out;
    wire NOR48316_out;
    wire NOR48317_out;
    wire NOR48320_out;
    wire NOR48321_out;
    wire NOR48322_out;
    wire NOR48324_out;
    wire NOR48327_out;
    wire NOR48328_out;
    wire NOR48330_out;
    wire NOR48331_out;
    wire NOR48332_out;
    wire NOR48333_out;
    wire NOR48337_out;
    wire NOR48338_out;
    wire NOR48340_out;
    wire NOR48341_out;
    wire NOR48342_out;
    wire NOR48343_out;
    wire NOR48346_out;
    wire NOR48347_out;
    wire NOR48350_out;
    wire NOR48357_out;
    wire NOR48359_out;
    
    wire NOR48401_out;
    wire NOR48402_out;
    wire NOR48405_out;
    wire NOR48406_out;
    wire NOR48409_out;
    wire NOR48411_out;
    wire NOR48414_out;
    wire NOR48416_out;
    wire NOR48418_out;
    wire NOR48419_out;
    wire NOR48420_out;
    wire NOR48423_out;
    wire NOR48424_out;
    wire NOR48425_out;
    wire NOR48428_out;
    wire NOR48429_out;
    wire NOR48430_out;
    wire NOR48433_out;
    wire NOR48434_out;
    wire NOR48435_out;
    wire NOR48441_out;
    wire NOR48442_out;
    wire NOR48443_out;
    wire NOR48446_out;
    wire NOR48448_out;
    wire NOR48450_out;
    wire NOR48451_out;
    wire NOR48452_out;
    
    
    wire NOR48258_out;
    
    wire T7PHS4;
    
    wire WCH07_;
    wire CCH07;
    wire RCH07_;
    
    nor_2 #(1'b0) NOR48301(NOR48301_out,    CHWL16_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48302(NOR48302_out,    NOR48301_out,   NOR48303_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48303(NOR48303_out,    NOR48302_out,   CCH14,          NOR48310_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48304(CH1416,          RCH14_,         NOR48302_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48305(CDUXD,           NOR48302_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR48306(NOR48306_out,    XB0_,           NOR48357_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48307(NOR48307_out,    NOR48306_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48308(CDUXDP,          POUT_,          NOR48307_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48309(CDUXDM,          NOR48307_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48310(NOR48310_out,    NOR48307_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48311(NOR48311_out,    WCH14_,         CHWL14_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR48312(NOR48312_out,    NOR48311_out,   NOR48313_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48313(NOR48313_out,    NOR48312_out,   CCH14,          NOR48320_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48314(CH1414,          RCH14_,         NOR48312_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48315(CDUYD,           NOR48312_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR48316(NOR48316_out,    XB1_,           NOR48357_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48317(NOR48317_out,    NOR48316_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48318(CDUYDP,          POUT_,          NOR48317_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48319(CDUYDM,          NOR48317_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48320(NOR48320_out,    NOR48317_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48321(NOR48321_out,    WCH14_,         CHWL13_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR48322(NOR48322_out,    NOR48321_out,   NOR48324_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48323(CH1413,          RCH14_,         NOR48322_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48324(NOR48324_out,    NOR48322_out,   CCH14,          NOR48330_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48325(CDUZD,           NOR48322_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR48326(CDUZDP,          POUT_,          NOR48328_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48327(NOR48327_out,    NOR48357_out,   XB2_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR48328(NOR48328_out,    NOR48327_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48329(CDUZDM,          NOR48328_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48330(NOR48330_out,    NOR48328_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48331(NOR48331_out,    WCH14_,         CHWL12_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR48332(NOR48332_out,    NOR48331_out,   NOR48333_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48333(NOR48333_out,    NOR48332_out,   CCH14,          NOR48340_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48334(CH1412,          RCH14_,         NOR48332_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48335(TRUND,           NOR48332_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR48336(TRNDP,           POUT_,          NOR48338_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48337(NOR48337_out,    NOR48357_out,   XB3_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR48338(NOR48338_out,    NOR48337_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48339(TRNDM,           NOR48338_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48340(NOR48340_out,    NOR48338_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48341(NOR48341_out,    CHWL11_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48342(NOR48342_out,    NOR48341_out,   NOR48343_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48343(NOR48343_out,    NOR48342_out,   CCH14,          NOR48350_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR48344(CH1411,          RCH14_,         NOR48342_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48345(SHAFTD,          NOR48342_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR48346(NOR48346_out,    NOR48357_out,   XB4_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR48347(NOR48347_out,    NOR48346_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48348(SHFTDP,          POUT_,          NOR48347_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48349(SHFTDM,          NOR48347_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48350(NOR48350_out,    NOR48347_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR48351(POUT_,           POUT,                                                           reset, prop_clk);
    // NOR48352 removed (fan-out expansion)
    nor_1 #(1'b0) NOR48353(MOUT_,           MOUT,                                                           reset, prop_clk);
    // NOR48354 removed (fan-out expansion)
    nor_1 #(1'b0) NOR48355(ZOUT_,           ZOUT,                                                           reset, prop_clk);
    // NOR48356 removed (fan-out expansion)
    
    nor_1 #(1'b0) NOR48357(NOR48357_out,    OCTAD5,                                                         reset, prop_clk);
    
    nor_1 #(1'b0) NOR48358(T7PHS4_,         T7PHS4,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR48359(NOR48359_out,    T07_,           PHS4_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR48258(NOR48258_out,    FUTEXT,                                                         reset, prop_clk);
    assign T7PHS4 = NOR48359_out & NOR48258_out;
    
    // NOR48360 removed (not connected)
    
    
    // Channel 7
    nor_2 #(1'b0) NOR48401(NOR48401_out,    CHWL05_,        WCH07_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48402(NOR48402_out,    NOR48401_out,   E5,                                             reset, prop_clk);
    nor_2 #(1'b0) NOR48403(E5,              NOR48402_out,   CCH07,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48404(CH0705,          RCH07_,         NOR48402_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR48405(NOR48405_out,    CHWL06_,        WCH07_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48406(NOR48406_out,    NOR48405_out,   E6,                                             reset, prop_clk);
    nor_2 #(1'b0) NOR48407(E6,              NOR48406_out,   CCH07,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48408(CH0706,          RCH07_,         NOR48406_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR48409(NOR48409_out,    CHWL07_,        WCH07_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48410(E7_,             NOR48409_out,   NOR48411_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48411(NOR48411_out,    E7_,            CCH07,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48412(CH0707,          RCH07_,         E7_,                                            reset, prop_clk);
    
    // Channek 7 service
    nor_3 #(1'b0) NOR48413(CCH07,           XB7_,           XT0_,           CCHG_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR48414(NOR48414_out,    WCHG_,          XT0_,           XB7_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR48415(WCH07_,          NOR48414_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48416(NOR48416_out,    XT0_,           XB7_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR48417(RCH07_,          NOR48416_out,                                                   reset, prop_clk);
    
    // Channel 11
    nor_2 #(1'b0) NOR48418(NOR48418_out,    CHWL08_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48419(NOR48419_out,    NOR48418_out,   NOR48420_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48420(NOR48420_out,    NOR48419_out,   CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48421(CH1108,          RCH11_,         NOR48419_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48422(OT1108,          NOR48419_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR48423(NOR48423_out,    CHWL13_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48424(NOR48424_out,    NOR48423_out,   NOR48425_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48425(NOR48425_out,    NOR48424_out,   CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48426(CH1113,          RCH11_,         NOR48424_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48427(OT1113,          NOR48424_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR48428(NOR48428_out,    CHWL14_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48429(NOR48429_out,    NOR48428_out,   NOR48430_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48430(NOR48430_out,    NOR48429_out,   CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48431(CH1114,          RCH11_,         NOR48429_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48432(OT1114,          NOR48429_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR48433(NOR48433_out,    CHWL16_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48434(NOR48434_out,    NOR48433_out,   NOR48435_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48435(NOR48435_out,    NOR48434_out,   CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48436(CH1116,          RCH11_,         NOR48434_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48437(OT1116,          NOR48434_out,                                                   reset, prop_clk);
    
    // Channel 12
    nor_2 #(1'b0) NOR48441(NOR48441_out,    CHWL16_,        WCH12_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48442(NOR48442_out,    NOR48441_out,   NOR48443_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48443(NOR48443_out,    NOR48442_out,   CCH12,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48444(CH1216,          RCH12_,         NOR48442_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48445(ISSTDC,          NOR48442_out,                                                   reset, prop_clk);
    
    // Channel 13
    nor_2 #(1'b0) NOR48446(NOR48446_out,    CHWL16_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48447(T6ON_,           NOR48446_out,   NOR48448_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR48448(NOR48448_out,    T6ON_,          T6RPT,          CCH13,                          reset, prop_clk);
    nor_2 #(1'b0) NOR48449(CH1316,          RCH13_,         T6ON_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR48450(NOR48450_out,    CHWL10_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR48451(NOR48451_out,    NOR48450_out,   NOR48452_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR48452(NOR48452_out,    NOR48451_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR48453(CH1310,          RCH13_,         NOR48451_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR48454(ALTEST,          NOR48451_out,                                                   reset, prop_clk);
    // NOR48455 removed (fan-out expansion)
    
    // CHOR09
    nor_2 #(1'b0) NOR48438(A23_1_CHOR09_,   CHAT09,         CHBT09,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR48439(A23_2_CHOR09_,   CH1109,         CH1209,         CH3209,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48440(CH09,            CHOR09_,        RCHG_,                                          reset, prop_clk);
    
    // CHOR10
    nor_2 #(1'b0) NOR48456(A23_1_CHOR10_,   CHAT10,         CHBT10,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR48457(A23_2_CHOR10_,   CH1110,         CH1210,         CH3210,                         reset, prop_clk);
    nor_2 #(1'b0) NOR48458(CH10,            CHOR10_,        RCHG_,                                          reset, prop_clk);
    
endmodule
