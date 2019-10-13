`timescale 1ns / 1ps

module a11_four_bit_4(
    input wire A2XG_, 
    input wire MONEX, 
    input wire CLXC, 
    input wire CUG, 
    input wire WYLOG_, 
    input wire WYDG_, 
    input wire CI09_,
    input wire CO10, 
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
    input wire WG1G_, 
    input wire CGG, 
    input wire RGG_,
    input wire WL08_,
    input wire WL13_, 
    input wire WL14_, 
    input wire SA09, 
    input wire SA10, 
    input wire SA11, 
    input wire SA12,
    input wire R1C, 
    input wire L08_,
    input wire CH09, 
    input wire CH10, 
    input wire CH11, 
    input wire CH12,
    input wire G13_, 
    input wire G14_, 
    input wire G15_,
    input wire MDT09, 
    input wire MDT10, 
    input wire MDT11, 
    input wire MDT12,
    input wire XUY13_,
    input wire XUY14_,
    input wire WHOMPA, 
    
    input wire RL09_,
    input wire RL10_,
    input wire RL11_,
    input wire RL12_,
    
    output wire A10_1_RL09_,
    output wire A10_2_RL09_,
    output wire A10_3_RL09_,
    output wire A10_4_RL09_,
    output wire A10_1_RL10_,
    output wire A10_2_RL10_,
    output wire A10_3_RL10_,
    output wire A10_4_RL10_,
    output wire A10_1_RL11_,
    output wire A10_2_RL11_,
    output wire A10_3_RL11_,
    output wire A10_4_RL11_,
    output wire A10_1_RL12_,
    output wire A10_2_RL12_,
    output wire A10_3_RL12_,
    output wire A10_4_RL12_,
    
    output wire WL09, 
    output wire WL09_, 
    output wire MWL09, 
    output wire WL10, 
    output wire WL10_, 
    output wire MWL10, 
    output wire WL11, 
    output wire WL11_, 
    output wire MWL11, 
    output wire WL12,
    output wire WL12_, 
    output wire MWL12,
    output wire CI13_, 
    output wire CO14,
    output wire XUY09_,    
    output wire XUY10_,
    output wire XUY12_,
    output wire L12_,
    output wire G09, 
    output wire G09_, 
    output wire GEM09, 
    output wire G10, 
    output wire G10_, 
    output wire GEM10, 
    output wire G11, 
    output wire G11_, 
    output wire GEM11, 
    output wire G12, 
    output wire GEM12,
    
    input wire reset,
    input wire prop_clk
);
    
    
    /**************************
    *
    *  Module A11 sheet 1
    *  Sheet number 2005258/1
    *
    **************************/
    
    wire NOR54101_out;
    wire NOR54102_out;
    wire NOR54103_out;
    wire NOR54104_out;
    wire NOR54105_out;
    wire NOR54106_out;
    wire NOR54107_out;
    wire NOR54108_out;
    wire NOR54109_out;
    wire NOR54111_out;
    wire NOR54113_out;
    wire NOR54117_out;
    wire NOR54118_out;
    wire NOR54119_out;
    wire NOR54121_out;
    wire NOR54122_out;
    wire NOR54124_out;
    wire NOR54125_out;
    wire NOR54127_out;
    wire NOR54128_out;
    wire NOR54129_out;
    wire NOR54130_out;
    wire NOR54131_out;
    wire NOR54132_out;
    wire NOR54134_out;
    wire NOR54136_out;
    wire NOR54137_out;
    wire NOR54138_out;
    wire NOR54139_out;
    wire NOR54140_out;
    wire NOR54141_out;
    wire NOR54142_out;
    wire NOR54143_out;
    wire NOR54144_out;
    wire NOR54145_out;
    wire NOR54146_out;
    wire NOR54147_out;
    wire NOR54148_out;
    wire NOR54151_out;
    wire NOR54153_out;
    
    wire NOR54201_out;
    wire NOR54202_out;
    wire NOR54203_out;
    wire NOR54204_out;
    wire NOR54205_out;
    wire NOR54206_out;
    wire NOR54207_out;
    wire NOR54208_out;
    wire NOR54209_out;
    wire NOR54211_out;
    wire NOR54213_out;
    wire NOR54217_out;
    wire NOR54218_out;
    wire NOR54219_out;
    wire NOR54221_out;
    wire NOR54222_out;
    wire NOR54224_out;
    wire NOR54225_out;
    wire NOR54227_out;
    wire NOR54228_out;
    wire NOR54229_out;
    wire NOR54230_out;
    wire NOR54231_out;
    wire NOR54232_out;
    wire NOR54234_out;
    wire NOR54236_out;
    wire NOR54237_out;
    wire NOR54238_out;
    wire NOR54239_out;
    wire NOR54240_out;
    wire NOR54241_out;
    wire NOR54242_out;
    wire NOR54243_out;
    wire NOR54244_out;
    wire NOR54245_out;
    wire NOR54246_out;
    wire NOR54247_out;
    wire NOR54248_out;
    wire NOR54251_out;
    wire NOR54253_out;
    
    wire NOR54401_out;
    wire NOR54402_out;
    wire NOR54403_out;
    wire NOR54404_out;
    wire NOR54405_out;
    wire NOR54406_out;
    wire NOR54407_out;
    wire NOR54408_out;
    wire NOR54409_out;
    wire NOR54411_out;
    wire NOR54413_out;
    wire NOR54417_out;
    wire NOR54418_out;
    wire NOR54419_out;
    wire NOR54421_out;
    wire NOR54422_out;
    wire NOR54424_out;
    wire NOR54425_out;
    wire NOR54427_out;
    wire NOR54428_out;
    wire NOR54429_out;
    wire NOR54430_out;
    wire NOR54431_out;
    wire NOR54432_out;
    wire NOR54434_out;
    wire NOR54436_out;
    wire NOR54437_out;
    wire NOR54438_out;
    wire NOR54439_out;
    wire NOR54440_out;
    wire NOR54441_out;
    wire NOR54442_out;
    wire NOR54443_out;
    wire NOR54444_out;
    wire NOR54445_out;
    wire NOR54446_out;
    wire NOR54447_out;
    wire NOR54448_out;
    wire NOR54451_out;
    wire NOR54453_out;
    
    wire NOR54301_out;
    wire NOR54302_out;
    wire NOR54303_out;
    wire NOR54304_out;
    wire NOR54305_out;
    wire NOR54306_out;
    wire NOR54307_out;
    wire NOR54308_out;
    wire NOR54309_out;
    wire NOR54311_out;
    wire NOR54313_out;
    wire NOR54317_out;
    wire NOR54318_out;
    wire NOR54319_out;
    wire NOR54321_out;
    wire NOR54322_out;
    wire NOR54324_out;
    wire NOR54325_out;
    wire NOR54327_out;
    wire NOR54328_out;
    wire NOR54329_out;
    wire NOR54330_out;
    wire NOR54331_out;
    wire NOR54332_out;
    wire NOR54334_out;
    wire NOR54336_out;
    wire NOR54337_out;
    wire NOR54338_out;
    wire NOR54339_out;
    wire NOR54340_out;
    wire NOR54341_out;
    wire NOR54342_out;
    wire NOR54343_out;
    wire NOR54344_out;
    wire NOR54345_out;
    wire NOR54346_out;
    wire NOR54347_out;
    wire NOR54348_out;
    wire NOR54351_out;
    wire NOR54353_out;
    
    wire SUMA09_, SUMB09_, SUMA10_, SUMB10_, SUMA11_, SUMB11_, SUMA12_, SUMB12_;
    wire A09_, A10_, A11_, A12_;
    wire L09_, L10_, L11_;
    wire XUY11_, XUY08_;
    wire CI10_, CI11_, CI12_;
    wire CO12;
    wire Z09_, Z10_, Z11_, Z12_;
    wire G12_;
    
    // Bit column 13
     
    // CO16 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR54101(NOR54101_out,    XUY15_,         XUY13_,         CI13_,                      reset, prop_clk);
    
    // X flip-flop
    nor_2 #(1'b0) NOR54102(NOR54102_out,    A2XG_,          A09_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54103(NOR54103_out,    MONEX,          NOR54102_out,   NOR54104_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54104(NOR54104_out,    NOR54103_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR54105(NOR54105_out,    WYLOG_,         WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54106(NOR54106_out,    WL08_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54107(NOR54107_out,    NOR54105_out,   NOR54106_out,   NOR54108_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54108(NOR54108_out,    NOR54107_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54109(NOR54109_out,    NOR54103_out,   NOR54107_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54110(XUY09_,          NOR54104_out,   NOR54108_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54112(SUMA09_,         NOR54109_out,   CI09_,          XUY09_,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR54113(NOR54113_out,    NOR54109_out,   XUY09_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54111(NOR54111_out,    CI09_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54115(SUMB09_,         NOR54113_out,   NOR54111_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR54114(CI10_,           NOR54109_out,   SUMA09_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR54117(NOR54117_out,    SUMA09_,        SUMB09_,        RULOG_,                     reset, prop_clk);
    
    // NOR54116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54118(NOR54118_out,    WAG_,           WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54119(NOR54119_out,    WL11_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54120(A09_,            NOR54118_out,   NOR54119_out,   NOR54121_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54121(NOR54121_out,    A09_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54122(NOR54122_out,    RAG_,           A09_,                                       reset, prop_clk);
    
    // RL09_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54123(A10_1_RL09_,     NOR54117_out,   NOR54122_out,   CH09,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54124(NOR54124_out,    WLG_,           WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54125(NOR54125_out,    G12_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54126(L09_,            NOR54124_out,   NOR54125_out,   NOR54127_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54127(NOR54127_out,    L09_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54128(NOR54128_out,    RLG_,           L09_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54129(NOR54129_out,    WQG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54130(NOR54130_out,    NOR54129_out,   NOR54131_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54131(NOR54131_out,    NOR54130_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54132(NOR54132_out,    RQG_,           NOR54130_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54134(NOR54134_out,    WZG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54135(Z09_,            NOR54134_out,   NOR54136_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54136(NOR54136_out,    Z09_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54137(NOR54137_out,    RZG_,           Z09_,                                       reset, prop_clk);
    
    // RL09_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54133(A10_2_RL09_,     NOR54128_out,   NOR54132_out,   NOR54137_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54138(NOR54138_out,    WBG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54139(NOR54139_out,    NOR54138_out,   NOR54140_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54140(NOR54140_out,    NOR54139_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54141(NOR54141_out,    RBLG_,          NOR54139_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54142(NOR54142_out,    NOR54140_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54143(NOR54143_out,    WL08_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54144(NOR54144_out,    WL10_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54145(NOR54145_out,    L2GDG_,         L08_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54146(NOR54146_out,    WG1G_,          WL09_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54147(NOR54147_out,    SA09,           NOR54143_out,   NOR54144_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54148(NOR54148_out,    NOR54145_out,   NOR54146_out,   G09,                        reset, prop_clk);
    assign G09_ = NOR54147_out & NOR54148_out;
    nor_2 #(1'b0) NOR54149(G09,             G09_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54150(GEM09,           G09_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54151(NOR54151_out,    RGG_,           G09_,                                       reset, prop_clk);
    
    // RL09_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54157(A10_3_RL09_,     NOR54141_out,   NOR54142_out,   NOR54151_out,               reset, prop_clk);
    
    // RL09_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR54158(A10_4_RL09_,     MDT09,          R1C,                                        reset, prop_clk);
       
    // WL09
    nor_1 #(1'b0) NOR54152(WL09,            RL09_,                                                      reset, prop_clk);
    
    // MWL09
    nor_1 #(1'b0) NOR54153(NOR54153_out,    WL09,                                                       reset, prop_clk);
    assign MWL09 = NOR54153_out;
    
    // WL09_
    nor_1 #(1'b0) NOR54154(WL09_,           WL09,                                                       reset, prop_clk);
    // NOR54155 and NOR54156 omitted
    
    
    // Bit column 10
    
    // CO12 part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR54201(NOR54201_out,    XUY12_,         XUY10_,         WHOMPA,                     reset, prop_clk);
    // NOR54463 moved here from sheet 2 and merged with NOR54201
    
    assign CO12 = NOR54101_out & NOR54201_out;
    
    // X flip-flop
    nor_2 #(1'b0) NOR54202(NOR54202_out,    A2XG_,          A10_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54203(NOR54203_out,    MONEX,          NOR54202_out,   NOR54204_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54204(NOR54204_out,    NOR54203_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR54205(NOR54205_out,    WYLOG_,         WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54206(NOR54206_out,    WL09_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54207(NOR54207_out,    NOR54205_out,   NOR54206_out,   NOR54208_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54208(NOR54208_out,    NOR54207_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54209(NOR54209_out,    NOR54203_out,   NOR54207_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54210(XUY10_,          NOR54204_out,   NOR54208_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54212(SUMA10_,         NOR54209_out,   XUY10_,         CI10_,                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54213(NOR54213_out,    NOR54209_out,   XUY10_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54211(NOR54211_out,    CI10_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54215(SUMB10_,         NOR54213_out,   NOR54211_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54214(CI11_,           NOR54209_out,   SUMA10_,        CO10,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR54217(NOR54217_out,    SUMA10_,        SUMB10_,        RULOG_,                     reset, prop_clk);
    
    // NOR54216 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54218(NOR54218_out,    WAG_,           WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54219(NOR54219_out,    WL12_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54220(A10_,            NOR54218_out,   NOR54219_out,   NOR54221_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54221(NOR54221_out,    A10_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54222(NOR54222_out,    RAG_,           A10_,                                       reset, prop_clk);
    
    // RL10_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54223(A10_1_RL10_,     NOR54217_out,   NOR54222_out,   CH10,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54224(NOR54224_out,    WLG_,           WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54225(NOR54225_out,    G13_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54226(L10_,            NOR54224_out,   NOR54225_out,   NOR54227_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54227(NOR54227_out,    L10_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54228(NOR54228_out,    RLG_,           L10_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54229(NOR54229_out,    WQG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54230(NOR54230_out,    NOR54229_out,   NOR54231_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54231(NOR54231_out,    NOR54230_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54232(NOR54232_out,    RQG_,           NOR54230_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54234(NOR54234_out,    WZG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54235(Z10_,            NOR54234_out,   NOR54236_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54236(NOR54236_out,    Z10_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54237(NOR54237_out,    RZG_,           Z10_,                                       reset, prop_clk);
    
    // RL10_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54233(A10_2_RL10_,     NOR54228_out,   NOR54232_out,   NOR54237_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54238(NOR54238_out,    WBG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54239(NOR54239_out,    NOR54238_out,   NOR54240_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54240(NOR54240_out,    NOR54239_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54241(NOR54241_out,    RBLG_,          NOR54239_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54242(NOR54242_out,    NOR54240_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54243(NOR54243_out,    WL09_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54244(NOR54244_out,    WL11_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54245(NOR54245_out,    L2GDG_,         L09_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54246(NOR54246_out,    WG1G_,          WL10_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54247(NOR54247_out,    SA10,           NOR54243_out,   NOR54244_out,               reset, prop_clk);
    
    nor_3 #(1'b1) NOR54248(NOR54248_out,    NOR54245_out,   NOR54246_out,   G10,                        reset, prop_clk);
    assign G10_ = NOR54247_out & NOR54248_out;
    nor_2 #(1'b0) NOR54249(G10,             G10_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54250(GEM10,           G10_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54251(NOR54251_out,    RGG_,           G10_,                                       reset, prop_clk);
    
    // RL10_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54257(A10_3_RL10_,     NOR54241_out,   NOR54242_out,   NOR54251_out,               reset, prop_clk);
    
    // RL10_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR54258(A10_4_RL10_,     MDT10,          R1C,                                        reset, prop_clk);
    
    
    // WL10
    nor_1 #(1'b0) NOR54252(WL10,            RL10_,                                                      reset, prop_clk);
    
    // MWL10
    nor_1 #(1'b0) NOR54253(NOR54253_out,    RL10_,                                                      reset, prop_clk);
    assign MWL10 = NOR54253_out;
    
    // WL10_
    nor_1 #(1'b0) NOR54254(WL10_,           WL10,                                                       reset, prop_clk);
    // NOR54255 and NOR54256 omitted
    
    
    /**************************
    *
    *  Module A10 sheet 2
    *  Sheet number 2005257/2
    *
    **************************/
    
    // Bit column 11
    
    // CO14 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR54401(NOR54401_out,    XUY13_,         XUY11_,         CI11_,                      reset, prop_clk);
    
    // X register flip-flop
    nor_2 #(1'b0) NOR54402(NOR54402_out,    A2XG_,          A11_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54403(NOR54403_out,    MONEX,          NOR54402_out,   NOR54404_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54404(NOR54404_out,    NOR54403_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR54405(NOR54405_out,    WYLOG_,         WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54406(NOR54406_out,    WL10_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54407(NOR54407_out,    NOR54405_out,   NOR54406_out,   NOR54408_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54408(NOR54408_out,    NOR54407_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54409(NOR54409_out,    NOR54403_out,   NOR54407_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54410(XUY11_,          NOR54404_out,   NOR54408_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54412(SUMA11_,         NOR54409_out,   CI11_,          XUY11_,                     reset, prop_clk);
        
    nor_2 #(1'b0) NOR54413(NOR54413_out,    NOR54409_out,   XUY11_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54411(NOR54411_out,    CI11_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54415(SUMB11_,         NOR54413_out,   NOR54411_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR54414(CI12_,           NOR54409_out,   SUMA11_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR54417(NOR54417_out,    SUMA11_,        SUMB11_,        RULOG_,                     reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54418(NOR54418_out,    WAG_,           WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54419(NOR54419_out,    WL13_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54420(A11_,            NOR54418_out,   NOR54419_out,   NOR54421_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54421(NOR54421_out,    A11_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54422(NOR54422_out,    RAG_,           A11_,                                       reset, prop_clk);
    
    // RL11_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54423(A10_1_RL11_,     NOR54417_out,   NOR54422_out,   CH11,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54424(NOR54424_out,    WLG_,           WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54425(NOR54425_out,    G14_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54426(L11_,            NOR54424_out,   NOR54425_out,   NOR54427_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54427(NOR54427_out,    L11_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54428(NOR54428_out,    RLG_,           L11_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54429(NOR54429_out,    WQG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54430(NOR54430_out,    NOR54429_out,   NOR54431_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54431(NOR54431_out,    NOR54430_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54432(NOR54432_out,    RQG_,           NOR54430_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54434(NOR54434_out,    WZG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54435(Z11_,            NOR54434_out,   NOR54436_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54436(NOR54436_out,    Z11_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54437(NOR54437_out,    RZG_,           Z11_,                                       reset, prop_clk);
    
    // RL11_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54433(A10_2_RL11_,     NOR54428_out,   NOR54432_out,   NOR54437_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54438(NOR54438_out,    WBG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54439(NOR54439_out,    NOR54438_out,   NOR54440_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54440(NOR54440_out,    NOR54439_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54441(NOR54441_out,    RBLG_,          NOR54439_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54442(NOR54442_out,    NOR54440_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54443(NOR54443_out,    WL10_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54444(NOR54444_out,    WL12_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54445(NOR54445_out,    L2GDG_,         L10_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54446(NOR54446_out,    WG1G_,          WL11_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54447(NOR54447_out,    SA11,           NOR54443_out,   NOR54444_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54448(NOR54448_out,    NOR54445_out,   NOR54446_out,   G11,                        reset, prop_clk);
    assign G11_ = NOR54447_out & NOR54448_out;
    nor_2 #(1'b0) NOR54449(G11,             G11_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54450(GEM11,           G11_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54451(NOR54451_out,    RGG_,           G11_,                                       reset, prop_clk);
    
    // RL11_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54457(A10_3_RL11_,     NOR54441_out,   NOR54442_out,   NOR54451_out,               reset, prop_clk);
    
    // RL11_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR54458(A10_4_RL11_,     MDT11,          R1C,                                        reset, prop_clk);
    
    // WL11
    nor_1 #(1'b0) NOR54452(WL11,            RL11_,                                                      reset, prop_clk);
    
    // MWL07
    nor_1 #(1'b0) NOR54453(NOR54453_out,    RL11_,                                                      reset, prop_clk);
    assign MWL11 = NOR54453_out;
    
    // WL11_
    nor_1 #(1'b0) NOR54454(WL11_,           WL11,                                                       reset, prop_clk);
    // NOR54455 and NOR54456 omitted
    
    // Bit column 12
    
    // CO14 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR54301(NOR54301_out,    XUY14_,         XUY12_,                                     reset, prop_clk);
    assign CO14 = NOR54401_out & NOR54301_out;
    
    // X register flip-flop
    nor_2 #(1'b0) NOR54302(NOR54302_out,    A2XG_,          A12_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54303(NOR54303_out,    MONEX,          NOR54302_out,   NOR54304_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54304(NOR54304_out,    NOR54303_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR54305(NOR54305_out,    WYLOG_,         WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54306(NOR54306_out,    WL11_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54307(NOR54307_out,    NOR54305_out,   NOR54306_out,   NOR54308_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54308(NOR54308_out,    NOR54307_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54309(NOR54309_out,    NOR54303_out,   NOR54307_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54310(XUY12_,          NOR54304_out,   NOR54308_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54312(SUMA12_,         NOR54309_out,   XUY12_,         CI12_,                      reset, prop_clk);

    
    nor_2 #(1'b0) NOR54313(NOR54313_out,    NOR54309_out,   XUY12_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54311(NOR54311_out,    CI12_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54315(SUMB12_,         NOR54313_out,   NOR54311_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54314(CI13_,           NOR54309_out,   SUMA12_,        CO12,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR54317(NOR54317_out,    SUMA12_,        SUMB12_,        RULOG_,                     reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54318(NOR54318_out,    WAG_,           WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54319(NOR54319_out,    WL14_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54320(A12_,            NOR54318_out,   NOR54319_out,   NOR54321_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54321(NOR54321_out,    A12_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54322(NOR54322_out,    RAG_,           A12_,                                       reset, prop_clk);
    
    // RL12_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54323(A10_1_RL12_,     NOR54317_out,   NOR54322_out,   CH12,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54324(NOR54324_out,    WLG_,           WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54325(NOR54325_out,    G15_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54326(L12_,            NOR54324_out,   NOR54325_out,   NOR54327_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54327(NOR54327_out,    L12_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54328(NOR54328_out,    RLG_,           L12_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54329(NOR54329_out,    WQG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54330(NOR54330_out,    NOR54329_out,   NOR54331_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54331(NOR54331_out,    NOR54330_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54332(NOR54332_out,    RQG_,           NOR54330_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54334(NOR54334_out,    WZG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54335(Z12_,            NOR54334_out,   NOR54336_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54336(NOR54336_out,    Z12_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54337(NOR54337_out,    RZG_,           Z12_,                                       reset, prop_clk);
    
    // RL12_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54333(A10_2_RL12_,     NOR54328_out,   NOR54332_out,   NOR54337_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54338(NOR54338_out,    WBG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54339(NOR54339_out,    NOR54338_out,   NOR54340_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54340(NOR54340_out,    NOR54339_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54341(NOR54341_out,    RBLG_,          NOR54339_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54342(NOR54342_out,    NOR54340_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54343(NOR54343_out,    WL11_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54344(NOR54344_out,    WL13_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54345(NOR54345_out,    L2GDG_,         L11_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54346(NOR54346_out,    WG1G_,          WL12_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54347(NOR54347_out,    SA12,           NOR54343_out,   NOR54344_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54348(NOR54348_out,    NOR54345_out,   NOR54346_out,   G12,                        reset, prop_clk);
    assign G12_ = NOR54347_out & NOR54348_out;
    nor_2 #(1'b0) NOR54349(G12,             G12_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54350(GEM12,           G12_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54351(NOR54351_out,    RGG_,           G12_,                                       reset, prop_clk);
    
    // RL12_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54357(A10_3_RL12_,     NOR54341_out,   NOR54342_out,   NOR54351_out,               reset, prop_clk);
    
    // RL12_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR54358(A10_4_RL12_,     MDT12,          R1C,                                        reset, prop_clk);
    
    
    // WL12
    nor_1 #(1'b0) NOR54352(WL12,            RL12_,                                                      reset, prop_clk);
    
    // MWL12
    nor_1 #(1'b0) NOR54353(NOR54353_out,    RL12_,                                                      reset, prop_clk);
    assign MWL12 = NOR54353_out;
    
    // WL12_
    nor_1 #(1'b0) NOR54354(WL12_,           WL12,                                                       reset, prop_clk);
    // NOR54355 and NOR54356 omitted
    
endmodule


