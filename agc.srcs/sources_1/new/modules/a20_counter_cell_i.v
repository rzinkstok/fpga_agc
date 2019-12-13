`timescale 1ns / 1ps

module a20_counter_cell_i(
    input wire BKTF_,
    input wire RSSB,
    
    input wire CDUXP,
    input wire CDUXM,
    input wire CDUYP,
    input wire CDUYM,
    input wire CDUZP,
    input wire CDUZM,
    
    input wire TRNP,
    input wire TRNM,
    
    input wire T1P,
    input wire T2P,
    input wire T3P,
    input wire T4P,
    input wire T5P,
    input wire T6P,
    
    input wire OCTAD3,
    
    input wire CXB0_,
    input wire CXB1_,
    input wire XB2,
    input wire CXB5_,
    input wire CXB6_,
    input wire XB7,
    
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
    wire CXB4_;
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
    
    
    // CA3_
    nor_1 #(1'b0) NOR31154(CA3_,            OCTAD3,                                                         reset, prop_clk);
    // NOR31155 omitted (fan-out expansion)
    
    // NOR31156 and NOR31157 omitted (not connected)
    
    // CXB7_
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
    
    // NOR31254 and NOR31255 removed (fan-out expansion)
    
    nor_1 #(!'b0) NOR31256(CXB2_,           XB2,                                                            reset, prop_clk);
    // NOR31257 removed (fan-out expansion)
    nor_1 #(1'b0) NOR31258(CXB7_,           XB7,                                                            reset, prop_clk);
    
    // NOR31259 removed (not connected)
    
endmodule
