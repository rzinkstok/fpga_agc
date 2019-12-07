`timescale 1ns / 1ps

module a15_rupt_service(
    input wire WL01_,
    input wire WL02_,
    input wire WL03_,
    input wire WL09_,
    input wire WL10_,
    input wire WL11_,
    input wire WL12_,
    input wire WL13_,
    input wire WL14_,
    input wire WL16_,
    
    input wire SUMA01_,
    input wire SUMB01_,
    input wire SUMA02_,
    input wire SUMB02_,
    input wire SUMA03_,
    input wire SUMB03_,
    input wire SUMA11_,
    input wire SUMB11_,
    input wire SUMA12_,
    input wire SUMB12_,
    input wire SUMA13_,
    input wire SUMB13_,
    input wire SUMA14_,
    input wire SUMB14_,
    input wire SUMA16_,
    input wire SUMB16_,
    
    input wire WFBG_,
    input wire CFBG,
    input wire RFBG_,
    input wire WEBG_,
    input wire CEBG,
    input wire REBG_,
    input wire WBBEG_,
    input wire U2BBKG_,
    input wire RBBEG_,
    input wire RSTRT,
    
    input wire S10,
    input wire S10_,
    input wire S11_,
    input wire S12_,
    
    input wire E5,
    input wire E6,
    input wire E7_,
    
    input wire XB0_,
    input wire XB1_,
    input wire XB4_,
    input wire XB6_,
    input wire XB7_,
    input wire XT0_,
    input wire XT1_,
    input wire XT2_,
    input wire XT3_,
    input wire XT4_,
    input wire XT5_,
    
    input wire T10,
    input wire RADRPT,
    input wire GOJAM,
    input wire HNDRPT,
    input wire DNRPTA,
    
    input wire WOVR,
    input wire OVF_,
    input wire KRPT,
    input wire CA2_,
    input wire CA3_,
    input wire ZOUT_,
    input wire KYRPT1,
    input wire KYRPT2,
    input wire MKRPT,
    input wire UPRUPT,
    input wire DLKPLS,
    input wire RRPA,
    
    input wire STRGAT,
    
    output wire A15_1_RL09_,
    output wire A15_1_RL10_,
    output wire A15_1_RL11_,
    output wire A15_1_RL12_,
    output wire A15_1_RL13_,
    output wire A15_1_RL14_,
    output wire A15_1_RL15_,
    output wire A15_1_RL16_,
    
    output wire FB11,
    output wire FB11_,
    output wire FB12,
    output wire FB12_,
    output wire FB13,
    output wire FB13_,
    output wire FB14,
    output wire FB14_,
    output wire FB16,
    output wire FB16_,
    
    output wire EB9,
    output wire EB9_,
    output wire EB10,
    output wire EB10_,
    output wire EB11,
    output wire EB11_,
    
    output wire BBK1,
    output wire BBK2,
    output wire BBK3,
    
    output wire F11,
    output wire F11_,
    output wire F12,
    output wire F12_,
    output wire F13,
    output wire F13_,
    output wire F14,
    output wire F14_,
    output wire F15,
    output wire F15_,
    output wire F16,
    output wire F16_,
    
    output wire RPTAD3,
    output wire RPTAD4,
    output wire RPTAD5,
    output wire RPTAD6,
    output wire RUPTOR_,
    output wire T6RPT,
    
    output wire WOVR_,
    
    output wire STR412,
    output wire STR311,
    output wire STR210,
    output wire STR19,
    output wire STR14,
    output wire STR58,
    output wire STR912,
    output wire LOMOD,
    output wire HIMOD,
    output wire ROPER,
    output wire ROPES,
    output wire ROPET,
    
    input wire reset,
    input wire prop_clk
);
    
    /**************************
    *
    *  Module A15 sheet 1
    *  Sheet number 2005265/1
    *
    **************************/
    
    wire NOR35101_out;
    wire NOR35107_out;
    wire NOR35111_out;
    wire NOR35113_out;
    wire NOR35116_out;
    wire NOR35118_out;
    wire NOR35121_out;
    wire NOR35123_out;
    wire NOR35126_out;
    wire NOR35128_out;
    wire NOR35129_out;
    wire NOR35132_out;
    wire NOR35135_out;
    wire NOR35136_out;
    wire NOR35139_out;
    wire NOR35143_out;
    wire NOR35144_out;
    wire NOR35147_out;
    wire NOR35151_out;
    wire NOR35152_out;
    wire NOR35153_out;
    wire NOR35154_out;
    wire NOR35155_out;
    wire NOR35156_out;
    wire NOR35157_out;
    wire NOR35158_out;
    
    wire NOR35220_out;
    wire NOR35221_out;
    wire NOR35222_out;
    wire NOR35223_out;
    wire NOR35224_out;
    wire NOR35225_out;
    wire NOR35229_out;
    wire NOR35231_out;
    wire NOR35234_out;
    
    wire NOR35201_out;
    wire NOR35203_out;
    wire NOR35204_out;
    wire NOR35211_out;
    wire NOR35212_out;
    
    wire BK16;
    wire KRPTA_;
    wire PRPOR1;
    wire PRPOR2;
    wire PRPOR3;
    wire PRPOR4;
    wire RRPA1_;
    wire RPTA12;
    
    
    // Fixed bank register
    
    nor_2 #(1'b0) NOR35101(NOR35101_out,    WL16_,          WFBG_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35151(NOR35151_out,    SUMA16_,        SUMB16_,        U2BBKG_,                        reset, prop_clk);
    nor_3 #(1'b1) NOR35102(FB16_,           NOR35101_out,   NOR35151_out,   FB16,                           reset, prop_clk);
    // NOR35103 omitted (fan-out expansion)
    nor_2 #(1'b0) NOR35104(FB16,            FB16_,          CFBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35105(BK16,            FB16_,          RFBG_,                                          reset, prop_clk);
    // Cross-module fan-in, connected to A11 sheet 2
    nor_1 #(1'b0) NOR35106(A15_1_RL16_,     BK16,                                                           reset, prop_clk);
    // Moved here from A10 sheet 2
    // Cross-module fan-in, connected to A11 sheet 2
    nor_1 #(1'b0) NOR53363(A15_1_RL15_,     BK16,                                                           reset, prop_clk);
    
    
    nor_2 #(1'b0) NOR35107(NOR35107_out,    WL14_,          WFBG_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35152(NOR35152_out,    SUMA14_,        SUMB14_,        U2BBKG_,                        reset, prop_clk);
    nor_3 #(1'b1) NOR35108(FB14_,           NOR35107_out,   NOR35152_out,   FB14,                           reset, prop_clk);
    // NOR35109 omitted (fan-out expansion)
    nor_2 #(1'b0) NOR35110(FB14,            FB14_,          CFBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35111(NOR35111_out,    FB14_,          RFBG_,                                          reset, prop_clk);
    // Cross-module fan-in, connected to A11 sheet 1
    nor_1 #(1'b0) NOR35251(A15_1_RL14_,     NOR35111_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR35113(NOR35113_out,    WL13_,          WFBG_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35153(NOR35153_out,    SUMA13_,        SUMB13_,        U2BBKG_,                        reset, prop_clk);
    nor_3 #(1'b1) NOR35114(FB13_,           NOR35113_out,   NOR35153_out,   FB13,                           reset, prop_clk);
    nor_2 #(1'b0) NOR35115(FB13,            FB13_,          CFBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35116(NOR35116_out,    FB13_,          RFBG_,                                          reset, prop_clk);
    // Cross-module fan-in, connected to A11 sheet 1
    nor_1 #(1'b0) NOR35117(A15_1_RL13_,     NOR35116_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR35118(NOR35118_out,    WL12_,          WFBG_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35154(NOR35154_out,    SUMA12_,        SUMB12_,        U2BBKG_,                        reset, prop_clk);
    nor_3 #(1'b1) NOR35119(FB12_,           NOR35118_out,   NOR35154_out,   FB12,                           reset, prop_clk);
    nor_2 #(1'b0) NOR35120(FB12,            FB12_,          CFBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35121(NOR35121_out,    FB12_,          RFBG_,                                          reset, prop_clk);
    // Cross-module fan-in, connected to A10 sheet 2
    nor_3 #(1'b0) NOR35122(A15_1_RL12_,     RSTRT,          NOR35121_out,   RPTA12,                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR35123(NOR35123_out,    WL11_,          WFBG_,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35155(NOR35155_out,    SUMA11_,        SUMB11_,        U2BBKG_,                        reset, prop_clk);
    nor_3 #(1'b1) NOR35124(FB11_,           NOR35123_out,   NOR35155_out,   FB11,                           reset, prop_clk);
    nor_2 #(1'b0) NOR35125(FB11,            FB11_,          CFBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35126(NOR35126_out,    FB11_,          RFBG_,                                          reset, prop_clk);
    // Cross-module fan-in, connected to A10 sheet 2
    nor_2 #(1'b0) NOR35127(A15_1_RL11_,     NOR35126_out,   NOR35132_out,                                   reset, prop_clk);
    
    
    // Erasable bank register
    
    nor_3 #(1'b0) NOR35156(NOR35156_out,    SUMA03_,        U2BBKG_,        SUMB03_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR35128(NOR35128_out,    WL11_,          WEBG_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR35129(NOR35129_out,    WL03_,          WBBEG_,                                         reset, prop_clk);
    nor_4 #(1'b1) NOR35130(EB11_,           NOR35156_out,   NOR35128_out,   NOR35129_out,   EB11,           reset, prop_clk);
    // NOR35150 merged into NOR35130
    nor_2 #(1'b0) NOR35131(EB11,            EB11_,          CEBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35132(NOR35132_out,    REBG_,          EB11_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR35133(BBK3,            EB11_,          RBBEG_,                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR35157(NOR35157_out,    SUMA02_,        U2BBKG_,        SUMB02_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR35135(NOR35135_out,    WL10_,          WEBG_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR35136(NOR35136_out,    WL02_,          WBBEG_,                                         reset, prop_clk);
    nor_4 #(1'b1) NOR35137(EB10_,           NOR35157_out,   NOR35135_out,   NOR35136_out,   EB10,           reset, prop_clk);
    // NOR35134 merged into NOR35137
    nor_2 #(1'b0) NOR35138(EB10,            EB10_,          CEBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35139(NOR35139_out,    REBG_,          EB10_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR35140(BBK2,            EB10_,          RBBEG_,                                         reset, prop_clk);
    nor_1 #(1'b0) NOR35141(A15_1_RL10_,     NOR35139_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35158(NOR35158_out,    SUMA01_,        U2BBKG_,        SUMB01_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR35143(NOR35143_out,    WL09_,          WEBG_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR35144(NOR35144_out,    WL01_,          WBBEG_,                                         reset, prop_clk);
    nor_4 #(1'b1) NOR35145(EB9_,            NOR35158_out,   NOR35143_out,   NOR35144_out,   EB9,            reset, prop_clk);
    // NOR35142 merged into NOR35145
    nor_2 #(1'b0) NOR35146(EB9,             EB10_,          CEBG,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35147(NOR35147_out,    REBG_,          EB9_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35148(BBK1,            EB9_,           RBBEG_,                                         reset, prop_clk);
    nor_1 #(1'b0) NOR35149(A15_1_RL09_,     NOR35147_out,                                                   reset, prop_clk);
    
    
    // Fixed address generator
    
    nor_1 #(1'b0) NOR35201(NOR35201_out,    S12_,                                                           reset, prop_clk);
    // NOR35202 omitted (fan-out expansion)
    nor_2 #(1'b0) NOR35203(NOR35203_out,    FB11_,          NOR35201_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR35204(NOR35204_out,    S11_,           S12_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35205(F11_,            NOR35203_out,   NOR35204_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35206(F11,             F11_,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR35208(F12_,            NOR35201_out,   FB12_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR35209(F12,             F12_,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR35207(F13,             NOR35201_out,   FB13_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR35210(F13_,            F13,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR35211(NOR35211_out,    E5,             FB16_,          E7_,                            reset, prop_clk);
    nor_3 #(1'b0) NOR35212(NOR35212_out,    E7_,            FB14_,          E6,                             reset, prop_clk);
    nor_4 #(1'b0) NOR35213(F16,             FB14_,          FB16_,          E7_,            NOR35201_out,   reset, prop_clk);
    // NOR35214 merged into NOR35213
    
    nor_3 #(1'b0) NOR35215(F14,             NOR35201_out,   NOR35211_out,   FB14_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR35217(F14_,            F14,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR35216(F15,             FB16_,          NOR35212_out,   NOR35201_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR35218(F15_,            F15,                                                            reset, prop_clk);
    
    nor_1 #(1'b0) NOR35219(F16_,            F16,                                                            reset, prop_clk);
    
    
    // Rupt service 2
    
    nor_3 #(1'b0) NOR35220(NOR35220_out,    XB4_,           XT4_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR35221(NOR35221_out,    KRPTA_,         XB0_,           XT5_,                           reset, prop_clk);
    
    nor_2 #(1'b1) NOR35222(NOR35222_out,    RADRPT,         NOR35223_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35223(NOR35223_out,    NOR35222_out,   NOR35220_out,   GOJAM,                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR35224(NOR35224_out,    HNDRPT,         NOR35225_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35225(NOR35225_out,    NOR35224_out,   NOR35221_out,   GOJAM,                          reset, prop_clk);
    
    nor_3 #(1'b0) NOR35226(PRPOR3,          PRPOR1,         NOR35222_out,   DNRPTA,                         reset, prop_clk);
    nor_4 #(1'b0) NOR35227(PRPOR4,          PRPOR1,         DNRPTA,         NOR35223_out,   NOR35224_out,   reset, prop_clk);
    // NOR35228 merged into NOR35227
    nor_4 #(1'b0) NOR35229(NOR35229_out,    NOR35225_out,   NOR35223_out,   PRPOR1,         DNRPTA,         reset, prop_clk);
    // NOR35230 merged into NOR35229
    
    nor_3 #(1'b0) NOR35231(NOR35231_out,    PRPOR2,         PRPOR3,         PRPOR4,                         reset, prop_clk);
    nor_2 #(1'b0) NOR35232(RPTAD6,          NOR35231_out,   RRPA1_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR35233(RPTA12,          RRPA1_,         NOR35229_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR35234(NOR35234_out,    NOR35229_out,   RUPTOR_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR35235(RUPTOR_,         NOR35234_out,   T10,                                            reset, prop_clk);
    
    // NOR35236 - NOR35250 moved to A21 sheet 1
    
    
    /**************************
    *
    *  Module A15 sheet 2
    *  Sheet number 2005265/2
    *
    **************************/
    
    wire NOR35302_out;
    wire NOR35303_out;
    wire NOR35306_out;
    wire NOR35308_out;
    wire NOR35309_out;
    wire NOR35310_out;    
    wire NOR35311_out;    
    wire NOR35312_out;
    wire NOR35313_out;
    wire NOR35314_out;
    wire NOR35315_out;
    wire NOR35316_out;
    wire NOR35317_out;
    wire NOR35318_out;
    wire NOR35319_out;
    wire NOR35320_out;
    wire NOR35321_out;
    wire NOR35322_out;
    wire NOR35323_out;
    wire NOR35324_out;
    wire NOR35325_out;
    wire NOR35326_out;
    wire NOR35328_out;
    wire NOR35329_out;
    wire NOR35330_out;
    wire NOR35331_out;
    wire NOR35332_out;
    wire NOR35334_out;
    wire NOR35335_out;
    wire NOR35336_out;
    wire NOR35339_out;
    wire NOR35340_out;
    wire NOR35341_out;
    wire NOR35342_out;
    wire NOR35343_out;
    wire NOR35346_out;
    wire NOR35350_out;
    wire NOR35351_out;
    wire NOR35353_out;
    wire NOR35354_out;
    wire NOR35356_out;
    wire NOR35357_out;
    
    wire NOR35401_out;
    wire NOR35405_out;
    wire NOR35408_out;
    wire NOR35411_out;
    wire NOR35414_out;
    wire NOR35415_out;
    wire NOR35416_out;
    wire NOR35420_out;
    wire NOR35423_out;
    wire NOR35428_out;
    wire NOR35430_out;
    wire NOR35431_out;
    wire NOR35435_out;
    wire NOR35437_out;
    wire NOR35442_out;
    wire NOR35443_out;
    wire NOR35448_out;
    wire NOR35450_out;
    wire NOR35451_out;
    wire NOR35456_out;
    
    wire KY1RST;
    wire KY2RST;
    wire DRPRST;
    wire RPTAD3_in;
    wire RPTAD4_in;
    wire RPTAD5_in;
    wire NE00;
    wire NE01;
    wire NE02;
    wire NE03;
    wire NE04;
    wire NE05;
    wire NE06;
    wire NE07;
    wire NE10;
    wire NE036_;
    wire NE012_;
    wire NE147_;
    wire NE345_;
    wire NE2510_;
    wire NE6710_;
    wire n036L;
    wire n147H;
    wire n2510L;
    wire n036H;
    wire n147L;
    wire n2510H;
    
    
    // Rupt service 1
    
    nor_1 #(1'b0) NOR35301(WOVR_,           WOVR,                                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35302(NOR35302_out,    WOVR_,          OVF_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR35303(NOR35303_out,    NOR35302_out,                                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR35304(KRPTA_,          KRPT,                                                           reset, prop_clk);
    // NOR35305 merged into NOR35304
    
    nor_3 #(1'b0) NOR35306(NOR35306_out,    XT0_,           XB4_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR35307(T6RPT,           CA3_,           XB1_,           ZOUT_,                          reset, prop_clk);
    nor_2 #(1'b1) NOR35308(NOR35308_out,    T6RPT,          NOR35309_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35309(NOR35309_out,    NOR35308_out,   GOJAM,          NOR35306_out,                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35310(NOR35310_out,    XB0_,           XT1_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR35311(NOR35311_out,    CA3_,           XB0_,           NOR35303_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR35312(NOR35312_out,    NOR35311_out,   NOR35313_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35313(NOR35313_out,    NOR35312_out,   NOR35310_out,   GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR35314(NOR35314_out,    NOR35309_out,   NOR35312_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35315(NOR35315_out,    XT1_,           XB4_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR35316(NOR35316_out,    CA2_,           XB6_,           NOR35303_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR35317(NOR35317_out,    NOR35316_out,   NOR35318_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35318(NOR35318_out,    NOR35317_out,   NOR35315_out,   GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR35319(NOR35319_out,    NOR35309_out,   NOR35317_out,   NOR35313_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35320(NOR35320_out,    NOR35309_out,   NOR35318_out,   NOR35313_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR35321(NOR35321_out,    NOR35320_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35325(NOR35325_out,    XT2_,           XB0_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR35322(NOR35322_out,    CA2_,           XB7_,           NOR35303_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR35323(NOR35323_out,    NOR35322_out,   NOR35326_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35326(NOR35326_out,    NOR35323_out,   NOR35325_out,   GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR35324(NOR35324_out,    NOR35321_out,   NOR35323_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35327(KY1RST,          XB4_,           XT2_,           KRPTA_,                         reset, prop_clk);
    nor_2 #(1'b1) NOR35328(NOR35328_out,    KYRPT1,         NOR35329_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35329(NOR35329_out,    NOR35328_out,   KY1RST,         GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR35330(NOR35330_out,    NOR35321_out,   NOR35328_out,   NOR35326_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35331(NOR35331_out,    NOR35321_out,   NOR35329_out,   NOR35326_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR35332(NOR35332_out,    NOR35331_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35333(KY2RST,          XT3_,           XB0_,           KRPTA_,                         reset, prop_clk);
    nor_3 #(1'b1) NOR35334(NOR35334_out,    KYRPT2,         MKRPT,          NOR35335_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35335(NOR35335_out,    NOR35334_out,   KY2RST,         GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR35336(NOR35336_out,    NOR35332_out,   NOR35334_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35339(NOR35339_out,    XT3_,           XB4_,           KRPTA_,                         reset, prop_clk);
    nor_2 #(1'b1) NOR35340(NOR35340_out,    UPRUPT,         NOR35341_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35341(NOR35341_out,    NOR35340_out,   NOR35339_out,   GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR35342(NOR35342_out,    NOR35332_out,   NOR35340_out,   NOR35335_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35343(NOR35343_out,    NOR35322_out,   NOR35341_out,   NOR35335_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR35344(PRPOR1,          NOR35343_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35345(DRPRST,          XB0_,           XT4_,           KRPTA_,                         reset, prop_clk);
    nor_2 #(1'b1) NOR35346(NOR35346_out,    DLKPLS,         DNRPTA,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR35347(DNRPTA,          NOR35346_out,   DRPRST,         GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR35348(PRPOR2,          PRPOR1,         NOR35346_out,                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR35349(RRPA1_,          RRPA,                                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35350(NOR35350_out,    NOR35309_out,   NOR35319_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR35351(NOR35351_out,    NOR35330_out,   NOR35442_out,   PRPOR3,                         reset, prop_clk);
    assign RPTAD3_in = NOR35350_out & NOR35351_out;
    nor_2 #(1'b0) NOR35352(RPTAD3,          RRPA1_,         RPTAD3_in,                                      reset, prop_clk);
    
    nor_3 #(1'b0) NOR35353(NOR35353_out,    NOR35314_out,   NOR35319_out,   NOR35336_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR35354(NOR35354_out,    NOR35342_out,   PRPOR4,                                         reset, prop_clk);
    assign RPTAD4_in = NOR35353_out & NOR35354_out;
    nor_2 #(1'b0) NOR35355(RPTAD4,          RRPA1_,         RPTAD4_in,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR35356(NOR35356_out,    NOR35330_out,   NOR35324_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR35357(NOR35357_out,    NOR35336_out,   NOR35342_out,                                   reset, prop_clk);
    assign RPTAD5_in = NOR35356_out & NOR35357_out;
    nor_2 #(1'b0) NOR35358(RPTAD5,          RRPA1_,         RPTAD5_in,                                      reset, prop_clk);
    
    // NOR35359 moved to A8 sheet 2
    // NOR35360 moved to A8 sheet 1
    
    
    // Fixed memory rope, module and strand selection
    
    nor_1 #(1'b0) NOR35401(NOR35401_out,    STRGAT,                                                         reset, prop_clk);
    // NOR35402 omitted (fan-out expansion)
    
    nor_3 #(1'b0) NOR35403(STR412,          NOR35401_out,   NOR35408_out,   NOR35405_out,                   reset, prop_clk);
    // NOR35404 merged into NOR35403
    nor_1 #(1'b0) NOR35405(NOR35405_out,    F11,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR35406(STR311,          NOR35401_out,   NOR35414_out,   NOR35405_out,                   reset, prop_clk);
    // NOR35407 merged into NOR35406
    nor_1 #(1'b0) NOR35408(NOR35408_out,    S10,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR35409(STR210,          NOR35401_out,   NOR35408_out,   NOR35411_out,                   reset, prop_clk);
    // NOR35410 merged into NOR35409
    nor_1 #(1'b0) NOR35411(NOR35411_out,    F11_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR35412(STR19,           NOR35401_out,   NOR35414_out,   NOR35411_out,                   reset, prop_clk);
    // NOR35413 merged into NOR35412
    nor_1 #(1'b0) NOR35414(NOR35414_out,    S10_,                                                           reset, prop_clk);
    
    
    nor_2 #(1'b0) NOR35415(NOR35415_out,    F16,            F15,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR35442(NOR35442_out,    F16,            F15_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35450(NOR35450_out,    F15,            F16_,                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR35416(NOR35416_out,    NOR35415_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35443(NOR35443_out,    NOR35442_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35451(NOR35451_out,    NOR35450_out,                                                   reset, prop_clk);
    
    nor_1 #(1'b0) NOR35423(NOR35423_out,    F14_,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR35430(NOR35430_out,    F13_,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR35431(NOR35431_out,    F13,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR35437(NOR35437_out,    F14,                                                            reset, prop_clk);
    
    nor_3 #(1'b0) NOR35417(NE00,            NOR35416_out,   NOR35423_out,   NOR35430_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35424(NE01,            NOR35416_out,   NOR35423_out,   NOR35431_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35425(NE02,            NOR35416_out,   NOR35437_out,   NOR35430_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35432(NE03,            NOR35416_out,   NOR35437_out,   NOR35431_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35438(NE04,            NOR35443_out,   NOR35423_out,   NOR35430_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35444(NE05,            NOR35443_out,   NOR35423_out,   NOR35431_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35445(NE06,            NOR35443_out,   NOR35437_out,   NOR35430_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35452(NE07,            NOR35443_out,   NOR35437_out,   NOR35431_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR35453(NE10,            NOR35451_out,   NOR35423_out,   NOR35430_out,                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR35418(NE036_,          NE00,           NE03,           NE06,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35426(NE012_,          NE00,           NE01,           NE02,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35433(NE147_,          NE01,           NE04,           NE07,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35439(NE345_,          NE04,           NE03,           NE05,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35446(NE2510_,         NE02,           NE05,           NE10,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35454(NE6710_,         NE06,           NE07,           NE10,                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR35419(n036L,           NE036_,         F12,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR35427(n147H,           NE147_,         F12_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35434(n2510L,          NE2510_,        F12,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR35440(n036H,           NE036_,         F12_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35447(n147L,           NE147_,         F12,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR35455(n2510H,          NE2510_,        F12_,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR35420(NOR35420_out,    n036L,          n147H,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35428(NOR35428_out,    n036L,          n147L,          n036H,                          reset, prop_clk);
    nor_2 #(1'b0) NOR35435(NOR35435_out,    n2510L,         n036H,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR35448(NOR35448_out,    n147H,          n2510H,         n2510L,                         reset, prop_clk);
    nor_2 #(1'b0) NOR35456(NOR35456_out,    n147L,          n2510H,                                         reset, prop_clk);
    
    nor_1 #(1'b0) NOR35421(STR14,           NOR35420_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35422(ROPER,           NE012_,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR35429(LOMOD,           NOR35428_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35436(STR58,           NOR35435_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35441(ROPES,           NE345_,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR35449(HIMOD,           NOR35448_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35457(STR912,          NOR35456_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR35458(ROPET,           NE6710_,                                                        reset, prop_clk);
    
    // NOR35459 not used
    // NOR35460 moved to A8 sheet 1
    
endmodule
