`timescale 1ns / 1ps


module a17_inout_ii(
    input wire F05A_,
    input wire F05B_,
    input wire F05D,
    
    input wire XT1_,
    input wire XT3_,
    input wire XB0_,
    input wire XB1_,
    input wire XB2_,
    input wire XB3_,
    
    input wire WCHG_,
    input wire CCHG_,
    
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
    input wire CHWL16_,
    
    input wire WCH13_,
    input wire TPOR_,
    input wire GOJAM,
    
    // Channel 11
    input wire CH1113,
    
    // Channel 12
    input wire CH1213,
    input wire CH1214,
    
    // Channel 13
    input wire CH1301,
    input wire CH1302,
    input wire CH1303,
    input wire CH1304,
    input wire CH1305,
    input wire CH1306,
    input wire CH1307,
    input wire CH1308,
    input wire CH1309,
    input wire CH1310,
    input wire CH1311,
    input wire CH1316,
    
    // Channel 14
    input wire CH1401,
    input wire CH1402,
    input wire CH1403,
    input wire CH1404,
    input wire CH1405,
    input wire CH1406,
    input wire CH1407,
    input wire CH1408,
    input wire CH1409,
    input wire CH1410,
    input wire CH1411,
    input wire CH1412,
    input wire CH1413,
    input wire CH1414,
    input wire CH1416,
    
    // Channel 30
    input wire ULLTHR,
    input wire SMSEPR,
    input wire SPSRDY,
    input wire S4BSAB,
    input wire LFTOFF,
    input wire GUIREL,
    input wire OPCDFL,
    input wire IN3008,
    input wire IMUOPR,
    input wire CTLSAT,
    input wire IMUCAG,
    input wire CDUFAL,
    input wire IMUFAL,
    input wire ISSTOR,
    input wire TEMPIN,
    
    // Channel 33
    input wire IN3301,
    input wire RRPONA,
    input wire RRRLSC,
    input wire ZEROP,
    input wire OPMSW2,
    input wire OPMSW3,
    input wire STRPRS,
    input wire LVDAGD,
    input wire LRRLSC,
    input wire CH3310,
    input wire CH3312,
    
    input wire PIPAFL,
    input wire AGCWAR,
    input wire OSCALM,
    
    // Channel 31
    input wire MANRpP,
    input wire MANRmP,
    input wire MANRpY,
    input wire MANRmY,
    input wire MANRpR,
    input wire MANRmR,
    input wire TRANpX,
    input wire TRANmX,
    input wire TRANpY,
    input wire TRANmY,
    input wire TRANpZ,
    input wire TRANmZ,
    input wire HOLFUN,
    input wire FREFUN,
    input wire GCAPCL,
    
    // Channel 32
    input wire MNIMpP,
    input wire MNIMmP,
    input wire MNIMpY,
    input wire MNIMmY,
    input wire MNIMpR,
    input wire MNIMmR,
    input wire TRST9,
    input wire TRST10,
    input wire PCHGOF,
    input wire ROLGOF, 
    input wire LEMATT,
    input wire IN3212,
    input wire IN3213,
    input wire IN3214,
    input wire IN3216,   
    
    output wire A17_1_CHOR01_,
    output wire A17_2_CHOR01_,
    output wire A17_1_CHOR02_,
    output wire A17_2_CHOR02_,
    output wire A17_1_CHOR03_,
    output wire A17_2_CHOR03_,
    output wire A17_1_CHOR04_,
    output wire A17_2_CHOR04_,
    output wire A17_1_CHOR05_,
    output wire A17_2_CHOR05_,
    output wire A17_1_CHOR06_,
    output wire A17_2_CHOR06_,
    output wire A17_1_CHOR07_,
    output wire A17_2_CHOR07_,
    output wire A17_1_CHOR08_,
    output wire A17_2_CHOR08_,
    output wire A17_1_CHOR09_,
    output wire A17_2_CHOR09_,
    output wire A17_1_CHOR10_,
    output wire A17_2_CHOR10_,
    output wire A17_1_CHOR11_,
    output wire A17_2_CHOR11_,
    output wire A17_1_CHOR12_,
    output wire A17_2_CHOR12_,
    output wire A17_1_CHOR13_,
    output wire A17_2_CHOR13_,
    output wire A17_1_CHOR14_,
    output wire A17_2_CHOR14_,
    output wire A17_1_CHOR16_,
    output wire A17_2_CHOR16_,
    
    // Channel 32
    output wire CH3201,
    output wire CH3202,
    output wire CH3203,
    output wire CH3204,
    output wire CH3205,
    output wire CH3206,
    output wire CH3207,
    output wire CH3208,
    output wire CH3209,
    output wire CH3210,
    
    // Channel 33
    output wire CH3313,
    output wire CH3314,
    output wire CH3316,
    
    // HNDRPT
    output wire TRP31A,
    output wire TRP31B,
    output wire TRP32,
    output wire HNDRPT,
    
    // Channel 10
    output wire RLYB01,
    output wire RLYB02,
    output wire RLYB03,
    output wire RLYB04,
    output wire RLYB05,
    output wire RLYB06,
    output wire RLYB07,
    output wire RLYB08,
    output wire RLYB09,
    output wire RLYB10,
    output wire RLYB11,
    output wire RYWD12,
    output wire RYWD13,
    output wire RYWD14,
    output wire RYWD16,
    
    output wire WCH11_,
    output wire CCH11,
    output wire RCH11_,
    
    input wire reset,
    input wire prop_clk
    );
    
    
    /**************************
    *
    *  Module A17 sheet 1
    *  Sheet number 2005267/1
    *
    **************************/
    
    wire NOR44101_out;
    wire NOR44102_out;
    wire NOR44104_out;
    wire NOR44105_out;
    wire NOR44107_out;
    wire NOR44108_out;
    wire NOR44110_out;
    wire NOR44111_out;
    wire NOR44113_out;
    wire NOR44114_out;
    wire NOR44116_out;
    wire NOR44117_out;
    wire NOR44119_out;
    wire NOR44120_out;
    wire NOR44122_out;
    wire NOR44123_out;
    wire NOR44125_out;
    wire NOR44126_out;
    wire NOR44128_out;
    wire NOR44130_out;
    wire NOR44131_out;
    wire NOR44133_out;
    wire NOR44134_out;
    wire NOR44136_out;
    wire NOR44137_out;
    wire NOR44139_out;
    wire NOR44140_out;
    wire NOR44142_out;
    wire NOR44143_out;
    wire NOR44145_out;
    wire NOR44149_out;
    wire NOR44153_out;
    wire NOR44157_out;
    
    wire NOR44201_out;
    wire NOR44202_out;
    wire NOR44203_out;
    wire NOR44204_out;
    wire NOR44205_out;
    wire NOR44206_out;
    wire NOR44207_out;
    wire NOR44208_out;
    wire NOR44209_out;
    wire NOR44210_out;
    wire NOR44212_out;
    wire NOR44213_out;
    wire NOR44214_out;
    wire NOR44215_out;
    wire NOR44216_out;
    wire NOR44217_out;
    wire NOR44218_out;
    wire NOR44219_out;
    wire NOR44220_out;
    wire NOR44221_out;
    
    wire NOR44222_out;
    wire NOR44223_out;
    wire NOR44224_out;
    wire NOR44225_out;
    wire NOR44227_out;
    wire NOR44228_out;
    wire NOR44229_out;
    wire NOR44230_out;
    wire NOR44232_out;
    wire NOR44233_out;
    wire NOR44234_out;
    wire NOR44235_out;
    wire NOR44246_out;
    wire NOR44247_out;
    wire NOR44248_out;
    wire NOR44250_out;
    wire NOR44251_out;
    wire NOR44252_out;
    wire NOR44254_out;
    wire NOR44255_out;
    wire NOR44256_out;
    
    wire RCH30_;
    wire RCH31_;
    wire RCH32_;
    wire RCH33_;
    wire noTRAN;
    wire noMANR;
    wire noMNIM;
    
    
    // Channel 30
    
    nor_2 #(1'b0) NOR44101(NOR44101_out,    ULLTHR,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44104(NOR44104_out,    SMSEPR,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44107(NOR44107_out,    SPSRDY,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44110(NOR44110_out,    S4BSAB,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44113(NOR44113_out,    LFTOFF,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44116(NOR44116_out,    GUIREL,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44119(NOR44119_out,    OPCDFL,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44122(NOR44122_out,    IN3008,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44125(NOR44125_out,    IMUOPR,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44128(NOR44128_out,    CTLSAT,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44130(NOR44130_out,    IMUCAG,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44133(NOR44133_out,    CDUFAL,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44136(NOR44136_out,    IMUFAL,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44139(NOR44139_out,    ISSTOR,         RCH30_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44142(NOR44142_out,    TEMPIN,         RCH30_,                                         reset, prop_clk);
    
    
    // Channel 31
    
    nor_2 #(1'b0) NOR44201(NOR44201_out,    MANRpP,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44202(NOR44202_out,    MANRmP,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44203(NOR44203_out,    MANRpY,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44204(NOR44204_out,    MANRmY,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44205(NOR44205_out,    MANRpR,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44215(NOR44215_out,    MANRmR,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44216(NOR44216_out,    TRANpX,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44217(NOR44217_out,    TRANmX,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44218(NOR44218_out,    TRANpY,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44219(NOR44219_out,    TRANmY,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44220(NOR44220_out,    TRANpZ,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44232(NOR44232_out,    TRANmZ,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44233(NOR44233_out,    HOLFUN,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44234(NOR44234_out,    FREFUN,         RCH31_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44235(NOR44235_out,    GCAPCL,         RCH31_,                                         reset, prop_clk);
    
    
    // Channel 32
    
    nor_2 #(1'b0) NOR44236(CH3201,          MNIMpP,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44238(CH3202,          MNIMmP,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44240(CH3203,          MNIMpY,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44242(CH3204,          MNIMmY,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44244(CH3205,          MNIMpR,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44237(CH3206,          MNIMmR,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44239(CH3207,          TRST9,          RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44241(CH3208,          TRST10,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44243(CH3209,          PCHGOF,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44245(CH3210,          ROLGOF,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44131(NOR44131_out,    LEMATT,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44134(NOR44134_out,    IN3212,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44137(NOR44137_out,    IN3213,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44140(NOR44140_out,    IN3214,         RCH32_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44143(NOR44143_out,    IN3216,         RCH32_,                                         reset, prop_clk);
    
    
    // Channel 33
    
    nor_2 #(1'b0) NOR44102(NOR44102_out,    IN3301,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44105(NOR44105_out,    RRPONA,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44108(NOR44108_out,    RRRLSC,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44111(NOR44111_out,    ZEROP,          RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44114(NOR44114_out,    OPMSW2,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44117(NOR44117_out,    OPMSW3,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44120(NOR44120_out,    STRPRS,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44123(NOR44123_out,    LVDAGD,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44126(NOR44126_out,    LRRLSC,         RCH33_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44259(CH3313,          PIPAFL,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44258(CH3314,          AGCWAR,         RCH33_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR44257(CH3316,          OSCALM,         RCH33_,                                         reset, prop_clk);
    
    
    // Read lines
    
    nor_3 #(1'b0) NOR44103(A17_1_CHOR01_,   NOR44102_out,   NOR44101_out,   NOR44201_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44106(A17_1_CHOR02_,   NOR44105_out,   NOR44104_out,   NOR44202_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44109(A17_1_CHOR03_,   NOR44108_out,   NOR44107_out,   NOR44203_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44112(A17_1_CHOR04_,   NOR44111_out,   NOR44110_out,   NOR44204_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44115(A17_1_CHOR05_,   NOR44114_out,   NOR44113_out,   NOR44205_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44118(A17_1_CHOR06_,   NOR44117_out,   NOR44116_out,   NOR44215_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44121(A17_1_CHOR07_,   NOR44120_out,   NOR44119_out,   NOR44216_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44124(A17_1_CHOR08_,   NOR44123_out,   NOR44122_out,   NOR44217_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44127(A17_1_CHOR09_,   NOR44126_out,   NOR44125_out,   NOR44218_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44129(A17_1_CHOR10_,   CH3310,         NOR44128_out,   NOR44219_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44132(A17_1_CHOR11_,   NOR44131_out,   NOR44130_out,   NOR44220_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44135(A17_1_CHOR12_,   NOR44134_out,   NOR44133_out,   NOR44232_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44138(A17_1_CHOR13_,   NOR44137_out,   NOR44136_out,   NOR44233_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44141(A17_1_CHOR14_,   NOR44140_out,   NOR44139_out,   NOR44234_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR44144(A17_1_CHOR16_,   NOR44143_out,   NOR44142_out,   NOR44235_out,                   reset, prop_clk);
    
    
    // Read signals
    
    nor_2 #(1'b0) NOR44145(NOR44145_out,    XT3_,           XB0_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44146(RCH30_,          NOR44145_out,                                                   reset, prop_clk);
    // NOR44147 and NOR 44148 removed (fan-out expansion)
    
    nor_2 #(1'b0) NOR44149(NOR44149_out,    XT3_,           XB1_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44150(RCH31_,          NOR44149_out,                                                   reset, prop_clk);
    // NOR44151 and NOR 44152 removed (fan-out expansion)
    
    nor_2 #(1'b0) NOR44153(NOR44153_out,    XT3_,           XB2_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44154(RCH32_,          NOR44153_out,                                                   reset, prop_clk);
    // NOR44155 and NOR 44156 removed (fan-out expansion)
    
    nor_2 #(1'b0) NOR44157(NOR44157_out,    XT3_,           XB3_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44158(RCH33_,          NOR44157_out,                                                   reset, prop_clk);
    // NOR44159 and NOR 44160 removed (fan-out expansion)
    
    
    // Channel 13
    
    // Bit 12
    nor_3 #(1'b0) NOR44206(NOR44206_out,    MANRpP,         MANRmP,         MANRpY,                         reset, prop_clk);
    nor_3 #(1'b0) NOR44207(NOR44207_out,    MANRmY,         MANRpR,         MANRmR,                         reset, prop_clk);
    assign noMANR = NOR44206_out & NOR44207_out;
    
    nor_3 #(1'b0) NOR44208(NOR44208_out,    NOR44213_out,   noMANR,         F05A_,                          reset, prop_clk);
    nor_2 #(1'b1) NOR44209(NOR44209_out,    NOR44208_out,   NOR44210_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44210(NOR44210_out,    NOR44209_out,   noMANR,         F05D,                           reset, prop_clk);
    nor_2 #(1'b0) NOR44211(TRP31A,          NOR44209_out,   F05B_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR44214(NOR44214_out,    CHWL12_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44213(NOR44213_out,    NOR44214_out,   NOR44212_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44212(NOR44212_out,    NOR44213_out,   GOJAM,          TRP31A,                         reset, prop_clk);
    
    // Bit 13
    nor_3 #(1'b0) NOR44221(NOR44221_out,    TRANpX,         TRANmX,         TRANpY,                         reset, prop_clk);
    nor_3 #(1'b0) NOR44222(NOR44222_out,    TRANmY,         TRANpZ,         TRANmZ,                         reset, prop_clk);
    assign noTRAN = NOR44221_out & NOR44222_out;
    
    nor_3 #(1'b0) NOR44223(NOR44223_out,    NOR44228_out,   F05A_,          noTRAN,                         reset, prop_clk);
    nor_2 #(1'b1) NOR44224(NOR44224_out,    NOR44223_out,   NOR44225_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44225(NOR44225_out,    NOR44224_out,   noTRAN,         F05D,                           reset, prop_clk);
    nor_2 #(1'b0) NOR44226(TRP31B,          NOR44224_out,   F05B_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR44227(NOR44227_out,    CHWL13_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44228(NOR44228_out,    NOR44227_out,   NOR44229_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44229(NOR44229_out,    NOR44228_out,   GOJAM,          TRP31B,                         reset, prop_clk);
    
    
    // Bit 14
    nor_3 #(1'b0) NOR44246(NOR44246_out,    ROLGOF,         PCHGOF,         TRST10,                         reset, prop_clk);
    nor_3 #(1'b0) NOR44247(NOR44247_out,    TRST9,          MNIMmR,         MNIMpR,                         reset, prop_clk);
    nor_4 #(1'b0) NOR44248(NOR44248_out,    MNIMmY,         MNIMpY,         MNIMmP,         MNIMpP,         reset, prop_clk);
    // NOR44249 merged into NOR44248
    assign noMNIM = NOR44246_out & NOR44247_out & NOR44248_out;
    
    nor_3 #(1'b0) NOR44250(NOR44250_out,    NOR44255_out,   F05A_,          noMNIM,                         reset, prop_clk);
    nor_2 #(1'b1) NOR44251(NOR44251_out,    NOR44250_out,   NOR44252_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44252(NOR44252_out,    NOR44251_out,   F05D,           noMNIM,                         reset, prop_clk);
    nor_2 #(1'b0) NOR44253(TRP32,           F05B_,          NOR44251_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR44256(NOR44256_out,    CHWL14_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44255(NOR44255_out,    NOR44256_out,   NOR44254_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44254(NOR44254_out,    NOR44255_out,   TRP32,          GOJAM,                          reset, prop_clk);
    
    
    // HNDRPT
    nor_3 #(1'b0) NOR44230(NOR44230_out,    TRP31A,         TRP31B,         TRP32,                          reset, prop_clk);
    nor_2 #(1'b0) NOR44231(HNDRPT,          TPOR_,          NOR44230_out,                                   reset, prop_clk);
    
    
    /**************************
    *
    *  Module A17 sheet 2
    *  Sheet number 2005267/2
    *
    **************************/
    
    wire NOR44301_out;
    wire NOR44302_out;
    wire NOR44303_out;
    wire NOR44304_out;
    wire NOR44307_out;
    wire NOR44308_out;
    wire NOR44309_out;
    wire NOR44310_out;
    wire NOR44313_out;
    wire NOR44314_out;
    wire NOR44315_out;
    wire NOR44316_out;
    wire NOR44319_out;
    wire NOR44320_out;
    wire NOR44321_out;
    wire NOR44322_out;
    wire NOR44325_out;
    wire NOR44326_out;
    wire NOR44327_out;
    wire NOR44328_out;
    wire NOR44331_out;
    wire NOR44332_out;
    wire NOR44333_out;
    wire NOR44334_out;
    wire NOR44337_out;
    wire NOR44338_out;
    wire NOR44339_out;
    wire NOR44340_out;
    wire NOR44343_out;
    wire NOR44344_out;
    wire NOR44345_out;
    wire NOR44346_out;
    wire NOR44349_out;
    wire NOR44350_out;
    wire NOR44351_out;
    wire NOR44352_out;
    wire NOR44355_out;
    wire NOR44356_out;
    wire NOR44357_out;
    wire NOR44358_out;
    
    wire NOR44401_out;
    wire NOR44402_out;
    wire NOR44403_out;
    wire NOR44404_out;
    wire NOR44407_out;
    wire NOR44408_out;
    wire NOR44409_out;
    wire NOR44410_out;
    wire NOR44413_out;
    wire NOR44414_out;
    wire NOR44415_out;
    wire NOR44416_out;
    wire NOR44419_out;
    wire NOR44420_out;
    wire NOR44421_out;
    wire NOR44422_out;
    wire NOR44425_out;
    wire NOR44426_out;
    wire NOR44427_out;
    wire NOR44428_out;
    wire NOR44431_out;
    wire NOR44435_out;
    wire NOR44436_out;
    
    wire NOR44440_out;
    wire NOR44444_out;
    wire NOR44445_out;
    wire NOR44448_out;
    wire NOR44449_out;
    wire NOR44453_out;
    
    
    wire WCH10_;
    wire CCH10;
    wire RCH10_;
    
    nor_2 #(1'b0) NOR44301(NOR44301_out,    CHWL01_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44302(NOR44302_out,    NOR44301_out,   NOR44303_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44303(NOR44303_out,    NOR44302_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44304(NOR44304_out,    RCH10_,         NOR44302_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44305(RLYB01,          NOR44302_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44306(A17_2_CHOR01_,   CH1301,         NOR44304_out,   CH1401,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44307(NOR44307_out,    CHWL02_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44308(NOR44308_out,    NOR44307_out,   NOR44309_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44309(NOR44309_out,    NOR44308_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44310(NOR44310_out,    RCH10_,         NOR44308_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44311(RLYB02,          NOR44308_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44312(A17_2_CHOR02_,   CH1302,         NOR44310_out,   CH1402,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44313(NOR44313_out,    CHWL03_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44314(NOR44314_out,    NOR44313_out,   NOR44315_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44315(NOR44315_out,    NOR44314_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44316(NOR44316_out,    RCH10_,         NOR44314_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44317(RLYB03,          NOR44314_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44318(A17_2_CHOR03_,   CH1303,         NOR44316_out,   CH1403,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44319(NOR44319_out,    CHWL04_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44320(NOR44320_out,    NOR44319_out,   NOR44321_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44321(NOR44321_out,    NOR44320_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44322(NOR44322_out,    RCH10_,         NOR44320_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44323(RLYB04,          NOR44320_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44324(A17_2_CHOR04_,   CH1304,         NOR44322_out,   CH1404,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44325(NOR44325_out,    CHWL05_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44326(NOR44326_out,    NOR44325_out,   NOR44327_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44327(NOR44327_out,    NOR44326_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44328(NOR44328_out,    RCH10_,         NOR44326_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44329(RLYB05,          NOR44326_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44330(A17_2_CHOR05_,   CH1305,         NOR44328_out,   CH1405,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44331(NOR44331_out,    CHWL06_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44332(NOR44332_out,    NOR44331_out,   NOR44333_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44333(NOR44333_out,    NOR44332_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44334(NOR44334_out,    RCH10_,         NOR44332_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44335(RLYB06,          NOR44332_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44336(A17_2_CHOR06_,   CH1306,         NOR44334_out,   CH1406,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44337(NOR44337_out,    CHWL07_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44338(NOR44338_out,    NOR44337_out,   NOR44339_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44339(NOR44339_out,    NOR44338_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44340(NOR44340_out,    RCH10_,         NOR44338_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44341(RLYB07,          NOR44338_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44342(A17_2_CHOR07_,   CH1307,         NOR44340_out,   CH1407,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44343(NOR44343_out,    CHWL08_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44344(NOR44344_out,    NOR44343_out,   NOR44345_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44345(NOR44345_out,    NOR44344_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44346(NOR44346_out,    RCH10_,         NOR44344_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44347(RLYB08,          NOR44344_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44348(A17_2_CHOR08_,   CH1308,         NOR44346_out,   CH1408,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44349(NOR44349_out,    CHWL09_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44350(NOR44350_out,    NOR44349_out,   NOR44351_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44351(NOR44351_out,    NOR44350_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44352(NOR44352_out,    RCH10_,         NOR44350_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44353(RLYB09,          NOR44350_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44354(A17_2_CHOR09_,   CH1309,         NOR44352_out,   CH1409,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44355(NOR44355_out,    CHWL10_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44356(NOR44356_out,    NOR44355_out,   NOR44357_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44357(NOR44357_out,    NOR44356_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44358(NOR44358_out,    RCH10_,         NOR44356_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44359(RLYB10,          NOR44356_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44360(A17_2_CHOR10_,   CH1310,         NOR44358_out,   CH1410,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44401(NOR44401_out,    CHWL11_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44402(NOR44402_out,    NOR44401_out,   NOR44403_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44403(NOR44403_out,    NOR44402_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44404(NOR44404_out,    RCH10_,         NOR44402_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44405(RLYB11,          NOR44402_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44406(A17_2_CHOR11_,   CH1311,         NOR44404_out,   CH1411,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44407(NOR44407_out,    CHWL12_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44408(NOR44408_out,    NOR44407_out,   NOR44409_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44409(NOR44409_out,    NOR44408_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44410(NOR44410_out,    RCH10_,         NOR44408_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44411(RYWD12,          NOR44408_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44412(A17_2_CHOR12_,   CH3312,         NOR44410_out,   CH1412,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44413(NOR44413_out,    CHWL13_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44414(NOR44414_out,    NOR44413_out,   NOR44415_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44415(NOR44415_out,    NOR44414_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44416(NOR44416_out,    RCH10_,         NOR44414_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44417(RYWD13,          NOR44414_out,                                                   reset, prop_clk);
    nor_4 #(1'b0) NOR44418(A17_2_CHOR13_,   CH1213,         NOR44416_out,   CH1413,         CH1113,         reset, prop_clk);
    // NOR44461 merged into NOR44418
    
    nor_2 #(1'b0) NOR44419(NOR44419_out,    CHWL14_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44420(NOR44420_out,    NOR44419_out,   NOR44421_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44421(NOR44421_out,    NOR44420_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44422(NOR44422_out,    RCH10_,         NOR44420_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44423(RYWD14,          NOR44420_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44424(A17_2_CHOR14_,   CH1214,         NOR44422_out,   CH1414,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR44425(NOR44425_out,    CHWL16_,        WCH10_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR44426(NOR44426_out,    NOR44425_out,   NOR44427_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR44427(NOR44427_out,    NOR44426_out,   CCH10,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR44428(NOR44428_out,    RCH10_,         NOR44426_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44429(RYWD16,          NOR44426_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR44430(A17_2_CHOR16_,   CH1316,         NOR44428_out,   CH1416,                         reset, prop_clk);
    
    // Write, clear and read signals channel 10
    nor_3 #(1'b0) NOR44431(NOR44431_out,    WCHG_,          XT1_,           XB0_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR44432(WCH10_,          NOR44431_out,                                                   reset, prop_clk);
    // NOR44433 and NOR44434 removed (fan-out expansion)
    
    nor_3 #(1'b0) NOR44435(NOR44435_out,    CCHG_,          XB0_,           XT1_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR44436(NOR44436_out,    NOR44435_out,   GOJAM,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR44437(CCH10,           NOR44436_out,                                                   reset, prop_clk);
    // NOR44438 and NOR44439 removed (fan-out expansion)
    
    nor_2 #(1'b0) NOR44440(NOR44440_out,    XB0_,           XT1_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44441(RCH10_,          NOR44440_out,                                                   reset, prop_clk);
    // NOR44442 and NOR44443 removed (fan-out expansion)
    
    // Write, clear and read signals channel 11
    nor_3 #(1'b0) NOR44444(NOR44444_out,    WCHG_,          XT1_,           XB1_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR44445(WCH11_,          NOR44444_out,                                                   reset, prop_clk);
    // NOR44446 and NOR44447 removed (fan-out expansion)
    
    nor_3 #(1'b0) NOR44448(NOR44448_out,    CCHG_,          XB1_,           XT1_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR44449(NOR44449_out,    GOJAM,          NOR44448_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR44450(CCH11,           NOR44449_out,                                                   reset, prop_clk);
    // NOR44451 and NOR44452 removed (fan-out expansion)
    
    nor_2 #(1'b0) NOR44453(NOR44453_out,    XB1_,           XT1_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR44454(RCH11_,          NOR44453_out,                                                   reset, prop_clk);
    // NOR44455 and NOR44456 removed (fan-out expansion)
    
    // NOR44457 - NOR44460 not used
    // NOR44462 removed (fan-out expansion for A14 sheet 2)
    // NOR44463 and NOR44464 removed (not connected)
    
endmodule
