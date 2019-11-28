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
    
    input wire GOJAM,
    input wire XB5_,
    input wire XT0_,
    
    input wire WCHG_,
    input wire CCHG_,
    
    input wire RCH05_,
    
    input wire CH3201,
    input wire CH3202,
    input wire CH3203,
    input wire CH3204,
    input wire CH3205,
    input wire CH3206,
    input wire CH3207,
    input wire CH3208,
    
    input wire WCH12_,
    input wire CCH12,
    input wire RCH12_,
    
    output wire RCpXpP,
    output wire RCmXmP,
    output wire RCmXpP,
    output wire RCpXmP,
    output wire RCpXpY,
    output wire RCmXmY,
    output wire RCmXpY,
    output wire RCpXmY,
    
    output wire A16_1_CHOR01_,
    output wire A16_1_CHOR02_,
    output wire A16_1_CHOR03_,
    output wire A16_1_CHOR04_,
    output wire A16_1_CHOR05_,
    output wire A16_1_CHOR06_,
    output wire A16_1_CHOR07_,
    output wire A16_1_CHOR08_,
    
    output wire CH1208,
    output wire TVCNAB,
    
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
    
    wire NOR43204_out;
    wire NOR43222_out;
    wire NOR43233_out;
    wire NOR43238_out;
    wire NOR43243_out;
    wire NOR43248_out;
    wire NOR43253_out;
    wire NOR43258_out;
    
    wire WCH05_;
    wire CCH05;
    
    // Channel 5
    
    nor_2 #(1'b0) NOR43101(NOR43101_out,    CHWL01_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43102(NOR43102_out,    NOR43101_out,   NOR43103_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43103(NOR43103_out,    NOR43102_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43104(NOR43104_out,    RCH05_,         NOR43102_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43105(RCpXpP,          NOR43102_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43106(A16_1_CHOR01_,   NOR43258_out,   NOR43104_out,   CH3201,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43107(NOR43107_out,    CHWL02_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43108(NOR43108_out,    NOR43107_out,   NOR43109_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43109(NOR43109_out,    NOR43108_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43110(NOR43110_out,    RCH05_,         NOR43108_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43111(RCmXmP,          NOR43108_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43112(A16_1_CHOR02_,   NOR43253_out,   NOR43110_out,   CH3202,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43113(NOR43113_out,    CHWL03_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43114(NOR43114_out,    NOR43113_out,   NOR43115_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43115(NOR43115_out,    NOR43114_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43116(NOR43116_out,    RCH05_,         NOR43114_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43117(RCmXpP,          NOR43114_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43118(A16_1_CHOR03_,   NOR43248_out,   NOR43116_out,   CH3203,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43119(NOR43119_out,    CHWL04_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43120(NOR43120_out,    NOR43119_out,   NOR43121_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43121(NOR43121_out,    NOR43120_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43122(NOR43122_out,    RCH05_,         NOR43120_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43123(RCpXmP,          NOR43120_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43124(A16_1_CHOR04_,   NOR43243_out,   NOR43122_out,   CH3204,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43125(NOR43125_out,    CHWL05_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43126(NOR43126_out,    NOR43125_out,   NOR43127_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43127(NOR43127_out,    NOR43126_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43128(NOR43128_out,    RCH05_,         NOR43126_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43129(RCpXpY,          NOR43126_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43130(A16_1_CHOR05_,   NOR43238_out,   NOR43128_out,   CH3205,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43131(NOR43131_out,    CHWL06_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43132(NOR43132_out,    NOR43131_out,   NOR43133_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43133(NOR43133_out,    NOR43132_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43134(NOR43134_out,    RCH05_,         NOR43132_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43135(RCmXmY,          NOR43132_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43136(A16_1_CHOR06_,   NOR43233_out,   NOR43134_out,   CH3206,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43137(NOR43137_out,    CHWL07_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43138(NOR43138_out,    NOR43137_out,   NOR43139_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43139(NOR43139_out,    NOR43138_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43140(NOR43140_out,    RCH05_,         NOR43138_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43141(RCmXpY,          NOR43138_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43142(A16_1_CHOR07_,   NOR43222_out,   NOR43140_out,   CH3207,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR43143(NOR43143_out,    CHWL08_,        WCH05_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43144(NOR43144_out,    NOR43143_out,   NOR43145_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43145(NOR43145_out,    NOR43144_out,   CCH05,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43146(NOR43146_out,    RCH05_,         NOR43144_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43147(RCpXmY,          NOR43144_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR43148(A16_1_CHOR08_,   NOR43204_out,   NOR43146_out,   CH3208,                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR43151(NOR43151_out,    XB5_,           XT0_,           WCHG_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR43149(WCH05_,          NOR43151_out,                                                   reset, prop_clk);
    // NOR43150 omitted
    
    nor_3 #(1'b0) NOR43152(NOR43152_out,    CCHG_,          XB5_,           XT0_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR43153(NOR43153_out,    NOR43152_out,   GOJAM,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR43154(CCH05,           NOR43153_out,                                                   reset, prop_clk);
    
    // Channel 12 bit 8
    nor_2 #(1'b0) NOR43156(NOR43156_out,    CHWL08_,        WCH12_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR43157(NOR43157_out,    NOR43156_out,   NOR43158_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR43158(NOR43158_out,    NOR43157_out,   CCH12,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR43159(CH1208,          RCH12_,         NOR43157_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR43160(TVCNAB,          NOR43157_out,                                                   reset, prop_clk);
    
endmodule
