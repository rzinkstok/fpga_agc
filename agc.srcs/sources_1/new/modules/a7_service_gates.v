`timescale 1ns / 1ps

module a7_service_gates(
    // inputs
    WT_, CT_,
    WY12_, WY_, WYD_,
    ZAP_, SHIFT, NEAC,
    L15_, PIFL_,
        
    // outputs
    WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_,
    MWYG,
    
    // input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    input wire WT_, CT_;
    input wire WY12_, WY_, WYD_;
    input wire ZAP_, SHIFT, NEAC;
    input wire L15_, PIFL_;
    
    output wire WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_;
    output wire MWYG;
    
    /**************************
    *
    *  Module A7 sheet 1
    *  Sheet number 2005252/1
    *
    **************************/
    
    wire NOR33105_out;
    wire NOR33106_out;
    wire NOR33107_out;
    wire NOR33108_out;
    wire NOR33111_out;
    wire NOR33113_out;
    wire NOR33122_out;
    wire NOR33123_out;
    wire NOR33124_out;
    wire NOR33125_out;
    wire NOR33129_in;
    
    // WALSG, WALSG_
    nor_2 #(1'b0) NOR33102(WALSG,           ZAP_,           WT_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33101(WALSG_,          WALSG,                                                  SIM_CLK);
    
    // NOR33103, NOR33104, NOR33158 omitted
    
    // WYLOG_
    nor_1 #(1'b0) NOR33105(NOR33105_out,    WY12_,                                                  SIM_CLK);
    nor_1 #(1'b0) NOR33106(NOR33106_out,    WY_,                                                    SIM_CLK);
    nor_2 #(1'b0) NOR33107(NOR33107_out,    NOR33105_out,   NOR33106_out,                           SIM_CLK);
    nor_2 #(1'b0) NOR33108(NOR33108_out,    NOR33107_out,   WT_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33109(WYLOG_,          NOR33108_out,                                           SIM_CLK);
    // NOR33110, NOR33159 omitted
    
    // WYHIG_
    nor_2 #(1'b0) NOR33111(NOR33111_out,    WY_,            WT_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33112(WYHIG_,          NOR33111_out,                                           SIM_CLK);
    
    // MWYG
    nor_2 #(1'b0) NOR33113(NOR33113_out,    NOR33108_out,   NOR33122_out,                           SIM_CLK);
    // NOR33114 merged into NOR33113
    // Single monitor fan-in output, no cross-module fan-in
    nor_1 #(1'b0) NOR33115(MWYG,            NOR33113_out,                                           SIM_CLK);
    
    // CUG
    nor_2 #(1'b0) NOR33116(CUG,             NOR33113_out,   CT_,                                    SIM_CLK);
    // NOR33117, NOR33118, NOR33119, NOR33120, NOR33121 omitted
    
    // WYDG_
    nor_2 #(1'b0) NOR33122(NOR33122_out,    WYD_,           WT_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33126(WYDG_,           NOR33122_out,                                           SIM_CLK);
    
    // WYDLOG_
    nor_2 #(1'b0) NOR33123(NOR33123_out,    WYD_,           WT_,                                    SIM_CLK);
    nor_3 #(1'b0) NOR33124(NOR33124_out,    SHIFT,          NEAC,           NOR33125_out,           SIM_CLK);
    nor_2 #(1'b0) NOR33125(NOR33125_out,    L15_,           PIFL_,                                  SIM_CLK);
    assign NOR33129_in = NOR33123_out & NOR33124_out;
    nor_1 #(1'b0) NOR33129(WYDLOG_,         NOR33129_in,                                            SIM_CLK);
    
endmodule
