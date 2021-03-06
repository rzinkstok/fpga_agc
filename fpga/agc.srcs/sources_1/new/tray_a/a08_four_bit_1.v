`timescale 1ns / 1ps

module a08_four_bit_1(
    input wire A2XG_, 
    input wire PONEX, 
    input wire MONEX, 
    input wire TWOX, 
    input wire CLXC, 
    input wire CUG, 
    input wire WYLOG_, 
    input wire WYDLOG_, 
    input wire WYDG_, 
    input wire CI01_, 
    input wire RULOG_,
    input wire WAG_, 
    input wire CAG, 
    input wire WALSG_, 
    input wire RAG_, 
    input wire WLG_, 
    input wire G2LSG_, 
    input wire CLG1G, 
    input wire RLG_, 
    input wire WQG_, 
    input wire CQG, 
    input wire RQG_,
    input wire WZG_, 
    input wire CZG, 
    input wire RZG_,
    input wire WBG_, 
    input wire CBG, 
    input wire RBLG_, 
    input wire RCG_,
    input wire WG3G_, 
    input wire WG4G_, 
    input wire L2GDG_, 
    input wire MCRO_, 
    input wire WG1G_, 
    input wire CGG, 
    input wire RGG_,
    input wire WL05_, 
    input wire WL06_, 
    input wire WL16_,
    input wire SA01, 
    input wire SA02, 
    input wire SA03, 
    input wire SA04,
    input wire G01ED, 
    input wire G02ED, 
    input wire G03ED, 
    input wire G04ED,
    input wire RB1, 
    input wire R15, 
    input wire R1C, 
    input wire RB2,
    input wire CH01, 
    input wire CH02, 
    input wire CH03, 
    input wire CH04,
    input wire G05_, 
    input wire G06_, 
    input wire G07_,
    input wire MDT01, 
    input wire MDT02, 
    input wire MDT03, 
    input wire MDT04,
    input wire XUY05_, 
    input wire XUY06_,
    input wire WHOMP, 
    input wire WHOMPA,
    input wire CAD1, 
    input wire CAD2, 
    input wire CAD3, 
    input wire CAD4,
    input wire BBK1, 
    input wire BBK2, 
    input wire BBK3,
    input wire RB1F, 
    input wire R6, 
    input wire RPTAD3, 
    input wire RPTAD4,
    
    output wire WL01,
    output wire WL01_, 
    output wire MWL01, 
    output wire WL02, 
    output wire WL02_, 
    output wire MWL02, 
    output wire WL03, 
    output wire WL03_, 
    output wire MWL03, 
    output wire WL04, 
    output wire WL04_, 
    output wire MWL04,
    output wire CO06,
    output wire CI05_,
    output wire XUY01_, 
    output wire XUY02_,
    output wire SUMA01_, 
    output wire SUMB01_, 
    output wire SUMA02_, 
    output wire SUMB02_, 
    output wire SUMA03_, 
    output wire SUMB03_, 
    output wire G01,
    output wire G01_, 
    output wire GEM01, 
    output wire G02, 
    output wire GEM02, 
    output wire G03, 
    output wire GEM03, 
    output wire G04,
    output wire GEM04,
    output wire L01_, 
    output wire L02_, 
    output wire L04_,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
);
    
    /**************************
    *
    *  Module A8 sheet 1
    *  Sheet number 2005255/1
    *
    **************************/
    
    wire NOR51101_out;
    wire NOR51102_out;
    wire NOR51103_out;
    wire NOR51104_out;
    wire NOR51105_out;
    wire NOR51106_out;
    wire NOR51107_out;
    wire NOR51108_out;
    wire NOR51109_out;
    wire NOR51111_out;
    wire NOR51113_out;
    wire NOR51117_out;
    wire NOR51118_out;
    wire NOR51119_out;
    wire NOR51121_out;
    wire NOR51122_out;
    wire NOR51123_out;
    wire NOR51124_out;
    wire NOR51125_out;
    wire NOR51127_out;
    wire NOR51128_out;
    wire NOR51129_out;
    wire NOR51130_out;
    wire NOR51131_out;
    wire NOR51132_out;
    wire NOR51133_out;
    wire NOR51134_out;
    wire NOR51136_out;
    wire NOR51137_out;
    wire NOR51138_out;
    wire NOR51139_out;
    wire NOR51140_out;
    wire NOR51141_out;
    wire NOR51142_out;
    wire NOR51143_out;
    wire NOR51144_out;
    wire NOR51145_out;
    wire NOR51146_out;
    wire NOR51147_out;
    wire NOR51148_out;
    wire NOR51151_out;
    wire NOR51153_out;
    wire NOR51157_out;
    wire NOR51158_out;
    wire NOR51162_out;
    wire NOR51163_out;
    
    wire NOR51201_out;
    wire NOR51202_out;
    wire NOR51203_out;
    wire NOR51204_out;
    wire NOR51205_out;
    wire NOR51206_out;
    wire NOR51207_out;
    wire NOR51208_out;
    wire NOR51209_out;
    wire NOR51211_out;
    wire NOR51212_out;
    wire NOR51213_out;
    wire NOR51217_out;
    wire NOR51218_out;
    wire NOR51219_out;
    wire NOR51221_out;
    wire NOR51222_out;
    wire NOR51223_out;
    wire NOR51224_out;
    wire NOR51225_out;
    wire NOR51227_out;
    wire NOR51228_out;
    wire NOR51229_out;
    wire NOR51230_out;
    wire NOR51231_out;
    wire NOR51232_out;
    wire NOR51233_out;
    wire NOR51234_out;
    wire NOR51236_out;
    wire NOR51237_out;
    wire NOR51238_out;
    wire NOR51239_out;
    wire NOR51240_out;
    wire NOR51241_out;
    wire NOR51242_out;
    wire NOR51243_out;
    wire NOR51244_out;
    wire NOR51245_out;
    wire NOR51246_out;
    wire NOR51247_out;
    wire NOR51248_out;
    wire NOR51251_out;
    wire NOR51253_out;
    wire NOR51257_out;
    wire NOR51258_out;
    wire NOR51263_out;
    
    wire NOR51401_out;
    wire NOR51402_out;
    wire NOR51403_out;
    wire NOR51404_out;
    wire NOR51405_out;
    wire NOR51406_out;
    wire NOR51407_out;
    wire NOR51408_out;
    wire NOR51409_out;
    wire NOR51411_out;
    wire NOR51413_out;
    wire NOR51417_out;
    wire NOR51418_out;
    wire NOR51419_out;
    wire NOR51421_out;
    wire NOR51422_out;
    wire NOR51423_out;
    wire NOR51424_out;
    wire NOR51425_out;
    wire NOR51427_out;
    wire NOR51428_out;
    wire NOR51429_out;
    wire NOR51430_out;
    wire NOR51431_out;
    wire NOR51432_out;
    wire NOR51433_out;
    wire NOR51434_out;
    wire NOR51436_out;
    wire NOR51437_out;
    wire NOR51438_out;
    wire NOR51439_out;
    wire NOR51440_out;
    wire NOR51441_out;
    wire NOR51442_out;
    wire NOR51443_out;
    wire NOR51444_out;
    wire NOR51445_out;
    wire NOR51446_out;
    wire NOR51447_out;
    wire NOR51448_out;
    wire NOR51451_out;
    wire NOR51453_out;
    wire NOR51457_out;
    wire NOR51458_out;
    wire NOR51462_out;
    
    wire NOR51301_out;
    wire NOR51302_out;
    wire NOR51303_out;
    wire NOR51304_out;
    wire NOR51305_out;
    wire NOR51306_out;
    wire NOR51307_out;
    wire NOR51308_out;
    wire NOR51309_out;
    wire NOR51311_out;
    wire NOR51312_out;
    wire NOR51313_out;
    wire NOR51317_out;
    wire NOR51318_out;
    wire NOR51319_out;
    wire NOR51321_out;
    wire NOR51322_out;
    wire NOR51323_out;
    wire NOR51324_out;
    wire NOR51325_out;
    wire NOR51327_out;
    wire NOR51328_out;
    wire NOR51329_out;
    wire NOR51330_out;
    wire NOR51331_out;
    wire NOR51332_out;
    wire NOR51333_out;
    wire NOR51334_out;
    wire NOR51336_out;
    wire NOR51337_out;
    wire NOR51338_out;
    wire NOR51339_out;
    wire NOR51340_out;
    wire NOR51341_out;
    wire NOR51342_out;
    wire NOR51343_out;
    wire NOR51344_out;
    wire NOR51345_out;
    wire NOR51346_out;
    wire NOR51347_out;
    wire NOR51348_out;
    wire NOR51351_out;
    wire NOR51353_out;
    wire NOR51357_out;
    wire NOR51358_out;
    
    wire NOR34450_out;
    wire NOR34451_out;
    wire NOR35359_out;
    wire NOR35360_out;
    wire NOR35460_out;
    wire NOR53462_out;
    wire NOR54162_out;
    wire NOR54163_out;
    
    wire A01_;
    wire A02_;
    wire A03_;
    wire A04_;
    wire RL01_;
    wire RL02_;
    wire RL03_;
    wire RL04_;
    wire XUY03_;
    wire XUY04_;
    wire CI02_;
    wire CI03_;
    wire CI04_;
    wire CO04;
    wire SUMA04_;
    wire SUMB04_;
    wire Z01_;
    wire Z02_;
    wire Z03_;
    wire Z04_;
    wire G02_;
    wire G03_;
    wire G04_;
    wire S08A;
    wire S08A_;
    wire L03_;
    
    // Bit column 1
     
    // CO04 part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51101(NOR51101_out,   XUY03_,         XUY01_,         CI01_,          p4SW, reset, prop_clk);
    
    // X flip-flop
    nor_3 #(1'b0)  NOR51102(NOR51102_out,   A2XG_,          A01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51103(NOR51103_out,   PONEX,          NOR51102_out,   NOR51104_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51104(NOR51104_out,   NOR51103_out,   CLXC,           CUG,            p4SW, reset, prop_clk);
    
    // Y flip-flop
    nor_3 #(1'b0)  NOR51105(NOR51105_out,   WYLOG_,         WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51106(NOR51106_out,   WL16_,          WYDLOG_,        n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51107(NOR51107_out,   NOR51105_out,   NOR51106_out,   NOR51108_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51108(NOR51108_out,   NOR51107_out,   CUG,            n0VDCA,         p4SW, reset, prop_clk);
    
    // Adder
    nor_3 #(1'b0)  NOR51109(NOR51109_out,   NOR51103_out,   NOR51107_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51110(XUY01_,         NOR51104_out,   NOR51108_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51112(SUMA01_,        NOR51109_out,   CI01_,          XUY01_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51113(NOR51113_out,   NOR51109_out,   XUY01_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51111(NOR51111_out,   CI01_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51115(SUMB01_,        NOR51113_out,   NOR51111_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51114(CI02_,          NOR51109_out,   SUMA01_,        n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51117(NOR51117_out,   SUMA01_,        SUMB01_,        RULOG_,         p4SW, reset, prop_clk);
    
    // NOR51116 removed (not used)
    
    // A register flip-flop
    nor_3 #(1'b0)  NOR51118(NOR51118_out,   WAG_,           WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51119(NOR51119_out,   WL03_,          WALSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51120(A01_,           NOR51118_out,   NOR51119_out,   NOR51121_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51121(NOR51121_out,   A01_,           CAG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51122(NOR51122_out,   RAG_,           A01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL01_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51123(NOR51123_out,   NOR51117_out,   NOR51122_out,   CH01,           p4SW, reset, prop_clk);
    
    // L register flip-flop
    nor_3 #(1'b0)  NOR51124(NOR51124_out,   WLG_,           WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51125(NOR51125_out,   G04_,           G2LSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51126(L01_,           NOR51124_out,   NOR51125_out,   NOR51127_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51127(NOR51127_out,   L01_,           CLG1G,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51128(NOR51128_out,   RLG_,           L01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Q register flip-flop
    nor_3 #(1'b0)  NOR51129(NOR51129_out,   WQG_,           WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51130(NOR51130_out,   NOR51129_out,   NOR51131_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51131(NOR51131_out,   NOR51130_out,   CQG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51132(NOR51132_out,   RQG_,           NOR51130_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Z register flip-flop
    nor_3 #(1'b0)  NOR51134(NOR51134_out,   WZG_,           WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51135(Z01_,           NOR51134_out,   NOR51136_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51136(NOR51136_out,   Z01_,           CZG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51137(NOR51137_out,   RZG_,           Z01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL01_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51133(NOR51133_out,   NOR51128_out,   NOR51132_out,   NOR51137_out,   p4SW, reset, prop_clk);
    
    // B register flip-flop
    nor_3 #(1'b0)  NOR51138(NOR51138_out,   WBG_,           WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51139(NOR51139_out,   NOR51138_out,   NOR51140_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51140(NOR51140_out,   NOR51139_out,   CBG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51141(NOR51141_out,   RBLG_,          NOR51139_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51142(NOR51142_out,   NOR51140_out,   RCG_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // G register flip-flop
    nor_3 #(1'b0)  NOR51143(NOR51143_out,   WL16_,          WG3G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51144(NOR51144_out,   WL02_,          WG4G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51145(NOR51145_out,   L2GDG_,         MCRO_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51146(NOR51146_out,   WG1G_,          WL01_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51147(NOR51147_out,   SA01,           NOR51143_out,   NOR51144_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51162(NOR51162_out,   G01ED,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51148(NOR51148_out,   NOR51145_out,   NOR51146_out,   G01,            p4SW, reset, prop_clk);
    assign G01_ = NOR51147_out & NOR51162_out & NOR51148_out;
    nor_3 #(1'b0)  NOR51149(G01,            G01_,           CGG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51150(GEM01,          G01_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51151(NOR51151_out,   RGG_,           G01_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL01_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51157(NOR51157_out,   NOR51141_out,   NOR51142_out,   NOR51151_out,   p4SW, reset, prop_clk);
    
    // RL01_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51158(NOR51158_out,   MDT01,          RB1,            R15,            p4SW, reset, prop_clk);
    
    // RL01_ part 5
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0)  NOR35460(NOR35460_out,   CAD1,           BBK1,           RB1F,           p4SW, reset, prop_clk);
    
    // RL01_
    assign RL01_ = NOR51123_out & NOR51133_out & NOR51157_out & NOR51158_out & NOR35460_out;
    
    // WL01
    nor_3 #(1'b0)  NOR51152(WL01,           RL01_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWL01
    nor_3 #(1'b0)  NOR51153(NOR51153_out,   RL01_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWL01 = NOR51153_out;
    
    // WL01_
    nor_3 #(1'b0)  NOR51154(WL01_,          WL01,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR51155 and NOR51156 removed (fan-out expansion)
    
    // NOR51161 moved to A14 sheet 1
    
    
    // Bit column 2
    
    // CO04 part 2
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51201(NOR51201_out,   XUY04_,         XUY02_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // CO04 part 3
    // // No cross-module fan-in, moved here from A10 sheet 2
    nor_3 #(1'b0)  NOR53462(NOR53462_out,   WHOMPA,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign CO04 = NOR51101_out & NOR51201_out & NOR53462_out;
    
    // X flip-flop
    nor_3 #(1'b0)  NOR51202(NOR51202_out,   A2XG_,          A02_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51203(NOR51203_out,   TWOX,           NOR51202_out,   NOR51204_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51204(NOR51204_out,   NOR51203_out,   CLXC,           CUG,            p4SW, reset, prop_clk);
    
    // Y flip-flop
    nor_3 #(1'b0)  NOR51205(NOR51205_out,   WYLOG_,         WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51206(NOR51206_out,   WL01_,          WYDG_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51207(NOR51207_out,   NOR51205_out,   NOR51206_out,   NOR51208_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51208(NOR51208_out,   NOR51207_out,   CUG,            n0VDCA,         p4SW, reset, prop_clk);
    
    // Adder
    nor_3 #(1'b0)  NOR51209(NOR51209_out,   NOR51203_out,   NOR51207_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51210(XUY02_,         NOR51204_out,   NOR51208_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51212(NOR51212_out,   NOR51209_out,   XUY02_,         CI02_,          p4SW, reset, prop_clk);
    // NOR54162 added from A11 sheet 1
    nor_3 #(1'b0)  NOR54162(NOR54162_out,   WHOMP,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign SUMA02_ = NOR51212_out & NOR54162_out;
    
    nor_3 #(1'b0)  NOR51213(NOR51213_out,   NOR51209_out,   XUY02_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51211(NOR51211_out,   CI02_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51215(SUMB02_,        NOR51213_out,   NOR51211_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51214(CI03_,          NOR51209_out,   SUMA02_,        n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51217(NOR51217_out,   SUMA02_,        SUMB02_,        RULOG_,         p4SW, reset, prop_clk);
    
    // NOR51216 removed (not used)
    
    // A register flip-flop
    nor_3 #(1'b0)  NOR51218(NOR51218_out,   WAG_,           WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51219(NOR51219_out,   WL04_,          WALSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51220(A02_,           NOR51218_out,   NOR51219_out,   NOR51221_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51221(NOR51221_out,   A02_,           CAG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51222(NOR51222_out,   RAG_,           A02_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL02_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51223(NOR51223_out,   NOR51217_out,   NOR51222_out,   CH02,           p4SW, reset, prop_clk);
    
    // L register flip-flop
    nor_3 #(1'b0)  NOR51224(NOR51224_out,   WLG_,           WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51225(NOR51225_out,   G05_,           G2LSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51226(L02_,           NOR51224_out,   NOR51225_out,   NOR51227_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51227(NOR51227_out,   L02_,           CLG1G,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51228(NOR51228_out,   RLG_,           L02_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Q register flip-flop
    nor_3 #(1'b0)  NOR51229(NOR51229_out,   WQG_,           WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51230(NOR51230_out,   NOR51229_out,   NOR51231_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51231(NOR51231_out,   NOR51230_out,   CQG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51232(NOR51232_out,   RQG_,           NOR51230_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Z register flip-flop
    nor_3 #(1'b0)  NOR51234(NOR51234_out,   WZG_,           WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51235(Z02_,           NOR51234_out,   NOR51236_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51236(NOR51236_out,   Z02_,           CZG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51237(NOR51237_out,   RZG_,           Z02_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL02_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51233(NOR51233_out,   NOR51228_out,   NOR51232_out,   NOR51237_out,   p4SW, reset, prop_clk);
    
    // B register flip-flop
    nor_3 #(1'b0)  NOR51238(NOR51238_out,   WBG_,           WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51239(NOR51239_out,   NOR51238_out,   NOR51240_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51240(NOR51240_out,   NOR51239_out,   CBG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51241(NOR51241_out,   RBLG_,          NOR51239_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51242(NOR51242_out,   NOR51240_out,   RCG_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // G register flip-flop
    nor_3 #(1'b0)  NOR51243(NOR51243_out,   WL01_,          WG3G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51244(NOR51244_out,   WL03_,          WG4G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51245(NOR51245_out,   L2GDG_,         L01_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51246(NOR51246_out,   WG1G_,          WL02_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51247(NOR51247_out,   SA02,           NOR51243_out,   NOR51244_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51163(NOR51163_out,   G02ED,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51248(NOR51248_out,   NOR51245_out,   NOR51246_out,   G02,            p4SW, reset, prop_clk);
    assign G02_ = NOR51247_out & NOR51163_out & NOR51248_out;
    nor_3 #(1'b0)  NOR51249(G02,            G02_,           CGG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51250(GEM02,          G02_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51251(NOR51251_out,   RGG_,           G02_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL02_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51257(NOR51257_out,   NOR51241_out,   NOR51242_out,   NOR51251_out,   p4SW, reset, prop_clk);
    
    // RL02_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51258(NOR51258_out,   MDT02,          R1C,            RB2,            p4SW, reset, prop_clk);
    
    // RL02_ part 5
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0)  NOR35360(NOR35360_out,   CAD2,           BBK2,           R6,             p4SW, reset, prop_clk);
    
    // RL02_
    assign RL02_ = NOR51223_out & NOR51233_out & NOR51257_out & NOR51258_out & NOR35360_out;
    
    // WL02
    nor_3 #(1'b0)  NOR51252(WL02,           RL02_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWL02
    nor_3 #(1'b0)  NOR51253(NOR51253_out,   RL02_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWL02 = NOR51253_out;
    
    // WL02_
    nor_3 #(1'b0)  NOR51254(WL02_,          WL02,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR51255 and NOR51256 removed (fan-out expansion)
    
    // NOR51261 and NOR51262 moved to A14 sheet 1
    
    
    /**************************
    *
    *  Module A8 sheet 2
    *  Sheet number 2005255/2
    *
    **************************/
    
    // Bit column 3
    
    // CO06 part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51401(NOR51401_out,   XUY05_,         XUY03_,         CI03_,          p4SW, reset, prop_clk);
    
    // X register flip-flop
    nor_3 #(1'b0)  NOR51402(NOR51402_out,   A2XG_,          A03_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51403(NOR51403_out,   MONEX,          NOR51402_out,   NOR51404_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51404(NOR51404_out,   NOR51403_out,   CLXC,           CUG,            p4SW, reset, prop_clk);
    
    // Y register flip-flop
    nor_3 #(1'b0)  NOR51405(NOR51405_out,   WYLOG_,         WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51406(NOR51406_out,   WL02_,          WYDG_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51407(NOR51407_out,   NOR51405_out,   NOR51406_out,   NOR51408_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51408(NOR51408_out,   NOR51407_out,   CUG,            n0VDCA,         p4SW, reset, prop_clk);
    
    // Adder
    nor_3 #(1'b0)  NOR51409(NOR51409_out,   NOR51403_out,   NOR51407_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51410(XUY03_,         NOR51404_out,   NOR51408_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51412(SUMA03_,        NOR51409_out,   CI03_,          XUY03_,         p4SW, reset, prop_clk);
        
    nor_3 #(1'b0)  NOR51413(NOR51413_out,   NOR51409_out,   XUY03_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51411(NOR51411_out,   CI03_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51415(SUMB03_,        NOR51413_out,   NOR51411_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51414(CI04_,          NOR51409_out,   SUMA03_,        n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51417(NOR51417_out,   SUMA03_,        SUMB03_,        RULOG_,         p4SW, reset, prop_clk);
    
    // A register flip-flop
    nor_3 #(1'b0)  NOR51418(NOR51418_out,   WAG_,           WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51419(NOR51419_out,   WL05_,          WALSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51420(A03_,           NOR51418_out,   NOR51419_out,   NOR51421_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51421(NOR51421_out,   A03_,           CAG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51422(NOR51422_out,   RAG_,           A03_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL03_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51423(NOR51423_out,   NOR51417_out,   NOR51422_out,   CH03,           p4SW, reset, prop_clk);
    
    // L register flip-flop
    nor_3 #(1'b0)  NOR51424(NOR51424_out,   WLG_,           WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51425(NOR51425_out,   G06_,           G2LSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51426(L03_,           NOR51424_out,   NOR51425_out,   NOR51427_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51427(NOR51427_out,   L03_,           CLG1G,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51428(NOR51428_out,   RLG_,           L03_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Q register flip-flop
    nor_3 #(1'b0)  NOR51429(NOR51429_out,   WQG_,           WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51430(NOR51430_out,   NOR51429_out,   NOR51431_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51431(NOR51431_out,   NOR51430_out,   CQG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51432(NOR51432_out,   RQG_,           NOR51430_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Z register flip-flop
    nor_3 #(1'b0)  NOR51434(NOR51434_out,   WZG_,           WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51435(Z03_,           NOR51434_out,   NOR51436_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51436(NOR51436_out,   Z03_,           CZG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51437(NOR51437_out,   RZG_,           Z03_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL03_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51433(NOR51433_out,   NOR51428_out,   NOR51432_out,   NOR51437_out,   p4SW, reset, prop_clk);
    
    // B register flip-flop
    nor_3 #(1'b0)  NOR51438(NOR51438_out,   WBG_,           WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51439(NOR51439_out,   NOR51438_out,   NOR51440_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51440(NOR51440_out,   NOR51439_out,   CBG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51441(NOR51441_out,   RBLG_,          NOR51439_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51442(NOR51442_out,   NOR51440_out,   RCG_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // G register flip-flop
    nor_3 #(1'b0)  NOR51443(NOR51443_out,   WL02_,          WG3G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51444(NOR51444_out,   WL04_,          WG4G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51445(NOR51445_out,   L2GDG_,         L02_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51446(NOR51446_out,   WG1G_,          WL03_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51447(NOR51447_out,   SA03,           NOR51443_out,   NOR51444_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51263(NOR51263_out,   G03ED,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51448(NOR51448_out,   NOR51445_out,   NOR51446_out,   G03,            p4SW, reset, prop_clk);
    assign G03_ = NOR51447_out & NOR51263_out & NOR51448_out;
    nor_3 #(1'b0)  NOR51449(G03,            G03_,           CGG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51450(GEM03,          G03_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51451(NOR51451_out,   RGG_,           G03_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL03_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51457(NOR51457_out,   NOR51441_out,   NOR51442_out,   NOR51451_out,   p4SW, reset, prop_clk);
    
    // RL03_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51458(NOR51458_out,   MDT03,          R1C,            R15,            p4SW, reset, prop_clk);
    
    // RL03_ part 5
    // No cross-module fan-in
    // Moved here from A12 sheet 2
    nor_3 #(1'b0)  NOR34450(NOR34450_out,   R6,             n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RL03_ part 6
    // No cross-module fan-in
    // Moved here from A15 sheet 2
    nor_3 #(1'b0)  NOR35359(NOR35359_out,   RPTAD3,         BBK3,           CAD3,           p4SW, reset, prop_clk);
    
    // RL03_
    assign RL03_ = NOR51423_out & NOR51433_out & NOR51457_out & NOR51458_out & NOR34450_out & NOR35359_out;
    
    // WL03
    nor_3 #(1'b0)  NOR51452(WL03,           RL03_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWL03
    nor_3 #(1'b0)  NOR51453(NOR51453_out,   RL03_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWL03 = NOR51453_out;
    
    // WL03_
    nor_3 #(1'b0)  NOR51454(WL03_,          WL03,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR51455 and NOR51456 removed (fan-out expansion)
    
    // NOR51461 moved to A14 sheet 1
    
    
    // Bit column 4
    
    // CO06
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51301(NOR51301_out,   XUY06_,         XUY04_,         n0VDCA,         p4SW, reset, prop_clk);
    assign CO06 = NOR51401_out & NOR51301_out;
    
    // X register flip-flop
    nor_3 #(1'b0)  NOR51302(NOR51302_out,   A2XG_,          A04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51303(NOR51303_out,   MONEX,          NOR51302_out,   NOR51304_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51304(NOR51304_out,   NOR51303_out,   CLXC,           CUG,            p4SW, reset, prop_clk);
    
    // Y register flip-flop
    nor_3 #(1'b0)  NOR51305(NOR51305_out,   WYLOG_,         WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51306(NOR51306_out,   WL03_,          WYDG_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51307(NOR51307_out,   NOR51305_out,   NOR51306_out,   NOR51308_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51308(NOR51308_out,   NOR51307_out,   CUG,            n0VDCA,         p4SW, reset, prop_clk);
    
    // Adder
    nor_3 #(1'b0)  NOR51309(NOR51309_out,   NOR51303_out,   NOR51307_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51310(XUY04_,         NOR51304_out,   NOR51308_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51312(NOR51312_out,   NOR51309_out,   XUY04_,         CI04_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR54163(NOR54163_out,   WHOMP,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign SUMA04_ = NOR51312_out & NOR54163_out;
    // NOR54163 moved here from A11 sheet 1
    
    nor_3 #(1'b0)  NOR51313(NOR51313_out,   NOR51309_out,   XUY04_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51311(NOR51311_out,   CI04_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51315(SUMB04_,        NOR51313_out,   NOR51311_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51314(CI05_,          NOR51309_out,   SUMA04_,        CO04,           p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51317(NOR51317_out,   SUMA04_,        SUMB04_,        RULOG_,         p4SW, reset, prop_clk);
    
    // A register flip-flop
    nor_3 #(1'b0)  NOR51318(NOR51318_out,   WAG_,           WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51319(NOR51319_out,   WL06_,          WALSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51320(A04_,           NOR51318_out,   NOR51319_out,   NOR51321_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51321(NOR51321_out,   A04_,           CAG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51322(NOR51322_out,   RAG_,           A04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL04_ part 1
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51323(NOR51323_out,   NOR51317_out,   NOR51322_out,   CH04,           p4SW, reset, prop_clk);
    
    // L register flip-flop
    nor_3 #(1'b0)  NOR51324(NOR51324_out,   WLG_,           WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51325(NOR51325_out,   G07_,           G2LSG_,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51326(L04_,           NOR51324_out,   NOR51325_out,   NOR51327_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51327(NOR51327_out,   L04_,           CLG1G,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51328(NOR51328_out,   RLG_,           L04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // Q register flip-flop
    nor_3 #(1'b0)  NOR51329(NOR51329_out,   WQG_,           WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51330(NOR51330_out,   NOR51329_out,   NOR51331_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51331(NOR51331_out,   NOR51330_out,   CQG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51332(NOR51332_out,   RQG_,           NOR51330_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Z register flip-flop
    nor_3 #(1'b0)  NOR51334(NOR51334_out,   WZG_,           WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51335(Z04_,           NOR51334_out,   NOR51336_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51336(NOR51336_out,   Z04_,           CZG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51337(NOR51337_out,   RZG_,           Z04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL04_ part 2
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51333(NOR51333_out,   NOR51328_out,   NOR51332_out,   NOR51337_out,   p4SW, reset, prop_clk);
    
    // B register flip-flop
    nor_3 #(1'b0)  NOR51338(NOR51338_out,   WBG_,           WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51339(NOR51339_out,   NOR51338_out,   NOR51340_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51340(NOR51340_out,   NOR51339_out,   CBG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51341(NOR51341_out,   RBLG_,          NOR51339_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51342(NOR51342_out,   NOR51340_out,   RCG_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // G register flip-flop
    nor_3 #(1'b0)  NOR51343(NOR51343_out,   WL03_,          WG3G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51344(NOR51344_out,   WL05_,          WG4G_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51345(NOR51345_out,   L2GDG_,         L03_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51346(NOR51346_out,   WG1G_,          WL04_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR51347(NOR51347_out,   SA04,           NOR51343_out,   NOR51344_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51462(NOR51462_out,   G04ED,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR51348(NOR51348_out,   NOR51345_out,   NOR51346_out,   G04,            p4SW, reset, prop_clk);
    assign G04_ = NOR51347_out & NOR51462_out & NOR51348_out;
    nor_3 #(1'b0)  NOR51349(G04,            G04_,           CGG,            n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR51350(GEM04,          G04_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR51351(NOR51351_out,   RGG_,           G04_,           n0VDCA,         p4SW, reset, prop_clk);
    
    // RL04_ part 3
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51357(NOR51357_out,   NOR51341_out,   NOR51342_out,   NOR51351_out,   p4SW, reset, prop_clk);
    
    // RL04_ part 4
    // No cross-module fan-in
    nor_3 #(1'b0)  NOR51358(NOR51358_out,   MDT04,          R1C,            R15,            p4SW, reset, prop_clk);
    
    // RL04_ part 5
    // No cross-module fan-in, moved here from A12 sheet 2
    nor_3 #(1'b0)  NOR34451(NOR34451_out,   CAD4,           RPTAD4,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RL04_
    assign RL04_ = NOR51323_out & NOR51333_out & NOR51357_out & NOR51358_out & NOR34451_out;
    
    // WL04
    nor_3 #(1'b0)  NOR51352(WL04,           RL04_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWL04
    nor_3 #(1'b0)  NOR51353(NOR51353_out,   RL04_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWL04 = NOR51353_out;
    
    // WL04_
    nor_3 #(1'b0)  NOR51354(WL04_,          WL04,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR51355 and NOR51356 removed (fan-out expansion)
    
    // NOR51361 and NOR51362 moved to A14 sheet 1
    
    
endmodule


