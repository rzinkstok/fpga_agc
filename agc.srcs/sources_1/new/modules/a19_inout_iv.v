`timescale 1ns / 1ps

module a19_inout_iv(
    input wire T06_,
    input wire F04A,
    input wire F05A_,
    input wire F05B_,
    input wire CHWL01_,
    input wire CHWL02_,
    input wire CHWL03_,
    input wire CHWL04_,
    input wire CHWL05_,
    input wire CHWL06_,
    
    input wire CCHG_,
    
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
    input wire CA5_,
    input wire CA6_,
    input wire CXB0_,
    input wire CXB7_,
    
    input wire XT3_,
    input wire XB3_,
    input wire XB5_,
    input wire XB6_,
    
    input wire BR1,
    input wire BR1_,
    
    input wire GTSET,
    input wire GTSET_,
    input wire GOJAM,
    input wire GTONE,
    
    input wire SB0_,
    input wire SB2_,
    
    input wire WOVR_,
    input wire OVF_,
    
    input wire UPL0_,
    input wire UPL1_,
    input wire BLKUPL,
    
    input wire XLNK0_,
    input wire XLNK1_,
    
    input wire C45R,
    
    input wire POUT_,
    input wire MOUT_,
    input wire ZOUT_,
    
    output wire ALT0,
    output wire ALT1,
    output wire ALRT0,
    output wire ALRT1,
    
    output wire CH1401,
    output wire CH1402,
    output wire CH1403,
    
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
    
    output wire T2P,
    
    output wire INLNKM,
    output wire INLNKP,
    
    output wire CCH33,
    output wire CH3310,
    output wire CH3311,
    output wire CH1305,
    output wire CH1306,
    
    output wire CH1404,
    output wire CH1405,
    
    output wire THRSTD,
    output wire EMSD,
    output wire THRSTp,
    output wire THRSTm,
    output wire EMSp,
    output wire EMSm,
    
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
    nor_2 #(!'b0) NOR46145(CH1401,          NOR46144_out,   RCH14_,                                         reset, prop_clk);
    
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
    
    // T2P
    nor_2 #(1'b0) NOR46160(NOR46160_out,    CA2_,           XB5_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR46261(NOR46261_out,    WOVR_,          OVF_,                                           reset, prop_clk);
    assign T2P = NOR46160_out & NOR46261_out;
    
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
    
    
    
endmodule
