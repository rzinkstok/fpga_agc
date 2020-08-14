`timescale 1ns / 1ps

module a18_inout_iii(
    input wire T05,
    input wire T11,
    
    input wire F09A_,
    input wire F09B,
    input wire F09B_,
    input wire F09D,
    input wire F10A,
    input wire F10A_,
    input wire F17A_,
    input wire F17B_,
    
    input wire SB0_,
    input wire SB2_,
    
    input wire GOJAM,
    
    input wire XT1_,
    input wire XB5_,
    input wire XB6_,
    
    input wire CHWL01_,
    input wire CHWL02_,
    input wire CHWL03_,
    input wire CHWL04_,
    input wire CHWL11_,
    
    input wire MKEY1,
    input wire MKEY2,
    input wire MKEY3,
    input wire MKEY4,
    input wire MKEY5,
    input wire MAINRS,
    
    input wire NKEY1,
    input wire NKEY2,
    input wire NKEY3,
    input wire NKEY4,
    input wire NKEY5,
    input wire NAVRST,

    input wire MARK,
    input wire MRKREJ,
    input wire MRKRST,
        
    input wire SBYBUT,
    input wire STOP,
    input wire ALTEST,
    
    input wire WCH13_,
    input wire CCH13,
    input wire RCH13_,
    
    input wire F5ASB2_,
    input wire F5BSB2_,
    input wire GTSET_,
    input wire GTRST_,
    
    input wire RRIN0,
    input wire RRIN1,
    input wire LRIN0,
    input wire LRIN1,
    
    input wire CHAT11,
    input wire CHBT11,
    input wire CHAT12,
    input wire CHBT12,
    input wire CHAT13,
    input wire CHBT13,
    input wire CHAT14,
    input wire CHBT14,
    
    input wire CH1111,
    input wire CH1112,
    input wire CH1114,
    input wire CH1116,
    
    input wire CH1211,
    input wire CH1212,
    input wire CH1216,
    
    input wire CH3311,
    input wire CH3313,
    input wire CH3314,
    input wire CH3316,
    
    input wire RCHG_,
    input wire CHOR11_,       
    input wire CHOR12_,
    input wire CHOR13_,
    input wire CHOR14_,
    input wire CHOR16_,
    
    input wire DKEND,
    input wire CCH33,
    input wire RCH33_,
    
    output wire CH1301,
    output wire CH1302,
    output wire CH1303,
    output wire CH1304,
    output wire CH1311,
    
    output wire CH1501,
    output wire CH1502,
    output wire CH1503,
    output wire CH1504,
    output wire CH1505,
    
    output wire CH1601,
    output wire CH1602,
    output wire CH1603,
    output wire CH1604,
    output wire CH1605,
    output wire CH1606,
    output wire CH1607,
    
    output wire TPOR_,
    output wire KYRPT1,
    output wire KYRPT2,
    output wire MKRPT,
    output wire STNDBY,
    output wire STNDBY_,
    output wire SBY,
    output wire SBYLIT,
    output wire SBYREL_,
    
    output wire RADRPT,
    
    output wire RRRANG,
    output wire RRRARA,
    output wire LRXVEL,
    output wire LRYVEL,
    output wire LRZVEL,
    output wire LRRANG,
    
    output wire RRSYNC,
    output wire LRSYNC,
    output wire RNRADP,
    output wire RNRADM,
    
    output wire A18_1_CHOR11_,
    output wire A18_2_CHOR11_,
    output wire A18_1_CHOR12_,
    output wire A18_2_CHOR12_,
    output wire A18_1_CHOR13_,
    output wire A18_1_CHOR14_,
    output wire A18_2_CHOR14_,
    output wire A18_1_CHOR16_,
    output wire CH11,
    output wire CH12,
    output wire CH13,
    output wire CH14,
    output wire CH16,
    
    output wire END,
    output wire DLKRPT,
    output wire CH3312,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A18 sheet 1
    *  Sheet number 2005268/1
    *
    **************************/
    
    wire NOR45101_out;
    wire NOR45102_out;
    wire NOR45104_out;
    wire NOR45105_out;
    wire NOR45106_out;
    wire NOR45108_out;
    wire NOR45109_out;
    wire NOR45110_out;
    wire NOR45112_out;
    wire NOR45113_out;
    wire NOR45114_out;
    wire NOR45116_out;
    wire NOR45117_out;
    wire NOR45118_out;
    wire NOR45120_out;
    wire NOR45121_out;
    wire NOR45122_out;
    wire NOR45123_out;
    wire NOR45125_out;
    wire NOR45126_out;
    wire NOR45127_out;
    wire NOR45128_out;
    wire NOR45129_out;
    wire NOR45130_out;
    wire NOR45132_out;
    wire NOR45133_out;
    wire NOR45134_out;
    wire NOR45135_out;
    wire NOR45136_out;
    wire NOR45137_out;
    wire NOR45138_out;
    wire NOR45139_out;
    wire NOR45141_out;
    wire NOR45142_out;
    wire NOR45143_out;
    wire NOR45144_out;
    wire NOR45145_out;
    wire NOR45146_out;
    wire NOR45147_out;
    wire NOR45149_out;
    wire NOR45150_out;
    wire NOR45151_out;
    wire NOR45152_out;
    wire NOR45154_out;
    wire NOR45156_out;
    wire NOR45160_out;
    
    wire NOR45201_out;
    wire NOR45202_out;
    wire NOR45204_out;
    wire NOR45205_out;
    wire NOR45206_out;
    wire NOR45208_out;
    wire NOR45209_out;
    wire NOR45210_out;
    wire NOR45212_out;
    wire NOR45213_out;
    wire NOR45214_out;
    wire NOR45216_out;
    wire NOR45217_out;
    wire NOR45218_out;
    wire NOR45220_out;
    wire NOR45221_out;
    wire NOR45222_out;
    wire NOR45223_out;
    wire NOR45225_out;
    wire NOR45226_out;
    wire NOR45228_out;
    wire NOR45229_out;
    wire NOR45230_out;
    wire NOR45232_out;
    wire NOR45233_out;
    wire NOR45234_out;
    wire NOR45235_out;
    wire NOR45238_out;
    wire NOR45239_out;
    wire NOR45240_out;
    wire NOR45241_out;
    wire NOR45242_out;
    wire NOR45243_out;
    wire NOR45245_out;
    wire NOR45246_out;
    wire NOR45247_out;
    wire NOR45248_out;
    wire NOR45249_out;
    wire NOR45250_out;
    wire NOR45251_out;
    wire NOR45252_out;
    wire NOR45255_out;
    wire NOR45256_out;
    wire NOR45257_out;
    wire NOR45258_out;
    
    wire NOR45129_in;
    wire NOR45241_in;
    wire NOR45251_in;
    
    wire RCH15_;
    wire RCH16_;
    wire MKEY15;
    wire NKEY15;
    
    
    // Channel 15
    nor_3 #(1'b1)  NOR45101(NOR45101_out,   MKEY1,          NOR45102_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45102(NOR45102_out,   NOR45101_out,   NOR45123_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45103(CH1501,         RCH15_,         NOR45101_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45104(NOR45104_out,   NOR45101_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45105(NOR45105_out,   MKEY2,          NOR45106_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45106(NOR45106_out,   NOR45105_out,   NOR45123_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45107(CH1502,         RCH15_,         NOR45105_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45108(NOR45108_out,   NOR45105_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45109(NOR45109_out,   MKEY3,          NOR45110_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45110(NOR45110_out,   NOR45109_out,   NOR45123_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45111(CH1503,         RCH15_,         NOR45109_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45112(NOR45112_out,   NOR45109_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45113(NOR45113_out,   MKEY4,          NOR45114_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45114(NOR45114_out,   NOR45113_out,   NOR45123_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45115(CH1504,         RCH15_,         NOR45113_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45116(NOR45116_out,   NOR45113_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45117(NOR45117_out,   MKEY5,          NOR45118_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45118(NOR45118_out,   NOR45117_out,   NOR45123_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45119(CH1505,         RCH15_,         NOR45117_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45120(NOR45120_out,   NOR45117_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Clear/read signals
    nor_3 #(1'b0)  NOR45121(NOR45121_out,   MAINRS,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45123(NOR45123_out,   NOR45121_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45122(NOR45122_out,   XT1_,           XB5_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45124(RCH15_,         NOR45122_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // KYRPT1
    nor_3 #(1'b0)  NOR45125(NOR45125_out,   NOR45104_out,   NOR45108_out,   NOR45112_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45126(NOR45126_out,   NOR45116_out,   NOR45120_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign MKEY15 = NOR45125_out & NOR45126_out;
    
    nor_3 #(1'b0)  NOR45132(NOR45132_out,   NOR45123_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45127(NOR45127_out,   F09A_,          MKEY15,         NOR45135_out,   p4SW, reset, prop_clk);
    assign NOR45129_in = NOR45132_out & NOR45127_out;
    
    nor_3 #(1'b1)  NOR45129(NOR45129_out,   NOR45129_in,    NOR45130_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45130(NOR45130_out,   NOR45129_out,   MKEY15,         F09D,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45128(TPOR_,          T05,            T11,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45131(KYRPT1,         TPOR_,          NOR45129_out,   F09B_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45133(NOR45133_out,   MKEY15,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45134(NOR45134_out,   NOR45133_out,   NOR45121_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45135(NOR45135_out,   NOR45134_out,   NOR45136_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45136(NOR45136_out,   NOR45135_out,   KYRPT1,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Channel 13 bit 11
    nor_3 #(1'b0)  NOR45137(NOR45137_out,   WCH13_,         CHWL11_,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45138(NOR45138_out,   NOR45137_out,   NOR45139_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR45139(NOR45139_out,   NOR45138_out,   CCH13,          n0VDCA,         p4VDC, reset, prop_clk); // Set initial value to 1 to make sure standby circuit works
    nor_3 #(1'b0)  NOR45140(CH1311,         NOR45138_out,   RCH13_,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Standby
    nor_3 #(1'b0)  NOR45141(NOR45141_out,   SBYBUT,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45143(NOR45143_out,   F17A_,          NOR45141_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR45145(NOR45145_out,   NOR45143_out,   NOR45144_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45144(NOR45144_out,   NOR45145_out,   NOR45141_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45147(NOR45147_out,   F17B_,          NOR45145_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR45142(NOR45142_out,   NOR45147_out,   NOR45146_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45146(NOR45146_out,   NOR45142_out,   NOR45141_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45149(NOR45149_out,   NOR45142_out,   STOP,           NOR45138_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR45150(NOR45150_out,   NOR45149_out,   NOR45151_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45151(NOR45151_out,   NOR45150_out,   NOR45142_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45152(NOR45152_out,   NOR45151_out,   NOR45142_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR45154(NOR45154_out,   NOR45151_out,   STNDBY,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45155(STNDBY,         NOR45154_out,   NOR45152_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45153(STNDBY_,        STNDBY,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45148(SBY,            STNDBY_,        n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45156(NOR45156_out,   STNDBY,         ALTEST,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR45157(SBYLIT,         NOR45156_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // Moved here from A14 sheet 2
    nor_3 #(1'b0)  NOR42457(SBYREL_,        SBY,            n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // NOR45158 removed (not connected)
    
    // Channel 16
    nor_3 #(1'b1)  NOR45201(NOR45201_out,   NKEY1,          NOR45202_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45202(NOR45202_out,   NOR45201_out,   NOR45223_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45203(CH1601,         RCH16_,         NOR45201_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45204(NOR45204_out,   NOR45201_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45205(NOR45205_out,   NKEY2,          NOR45206_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45206(NOR45206_out,   NOR45205_out,   NOR45223_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45207(CH1602,         RCH16_,         NOR45205_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45208(NOR45208_out,   NOR45205_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45209(NOR45209_out,   NKEY3,          NOR45210_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45210(NOR45210_out,   NOR45209_out,   NOR45223_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45211(CH1603,         RCH16_,         NOR45209_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45212(NOR45212_out,   NOR45209_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45213(NOR45213_out,   NKEY4,          NOR45214_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45214(NOR45214_out,   NOR45213_out,   NOR45223_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45215(CH1604,         RCH16_,         NOR45213_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45216(NOR45216_out,   NOR45213_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45217(NOR45217_out,   NKEY5,          NOR45218_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45218(NOR45218_out,   NOR45217_out,   NOR45223_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45219(CH1605,         RCH16_,         NOR45217_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45220(NOR45220_out,   NOR45217_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Clear signal
    nor_3 #(1'b0)  NOR45221(NOR45221_out,   NAVRST,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45223(NOR45223_out,   NOR45221_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Mark
    nor_3 #(1'b1)  NOR45225(NOR45225_out,   MARK,           NOR45226_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45226(NOR45226_out,   NOR45225_out,   NOR45234_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45227(CH1606,         RCH16_,         NOR45225_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45228(NOR45228_out,   NOR45225_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45229(NOR45229_out,   MRKREJ,         NOR45230_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45230(NOR45230_out,   NOR45229_out,   NOR45234_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45231(CH1607,         RCH16_,         NOR45229_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45232(NOR45232_out,   NOR45229_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Mark clear signal
    nor_3 #(1'b0)  NOR45233(NOR45233_out,   MRKRST,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45234(NOR45234_out,   NOR45233_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Read signal channel 16
    nor_3 #(1'b0)  NOR45235(NOR45235_out,   XT1_,           XB6_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45236(RCH16_,         NOR45235_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR45237 removed (fan-out expansion)
    
    // KYRPT2
    nor_3 #(1'b0)  NOR45238(NOR45238_out,   NOR45204_out,   NOR45208_out,   NOR45212_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45239(NOR45239_out,   NOR45216_out,   NOR45220_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NKEY15 = NOR45238_out & NOR45239_out;
    
    nor_3 #(1'b0)  NOR45243(NOR45243_out,   NOR45223_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45240(NOR45240_out,   F09A_,          NKEY15,         NOR45247_out,   p4SW, reset, prop_clk);
    assign NOR45241_in = NOR45243_out & NOR45240_out;
    
    nor_3 #(1'b1)  NOR45241(NOR45241_out,   NOR45241_in,    NOR45242_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45242(NOR45242_out,   NOR45241_out,   NKEY15,         F09D,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45244(KYRPT2,         F09B_,          NOR45241_out,   TPOR_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45245(NOR45245_out,   NKEY15,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45246(NOR45246_out,   NOR45245_out,   NOR45221_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45247(NOR45247_out,   NOR45246_out,   NOR45248_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45248(NOR45248_out,   NOR45247_out,   KYRPT2,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MKRPT
    nor_3 #(1'b0)  NOR45249(NOR45249_out,   NOR45228_out,   NOR45232_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45160(NOR45160_out,   NOR45234_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45250(NOR45250_out,   F09A_,          NOR45249_out,   NOR45257_out,   p4SW, reset, prop_clk);
    assign NOR45251_in = NOR45160_out & NOR45250_out;
    
    nor_3 #(1'b1)  NOR45251(NOR45251_out,   NOR45251_in,    NOR45252_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45252(NOR45252_out,   NOR45251_out,   NOR45249_out,   F09D,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45254(MKRPT,          TPOR_,          NOR45251_out,   F09B_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45255(NOR45255_out,   NOR45249_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45256(NOR45256_out,   NOR45255_out,   NOR45233_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45257(NOR45257_out,   NOR45256_out,   NOR45258_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45258(NOR45258_out,   NOR45257_out,   MKRPT,          n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR45222 and NOR45224 moved to A19 sheet 2
    
    
    /**************************
    *
    *  Module A18 sheet 2
    *  Sheet number 2005268/2
    *
    **************************/
    
    wire NOR45301_out;
    wire NOR45303_out;
    wire NOR45305_out;
    wire NOR45306_out;
    wire NOR45307_out;
    wire NOR45308_out;
    wire NOR45310_out;
    wire NOR45311_out;
    wire NOR45312_out;
    wire NOR45313_out;
    wire NOR45314_out;
    wire NOR45316_out;
    wire NOR45317_out;
    wire NOR45318_out;
    wire NOR45320_out;
    wire NOR45321_out;
    wire NOR45322_out;
    wire NOR45323_out;
    wire NOR45324_out;
    wire NOR45325_out;
    wire NOR45326_out;
    wire NOR45327_out;
    wire NOR45334_out;
    wire NOR45335_out;
    wire NOR45336_out;
    wire NOR45337_out;
    wire NOR45338_out;
    wire NOR45339_out;
    wire NOR45340_out;
    wire NOR45341_out;
    wire NOR45342_out;
    wire NOR45343_out;
    wire NOR45344_out;
    wire NOR45347_out;
    wire NOR45348_out;
    wire NOR45349_out;
    wire NOR45350_out;
    wire NOR45351_out;
    wire NOR45353_out;
    wire NOR45354_out;
    wire NOR45355_out;
    wire NOR45356_out;
    wire NOR45357_out;
    
    wire NOR45402_out;
    wire NOR45403_out;
    wire NOR45405_out;
    wire NOR45406_out;
    wire NOR45407_out;
    wire NOR45408_out;
    wire NOR45409_out;
    wire NOR45410_out;
    wire NOR45411_out;
    wire NOR45412_out;
    wire NOR45413_out;
    wire NOR45414_out;
    wire NOR45415_out;
    wire NOR45416_out;
    wire NOR45417_out;
    wire NOR45418_out;
    wire NOR45419_out;
    wire NOR45420_out;
    wire NOR45421_out;
    wire NOR45422_out;
    wire NOR45423_out;
    wire NOR45424_out;
    wire NOR45425_out;
    wire NOR45426_out;
    wire NOR45427_out;
    wire NOR45428_out;
    wire NOR45429_out;
    wire NOR45430_out;
    wire NOR45431_out;
    wire NOR45432_out;
    wire NOR45433_out;
    wire NOR45434_out;
    wire NOR45447_out;
    wire NOR45450_out;
    wire NOR45451_out;
    wire NOR45452_out;
    wire NOR45453_out;
    wire NOR45454_out;
    wire NOR45455_out;
    
    wire NOR45410_in;
    wire NOR45417_in;
    wire NOR45424_in;
    wire NOR45431_in;
    
    wire ACTV_;
    wire ADVCNT;
    wire CNTOF9;
    wire TPORA_;
    wire HERB;
    wire F10AS0;
    
    
    // Channel 13
    
    nor_3 #(1'b0)  NOR45301(NOR45301_out,   CHWL04_,        WCH13_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45302(ACTV_,          NOR45301_out,   NOR45303_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45303(NOR45303_out,   ACTV_,          CCH13,          RADRPT,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45304(CH1304,         RCH13_,         ACTV_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45305(NOR45305_out,   NOR45303_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45306(NOR45306_out,   CHWL03_,        WCH13_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45307(NOR45307_out,   NOR45306_out,   NOR45308_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45308(NOR45308_out,   NOR45307_out,   CCH13,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45309(CH1303,         RCH13_,         NOR45307_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45310(NOR45310_out,   NOR45307_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45311(NOR45311_out,   NOR45308_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45312(NOR45312_out,   CHWL02_,        WCH13_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45313(NOR45313_out,   NOR45312_out,   NOR45314_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45314(NOR45314_out,   NOR45313_out,   CCH13,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45315(CH1302,         RCH13_,         NOR45313_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45316(NOR45316_out,   CHWL01_,        WCH13_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45317(NOR45317_out,   NOR45316_out,   NOR45318_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45318(NOR45318_out,   NOR45317_out,   CCH13,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45319(CH1301,         RCH13_,         NOR45317_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45320(NOR45320_out,   ADVCNT,         NOR45321_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45321(NOR45321_out,   NOR45320_out,   CNTOF9,         GOJAM,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45322(NOR45322_out,   NOR45310_out,   NOR45320_out,   F5BSB2_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45323(NOR45323_out,   F5BSB2_,        NOR45320_out,   NOR45311_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45324(NOR45324_out,   NOR45322_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45325(NOR45325_out,   NOR45323_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45326(NOR45326_out,   CNTOF9,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45327(NOR45327_out,   NOR45326_out,   GTSET_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45328(RRRANG,         NOR45314_out,   NOR45317_out,   NOR45324_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45329(RRRARA,         NOR45324_out,   NOR45318_out,   NOR45313_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45330(LRXVEL,         NOR45318_out,   NOR45314_out,   NOR45325_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45331(LRYVEL,         NOR45325_out,   NOR45317_out,   NOR45314_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45332(LRZVEL,         NOR45325_out,   NOR45313_out,   NOR45318_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45333(LRRANG,         NOR45325_out,   NOR45313_out,   NOR45317_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45334(NOR45334_out,   NOR45318_out,   NOR45314_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45335(NOR45335_out,   NOR45334_out,   NOR45310_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45336(NOR45336_out,   NOR45335_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR45337(NOR45337_out,   NOR45327_out,   NOR45338_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45338(NOR45338_out,   NOR45337_out,   RADRPT,         GOJAM,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45339(NOR45339_out,   F5ASB2_,        NOR45337_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45340(NOR45340_out,   NOR45339_out,   NOR45341_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45341(NOR45341_out,   NOR45340_out,   GOJAM,          F09B,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45342(NOR45342_out,   NOR45340_out,   TPORA_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45343(NOR45343_out,   TPORA_,         GTRST_,         n0VDCA,         p4SW, reset, prop_clk);
    assign RADRPT = NOR45342_out & NOR45343_out;
    
    nor_3 #(1'b0)  NOR45344(NOR45344_out,   NOR45339_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45345(RRSYNC,         NOR45336_out,   NOR45344_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45346(LRSYNC,         NOR45344_out,   NOR45311_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45347(NOR45347_out,   RRIN1,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45348(NOR45348_out,   NOR45336_out,   NOR45347_out,   NOR45305_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45349(NOR45349_out,   RRIN0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45350(NOR45350_out,   NOR45336_out,   NOR45349_out,   NOR45305_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45353(NOR45353_out,   LRIN1,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45354(NOR45354_out,   NOR45311_out,   NOR45353_out,   NOR45305_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45355(NOR45355_out,   LRIN0,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45356(NOR45356_out,   NOR45311_out,   NOR45355_out,   NOR45305_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45351(NOR45351_out,   NOR45348_out,   NOR45354_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45352(RNRADP,         NOR45351_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45357(NOR45357_out,   NOR45350_out,   NOR45356_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45358(RNRADM,         NOR45357_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR45359(TPORA_,         HERB,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45360(HERB,           TPOR_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Counter to 9
    
    nor_3 #(1'b0)  NOR45401(F10AS0,         F10A_,          SB0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45402(NOR45402_out,   F10AS0,         NOR45403_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45403(NOR45403_out,   NOR45402_out,   ACTV_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45404(ADVCNT,         F10A_,          NOR45402_out,   SB2_,           p4SW, reset, prop_clk);
    
    // First counter stage
    nor_3 #(1'b0)  NOR45405(NOR45405_out,   NOR45410_out,   RADRPT,         NOR45410_in,    p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45406(NOR45406_out,   NOR45405_out,   RADRPT,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45407(NOR45407_out,   ADVCNT,         NOR45408_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NOR45410_in = NOR45406_out & NOR45407_out;
    
    nor_3 #(1'b0)  NOR45408(NOR45408_out,   NOR45410_in,    ADVCNT,         NOR45409_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45409(NOR45409_out,   NOR45408_out,   NOR45411_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45410(NOR45410_out,   NOR45410_in,    NOR45411_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45411(NOR45411_out,   NOR45410_out,   NOR45408_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Second counter stage
    nor_3 #(1'b0)  NOR45412(NOR45412_out,   NOR45417_out,   NOR45417_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45413(NOR45413_out,   NOR45412_out,   RADRPT,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45414(NOR45414_out,   NOR45405_out,   NOR45415_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NOR45417_in = NOR45413_out & NOR45414_out;
    
    nor_3 #(1'b0)  NOR45415(NOR45415_out,   NOR45417_in,    NOR45405_out,   NOR45416_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45416(NOR45416_out,   NOR45415_out,   NOR45418_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45417(NOR45417_out,   NOR45417_in,    NOR45418_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45418(NOR45418_out,   NOR45417_out,   NOR45415_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Third counter stage
    nor_3 #(1'b0)  NOR45419(NOR45419_out,   NOR45424_out,   NOR45424_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45420(NOR45420_out,   NOR45419_out,   RADRPT,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45421(NOR45421_out,   NOR45412_out,   NOR45422_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NOR45424_in = NOR45420_out & NOR45421_out;
    
    nor_3 #(1'b0)  NOR45422(NOR45422_out,   NOR45424_in,    NOR45412_out,   NOR45423_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45423(NOR45423_out,   NOR45422_out,   NOR45425_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45424(NOR45424_out,   NOR45424_in,    NOR45425_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45425(NOR45425_out,   NOR45424_out,   NOR45422_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Fourth counter stage
    nor_3 #(1'b0)  NOR45426(NOR45426_out,   NOR45431_out,   NOR45431_in,    n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45427(NOR45427_out,   NOR45426_out,   RADRPT,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45428(NOR45428_out,   NOR45419_out,   NOR45429_out,   n0VDCA,         p4SW, reset, prop_clk);
    assign NOR45431_in = NOR45427_out & NOR45428_out;
    
    nor_3 #(1'b0)  NOR45429(NOR45429_out,   NOR45431_in,    NOR45419_out,   NOR45430_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45430(NOR45430_out,   NOR45429_out,   NOR45432_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45431(NOR45431_out,   NOR45431_in,    NOR45432_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45432(NOR45432_out,   NOR45431_out,   NOR45429_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // CNTOF9
    nor_3 #(1'b0)  NOR45433(NOR45433_out,   NOR45431_out,   NOR45425_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45434(NOR45434_out,   NOR45418_out,   F10A,           NOR45410_out,   p4SW, reset, prop_clk);
    assign CNTOF9 = NOR45433_out & NOR45434_out;
    
    // CH11
    nor_3 #(1'b0)  NOR45435(A18_1_CHOR11_,  CHAT11,         CHBT11,         CH1111,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45436(A18_2_CHOR11_,  CH3311,         CH1211,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45437(CH11,           RCHG_,          CHOR11_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // CH12
    nor_3 #(1'b0)  NOR45438(A18_1_CHOR12_,  CHAT12,         CHBT12,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45439(A18_2_CHOR12_,  CH1212,         CH1112,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45440(CH12,           RCHG_,          CHOR12_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // CH13
    nor_3 #(1'b0)  NOR45441(A18_1_CHOR13_,  CHAT13,         CHBT13,         CH3313,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45442(CH13,           RCHG_,          CHOR13_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // CH14
    nor_3 #(1'b0)  NOR45443(A18_1_CHOR14_,  CHAT14,         CHBT14,         CH3314,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45458(A18_2_CHOR14_,  CH1114,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45444(CH14,           RCHG_,          CHOR14_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // CH16
    nor_3 #(1'b0)  NOR45445(A18_1_CHOR16_,  CH1116,         CH1216,         CH3316,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45446(CH16,           RCHG_,          CHOR16_,        n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Channel 33 bit 12
    nor_3 #(1'b1)  NOR45447(NOR45447_out,   DKEND,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45448(END,            NOR45447_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45449(DLKRPT,         NOR45447_out,   NOR45450_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45450(NOR45450_out,   DLKRPT,         NOR45451_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45451(NOR45451_out,   DLKRPT,         NOR45452_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45452(NOR45452_out,   NOR45451_out,   F10A,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45453(NOR45453_out,   NOR45447_out,   DLKRPT,         NOR45451_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR45454(NOR45454_out,   NOR45453_out,   NOR45455_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45455(NOR45455_out,   NOR45454_out,   CCH33,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR45456(CH3312,         NOR45455_out,   RCH33_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR45457 removed (not connected)
    
    
    
    // CH
    
endmodule

