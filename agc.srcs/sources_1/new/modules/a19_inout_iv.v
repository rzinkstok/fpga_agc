`timescale 1ns / 1ps

module a19_inout_iv(
    input wire T06_,
    input wire F04A,
    input wire F05A_,
    input wire F05B_,
    input wire F06B_,
    input wire F07B,
    input wire F07C_
    input wire F07D_,
    input wire F09B_,
    input wire F10A_,
    input wire F10B_,
    input wire FS10,
    
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
    input wire CCHG_,
    
    input wire WCH11_,
    input wire CCH11,
    input wire RCH11_,
    
    input wire WCH13_,
    input wire CCH13,
    input wire RCH13_,
    
    input wire WCH14_,
    input wire CCH14,
    input wire RCH14_,
    
    input wire RCH33_,
    
    input wire SHINC_,
    input wire CSG,
    input wire CA2_,
    input wire CA4_,
    input wire CA5_,
    input wire CA6_,
    input wire CXB0_,
    input wire CXB7_,
    
    input wire XT3_,
    input wire XB3_,
    input wire XB5_,
    input wire XB6_,
    input wire XB7_,
    
    input wire BR1,
    input wire BR1_,
    
    input wire GTSET,
    input wire GTSET_,
    input wire GOJAM,
    input wire GTONE,
    
    input wire SB0_,
    input wire SB1_,
    input wire SB2,
    input wire SB2_,
    
    input wire WOVR_,
    input wire OVF_,
    
    input wire UPL0,
    input wire UPL1,
    input wire BLKUPL_,
    
    input wire XLNK0,
    input wire XLNK1,
    
    input wire C45R,
    
    input wire POUT_,
    input wire MOUT_,
    input wire ZOUT_,
    
    input wire CAURST,
    input wire T6ON_,
    
    input wire SIGNX,
    input wire SIGNY,
    input wire SIGNZ,
    input wire GATEX_,
    input wire GATEY_,
    input wire GATEZ_,
    
    input wire BMGXP,
    input wire BMGXM,
    input wire BMGYP,
    input wire BMGYM,
    input wire BMGZP,
    input wire BMGZM,
    
    output wire ALT0,
    output wire ALT1,
    output wire ALRT0,
    output wire ALRT1,
    
    output wire ALTM,
    output wire ALTSNC,
    
    output wire F5ASB0_,
    output wire F5ASB2,
    output wire F5ASB2_,
    output wire F5BSB2,
    output wire F5BSB2_,
    
    output wire OTLNKM,
    output wire OTLNK0,
    output wire OTLNK1,
    
    output wire T1P,
    output wire T2P,
    output wire T3P,
    output wire T4P,
    output wire T5P,
    output wire T6P,
    
    output wire INLNKM,
    output wire INLNKP,
    
    output wire CCH33,
    output wire CH3310,
    output wire CH3311,
    
    output wire CH1305,
    output wire CH1306,
    output wire CH1308,
    output wire CH1309,
    
    output wire CH1401,
    output wire CH1402,
    output wire CH1403,
    output wire CH1404,
    output wire CH1405,
    output wire CH1406,
    output wire CH1407,
    output wire CH1408,
    output wire CH1409,
    output wire CH1410,
    
    output wire THRSTD,
    output wire EMSD,
    output wire THRSTp,
    output wire THRSTm,
    output wire EMSp,
    output wire EMSm,
    
    output wire GYROD,
    output wire GYXP,
    output wire GYXM,
    output wire GYYP,
    output wire GYYM,
    output wire GYZP,
    output wire GYZM,
    output wire GYENAB,
    output wire GYRSET,
    output wire GYRRST,
    
    output wire FF1109_,
    output wire FF1110_,
    output wire FF1111_,
    output wire FF1112_,
    
    output wire CH1109,
    output wire CH1110,
    output wire CH1111,
    output wire CH1112,
    
    output wire ERRST,
    output wire UPRUPT,
    
    output wire RHCGO,
    output wire BMAGXP,
    output wire BMAGXM,
    output wire BMAGYP,
    output wire BMAGYM,
    output wire BMAGZP,
    output wire BMAGZM,
    
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A19 sheet 1
    *  Sheet number 2005270/1
    *
    **************************/
    
    wire NOR46101_out;
    wire NOR46103_out;
    wire NOR46104_out;
    wire NOR46105_out;
    wire NOR46106_out;
    wire NOR46107_out;
    wire NOR46108_out;
    wire NOR46113_out;
    wire NOR46114_out;
    wire NOR46115_out;
    wire NOR46117_out;
    wire NOR46118_out;
    wire NOR46119_out;
    wire NOR46121_out;
    wire NOR46122_out;
    wire NOR46123_out;
    wire NOR46124_out;
    wire NOR46125_out;
    wire NOR46126_out;
    wire NOR46127_out;
    wire NOR46128_out;
    wire NOR46130_out;
    wire NOR46131_out;
    wire NOR46132_out;
    wire NOR46133_out;
    wire NOR46134_out;
    wire NOR46135_out;
    wire NOR46136_out;
    wire NOR46137_out;
    wire NOR46138_out;
    wire NOR46139_out;
    wire NOR46140_out;
    wire NOR46141_out;
    wire NOR46142_out;
    wire NOR46144_out;
    wire NOR46146_out;
    wire NOR46148_out;
    wire NOR46150_out;
    wire NOR46151_out;
    wire NOR46158_out;
    wire NOR46159_out;
    wire NOR46160_out;
    
    wire NOR46201_out;
    wire NOR46202_out;
    wire NOR46204_out;
    wire NOR46205_out;
    wire NOR46207_out;
    wire NOR46208_out;
    wire NOR46209_out;
    wire NOR46211_out;
    wire NOR46213_out;
    wire NOR46214_out;
    wire NOR46216_out;
    wire NOR46217_out;
    wire NOR46218_out;
    wire NOR46219_out;
    wire NOR46222_out;
    wire NOR46223_out;
    wire NOR46224_out;
    wire NOR46225_out;
    wire NOR46226_out;
    wire NOR46227_out;
    wire NOR46230_out;
    wire NOR46231_out;
    wire NOR46232_out;
    wire NOR46235_out;
    wire NOR46236_out;
    wire NOR46237_out;
    wire NOR46240_out;
    wire NOR46241_out;
    wire NOR46242_out;
    wire NOR46243_out;
    wire NOR46244_out;
    wire NOR46245_out;
    wire NOR46246_out;
    wire NOR46249_out;
    wire NOR46250_out;
    wire NOR46251_out;
    wire NOR46252_out;
    wire NOR46253_out;
    wire NOR46255_out;
    wire NOR46256_out;
    wire NOR46257_out;
    wire NOR46259_out;
    wire NOR46261_out;
    
    wire SH3MS_;
    wire F5ASB0;
    wire C45R_;
    wire UPL0_;
    wire UPL1_;
    wire XLNK0_;
    wire XLNK1_;
    wire BLKUPL;
    
    // Altitude meter
    //r_4 #(1'b0) NOR45127(NOR45127_out,    NOR45123_out,   F09A_,          MKEY15,         NOR45135_out,   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46101(NOR46101_out,    SHINC_,         T06_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR46102(SH3MS_,          NOR46101_out,   NOR46103_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46103(NOR46103_out,    SH3MS_,         CSG,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR46104(NOR46104_out,    CA6_,           CXB0_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46105(NOR46105_out,    NOR46104_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46106(NOR46106_out,    BR1,            SH3MS_,         NOR46105_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR46107(NOR46107_out,    SH3MS_,         NOR46105_out,   BR1_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR46108(NOR46108_out,    NOR46106_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46109(ALT0,            NOR46108_out,   NOR46115_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46110(ALT1,            NOR46115_out,   NOR46122_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46111(ALRT0,           NOR46108_out,   NOR46114_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46112(ALRT1,           NOR46122_out,   NOR46114_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46113(NOR46113_out,    CHWL02_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46114(NOR46114_out,    NOR46113_out,   NOR46115_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46115(NOR46115_out,    NOR46114_out,   CCH14,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46116(CH1402,          RCH14_,         NOR46114_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46117(NOR46117_out,    WCH14_,         CHWL03_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR46118(NOR46118_out,    NOR46117_out,   NOR46119_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46119(NOR46119_out,    NOR46118_out,   CCH14,          NOR46128_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR46120(CH1403,          RCH14_,         NOR46121_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46121(NOR46121_out,    NOR46119_out,   NOR46128_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46122(NOR46122_out,    NOR46107_out,   NOR46126_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46123(NOR46123_out,    NOR46118_out,   GTSET_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46124(NOR46124_out,    NOR46123_out,   NOR46125_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46125(NOR46125_out,    NOR46124_out,   GOJAM,          GTONE,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46126(NOR46126_out,    F5ASB2_,        NOR46124_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46127(NOR46127_out,    NOR46126_out,   NOR46128_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46128(NOR46128_out,    NOR46127_out,   GTSET,          GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46129(ALTM,            F5ASB0_,        NOR46127_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46130(NOR46130_out,    NOR46128_out,   NOR46131_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46131(NOR46131_out,    NOR46130_out,   GTONE,                                          reset, prop_clk);
    nor_3 #(1'b0) NOR46133(NOR46133_out,    NOR46131_out,   NOR46128_out,   NOR46125_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR46132(ALTSNC,          NOR46133_out,                                                   reset, prop_clk);
    
    // Outlink
    
    nor_2 #(1'b0) NOR46134(NOR46134_out,    CHWL01_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46135(NOR46135_out,    NOR46134_out,   NOR46136_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46136(NOR46136_out,    NOR46135_out,   CCH14,          NOR46142_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR46137(NOR46137_out,    GTSET_,         NOR46136_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46138(NOR46138_out,    NOR46137_out,   NOR46139_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46139(NOR46139_out,    NOR46138_out,   GTONE,          GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46140(NOR46140_out,    F5ASB2_,        NOR46138_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46141(NOR46141_out,    NOR46140_out,   NOR46142_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46142(NOR46142_out,    NOR46141_out,   GTSET,          GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46143(OTLNKM,          F5ASB0_,        NOR46141_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46144(NOR46144_out,    NOR46136_out,   NOR46142_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46145(CH1401,          NOR46144_out,   RCH14_,                                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR46146(NOR46146_out,    BR1_,           SH3MS_,         NOR46151_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR46147(OTLNK0,          NOR46151_out,   SH3MS_,         BR1,                            reset, prop_clk);
    nor_2 #(1'b0) NOR46148(NOR46148_out,    NOR46140_out,   NOR46146_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR46149(OTLNK1,          NOR46148_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46150(NOR46150_out,    CA5_,           CXB7_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46151(NOR46151_out,    NOR46150_out,                                                   reset, prop_clk);
    
    
    nor_2 #(1'b0) NOR46152(F5ASB0,          SB0_,           F05A_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46153(F5ASB0_,         F5ASB0,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46154(F5ASB2,          SB2_,           F05A_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46155(F5ASB2_,         F5ASB2,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46156(F5BSB2,          SB2_,           F05B_,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46157(F5BSB2_,         F5BSB2,                                                         reset, prop_clk);
    
    
    // Inlink
    nor_3 #(1'b0) NOR46201(NOR46201_out,    NOR46225_out,   UPL0_,          BLKUPL,                         reset, prop_clk);
    nor_2 #(1'b0) NOR46202(NOR46202_out,    NOR46201_out,   NOR46207_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46203(INLNKM,          NOR46202_out,   NOR46227_out,   NOR46216_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR46204(NOR46204_out,    BLKUPL,         NOR46225_out,   UPL1_,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46205(NOR46205_out,    NOR46204_out,   NOR46208_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46206(INLNKP,          NOR46227_out,   NOR46205_out,   NOR46216_out,                   reset, prop_clk);
    
    // Crosslink
    nor_2 #(1'b0) NOR46207(NOR46207_out,    XLNK0_,         NOR46224_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46208(NOR46208_out,    XLNK1_,         NOR46224_out,                                   reset, prop_clk);
    nor_4 #(1'b0) NOR46209(NOR46209_out,    NOR46201_out,   NOR46204_out,   NOR46207_out,   NOR46208_out,   reset, prop_clk);
    // NOR46210 merged into NOR46209
    nor_2 #(1'b0) NOR46211(NOR46211_out,    NOR46209_out,   NOR46217_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46212(CCH33,           CCHG_,          XT3_,           XB3_,                           reset, prop_clk);
    nor_2 #(1'b1) NOR46213(NOR46213_out,    NOR46211_out,   NOR46214_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46214(NOR46214_out,    NOR46213_out,   CCH33,          GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46215(CH3311,          NOR46214_out,   RCH33_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46216(NOR46216_out,    NOR46217_out,   F04A,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR46217(NOR46217_out,    NOR46219_out,   NOR46216_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46218(NOR46218_out,    NOR46219_out,   NOR46217_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46219(NOR46219_out,    C45R_,          NOR46218_out,                                   reset, prop_clk);
    nor_1 #(1'b1) NOR46220(C45R_,           C45R,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR46221(CH3310,          BLKUPL,         RCH33_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46222(NOR46222_out,    CHWL05_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46223(NOR46223_out,    CHWL06_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46224(NOR46224_out,    NOR46222_out,   NOR46225_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46225(NOR46225_out,    NOR46224_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR46226(NOR46226_out,    NOR46223_out,   NOR46227_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46227(NOR46227_out,    NOR46226_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46228(CH1305,          NOR46224_out,   RCH13_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46229(CH1306,          NOR46226_out,   RCH13_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46230(NOR46230_out,    WCH14_,         CHWL04_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR46231(NOR46231_out,    NOR46230_out,   NOR46232_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46232(NOR46232_out,    NOR46231_out,   CCH14,          NOR46242_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR46233(CH1404,          RCH14_,         NOR46231_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46234(THRSTD,          NOR46231_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR46235(NOR46235_out,    WCH14_,         CHWL05_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR46236(NOR46236_out,    NOR46235_out,   NOR46237_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46237(NOR46237_out,    NOR46236_out,   NOR46259_out,   CCH14,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46238(CH1405,          RCH14_,         NOR46236_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46239(EMSD,            NOR46236_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR46158(NOR46158_out,    CA5_,           XB5_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR46159(NOR46159_out,    NOR46158_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46240(NOR46240_out,    POUT_,          NOR46159_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46241(NOR46241_out,    NOR46159_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46242(NOR46242_out,    ZOUT_,          NOR46159_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46243(NOR46243_out,    NOR46240_out,   NOR46244_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46244(NOR46244_out,    NOR46243_out,   NOR46231_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR46245(NOR46245_out,    NOR46241_out,   NOR46246_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46246(NOR46246_out,    NOR46245_out,   NOR46231_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46247(THRSTp,          NOR46243_out,   F5ASB0_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR46248(THRSTm,          F5ASB0_,        NOR46245_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46249(NOR46249_out,    CA5_,           XB6_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR46250(NOR46250_out,    NOR46249_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46251(NOR46251_out,    NOR46250_out,   POUT_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR46252(NOR46252_out,    NOR46251_out,   NOR46253_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46253(NOR46253_out,    NOR46252_out,   NOR46236_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46254(EMSp,            NOR46252_out,   F5ASB0_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR46255(NOR46255_out,    NOR46250_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR46256(NOR46256_out,    NOR46255_out,   NOR46257_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46257(NOR46257_out,    NOR46256_out,   NOR46236_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46258(EMSm,            NOR46256_out,   F5ASB0_,                                        reset, prop_clk);
    nor_2 #(1'b0) NOR46259(NOR46259_out,    NOR46250_out,   ZOUT_,                                          reset, prop_clk);
    
    
    /**************************
    *
    *  Module A19 sheet 2
    *  Sheet number 2005270/2
    *
    **************************/
    
    wire NOR46318_out;
    wire NOR46319_out;
    wire NOR46320_out;
    wire NOR46322_out;
    wire NOR46323_out;
    wire NOR46324_out;
    wire NOR46325_out;
    wire NOR46327_out;
    wire NOR46328_out;
    wire NOR46329_out;
    wire NOR46331_out;
    wire NOR46332_out;
    wire NOR46333_out;
    wire NOR46334_out;
    wire NOR46335_out;
    wire NOR46336_out;
    wire NOR46337_out;
    wire NOR46338_out;
    wire NOR46341_out;
    wire NOR46342_out;
    wire NOR46343_out;
    wire NOR46344_out;
    wire NOR46345_out;
    wire NOR46346_out;
    wire NOR46347_out;
    wire NOR46350_out;
    wire NOR46351_out;
    wire NOR46352_out;
    wire NOR46353_out;
    wire NOR46354_out;
    wire NOR46355_out;
    wire NOR46356_out;
    wire NOR46357_out;
    
    wire NOR46401_out;
    wire NOR46402_out;
    wire NOR46403_out;
    wire NOR46406_out;
    wire NOR46407_out;
    wire NOR46408_out;
    wire NOR46410_out;
    wire NOR46411_out;
    wire NOR46412_out;
    wire NOR46414_out;
    wire NOR46415_out;
    wire NOR46416_out;
    wire NOR46418_out;
    wire NOR46419_out;
    wire NOR46420_out;
    wire NOR46422_out;
    wire NOR46423_out;
    wire NOR46428_out;
    wire NOR46429_out;
    wire NOR46430_out;
    wire NOR46431_out;
    wire NOR46435_out;
    wire NOR46436_out;
    wire NOR46437_out;
    wire NOR46438_out;
    wire NOR46439_out;
    wire NOR46440_out;
    wire NOR46441_out;
    wire NOR46444_out;
    wire NOR46452_out;
    wire NOR46456_out;
    
    wire NOR45222_out;
    wire NOR49355_out;
    wire NOR49356_out;
    wire NOR49359_out;
     
    
    wire W1110;
    wire FF1109;
    wire FF1110;
    wire FF1111;
    wire FF1112;
    wire CNTRSB_;
    wire F7CSB1_;
    
    
    
    // Channel 14
    nor_2 #(1'b0) NOR46401(NOR46401_out,    CHWL10_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46402(NOR46402_out,    NOR46401_out,   NOR46403_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46403(NOR46403_out,    NOR46402_out,   NOR46439_out,   CCH14,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46404(CH1410,          RCH14_,         NOR46402_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46405(GYROD,           NOR46402_out,   F5ASB2_,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR46406(NOR46406_out,    CHWL09_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46407(NOR46407_out,    NOR46406_out,   NOR46408_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46408(NOR46408_out,    NOR46407_out,   CCH14,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46409(CH1409,          RCH14_,         NOR46407_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46410(NOR46410_out,    CHWL08_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46411(NOR46411_out,    NOR46410_out,   NOR46412_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46412(NOR46412_out,    NOR46411_out,   CCH14,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46413(CH1408,          RCH14_,         NOR46411_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46414(NOR46414_out,    CHWL07_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46415(NOR46415_out,    NOR46414_out,   NOR46416_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46416(NOR46416_out,    NOR46415_out,   CCH14,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46417(CH1407,          RCH14_,         NOR46415_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46418(NOR46418_out,    CHWL06_,        WCH14_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46419(NOR46419_out,    NOR46418_out,   NOR46420_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46420(NOR46420_out,    NOR46419_out,   CCH14,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46421(CH1406,          RCH14_,         NOR46419_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR46422(NOR46422_out,    SB1_,           NOR46412_out,   NOR46415_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR46423(NOR46423_out,    NOR46422_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46424(GYXP,            NOR46408_out,   NOR46423_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46425(GYXM,            NOR46423_out,   NOR46407_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46426(GYYP,            NOR46408_out,   NOR46429_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46427(GYYM,            NOR46429_out,   NOR46407_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR46428(NOR46428_out,    SB1_,           NOR46416_out,   NOR46411_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR46429(NOR46429_out,    NOR46428_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46430(NOR46430_out,    SB1_,           NOR46411_out,   NOR46415_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR46431(NOR46431_out,    NOR46430_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46432(GYZP,            NOR46408_out,   NOR46431_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46433(GYZM,            NOR46431_out,   NOR46407_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46434(GYENAB,          SB1_,           NOR46419_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46435(NOR46435_out,    CA4_,           XB7_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR46436(NOR46436_out,    NOR46435_out,                                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46437(NOR46437_out,    POUT_,          NOR46436_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46438(NOR46438_out,    NOR46436_out,   MOUT_,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46439(NOR46439_out,    NOR46436_out,   ZOUT_,                                          reset, prop_clk);
    
    nor_3 #(1'b0) NOR46440(NOR46440_out,    NOR46441_out,   NOR46437_out,   NOR46438_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR46441(NOR46441_out,    NOR46402_out,   NOR46440_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46442(GYRSET,          F5ASB2_,        NOR46440_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46443(GYRRST,          F5ASB2_,        NOR46441_out,                                   reset, prop_clk);
    
    
    // Channel 11
    nor_2 #(1'b0) NOR46444(NOR46444_out,    CHWL09_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46445(FF1109_,         NOR46444_out,   FF1109,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46446(FF1109,          FF1109_,        CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46447(CH1109,          FF1109_,        RCH11_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46448(W1110,           CHWL10_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46449(FF1110_,         W1110,          FF1110,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46450(FF1110,          FF1110_,        CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46451(CH1110,          FF1110_,        RCH11_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46452(NOR46452_out,    CHWL11_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46453(FF1111_,         NOR46452_out,   FF1111,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46454(FF1111,          FF1111_,        CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46455(CH1111,          FF1111_,        RCH11_,                                         reset, prop_clk);
    
    nor_2 #(1'b0) NOR46456(NOR46456_out,    CHWL12_,        WCH11_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46457(FF1112_,         NOR46456_out,   FF1112,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46458(FF1112,          FF1112_,        CCH11,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46459(CH1112,          FF1112_,        RCH11_,                                         reset, prop_clk);
    
    // NOR46461 omitted (fan-out expansion for A19 sheet 1)
    
    // NOR45222 and NOR45224 moved here from A18 sheet 1
    nor_2 #(1'b0) NOR45222(NOR45222_out,    CAURST,         W1110,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR45224(ERRST,           NOR45222_out,                                                   reset, prop_clk);

    
    // UPRUPT 
    nor_2 #(1'b0) NOR46303(UPRUPT,          BR1_,           C45R_,                                          reset, prop_clk);
    
    // Up/crosslink signals
    nor_1 #(1'b0) NOR46304(UPL0_,           UPL0,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR46305(UPL1_,           UPL1,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR46306(XLNK0_,          XLNK0,                                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46307(XLNK1_,          XLNK1,                                                          reset, prop_clk);
    nor_1 #(1'b0) NOR46308(BLKUPL,          BLKUPL_,                                                        reset, prop_clk);
    
    // CNTRSB_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49331(CNTRSB_,         SB2,                                                            reset, prop_clk);
    
    // T1P - T6P
    // NOR46309, NOR46312, NOR46314 and NOR46316 moved to A1 sheet 1
    nor_2 #(1'b0) NOR46310(T1P,             CNTRSB_,        F10B_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR46160(NOR46160_out,    CA2_,           XB5_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR46261(NOR46261_out,    WOVR_,          OVF_,                                           reset, prop_clk);
    assign T2P = NOR46160_out & NOR46261_out;
    
    nor_2 #(1'b0) NOR46311(T3P,             F10B_,          CNTRSB_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR46313(T4P,             FS10,           F09B_,          CNTRSB_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR46315(T5P,             F10A_,          CNTRSB_,                                        reset, prop_clk);
    nor_3 #(1'b0) NOR46317(T6P,             CNTRSB_,        F06B_,          T6ON_,                          reset, prop_clk);
    
      
    // Extra scaler signals moved here from A24 sheet 2
    nor_2 #(1'b0) NOR49359(NOR49359_out,    F07C_,          SB1_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR49360(F7CSB1_,         NOR49359_out,                                                   reset, prop_clk);
    
    // Channel 13
  
    nor_2 #(1'b0) NOR46318(NOR46318_out,    CHWL08_,        WCH13_,                                         reset, prop_clk);
    nor_2 #(1'b1) NOR46319(NOR46319_out,    NOR46318_out,   NOR46320_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46320(NOR46320_out,    NOR46319_out,   CCH13,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46321(CH1308,          NOR46319_out,   RCH13_,                                         reset, prop_clk);
    nor_1 #(1'b0) NOR46322(NOR46322_out,    NOR46320_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR46323(NOR46323_out,    WCH13_,         CHWL09_,                                        reset, prop_clk);
    nor_2 #(1'b1) NOR46324(NOR46324_out,    NOR46323_out,   NOR46325_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46325(NOR46325_out,    NOR46324_out,   CCH13,          RHCGO,                          reset, prop_clk);
    nor_2 #(1'b0) NOR46326(CH1309,          NOR46324_out,   RCH13_,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR46327(NOR46327_out,    NOR46324_out,   F07D_,                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR46328(NOR46328_out,    NOR46327_out,   NOR46329_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46329(NOR46329_out,    NOR46328_out,   F07B,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR46330(RHCGO,           SB2_,           NOR46328_out,   F07C_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR46331(NOR46331_out,    NOR46329_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46351(NOR46351_out,    NOR46331_out,   F07C_,          SB0_,                           reset, prop_clk);
    
    // BMAG outputs
    nor_3 #(1'b0) NOR46332(NOR46332_out,    SIGNX,          F7CSB1_,        NOR46331_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR46333(NOR46333_out,    NOR46332_out,   NOR46334_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46334(NOR46334_out,    NOR46333_out,   NOR46351_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46335(NOR46335_out,    F5ASB2_,        NOR46333_out,   GATEX_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR46336(NOR46336_out,    GATEX_,         NOR46334_out,   F5ASB2_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR46337(NOR46337_out,    BMGXP,          NOR46335_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46338(NOR46338_out,    NOR46336_out,   BMGXM,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46339(BMAGXP,          NOR46322_out,   NOR46337_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46340(BMAGXM,          NOR46322_out,   NOR46338_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR46341(NOR46341_out,    SIGNY,          F7CSB1_,        NOR46331_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR46342(NOR46342_out,    NOR46341_out,   NOR46343_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46343(NOR46343_out,    NOR46342_out,   NOR46351_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46344(NOR46344_out,    F5ASB2_,        NOR46342_out,   GATEY_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR46345(NOR46345_out,    GATEY_,         NOR46343_out,   F5ASB2_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR46346(NOR46346_out,    BMGYP,          NOR46344_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46347(NOR46347_out,    NOR46345_out,   BMGYM,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46348(BMAGYP,          NOR46322_out,   NOR46346_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46349(BMAGYM,          NOR46322_out,   NOR46347_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR46350(NOR46350_out,    SIGNZ,          F7CSB1_,        NOR46331_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR46352(NOR46352_out,    NOR46350_out,   NOR46353_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46353(NOR46353_out,    NOR46352_out,   NOR46351_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR46354(NOR46354_out,    F5ASB2_,        NOR46352_out,   GATEZ_,                         reset, prop_clk);
    nor_3 #(1'b0) NOR46355(NOR46355_out,    GATEZ_,         NOR46353_out,   F5ASB2_,                        reset, prop_clk);
    nor_2 #(1'b0) NOR46356(NOR46356_out,    BMGZP,          NOR46354_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46357(NOR46357_out,    NOR46355_out,   BMGZM,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR46358(BMAGZP,          NOR46322_out,   NOR46356_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR46359(BMAGZM,          NOR46322_out,   NOR46357_out,                                   reset, prop_clk);
    
    
endmodule
