`timescale 1ns / 1ps


module a16_inout_i(
    input wire CHWL01_,
    input wire CHWL02_,
    input wire CHWL03_,
    input wire CHWL04_,
    input wire CHWL05_,
    input wire CHWL06_,
    input wire CHWL07_,
    input wire CHWL08_,    
    input wire CHWL09_,
    input wire CHWL10_,
    input wire CHWL11_,
    input wire CHWL12_,
    input wire CHWL13_,
    input wire CHWL14_,
    
    input wire GOJAM,
    input wire XB2_,
    input wire XB5_,
    input wire XB6_,
    input wire XT0_,
    input wire XT1_,
    
    input wire WCHG_,
    input wire CCHG_,
    
    input wire CH0705,
    input wire CH0706,
    input wire CH0707,
    
    input wire CH1501,
    input wire CH1502,
    input wire CH1503,
    input wire CH1504,
    
    input wire CH3201,
    input wire CH3202,
    input wire CH3203,
    input wire CH3204,
    input wire CH3205,
    input wire CH3206,
    input wire CH3207,
    input wire CH3208,
    
    input wire WCH11_,
    input wire CCH11,
    input wire RCH11_,

    input wire FLASH,
    input wire FLASH_,
    
    output wire RCpXpP,
    output wire RCmXmP,
    output wire RCmXpP,
    output wire RCpXmP,
    output wire RCpXpY,
    output wire RCmXmY,
    output wire RCmXpY,
    output wire RCpXmY,
    output wire RCpZpR,
    output wire RCmZmR,
    output wire RCmZpR,
    output wire RCpZmR,
    output wire RCpYpR,
    output wire RCmYmR,
    output wire RCmYpR,
    output wire RCpYmR,
    
    output wire A16_1_CHOR01_,
    output wire A16_2_CHOR01_,
    output wire A16_1_CHOR02_,
    output wire A16_2_CHOR02_,
    output wire A16_1_CHOR03_,
    output wire A16_2_CHOR03_,
    output wire A16_1_CHOR04_,
    output wire A16_2_CHOR04_,
    output wire A16_1_CHOR05_,
    output wire A16_2_CHOR05_,
    output wire A16_1_CHOR06_,
    output wire A16_2_CHOR06_,
    output wire A16_1_CHOR07_,
    output wire A16_2_CHOR07_,
    output wire A16_1_CHOR08_,
    
    output wire ZOPCDU,
    output wire ENEROP,
    output wire STARON,
    output wire COARSE,
    output wire ZIMCDU,
    output wire ENERIM,
    output wire S4BTAK,
    output wire ZEROPT,
    output wire DISDAC,
    
    output wire ISSWAR,
    output wire COMACT,
    output wire UPLACT,
    output wire TMPOUT,
    output wire KYRLS,
    output wire VNFLSH,
    output wire OPEROR,
    
    output wire WCH12_,
    output wire CCH12,
    output wire RCH12_,
    
    output wire CH1208,
    output wire CH1209,
    output wire CH1210,
    output wire CH1211,
    output wire CH1212,
    output wire CH1213,
    output wire CH1214,
    output wire OT1207,
    output wire OT1207_,
    output wire TVCNAB,
    output wire MROLGT,
    output wire S4BSEQ,
    output wire S4BOFF,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A16 sheet 1
    *  Sheet number 2005266/1
    *
    **************************/
    
    wire NOR43101_out;
    wire NOR43102_out;
    wire NOR43103_out;
    wire NOR43104_out;
    wire NOR43107_out;
    wire NOR43108_out;
    wire NOR43109_out;
    wire NOR43110_out;
    wire NOR43113_out;
    wire NOR43114_out;
    wire NOR43115_out;
    wire NOR43116_out;
    wire NOR43119_out;
    wire NOR43120_out;
    wire NOR43121_out;
    wire NOR43122_out;
    wire NOR43125_out;
    wire NOR43126_out;
    wire NOR43127_out;
    wire NOR43128_out;
    wire NOR43131_out;
    wire NOR43132_out;
    wire NOR43133_out;
    wire NOR43134_out;
    wire NOR43137_out;
    wire NOR43138_out;
    wire NOR43139_out;
    wire NOR43140_out;
    wire NOR43143_out;
    wire NOR43144_out;
    wire NOR43145_out;
    wire NOR43146_out;
    wire NOR43151_out;
    wire NOR43152_out;
    wire NOR43153_out;
    wire NOR43156_out;
    wire NOR43157_out;
    wire NOR43158_out;
    
    wire NOR43201_out;
    wire NOR43202_out;
    wire NOR43203_out;
    wire NOR43204_out;
    wire NOR43206_out;
    wire NOR43209_out;
    wire NOR43210_out;
    wire NOR43213_out;
    wire NOR43216_out;
    wire NOR43219_out;
    wire NOR43220_out;
    wire NOR43221_out;
    wire NOR43222_out;
    wire NOR43224_out;
    wire NOR43225_out;
    wire NOR43226_out;    
    wire NOR43230_out;
    wire NOR43231_out;
    wire NOR43232_out;
    wire NOR43233_out;
    wire NOR43235_out;
    wire NOR43236_out;
    wire NOR43237_out;
    wire NOR43238_out;
    wire NOR43240_out;
    wire NOR43241_out;
    wire NOR43242_out;
    wire NOR43243_out;
    wire NOR43245_out;
    wire NOR43246_out;
    wire NOR43247_out;
    wire NOR43248_out;
    wire NOR43250_out;
    wire NOR43251_out;
    wire NOR43252_out;
    wire NOR43253_out;
    wire NOR43255_out;
    wire NOR43256_out;
    wire NOR43257_out;
    wire NOR43258_out;
    
    wire WCH05_;
    wire CCH05;
    wire RCH05_;
    wire WCH06_;
    wire CCH06;
    wire RCH06_;

    wire CH1207;


    // Channel 5
    
    nor_3 #(1'b0)  NOR43101(NOR43101_out,   CHWL01_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43102(NOR43102_out,   NOR43101_out,   NOR43103_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43103(NOR43103_out,   NOR43102_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43104(NOR43104_out,   RCH05_,         NOR43102_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43105(RCpXpP,         NOR43102_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43106(A16_1_CHOR01_,  NOR43258_out,   NOR43104_out,   CH3201,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43107(NOR43107_out,   CHWL02_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43108(NOR43108_out,   NOR43107_out,   NOR43109_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43109(NOR43109_out,   NOR43108_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43110(NOR43110_out,   RCH05_,         NOR43108_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43111(RCmXmP,         NOR43108_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43112(A16_1_CHOR02_,  NOR43253_out,   NOR43110_out,   CH3202,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43113(NOR43113_out,   CHWL03_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43114(NOR43114_out,   NOR43113_out,   NOR43115_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43115(NOR43115_out,   NOR43114_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43116(NOR43116_out,   RCH05_,         NOR43114_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43117(RCmXpP,         NOR43114_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43118(A16_1_CHOR03_,  NOR43248_out,   NOR43116_out,   CH3203,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43119(NOR43119_out,   CHWL04_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43120(NOR43120_out,   NOR43119_out,   NOR43121_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43121(NOR43121_out,   NOR43120_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43122(NOR43122_out,   RCH05_,         NOR43120_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43123(RCpXmP,         NOR43120_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43124(A16_1_CHOR04_,  NOR43243_out,   NOR43122_out,   CH3204,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43125(NOR43125_out,   CHWL05_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43126(NOR43126_out,   NOR43125_out,   NOR43127_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43127(NOR43127_out,   NOR43126_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43128(NOR43128_out,   RCH05_,         NOR43126_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43129(RCpXpY,         NOR43126_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43130(A16_1_CHOR05_,  NOR43238_out,   NOR43128_out,   CH3205,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43131(NOR43131_out,   CHWL06_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43132(NOR43132_out,   NOR43131_out,   NOR43133_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43133(NOR43133_out,   NOR43132_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43134(NOR43134_out,   RCH05_,         NOR43132_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43135(RCmXmY,         NOR43132_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43136(A16_1_CHOR06_,  NOR43233_out,   NOR43134_out,   CH3206,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43137(NOR43137_out,   CHWL07_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43138(NOR43138_out,   NOR43137_out,   NOR43139_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43139(NOR43139_out,   NOR43138_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43140(NOR43140_out,   RCH05_,         NOR43138_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43141(RCmXpY,         NOR43138_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43142(A16_1_CHOR07_,  NOR43222_out,   NOR43140_out,   CH3207,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43143(NOR43143_out,   CHWL08_,        WCH05_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43144(NOR43144_out,   NOR43143_out,   NOR43145_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43145(NOR43145_out,   NOR43144_out,   CCH05,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43146(NOR43146_out,   RCH05_,         NOR43144_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43147(RCpXmY,         NOR43144_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43148(A16_1_CHOR08_,  NOR43204_out,   NOR43146_out,   CH3208,         p4SW, reset, prop_clk);
    
    // WCH05
    nor_3 #(1'b0)  NOR43151(NOR43151_out,   XB5_,           XT0_,           WCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43149(WCH05_,         NOR43151_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43150 removed (fan-out expansion)
    
    // CCH05
    nor_3 #(1'b0)  NOR43152(NOR43152_out,   CCHG_,          XB5_,           XT0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43153(NOR43153_out,   NOR43152_out,   GOJAM,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43154(CCH05,          NOR43153_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RCH05
    nor_3 #(1'b0)  NOR43216(NOR43216_out,   XT0_,           XB5_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43217(RCH05_,         NOR43216_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43218 removed (fan-out expansion)
    
    
    // Channel 12 bit 7
    nor_3 #(1'b0)  NOR43224(NOR43224_out,   WCH12_,         CHWL07_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43225(NOR43225_out,   NOR43224_out,   NOR43226_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43226(NOR43226_out,   NOR43225_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43227(CH1207,         RCH12_,         NOR43225_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43228(OT1207,         NOR43225_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43229(OT1207_,        NOR43226_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Channel 12 bit 8
    nor_3 #(1'b0)  NOR43156(NOR43156_out,   CHWL08_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43157(NOR43157_out,   NOR43156_out,   NOR43158_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43158(NOR43158_out,   NOR43157_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43159(CH1208,         RCH12_,         NOR43157_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43160(TVCNAB,         NOR43157_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Channel 6
    
    nor_3 #(1'b0)  NOR43255(NOR43255_out,   CHWL01_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43256(NOR43256_out,   NOR43255_out,   NOR43257_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43257(NOR43257_out,   NOR43256_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43258(NOR43258_out,   NOR43256_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43259(RCpZpR,         NOR43256_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43250(NOR43250_out,   CHWL02_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43251(NOR43251_out,   NOR43250_out,   NOR43252_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43252(NOR43252_out,   NOR43251_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43253(NOR43253_out,   NOR43251_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43254(RCmZmR,         NOR43251_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43245(NOR43245_out,   CHWL03_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43246(NOR43246_out,   NOR43245_out,   NOR43247_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43247(NOR43247_out,   NOR43246_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43248(NOR43248_out,   NOR43246_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43249(RCmZpR,         NOR43246_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43240(NOR43240_out,   CHWL04_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43241(NOR43241_out,   NOR43240_out,   NOR43242_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43242(NOR43242_out,   NOR43241_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43243(NOR43243_out,   NOR43241_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43244(RCpZmR,         NOR43241_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43235(NOR43235_out,   CHWL05_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43236(NOR43236_out,   NOR43235_out,   NOR43237_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43237(NOR43237_out,   NOR43236_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43238(NOR43238_out,   NOR43236_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43239(RCpYpR,         NOR43236_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43230(NOR43230_out,   CHWL06_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43231(NOR43231_out,   NOR43230_out,   NOR43232_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43232(NOR43232_out,   NOR43231_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43233(NOR43233_out,   NOR43231_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43234(RCmYmR,         NOR43231_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43219(NOR43219_out,   CHWL07_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43220(NOR43220_out,   NOR43219_out,   NOR43221_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43221(NOR43221_out,   NOR43220_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43222(NOR43222_out,   NOR43220_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43223(RCmYpR,         NOR43220_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43201(NOR43201_out,   CHWL08_,        WCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43202(NOR43202_out,   NOR43201_out,   NOR43203_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43203(NOR43203_out,   NOR43202_out,   CCH06,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43204(NOR43204_out,   NOR43202_out,   RCH06_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43205(RCpYmR,         NOR43202_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // WCH06
    nor_3 #(1'b0)  NOR43206(NOR43206_out,   XB6_,           WCHG_,          XT0_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43207(WCH06_,         NOR43206_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43208 removed (fan-out expansion)
    
    // CCH06
    nor_3 #(1'b0)  NOR43209(NOR43209_out,   XT0_,           CCHG_,          XB6_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43210(NOR43210_out,   GOJAM,          NOR43209_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43211(CCH06,          NOR43210_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43212 removed (fan-out expansion)
    
    // RCH06
    nor_3 #(1'b0)  NOR43213(NOR43213_out,   XB6_,           XT0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43214(RCH06_,         NOR43213_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43215 removed (fan-out expansion)
    
    // NOR43260 removed (not connected)
    
    
    /**************************
    *
    *  Module A16 sheet 2
    *  Sheet number 2005266/2
    *
    **************************/
    
    wire NOR43301_out;
    wire NOR43303_out;
    wire NOR43304_out;
    wire NOR43305_out;
    wire NOR43306_out;
    wire NOR43307_out;
    wire NOR43308_out;
    wire NOR43309_out;
    wire NOR43311_out;
    wire NOR43313_out;
    wire NOR43314_out;
    wire NOR43315_out;
    wire NOR43316_out;
    wire NOR43317_out;
    wire NOR43318_out;
    wire NOR43319_out;
    wire NOR43321_out;
    wire NOR43323_out;
    wire NOR43324_out;
    wire NOR43325_out;
    wire NOR43326_out;
    wire NOR43327_out;
    wire NOR43328_out;
    wire NOR43329_out;
    wire NOR43333_out;
    wire NOR43334_out;
    wire NOR43335_out;
    wire NOR43336_out;
    wire NOR43337_out;
    wire NOR43338_out;
    wire NOR43343_out;
    wire NOR43344_out;
    wire NOR43345_out;
    wire NOR43349_out;
    wire NOR43350_out;
    wire NOR43351_out;
    wire NOR43355_out;
    
    wire NOR43402_out;
    wire NOR43403_out;
    wire NOR43404_out;
    wire NOR43405_out;
    wire NOR43406_out;
    wire NOR43409_out;
    wire NOR43410_out;
    wire NOR43411_out;
    wire NOR43414_out;
    wire NOR43415_out;
    wire NOR43416_out;
    wire NOR43417_out;
    wire NOR43418_out;
    wire NOR43421_out;
    wire NOR43422_out;
    wire NOR43423_out;
    wire NOR43426_out;
    wire NOR43427_out;
    wire NOR43428_out;
    wire NOR43429_out;
    wire NOR43430_out;
    wire NOR43431_out;
    wire NOR43432_out;
    wire NOR43433_out;
    wire NOR43434_out;
    wire NOR43435_out;
    wire NOR43436_out;
    wire NOR43438_out;
    wire NOR43440_out;
    wire NOR43441_out;
    wire NOR43442_out;
    wire NOR43443_out;
    wire NOR43444_out;
    wire NOR43445_out;
    wire NOR43446_out;
    wire NOR43447_out;
    wire NOR43448_out;
    wire NOR43453_out;
    wire NOR43454_out;
    wire NOR43455_out;
    wire NOR43456_out;
    wire NOR43457_out;
    wire NOR43458_out;
    
    
    // Channel 12
    
    nor_3 #(1'b0)  NOR43305(NOR43305_out,   CHWL01_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43303(NOR43303_out,   NOR43305_out,   NOR43304_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43304(NOR43304_out,   NOR43303_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43301(NOR43301_out,   RCH12_,         NOR43303_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43302(ZOPCDU,         NOR43303_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43306(NOR43306_out,   CHWL02_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43307(NOR43307_out,   NOR43306_out,   NOR43308_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43308(NOR43308_out,   NOR43307_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43309(NOR43309_out,   RCH12_,         NOR43307_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43310(ENEROP,         NOR43307_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43315(NOR43315_out,   CHWL03_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43313(NOR43313_out,   NOR43315_out,   NOR43314_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43314(NOR43314_out,   NOR43313_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43311(NOR43311_out,   RCH12_,         NOR43313_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43312(STARON,         NOR43313_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43316(NOR43316_out,   CHWL04_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43317(NOR43317_out,   NOR43316_out,   NOR43318_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43318(NOR43318_out,   NOR43317_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43319(NOR43319_out,   RCH12_,         NOR43317_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43320(COARSE,         NOR43317_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43325(NOR43325_out,   CHWL05_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43323(NOR43323_out,   NOR43325_out,   NOR43324_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43324(NOR43324_out,   NOR43323_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43321(NOR43321_out,   RCH12_,         NOR43323_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43322(ZIMCDU,         NOR43323_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43326(NOR43326_out,   CHWL06_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43327(NOR43327_out,   NOR43326_out,   NOR43328_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43328(NOR43328_out,   NOR43327_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43329(NOR43329_out,   RCH12_,         NOR43327_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43330(ENERIM,         NOR43327_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43335(NOR43335_out,   CHWL09_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43333(NOR43333_out,   NOR43335_out,   NOR43334_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43334(NOR43334_out,   NOR43333_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43331(CH1209,         RCH12_,         NOR43333_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43332(S4BTAK,         NOR43333_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43336(NOR43336_out,   CHWL10_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43337(NOR43337_out,   NOR43336_out,   NOR43338_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43338(NOR43338_out,   NOR43337_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43339(CH1210,         RCH12_,         NOR43337_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43340(ZEROPT,         NOR43337_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43345(NOR43345_out,   CHWL11_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43343(NOR43343_out,   NOR43345_out,   NOR43344_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43344(NOR43344_out,   NOR43343_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43341(CH1211,         RCH12_,         NOR43343_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43342(DISDAC,         NOR43343_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43349(NOR43349_out,   WCHG_,          XB2_,           XT1_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43346(WCH12_,         NOR43349_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43347 and NOR43348 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR43350(NOR43350_out,   CCHG_,          XT1_,           XB2_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43351(NOR43351_out,   NOR43350_out,   GOJAM,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43352(CCH12,          NOR43351_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43353 and NOR43354 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR43355(NOR43355_out,   XT1_,           XB2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43356(RCH12_,         NOR43355_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR43357 and NOR43358 removed (fan-out expansion)
    // NOR43359 and NOR43360 removed (not connected)
    
    
    // Channel 11
    
    nor_3 #(1'b0)  NOR43405(NOR43405_out,   CHWL01_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43404(NOR43404_out,   NOR43405_out,   NOR43403_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43403(NOR43403_out,   NOR43404_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43402(NOR43402_out,   RCH11_,         NOR43404_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43401(ISSWAR,         NOR43404_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43407(A16_2_CHOR01_,  NOR43301_out,   NOR43402_out,   CH1501,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43406(NOR43406_out,   CHWL02_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43409(NOR43409_out,   NOR43406_out,   NOR43410_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43410(NOR43410_out,   NOR43409_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43411(NOR43411_out,   RCH11_,         NOR43409_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43412(COMACT,         NOR43409_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43408(A16_2_CHOR02_,  NOR43309_out,   NOR43411_out,   CH1502,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43417(NOR43417_out,   CHWL03_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43416(NOR43416_out,   NOR43417_out,   NOR43415_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43415(NOR43415_out,   NOR43416_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43414(NOR43414_out,   RCH11_,         NOR43416_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43413(UPLACT,         NOR43416_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43419(A16_2_CHOR03_,  NOR43311_out,   NOR43414_out,   CH1503,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43418(NOR43418_out,   CHWL04_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43421(NOR43421_out,   NOR43418_out,   NOR43422_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43422(NOR43422_out,   NOR43421_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43423(NOR43423_out,   RCH11_,         NOR43421_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43424(TMPOUT,         NOR43421_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43420(A16_2_CHOR04_,  NOR43319_out,   NOR43423_out,   CH1504,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43431(NOR43431_out,   CHWL05_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43430(NOR43430_out,   NOR43431_out,   NOR43429_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43429(NOR43429_out,   NOR43430_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43428(NOR43428_out,   RCH11_,         NOR43430_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43427(NOR43427_out,   NOR43430_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43426(NOR43426_out,   FLASH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign KYRLS = NOR43427_out & NOR43426_out;
    nor_3 #(1'b0)  NOR43425(A16_2_CHOR05_,  NOR43321_out,   NOR43428_out,   CH0705,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43432(NOR43432_out,   CHWL06_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43434(NOR43434_out,   NOR43432_out,   NOR43433_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43433(NOR43433_out,   NOR43434_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43436(NOR43436_out,   RCH11_,         NOR43434_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43435(NOR43435_out,   NOR43434_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43438(NOR43438_out,   FLASH_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign VNFLSH = NOR43435_out & NOR43438_out;
    nor_3 #(1'b0)  NOR43437(A16_2_CHOR06_,  NOR43329_out,   NOR43436_out,   CH0706,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43445(NOR43445_out,   CHWL07_,        WCH11_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43444(NOR43444_out,   NOR43445_out,   NOR43443_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43443(NOR43443_out,   NOR43444_out,   CCH11,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43442(NOR43442_out,   RCH11_,         NOR43444_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43441(NOR43441_out,   NOR43444_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43440(NOR43440_out,   FLASH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign OPEROR = NOR43441_out & NOR43440_out;
    nor_3 #(1'b0)  NOR43439(A16_2_CHOR07_,  CH1207,         NOR43442_out,   CH0707,         p4SW, reset, prop_clk);
    
    
    // Channel 12
    
    nor_3 #(1'b0)  NOR43446(NOR43446_out,   CHWL12_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43447(NOR43447_out,   NOR43446_out,   NOR43448_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43448(NOR43448_out,   NOR43447_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43449(CH1212,         RCH12_,         NOR43447_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43450(MROLGT,         NOR43447_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43455(NOR43455_out,   CHWL13_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43454(NOR43454_out,   NOR43455_out,   NOR43453_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43453(NOR43453_out,   NOR43454_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43452(CH1213,         RCH12_,         NOR43454_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43451(S4BSEQ,         NOR43454_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR43456(NOR43456_out,   CHWL14_,        WCH12_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR43457(NOR43457_out,   NOR43456_out,   NOR43458_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43458(NOR43458_out,   NOR43457_out,   CCH12,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43459(CH1214,         RCH12_,         NOR43457_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR43460(S4BOFF,         NOR43457_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
endmodule
