`timescale 1ns / 1ps

module a20_counter_cell_i(
    input wire BKTF_,
    input wire RSSB,
    
    input wire CDUXP,
    input wire CDUXM,
    input wire CDUYP,
    input wire CDUYM,
    
    input wire T1P,
    input wire T2P,
    input wire T3P,
    
    input wire OCTAD3,
    
    input wire XB7,
    
    output wire C32A,
    output wire C32P,
    output wire C32M,
    
    output wire C33A,
    output wire C33P,
    output wire C33M,
    
    output wire C24A,
    output wire C25A,
    output wire C26A,
    
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
    
    wire C32R;
    wire C33R;
    wire C24R;
    wire C25R;
    wire C26R;
    
    wire CG11;
    wire CG21;
    wire CG22;
    
    wire CA2_;
    wire CA3_;
    wire CXB2_;
    wire CXB3_;
    wire CXB4_;
    wire CXB5_;
    wire CXB6_;
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
    
    
endmodule
