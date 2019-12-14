`timescale 1ns / 1ps

module a20_counter_cell_i(
    input wire BKTF_,
    input wire RSSB,
    
    input wire CDUXD,
    input wire CDUXP,
    input wire CDUXM,
    
    input wire CDUYD,
    input wire CDUYP,
    input wire CDUYM,
    
    input wire CDUZD,
    input wire CDUZP,
    input wire CDUZM,
    
    input wire TRUND,
    input wire TRNP,
    input wire TRNM,
    
    input wire SHAFTD,
    input wire SHAFTP,
    input wire SHAFTM,
    
    input wire THRSTD,
    
    input wire PIPXP,
    input wire PIPXM,
    input wire PIPYP,
    input wire PIPYM,
    input wire PIPZP,
    input wire PIPZM,
    
    input wire T1P,
    input wire T2P,
    input wire T3P,
    input wire T4P,
    input wire T5P,
    input wire T6P,
    
    input wire CG26,
    
    input wire XB1,
    input wire XB2,
    input wire XB3,
    input wire XB4,
    input wire XB7,
    
    input wire OCTAD2,
    input wire OCTAD3,
    input wire OCTAD4,
    input wire OCTAD6,
    
    input wire CA5_,
    
    input wire CXB0_,
    input wire CXB1_,
    input wire CXB5_,
    input wire CXB6_,
    
    output wire CA4_,
    output wire CA6_,
    
    output wire CXB4_,
    output wire CG13,
    output wire CG23,
    
    output wire C24A,
    output wire C25A,
    output wire C26A,
    output wire C27A,
    output wire C30A,
    output wire C31A,
    
    output wire C32A,
    output wire C32P,
    output wire C32M,
    
    output wire C33A,
    output wire C33P,
    output wire C33M,
    
    output wire C34A,
    output wire C34P,
    output wire C34M,
    
    output wire C35A,
    output wire C35P,
    output wire C35M,
    
    output wire C36A,
    output wire C36P,
    output wire C36M,
    
    output wire C37A,
    output wire C37P,
    output wire C37M,
    
    output wire C40A,
    output wire C40P,
    output wire C40M,
    
    output wire C41A,
    output wire C41P,
    output wire C41M,
    
    output wire C50A,
    output wire C51A,
    output wire C52A,
    output wire C53A,
    output wire C54A,
    output wire C55A,
    
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A20 sheet 1
    *  Sheet number 2005254/1
    *
    **************************/
    
    wire NOR31101_out;
    wire NOR31102_out;
    wire NOR31103_out;
    wire NOR31104_out;
    wire NOR31105_out;
    wire NOR31106_out;
    wire NOR31107_out;
    wire NOR31109_out;
    wire NOR31110_out;
    wire NOR31111_out;
    wire NOR31115_out;
    wire NOR31116_out;
    wire NOR31117_out;
    wire NOR31118_out;
    wire NOR31119_out;
    wire NOR31120_out;
    wire NOR31122_out;    
    wire NOR31124_out;
    wire NOR31125_out;
    wire NOR31129_out;
    wire NOR31130_out;
    wire NOR31131_out;
    wire NOR31132_out;
    wire NOR31133_out;
    wire NOR31136_out;
    wire NOR31137_out;
    wire NOR31138_out;
    wire NOR31139_out;
    wire NOR31140_out;
    wire NOR31143_out;
    wire NOR31144_out;
    wire NOR31145_out;
    wire NOR31146_out;
    wire NOR31147_out;
    wire NOR31150_out;
    
    wire NOR31201_out;
    wire NOR31202_out;
    wire NOR31203_out;
    wire NOR31204_out;
    wire NOR31205_out;
    wire NOR31206_out;
    wire NOR31207_out;
    wire NOR31209_out;
    wire NOR31210_out;
    wire NOR31211_out;
    wire NOR31215_out;
    wire NOR31216_out;
    wire NOR31217_out;
    wire NOR31218_out;
    wire NOR31219_out;
    wire NOR31220_out;
    wire NOR31222_out;    
    wire NOR31224_out;
    wire NOR31225_out;
    wire NOR31229_out;
    wire NOR31230_out;
    wire NOR31231_out;
    wire NOR31232_out;
    wire NOR31233_out;
    wire NOR31236_out;
    wire NOR31237_out;
    wire NOR31238_out;
    wire NOR31239_out;
    wire NOR31240_out;
    wire NOR31243_out;
    wire NOR31244_out;
    wire NOR31245_out;
    wire NOR31246_out;
    wire NOR31247_out;
    wire NOR31250_out;
    
    wire C24R;
    wire C25R;
    wire C26R;
    wire C27R;
    wire C30R;
    wire C31R;
    wire C32R;
    wire C33R;
    wire C34R;
    wire C35R;
    
    wire CG11;
    wire CG12;
    wire CG21;
    wire CG22;
    
    wire CA2_;
    wire CA3_;
    wire CXB2_;
    wire CXB3_;
    wire CXB7_;
    
    
    // Counter 32
    
    nor_1 #(1'b0) NOR31101(NOR31101_out,    BKTF_,                                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR31102(NOR31102_out,    CDUXP,          NOR31103_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31103(NOR31103_out,    NOR31102_out,   C32R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31104(NOR31104_out,    NOR31103_out,   NOR31110_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31105(NOR31105_out,    NOR31101_out,   NOR31104_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31106(NOR31106_out,    NOR31105_out,   NOR31107_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31107(NOR31107_out,    NOR31106_out,   C32R,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR31108(C32A,            CG22,           NOR31106_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31109(NOR31109_out,    CDUXM,          NOR31110_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31110(NOR31110_out,    NOR31109_out,   C32R,                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR31111(NOR31111_out,    RSSB,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31112(C32R,            NOR31111_out,   CA3_,           CXB2_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31113(C32P,            NOR31102_out,   CA3_,           CXB2_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31114(C32M,            NOR31109_out,   CA3_,           CXB2_,                          reset, prop_clk);
    
    
    // Counter 33
    
    nor_2 #(1'b1) NOR31115(NOR31115_out,    CDUYP,          NOR31116_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31116(NOR31116_out,    NOR31115_out,   C33R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31117(NOR31117_out,    NOR31116_out,   NOR31125_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31118(NOR31118_out,    NOR31101_out,   NOR31117_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31119(NOR31119_out,    NOR31118_out,   NOR31120_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31120(NOR31120_out,    NOR31119_out,   C33R,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31121(C33A,            CG22,           NOR31107_out,   NOR31119_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31122(NOR31122_out,    CG22,           NOR31120_out,   NOR31107_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR31123(CG11,            NOR31122_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31124(NOR31124_out,    CDUYM,          NOR31125_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31125(NOR31125_out,    NOR31124_out,   C33R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31126(C33R,            NOR31111_out,   CA3_,           CXB3_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31127(C33P,            NOR31115_out,   CA3_,           CXB3_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31128(C33M,            NOR31124_out,   CA3_,           CXB3_,                          reset, prop_clk);
    
    
    // Counter 24
    
    nor_2 #(1'b1) NOR31129(NOR31129_out,    T2P,            NOR31130_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31130(NOR31130_out,    NOR31129_out,   C24R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31131(NOR31131_out,    NOR31101_out,   NOR31129_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31132(NOR31132_out,    NOR31131_out,   NOR31133_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31133(NOR31133_out,    NOR31132_out,   C24R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31134(C24A,            NOR31132_out,   1'b0,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31135(C24R,            NOR31111_out,   CA2_,           CXB4_,                          reset, prop_clk);
    
    // Counter 25
    
    nor_2 #(1'b1) NOR31136(NOR31136_out,    T1P,            NOR31137_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31137(NOR31137_out,    NOR31136_out,   C25R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31138(NOR31138_out,    NOR31101_out,   NOR31136_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31139(NOR31139_out,    NOR31138_out,   NOR31140_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31140(NOR31140_out,    NOR31139_out,   C25R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31141(C25A,            1'b0,           NOR31139_out,   NOR31133_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31142(C25R,            NOR31111_out,   CA2_,           CXB5_,                          reset, prop_clk);
    
    
    // Counter 26
    
    nor_2 #(1'b1) NOR31143(NOR31143_out,    T3P,            NOR31144_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31144(NOR31144_out,    NOR31143_out,   C26R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31145(NOR31145_out,    NOR31101_out,   NOR31143_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31146(NOR31146_out,    NOR31145_out,   NOR31147_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31147(NOR31147_out,    NOR31146_out,   C26R,                                           reset, prop_clk);
    
    nor_4 #(1'b0) NOR31148(C26A,            1'b0,           NOR31133_out,   NOR31140_out,   NOR31146_out,   reset, prop_clk);
    // NOR31149 merged into NOR31148
    nor_4 #(1'b0) NOR31150(NOR31150_out,    1'b0,           NOR31133_out,   NOR31140_out,   NOR31147_out,   reset, prop_clk);
    // NOR31151 merged into NOR31150
    nor_1 #(1'b0) NOR31152(CG21,            NOR31150_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR31153(C26R,            NOR31111_out,   CA2_,           CXB6_,                          reset, prop_clk);
    
    
    // Addressing
    
    nor_1 #(1'b0) NOR31154(CA3_,            OCTAD3,                                                         reset, prop_clk);
    // NOR31155 omitted (fan-out expansion)
    // NOR31156 and NOR31157 omitted (not connected)
    nor_1 #(1'b0) NOR31158(CXB7_,           XB7,                                                            reset, prop_clk);
    // NOR31159 omitted (not connected)
    
    
    // Counter 34
    
    nor_1 #(1'b0) NOR31201(NOR31201_out,    BKTF_,                                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR31202(NOR31202_out,    CDUZP,          NOR31203_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31203(NOR31203_out,    NOR31202_out,   C34R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31204(NOR31204_out,    NOR31203_out,   NOR31210_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31205(NOR31205_out,    NOR31201_out,   NOR31204_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31206(NOR31206_out,    NOR31205_out,   NOR31207_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31207(NOR31207_out,    NOR31206_out,   C34R,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR31208(C34A,            CG11,           NOR31206_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31209(NOR31209_out,    CDUZM,          NOR31210_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31210(NOR31210_out,    NOR31209_out,   C34R,                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR31211(NOR31211_out,    RSSB,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31212(C34R,            NOR31211_out,   CA3_,           CXB4_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31213(C34P,            NOR31202_out,   CA3_,           CXB4_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31214(C34M,            NOR31209_out,   CA3_,           CXB4_,                          reset, prop_clk);
    
    
    // Counter 35
    
    nor_2 #(1'b1) NOR31215(NOR31215_out,    TRNP,           NOR31216_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31216(NOR31216_out,    NOR31215_out,   C35R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31217(NOR31217_out,    NOR31216_out,   NOR31225_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31218(NOR31218_out,    NOR31201_out,   NOR31217_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31219(NOR31219_out,    NOR31218_out,   NOR31220_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31220(NOR31220_out,    NOR31219_out,   C35R,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31221(C35A,            CG11,           NOR31207_out,   NOR31219_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31222(NOR31222_out,    CG11,           NOR31220_out,   NOR31207_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR31223(CG12,            NOR31222_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31224(NOR31224_out,    TRNM,           NOR31225_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31225(NOR31225_out,    NOR31224_out,   C35R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31226(C35R,            NOR31211_out,   CA3_,           CXB5_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31227(C35P,            NOR31215_out,   CA3_,           CXB5_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31228(C35M,            NOR31224_out,   CA3_,           CXB5_,                          reset, prop_clk);
    
    
    // Counter 27
    
    nor_2 #(1'b1) NOR31229(NOR31229_out,    T4P,            NOR31230_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31230(NOR31230_out,    NOR31229_out,   C27R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31231(NOR31231_out,    NOR31201_out,   NOR31229_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31232(NOR31232_out,    NOR31231_out,   NOR31233_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31233(NOR31233_out,    NOR31232_out,   C27R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31234(C27A,            NOR31232_out,   CG21,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31235(C27R,            NOR31211_out,   CA2_,           CXB7_,                          reset, prop_clk);
    
    
    // Counter 30
    
    nor_2 #(1'b1) NOR31236(NOR31236_out,    T5P,            NOR31237_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31237(NOR31237_out,    NOR31236_out,   C30R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31238(NOR31238_out,    NOR31201_out,   NOR31236_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31239(NOR31239_out,    NOR31238_out,   NOR31240_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31240(NOR31240_out,    NOR31239_out,   C30R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31241(C30A,            CG21,           NOR31239_out,   NOR31233_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31242(C30R,            NOR31211_out,   CA3_,           CXB0_,                          reset, prop_clk);
    
    
    // Counter 31
    
    nor_2 #(1'b1) NOR31243(NOR31243_out,    T6P,            NOR31244_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31244(NOR31244_out,    NOR31243_out,   C31R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31245(NOR31245_out,    NOR31201_out,   NOR31243_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31246(NOR31246_out,    NOR31245_out,   NOR31247_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31247(NOR31247_out,    NOR31246_out,   C31R,                                           reset, prop_clk);
    
    nor_4 #(1'b0) NOR31248(C31A,            CG21,           NOR31233_out,   NOR31240_out,   NOR31246_out,   reset, prop_clk);
    // NOR31249 merged into NOR31248
    nor_4 #(1'b0) NOR31250(NOR31250_out,    CG21,           NOR31233_out,   NOR31240_out,   NOR31247_out,   reset, prop_clk);
    // NOR31251 merged into NOR31250
    nor_1 #(1'b0) NOR31252(CG22,            NOR31250_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR31253(C31R,            NOR31211_out,   CA3_,           CXB1_,                          reset, prop_clk);
    
    
    // Addressing
    
    // NOR31254 and NOR31255 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31256(CXB2_,           XB2,                                                            reset, prop_clk);
    // NOR31257 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31258(CXB7_,           XB7,                                                            reset, prop_clk);
    // NOR31259 removed (not connected)

    
    /**************************
    *
    *  Module A20 sheet 2
    *  Sheet number 2005254/2
    *
    **************************/
    
    wire NOR31401_out;
    wire NOR31402_out;
    wire NOR31403_out;
    wire NOR31404_out;
    wire NOR31405_out;
    wire NOR31406_out;
    wire NOR31407_out;
    wire NOR31409_out;
    wire NOR31410_out;
    wire NOR31411_out;
    wire NOR31415_out;
    wire NOR31416_out;
    wire NOR31417_out;
    wire NOR31418_out;
    wire NOR31419_out;
    wire NOR31420_out;
    wire NOR31422_out;    
    wire NOR31424_out;
    wire NOR31425_out;
    wire NOR31429_out;
    wire NOR31430_out;
    wire NOR31431_out;
    wire NOR31432_out;
    wire NOR31433_out;
    wire NOR31436_out;
    wire NOR31437_out;
    wire NOR31438_out;
    wire NOR31439_out;
    wire NOR31440_out;
    wire NOR31443_out;
    wire NOR31444_out;
    wire NOR31445_out;
    wire NOR31446_out;
    wire NOR31447_out;
    wire NOR31450_out;
    
    wire NOR31301_out;
    wire NOR31302_out;
    wire NOR31303_out;
    wire NOR31304_out;
    wire NOR31305_out;
    wire NOR31306_out;
    wire NOR31307_out;
    wire NOR31309_out;
    wire NOR31310_out;
    wire NOR31311_out;
    wire NOR31315_out;
    wire NOR31316_out;
    wire NOR31317_out;
    wire NOR31318_out;
    wire NOR31319_out;
    wire NOR31320_out;
    wire NOR31322_out;    
    wire NOR31324_out;
    wire NOR31325_out;
    wire NOR31329_out;
    wire NOR31330_out;
    wire NOR31331_out;
    wire NOR31332_out;
    wire NOR31333_out;
    wire NOR31336_out;
    wire NOR31337_out;
    wire NOR31338_out;
    wire NOR31339_out;
    wire NOR31340_out;
    wire NOR31343_out;
    wire NOR31344_out;
    wire NOR31345_out;
    wire NOR31346_out;
    wire NOR31347_out;
    wire NOR31350_out;
    
    wire CG14;
    wire CG24;
    
    wire C36R;
    wire C37R;
    wire C40R;
    wire C41R;
    wire C50R;
    wire C51R;
    wire C52R;
    wire C53R;
    wire C54R;
    wire C55R;
    
    
    // Counter 40
    
    nor_1 #(1'b0) NOR31401(NOR31401_out,    BKTF_,                                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR31402(NOR31402_out,    PIPYP,          NOR31403_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31403(NOR31403_out,    NOR31402_out,   C40R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31404(NOR31404_out,    NOR31403_out,   NOR31410_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31405(NOR31405_out,    NOR31401_out,   NOR31404_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31406(NOR31406_out,    NOR31405_out,   NOR31407_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31407(NOR31407_out,    NOR31406_out,   C40R,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR31408(C40A,            CG14,           NOR31406_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31409(NOR31409_out,    PIPYM,          NOR31410_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31410(NOR31410_out,    NOR31409_out,   C40R,                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR31411(NOR31411_out,    RSSB,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31412(C40R,            NOR31411_out,   CA4_,           CXB0_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31413(C40P,            NOR31402_out,   CA4_,           CXB0_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31414(C40M,            NOR31409_out,   CA4_,           CXB0_,                          reset, prop_clk);
    
    
    // Counter 41
    
    nor_2 #(1'b1) NOR31415(NOR31415_out,    PIPZP,          NOR31416_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31416(NOR31416_out,    NOR31415_out,   C41R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31417(NOR31417_out,    NOR31416_out,   NOR31425_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31418(NOR31418_out,    NOR31401_out,   NOR31417_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31419(NOR31419_out,    NOR31418_out,   NOR31420_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31420(NOR31420_out,    NOR31419_out,   C41R,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31421(C41A,            CG14,           NOR31407_out,   NOR31419_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31422(NOR31422_out,    CG14,           NOR31420_out,   NOR31407_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR31423(CG13,            NOR31422_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31424(NOR31424_out,    PIPZM,          NOR31425_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31425(NOR31425_out,    NOR31424_out,   C41R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31426(C41R,            NOR31411_out,   CA4_,           CXB1_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31427(C41P,            NOR31415_out,   CA4_,           CXB1_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31428(C41M,            NOR31424_out,   CA4_,           CXB1_,                          reset, prop_clk);
    
    
    // Counter 53
    
    nor_2 #(1'b1) NOR31429(NOR31429_out,    TRUND,          NOR31430_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31430(NOR31430_out,    NOR31429_out,   C53R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31431(NOR31431_out,    NOR31401_out,   NOR31429_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31432(NOR31432_out,    NOR31431_out,   NOR31433_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31433(NOR31433_out,    NOR31432_out,   C53R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31434(C53A,            NOR31432_out,   CG24,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31435(C53R,            NOR31411_out,   CA5_,           CXB3_,                          reset, prop_clk);
    
    
    // Counter 54
    
    nor_2 #(1'b1) NOR31436(NOR31436_out,    SHAFTD,         NOR31437_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31437(NOR31437_out,    NOR31436_out,   C54R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31438(NOR31438_out,    NOR31401_out,   NOR31436_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31439(NOR31439_out,    NOR31438_out,   NOR31440_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31440(NOR31440_out,    NOR31439_out,   C54R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31441(C54A,            CG24,           NOR31439_out,   NOR31433_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31442(C54R,            NOR31411_out,   CA5_,           CXB4_,                          reset, prop_clk);
    
    
    // Counter 55
    
    nor_2 #(1'b1) NOR31443(NOR31443_out,    THRSTD,         NOR31444_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31444(NOR31444_out,    NOR31443_out,   C55R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31445(NOR31445_out,    NOR31401_out,   NOR31443_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31446(NOR31446_out,    NOR31445_out,   NOR31447_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31447(NOR31447_out,    NOR31446_out,   C55R,                                           reset, prop_clk);
    
    nor_4 #(1'b0) NOR31448(C55A,            CG24,           NOR31433_out,   NOR31440_out,   NOR31446_out,   reset, prop_clk);
    // NOR31449 merged into NOR31448
    nor_4 #(1'b0) NOR31450(NOR31450_out,    CG24,           NOR31433_out,   NOR31440_out,   NOR31447_out,   reset, prop_clk);
    // NOR31451 merged into NOR31450
    nor_1 #(1'b0) NOR31452(CG23,            NOR31450_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR31453(C55R,            NOR31411_out,   CA5_,           CXB5_,                          reset, prop_clk);
    
    
    // Addressing
    
    nor_1 #(1'b0) NOR31454(CA4_,            OCTAD4,                                                         reset, prop_clk);
    // NOR31455 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31456(CXB4_,           XB4,                                                            reset, prop_clk);
    // NOR31457 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31458(CA6_,            OCTAD6,                                                         reset, prop_clk);
    // NOR31459 removed (not connected)
    
    
    // Counter 36
    
    nor_1 #(1'b0) NOR31301(NOR31301_out,    BKTF_,                                                          reset, prop_clk);
    
    nor_2 #(1'b1) NOR31302(NOR31302_out,    SHAFTP,         NOR31303_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31303(NOR31303_out,    NOR31302_out,   C36R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31304(NOR31304_out,    NOR31303_out,   NOR31310_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31305(NOR31305_out,    NOR31301_out,   NOR31304_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31306(NOR31306_out,    NOR31305_out,   NOR31307_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31307(NOR31307_out,    NOR31306_out,   C36R,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR31308(C36A,            CG12,           NOR31306_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31309(NOR31309_out,    SHAFTM,         NOR31310_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31310(NOR31310_out,    NOR31309_out,   C36R,                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR31311(NOR31311_out,    RSSB,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31312(C36R,            NOR31311_out,   CA3_,           CXB6_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31313(C36P,            NOR31302_out,   CA3_,           CXB6_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31314(C36M,            NOR31309_out,   CA3_,           CXB6_,                          reset, prop_clk);
    
    
    // Counter 37
    
    nor_2 #(1'b1) NOR31315(NOR31315_out,    PIPXP,          NOR31316_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31316(NOR31316_out,    NOR31315_out,   C37R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31317(NOR31317_out,    NOR31316_out,   NOR31325_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31318(NOR31318_out,    NOR31301_out,   NOR31317_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31319(NOR31319_out,    NOR31318_out,   NOR31320_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31320(NOR31320_out,    NOR31319_out,   C37R,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31321(C37A,            CG12,           NOR31307_out,   NOR31319_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31322(NOR31322_out,    CG12,           NOR31320_out,   NOR31307_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR31323(CG14,            NOR31322_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31324(NOR31324_out,    PIPXM,          NOR31325_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31325(NOR31325_out,    NOR31324_out,   C37R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31326(C37R,            NOR31311_out,   CA3_,           CXB7_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31327(C37P,            NOR31315_out,   CA3_,           CXB7_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR31328(C37M,            NOR31324_out,   CA3_,           CXB7_,                          reset, prop_clk);
    
    
    // Counter 50
    
    nor_2 #(1'b1) NOR31329(NOR31329_out,    CDUXD,          NOR31330_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31330(NOR31330_out,    NOR31329_out,   C50R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31331(NOR31331_out,    NOR31301_out,   NOR31329_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31332(NOR31332_out,    NOR31331_out,   NOR31333_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31333(NOR31333_out,    NOR31332_out,   C50R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31334(C50A,            NOR31332_out,   CG26,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR31335(C50R,            NOR31311_out,   CA5_,           CXB0_,                          reset, prop_clk);
    
    
    // Counter 51
    
    nor_2 #(1'b1) NOR31336(NOR31336_out,    CDUYD,          NOR31337_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31337(NOR31337_out,    NOR31336_out,   C51R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31338(NOR31338_out,    NOR31301_out,   NOR31336_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31339(NOR31339_out,    NOR31338_out,   NOR31340_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31340(NOR31340_out,    NOR31339_out,   C51R,                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR31341(C51A,            CG26,           NOR31339_out,   NOR31333_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR31342(C51R,            NOR31311_out,   CA5_,           CXB1_,                          reset, prop_clk);
    
    
    // Counter 52
    
    nor_2 #(1'b1) NOR31343(NOR31343_out,    CDUZD,          NOR31344_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31344(NOR31344_out,    NOR31343_out,   C52R,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR31345(NOR31345_out,    NOR31301_out,   NOR31343_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR31346(NOR31346_out,    NOR31345_out,   NOR31347_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR31347(NOR31347_out,    NOR31346_out,   C52R,                                           reset, prop_clk);
    
    nor_4 #(1'b0) NOR31348(C52A,            CG26,           NOR31333_out,   NOR31340_out,   NOR31346_out,   reset, prop_clk);
    // NOR31349 merged into NOR31348
    nor_4 #(1'b0) NOR31350(NOR31350_out,    CG26,           NOR31333_out,   NOR31340_out,   NOR31347_out,   reset, prop_clk);
    // NOR31351 merged into NOR31350
    nor_1 #(1'b0) NOR31352(CG24,            NOR31350_out,                                                   reset, prop_clk);
    nor_3 #(1'b0) NOR31353(C52R,            NOR31311_out,   CA5_,           CXB2_,                          reset, prop_clk);
    
   
    // Addressing
    // NOR31354 and NOR31355 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31356(CXB3_,           XB3,                                                            reset, prop_clk);
    // NOR31357 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31358(CA2_,            OCTAD2,                                                         reset, prop_clk);
    // NOR31359 removed (not connected)
    // Moved here from A14 sheet 1
    nor_1 #(1'b0) NOR42357(CXB1_,           XB1,                                                            reset, prop_clk);
    
endmodule
