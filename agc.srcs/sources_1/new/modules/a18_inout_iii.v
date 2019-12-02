`timescale 1ns / 1ps

module a18_inout_iii(
    input wire T05,
    input wire T11,
    
    input wire F09A_,
    input wire F09B,
    input wire F09B_,
    input wire F09D,
    input wire F17A_,
    input wire F17B_,
    
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
    
    output wire ERRST,
    
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
    
    wire RCH15_;
    wire RCH16_;
    wire MKEY15;
    wire NKEY15;
    
    
    // Channel 15
    nor_2 #(1'b1) NOR45101(NOR45101_out,    MKEY1,          NOR45102_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45102(NOR45102_out,    NOR45101_out,   NOR45123_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45103(CH1501,          RCH15_,         NOR45101_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45104(NOR45104_out,    NOR45102_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45105(NOR45105_out,    MKEY2,          NOR45106_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45106(NOR45106_out,    NOR45105_out,   NOR45123_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45107(CH1502,          RCH15_,         NOR45105_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45108(NOR45108_out,    NOR45106_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45109(NOR45109_out,    MKEY3,          NOR45110_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45110(NOR45110_out,    NOR45109_out,   NOR45123_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45111(CH1503,          RCH15_,         NOR45109_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45112(NOR45112_out,    NOR45110_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45113(NOR45113_out,    MKEY4,          NOR45114_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45114(NOR45114_out,    NOR45113_out,   NOR45123_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45115(CH1504,          RCH15_,         NOR45113_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45116(NOR45116_out,    NOR45114_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45117(NOR45117_out,    MKEY5,          NOR45118_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45118(NOR45118_out,    NOR45117_out,   NOR45123_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45119(CH1505,          RCH15_,         NOR45117_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45120(NOR45120_out,    NOR45118_out,                                                   reset, prop_clk);
    
    // Clear/read signals
    nor_1 #(1'b0) NOR45121(NOR45121_out,    MAINRS,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR45123(NOR45123_out,    NOR45121_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR45122(NOR45122_out,    XT1_,           XB5_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR45124(RCH15_,          NOR45122_out,                                                   reset, prop_clk);
    
    // KYRPT1
    nor_3 #(1'b0) NOR45125(NOR45125_out,    NOR45104_out,   NOR45108_out,   NOR45112_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR45126(NOR45126_out,    NOR45116_out,   NOR45120_out,                                   reset, prop_clk);
    assign MKEY15 = NOR45125_out & NOR45126_out;
    
    nor_4 #(1'b0) NOR45127(NOR45127_out,    NOR45123_out,   F09A_,          MKEY15,         NOR45135_out,   reset, prop_clk);
    // NOR45132 merged into NOR45127
    
    nor_2 #(1'b1) NOR45129(NOR45129_out,    NOR45127_out,   NOR45130_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45130(NOR45130_out,    NOR45129_out,   MKEY15,         F09D,                           reset, prop_clk);
    nor_2 #(1'b0) NOR45128(TPOR_,           T05,            T11,                                            reset, prop_clk);
    nor_3 #(1'b0) NOR45131(KYRPT1,          TPOR_,          NOR45129_out,   F09B_,                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR45133(NOR45133_out,    MKEY15,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR45134(NOR45134_out,    NOR45133_out,   NOR45121_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45135(NOR45135_out,    NOR45134_out,   NOR45136_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45136(NOR45136_out,    NOR45135_out,   KYRPT1,                                         reset, prop_clk);
    
    
    // Channel 13 bit 11
    nor_2 #(1'b0) NOR45137(NOR45137_out,    WCH13_,         CHWL11_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR45138(NOR45138_out,    NOR45137_out,   NOR45139_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45139(NOR45139_out,    NOR45138_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR45140(CH1311,          NOR45138_out,   RCH13_,                                         reset, prop_clk);
    
    // Standby
    nor_1 #(1'b0) NOR45141(NOR45141_out,    SBYBUT,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR45143(NOR45143_out,    F17A_,          NOR45143_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45145(NOR45145_out,    NOR45143_out,   NOR45144_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45144(NOR45144_out,    NOR45145_out,   NOR45141_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45147(NOR45147_out,    F17B_,          NOR45145_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45142(NOR45142_out,    NOR45147_out,   NOR45146_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45146(NOR45146_out,    NOR45142_out,   NOR45141_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45149(NOR45149_out,    NOR45142_out,   STOP,           NOR45138_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR45150(NOR45150_out,    NOR45149_out,   NOR45151_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45151(NOR45151_out,    NOR45150_out,   NOR45142_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45152(NOR45152_out,    NOR45151_out,   NOR45142_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45154(NOR45154_out,    NOR45151_out,   STNDBY,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR45155(STNDBY,          NOR45154_out,   NOR45152_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45153(STNDBY_,         STNDBY,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR45148(SBY,             STNDBY_,                                                        reset, prop_clk);
    nor_2 #(1'b0) NOR45156(NOR45156_out,    STNDBY,         ALTEST,                                         reset, prop_clk);
    nor_1 #(1'b0) NOR45157(SBYLIT,          NOR45156_out,                                                   reset, prop_clk);
    // Moved here from A14 sheet 2
    nor_1 #(1'b0) NOR42457(SBYREL_,         SBY,                                                            reset, prop_clk);
    // NOR45158 removed (not connected)
    
    // Channel 16
    nor_2 #(1'b1) NOR45201(NOR45201_out,    NKEY1,          NOR45202_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45202(NOR45202_out,    NOR45201_out,   NOR45223_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45203(CH1601,          RCH16_,         NOR45201_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45204(NOR45204_out,    NOR45202_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45205(NOR45205_out,    NKEY2,          NOR45206_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45206(NOR45206_out,    NOR45205_out,   NOR45223_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45207(CH1602,          RCH16_,         NOR45205_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45208(NOR45208_out,    NOR45206_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45209(NOR45209_out,    NKEY3,          NOR45210_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45210(NOR45210_out,    NOR45209_out,   NOR45223_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45211(CH1603,          RCH16_,         NOR45209_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45212(NOR45212_out,    NOR45210_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45213(NOR45213_out,    NKEY4,          NOR45214_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45214(NOR45214_out,    NOR45213_out,   NOR45223_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45215(CH1604,          RCH16_,         NOR45213_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45216(NOR45216_out,    NOR45214_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45217(NOR45217_out,    NKEY5,          NOR45218_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45218(NOR45218_out,    NOR45217_out,   NOR45223_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45219(CH1605,          RCH16_,         NOR45217_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45220(NOR45220_out,    NOR45218_out,                                                   reset, prop_clk);
    
    // Clear signal
    nor_1 #(1'b0) NOR45221(NOR45221_out,    NAVRST,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR45223(NOR45223_out,    NOR45221_out,                                                   reset, prop_clk);
    
    // Mark
    nor_2 #(1'b1) NOR45225(NOR45225_out,    MARK,           NOR45226_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45226(NOR45226_out,    NOR45205_out,   NOR45234_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45227(CH1606,          RCH16_,         NOR45225_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45228(NOR45228_out,    NOR45206_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45229(NOR45229_out,    MRKREJ,         NOR45230_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45230(NOR45230_out,    NOR45229_out,   NOR45234_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45231(CH1607,          RCH16_,         NOR45229_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45232(NOR45232_out,    NOR45230_out,                                                   reset, prop_clk);
    
    // Mark clear signal
    nor_1 #(1'b0) NOR45233(NOR45233_out,    MRKRST,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR45234(NOR45234_out,    NOR45233_out,                                                   reset, prop_clk);
    
    // Read signal channel 16
    nor_2 #(1'b0) NOR45235(NOR45235_out,    XT1_,           XB6_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR45236(RCH16_,          NOR45235_out,                                                   reset, prop_clk);
    // NOR45237 removed (fan-out expansion)
    
    // KYRPT2
    nor_3 #(1'b0) NOR45238(NOR45238_out,    NOR45204_out,   NOR45208_out,   NOR45212_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR45239(NOR45239_out,    NOR45216_out,   NOR45220_out,                                   reset, prop_clk);
    assign NKEY15 = NOR45238_out & NOR45239_out;
    
    nor_4 #(1'b0) NOR45240(NOR45240_out,    NOR45223_out,   F09A_,          NKEY15,         NOR45247_out,   reset, prop_clk);
    // NOR45243 merged into NOR45240
    nor_2 #(1'b1) NOR45241(NOR45241_out,    NOR45240_out,   NOR45242_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45242(NOR45242_out,    NOR45241_out,   NKEY15,         F09D,                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR45244(KYRPT2,          F09B_,          NOR45241_out,   TPOR_,                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR45245(NOR45245_out,    NKEY15,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR45246(NOR45246_out,    NOR45245_out,   NOR45221_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45247(NOR45247_out,    NOR45246_out,   NOR45248_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45248(NOR45248_out,    NOR45247_out,   KYRPT2,                                         reset, prop_clk);
    
    // MKRPT
    nor_2 #(1'b0) NOR45249(NOR45249_out,    NOR45228_out,   NOR45232_out,                                   reset, prop_clk);
    
    nor_4 #(1'b0) NOR45250(NOR45250_out,    NOR45234_out,   F09A_,          NOR45249_out,   NOR45257_out,   reset, prop_clk);
    // NOR45160 merged into NOR45250
    nor_2 #(1'b1) NOR45251(NOR45251_out,    NOR45250_out,   NOR45252_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45252(NOR45252_out,    NOR45251_out,   NOR45249_out,   F09D,                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR45254(MKRPT,           TPOR_,          NOR45251_out,   F09B_,                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR45255(NOR45255_out,    NOR45249_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45256(NOR45256_out,    NOR45255_out,   NOR45233_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45257(NOR45257_out,    NOR45256_out,   NOR45258_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45258(NOR45258_out,    NOR45257_out,   MKRPT,                                          reset, prop_clk);
    
    // NOR45222 and NOR45224 moved to A19 sheet 2
    //nor_2 #(1'b0) NOR45222(NOR45222_out,    CAURST,         W1110,                                          reset, prop_clk);
    //nor_1 #(1'b0) NOR45224(ERRST,           NOR45222_out,                                                   reset, prop_clk);

    
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
    
    wire ACTV_;
    wire ADVCNT;
    wire CNTOF9;
    wire TPORA_;
    wire HERB;
    
    
    // Channel 13
    
    nor_2 #(1'b0) NOR45301(NOR45301_out,    CHWL04_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR45302(ACTV_,           NOR45301_out,   NOR45303_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45303(NOR45303_out,    ACTV_,          CCH13,          RADRPT,                         reset, prop_clk);
    nor_2 #(1'b0) NOR45304(CH1304,          RCH13_,         ACTV_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR45305(NOR45305_out,    NOR45303_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR45306(NOR45306_out,    CHWL03_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR45307(NOR45307_out,    NOR45306_out,   NOR45308_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45308(NOR45308_out,    NOR45307_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR45309(CH1303,          RCH13_,         NOR45307_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45310(NOR45310_out,    NOR45307_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45311(NOR45311_out,    NOR45308_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR45312(NOR45312_out,    CHWL02_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR45313(NOR45313_out,    NOR45312_out,   NOR45314_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45314(NOR45314_out,    NOR45313_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR45315(CH1302,          RCH13_,         NOR45313_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR45316(NOR45316_out,    CHWL01_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR45317(NOR45317_out,    NOR45316_out,   NOR45318_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45318(NOR45318_out,    NOR45317_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR45319(CH1301,          RCH13_,         NOR45317_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45320(NOR45320_out,    ADVCNT,         NOR45321_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45321(NOR45321_out,    NOR45320_out,   CNTOF9,         GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR45322(NOR45322_out,    NOR45310_out,   NOR45320_out,   F5BSB2_,                        reset, prop_clk);
    nor_3 #(1'b0) NOR45323(NOR45323_out,    F5BSB2_,        NOR45320_out,   NOR45311_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR45324(NOR45324_out,    NOR45322_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45325(NOR45325_out,    NOR45323_out,                                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR45326(NOR45326_out,    CNTOF9,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR45327(NOR45327_out,    NOR45326_out,   GTSET_,                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR45328(RRRANG,          NOR45314_out,   NOR45317_out,   NOR45324_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR45329(RRRARA,          NOR45324_out,   NOR45318_out,   NOR45313_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR45330(LRXVEL,          NOR45318_out,   NOR45314_out,   NOR45325_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR45331(LRYVEL,          NOR45325_out,   NOR45317_out,   NOR45314_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR45332(LRZVEL,          NOR45325_out,   NOR45313_out,   NOR45318_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR45333(LRRANG,          NOR45325_out,   NOR45313_out,   NOR45317_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR45334(NOR45334_out,    NOR45318_out,   NOR45314_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45335(NOR45335_out,    NOR45334_out,   NOR45310_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45336(NOR45336_out,    NOR45335_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR45337(NOR45337_out,    NOR45327_out,   NOR45338_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45338(NOR45338_out,    NOR45337_out,   RADRPT,         GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR45339(NOR45339_out,    F5ASB2_,        NOR45337_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR45340(NOR45340_out,    NOR45339_out,   NOR45341_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR45341(NOR45341_out,    NOR45340_out,   GOJAM,          F09B,                           reset, prop_clk);
    nor_3 #(1'b0) NOR45342(RADRPT,          NOR45340_out,   TPORA_,         GTRST_,                         reset, prop_clk);
    // NOR45343 merged into NOR45342
    
    nor_1 #(1'b0) NOR45344(NOR45344_out,    NOR45339_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45345(RRSYNC,          NOR45336_out,   NOR45344_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45346(LRSYNC,          NOR45344_out,   NOR45311_out,                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR45347(NOR45347_out,    RRIN1,                                                          reset, prop_clk);
    nor_3 #(1'b0) NOR45348(NOR45348_out,    NOR45336_out,   NOR45347_out,   NOR45305_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR45349(NOR45349_out,    RRIN0,                                                          reset, prop_clk);
    nor_3 #(1'b0) NOR45350(NOR45350_out,    NOR45336_out,   NOR45349_out,   NOR45305_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR45353(NOR45353_out,    LRIN1,                                                          reset, prop_clk);
    nor_3 #(1'b0) NOR45354(NOR45354_out,    NOR45311_out,   NOR45353_out,   NOR45305_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR45355(NOR45355_out,    LRIN0,                                                          reset, prop_clk);
    nor_3 #(1'b0) NOR45356(NOR45356_out,    NOR45311_out,   NOR45355_out,   NOR45305_out,                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR45351(NOR45351_out,    NOR45348_out,   NOR45354_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45352(RNRADP,          NOR45351_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR45357(NOR45357_out,    NOR45350_out,   NOR45356_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR45358(RNRADM,          NOR45357_out,                                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR45359(TPORA_,          HERB,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR45360(HERB,            TPOR_,                                                          reset, prop_clk);
    
endmodule

