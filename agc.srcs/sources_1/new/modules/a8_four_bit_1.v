`timescale 1ns / 1ps

module a8_four_bit_1(
    // inputs
    A2XG_, PONEX, CLXC, CUG, WYLOG_, WYDLOG_, CI01_, RULOG_,
    WAG_, CAG, WALSG_, RAG_, 
    WLG_, G2LSG_, CLG1G, RLG_, 
    WQG_, CQG, RQG_,
    WZG_, CZG, RZG_,
    WBG_, CBG, RBLG_, RCG_,
    WG3G_, WG4S_, L2GDG_, MCRO_, WG1G_, SA01, G01ED, CGG,
    CH01,
    
    // outputs
    WL01_, WL02_, WL03_, WL16_,
    CO04,
    XUY01_,
    SUMA01_, SUMB01_,
    G01, G01_, G04_,
    L01_,
    A08_1_RL01_, A08_2_RL01_,
    
    //input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    
    input wire A2XG_, PONEX, CLXC, CUG, WYLOG_, WYDLOG_, CI01_, RULOG_;
    input wire WAG_, CAG, WALSG_, RAG_;
    input wire WLG_, G2LSG_, CLG1G, RLG_;
    input wire WQG_, CQG, RQG_;
    input wire WZG_, CZG, RZG_;
    input wire WBG_, CBG, RBLG_, RCG_;
    input wire WG3G_, WG4S_, L2GDG_, MCRO_, WG1G_, SA01, G01ED, CGG;
    input wire CH01;
    
    output wire WL01_, WL02_, WL03_, WL16_;
    output wire CO04;
    output wire XUY01_;
    output wire SUMA01_, SUMB01_;
    output wire G01, G01_, G04_;
    output wire L01_;
    output wire A08_1_RL01_, A08_2_RL01_;
    
    /**************************
    *
    *  Module A8 sheet 1
    *  Sheet number 2005252/1
    *
    **************************/
    
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
    wire NOR51124_out;
    wire NOR51125_out;
    wire NOR51127_out;
    wire NOR51128_out;
    wire NOR51129_out;
    wire NOR51130_out;
    wire NOR51131_out;
    wire NOR51132_out;
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
    
    
    wire A01_;
    wire XUY03_;
    wire CI02_;
    wire Z01_;
    
    // CO04
    nor_3 #(1'b0) NOR51101(CO04,            XUY03_,         XUY01_,         CI01_,                      SIM_CLK);
    
    // X flip-flop
    nor_2 #(1'b0) NOR51102(NOR51102_out,    A2XG_,          A01_,                                       SIM_CLK);
    
    nor_3 #(1'b0) NOR51103(NOR51103_out,    PONEX,          NOR51102_out,   NOR51104_out,               SIM_CLK);
    nor_3 #(1'b0) NOR51104(NOR51104_out,    NOR51103_out,   CLXC,           CUG,                        SIM_CLK);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR51105(NOR51105_out,    WYLOG_,         WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51106(NOR51106_out,    WL16_,          WYDLOG_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR51107(NOR51107_out,    NOR51105_out,   NOR51106_out,   NOR51108_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51108(NOR51108_out,    NOR51107_out,   CUG,                                        SIM_CLK);
    
    // Adder
    nor_2 #(1'b0) NOR51109(NOR51109_out,    NOR51103_out,   NOR51107_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51110(XUY01_,          NOR51104_out,   NOR51108_out,                               SIM_CLK);
    
    nor_3 #(1'b0) NOR51112(SUMA01_,         NOR51109_out,   CI01_,          XUY01_,                     SIM_CLK);
    
    nor_2 #(1'b0) NOR51113(NOR51113_out,    NOR51109_out,   XUY01_,                                     SIM_CLK);
    nor_1 #(1'b0) NOR51111(NOR51111_out,    CI01_,                                                      SIM_CLK);
    nor_2 #(1'b0) NOR51115(SUMB01_,         NOR51113_out,   NOR51111_out,                               SIM_CLK);
    
    nor_2 #(1'b0) NOR51114(CI02_,           NOR51109_out,   SUMA01_,                                    SIM_CLK);
    
    nor_3 #(1'b0) NOR51117(NOR51117_out,    SUMA01_,        SUMB01_,        RULOG_,                     SIM_CLK);
    
    // NOR51116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR51118(NOR51118_out,    WAG_,           WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51119(NOR51119_out,    WL03_,          WALSG_,                                     SIM_CLK);
    
    nor_3 #(1'b0) NOR51120(A01_,            NOR51118_out,   NOR51119_out,   NOR51121_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51121(NOR51121_out,    CAG,                                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51122(NOR51122_out,    RAG_,           A01_,                                       SIM_CLK);
    
    // RL01_ part 1
    // Cross-module fan-in, connected to A15
    nor_3 #(1'b0) NOR51123(A08_1_RL01_,     NOR51117_out,   NOR51122_out,   CH01,                       SIM_CLK);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR51124(NOR51124_out,    WLG_,           WL01_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51125(NOR51125_out,    G04_,           G2LSG_,                                     SIM_CLK);
    
    nor_3 #(1'b0) NOR51126(L01_,            NOR51124_out,   NOR51125_out,   NOR51127_out,               SIM_CLK);
    nor_2 #(1'b0) NOR51127(NOR51127_out,    L01_,           CLG1G,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51128(NOR51128_out,    RLG_,           L01_,                                       SIM_CLK);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR51129(NOR51129_out,    WQG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51130(NOR51130_out,    NOR51129_out,   NOR51131_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51131(NOR51131_out,    NOR51130_out,   CQG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51132(NOR51132_out,    RQG_,           NOR51130_out,                               SIM_CLK);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR51134(NOR51134_out,    WZG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51135(Z01_,            NOR51134_out,   NOR51136_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51136(NOR51136_out,    Z01_,           CZG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51137(NOR51137_out,    RZG_,           Z01_,                                       SIM_CLK);
    
    // RL01_ part 2
    nor_3 #(1'b0) NOR51133(A08_2_RL01_,     NOR51128_out,   NOR51132_out,   NOR51137_out,               SIM_CLK);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR51138(NOR51138_out,    WBG_,           WL01_,                                      SIM_CLK);
    
    nor_2 #(1'b0) NOR51139(NOR51139_out,    NOR51138_out,   NOR51130_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51140(NOR51140_out,    NOR51139_out,   CBG,                                        SIM_CLK);
    
    nor_2 #(1'b0) NOR51141(NOR51141_out,    RBLG_,          NOR51139_out,                               SIM_CLK);
    nor_2 #(1'b0) NOR51142(NOR51142_out,    NOR51140_out,   RCG_,                                       SIM_CLK);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR51143(NOR51143_out,    WL16_,          WG3G_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51144(NOR51144_out,    WL02_,          WG4S_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51145(NOR51145_out,    L2GDG_,         MCRO_,                                      SIM_CLK);
    nor_2 #(1'b0) NOR51146(NOR51146_out,    WG1G_,          WL01_,                                      SIM_CLK);
    
    nor_3 #(1'b0) NOR51147(NOR51147_out,    SA01,           NOR51143_out,   NOR51144_out,   G01ED,      SIM_CLK);
    // NOR51162 merged into NOR51147
    nor_3 #(1'b0) NOR51148(NOR51148_out,    NOR51145_out,   NOR51146_out,   G01,                        SIM_CLK);
    assign G01_ = NOR51147_out & NOR51148_out;
    nor_2 #(1'b0) NOR51149(G01,             G01_,           CGG,                                        SIM_CLK);
    
    
endmodule
