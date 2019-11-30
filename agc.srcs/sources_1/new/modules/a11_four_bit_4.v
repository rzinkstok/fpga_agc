`timescale 1ns / 1ps

module a11_four_bit_4(
    input wire A2XG_, 
    input wire MONEX, 
    input wire BXVX,
    input wire CLXC, 
    input wire CUG, 
    input wire WYHIG_, 
    input wire WYDG_, 
    input wire CI13_,
    input wire CO14, 
    input wire RULOG_,
    input wire RUG_,
    input wire WAG_, 
    input wire CAG, 
    input wire WALSG_, 
    input wire RAG_, 
    input wire WLG_, 
    input wire G2LSG_, 
    input wire G16SW_,
    input wire CLG1G,
    input wire CLG2G, 
    input wire RLG_, 
    input wire WQG_, 
    input wire CQG, 
    input wire RQG_,
    input wire WZG_, 
    input wire CZG, 
    input wire RZG_,
    input wire WBG_, 
    input wire CBG, 
    input wire RBHG_, 
    input wire RCG_,
    input wire WG2G_,
    input wire WG3G_, 
    input wire WG4G_, 
    input wire WG5G_,
    input wire L2GDG_, 
    input wire WG1G_, 
    input wire ONE,
    input wire CGG, 
    input wire RGG_,
    input wire WL01_,
    input wire WL02_,
    input wire WL12_, 
    input wire SA13, 
    input wire SA14, 
    input wire SA16,
    input wire R1C, 
    input wire CH13, 
    input wire CH14, 
    input wire CH16,
    input wire G01_,
    input wire L12_,
    input wire L16_,
    input wire US2SG,
    input wire MDT13, 
    input wire MDT14, 
    input wire MDT15, 
    input wire MDT16,
    input wire XUY01_,
    input wire XUY02_,
    input wire WHOMPA, 
    
    input wire RL13_,
    input wire RL14_,
    input wire RL15_,
    input wire RL16_,
    
    output wire A11_1_RL13_,
    output wire A11_2_RL13_,
    output wire A11_3_RL13_,
    output wire A11_4_RL13_,
    output wire A11_1_RL14_,
    output wire A11_2_RL14_,
    output wire A11_3_RL14_,
    output wire A11_4_RL14_,
    output wire A11_1_RL15_,
    output wire A11_2_RL15_,
    output wire A11_3_RL15_,
    output wire A11_4_RL15_,
    output wire A11_1_RL16_,
    output wire A11_2_RL16_,
    output wire A11_3_RL16_,
    output wire A11_4_RL16_,
    
    output wire A11_1_L16_,
     
    output wire WL13, 
    output wire WL13_, 
    output wire MWL13, 
    output wire WL14, 
    output wire WL14_, 
    output wire MWL14, 
    output wire WL15, 
    output wire WL15_, 
    output wire MWL15, 
    output wire WL16,
    output wire WL16_, 
    output wire MWL16,
    output wire EAC_,
    output wire CO02, 
    output wire CO16,
    output wire XUY13_,    
    output wire XUY14_,
    output wire SUMA13_,
    output wire SUMA14_,
    output wire SUMA16_,
    output wire SUMB13_,
    output wire SUMB14_,
    output wire SUMB16_,
    output wire L13_,
    output wire L14_,
    output wire L15_,
    output wire G13, 
    output wire G13_, 
    output wire GEM13, 
    output wire G14, 
    output wire G14_, 
    output wire GEM14, 
    output wire G15, 
    output wire G15_, 
    output wire GEM15, 
    output wire G16, 
    output wire G16_,
    output wire GEM16,
    output wire A15_,
    output wire A16_,
    
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
    
    wire SUMA15_, SUMB15_;
    wire A13_, A14_;
    wire XUY15_, XUY16_;
    wire CI14_, CI15_, CI16_;
    wire CO12;
    wire Z13_, Z14_, Z15_, Z16_;
    wire RL16;
    
    // Bit column 13
     
    // CO16 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR54101(NOR54101_out,    XUY15_,         XUY13_,         CI13_,                      reset, prop_clk);
    
    // X flip-flop
    nor_2 #(1'b0) NOR54102(NOR54102_out,    A2XG_,          A13_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54103(NOR54103_out,    MONEX,          NOR54102_out,   NOR54104_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54104(NOR54104_out,    NOR54103_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR54105(NOR54105_out,    WYHIG_,         WL13_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54106(NOR54106_out,    WL12_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54107(NOR54107_out,    NOR54105_out,   NOR54106_out,   NOR54108_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54108(NOR54108_out,    NOR54107_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54109(NOR54109_out,    NOR54103_out,   NOR54107_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54110(XUY13_,          NOR54104_out,   NOR54108_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54112(SUMA13_,         NOR54109_out,   CI13_,          XUY13_,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR54113(NOR54113_out,    NOR54109_out,   XUY13_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54111(NOR54111_out,    CI13_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54115(SUMB13_,         NOR54113_out,   NOR54111_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR54114(CI14_,           NOR54109_out,   SUMA13_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR54117(NOR54117_out,    SUMA13_,        SUMB13_,        RULOG_,                     reset, prop_clk);
    
    // NOR54116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54118(NOR54118_out,    WAG_,           WL13_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54119(NOR54119_out,    WL15_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54120(A13_,            NOR54118_out,   NOR54119_out,   NOR54121_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54121(NOR54121_out,    A13_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54122(NOR54122_out,    RAG_,           A13_,                                       reset, prop_clk);
    
    // RL13_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54123(A11_1_RL13_,     NOR54117_out,   NOR54122_out,   CH13,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54124(NOR54124_out,    WLG_,           WL13_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54125(NOR54125_out,    WL01_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54126(L13_,            NOR54124_out,   NOR54125_out,   NOR54127_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54127(NOR54127_out,    L13_,           CLG2G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54128(NOR54128_out,    RLG_,           L13_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54129(NOR54129_out,    WQG_,           WL13_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54130(NOR54130_out,    NOR54129_out,   NOR54131_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54131(NOR54131_out,    NOR54130_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54132(NOR54132_out,    RQG_,           NOR54130_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54134(NOR54134_out,    WZG_,           WL13_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54135(Z13_,            NOR54134_out,   NOR54136_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54136(NOR54136_out,    Z13_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54137(NOR54137_out,    RZG_,           Z13_,                                       reset, prop_clk);
    
    // RL13_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54133(A11_2_RL13_,     NOR54128_out,   NOR54132_out,   NOR54137_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54138(NOR54138_out,    WBG_,           WL13_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54139(NOR54139_out,    NOR54138_out,   NOR54140_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54140(NOR54140_out,    NOR54139_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54141(NOR54141_out,    RBHG_,          NOR54139_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54142(NOR54142_out,    NOR54140_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54143(NOR54143_out,    WL12_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54144(NOR54144_out,    WL14_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54145(NOR54145_out,    L2GDG_,         L12_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54146(NOR54146_out,    WG1G_,          WL13_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54147(NOR54147_out,    SA13,           NOR54143_out,   NOR54144_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54148(NOR54148_out,    NOR54145_out,   NOR54146_out,   G13,                        reset, prop_clk);
    assign G13_ = NOR54147_out & NOR54148_out;
    nor_2 #(1'b0) NOR54149(G13,             G13_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54150(GEM13,           G13_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54151(NOR54151_out,    RGG_,           G13_,                                       reset, prop_clk);
    
    // RL13_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54157(A11_3_RL13_,     NOR54141_out,   NOR54142_out,   NOR54151_out,               reset, prop_clk);
    
    // RL13_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR54158(A11_4_RL13_,     MDT13,          R1C,                                        reset, prop_clk);
       
    // WL13
    nor_1 #(1'b0) NOR54152(WL13,            RL13_,                                                      reset, prop_clk);
    
    // MWL13
    nor_1 #(1'b0) NOR54153(NOR54153_out,    WL13,                                                       reset, prop_clk);
    assign MWL13 = NOR54153_out;
    
    // WL13_
    nor_1 #(1'b0) NOR54154(WL13_,           WL13,                                                       reset, prop_clk);
    // NOR54155 and NOR54156 omitted
    
    
    // Bit column 14
    
    // CO16 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR54201(NOR54201_out,    XUY16_,         XUY14_,                                     reset, prop_clk);
    // NOR54463 moved here from sheet 2 and merged with NOR54201
    
    assign CO16 = NOR54101_out & NOR54201_out;
    
    // X flip-flop
    nor_2 #(1'b0) NOR54202(NOR54202_out,    A2XG_,          A14_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54203(NOR54203_out,    MONEX,          NOR54202_out,   NOR54204_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54204(NOR54204_out,    NOR54203_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR54205(NOR54205_out,    WYHIG_,         WL14_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54206(NOR54206_out,    WL13_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54207(NOR54207_out,    NOR54205_out,   NOR54206_out,   NOR54208_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54208(NOR54208_out,    NOR54207_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54209(NOR54209_out,    NOR54203_out,   NOR54207_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54210(XUY14_,          NOR54204_out,   NOR54208_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54212(SUMA14_,         NOR54209_out,   XUY14_,         CI14_,                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54213(NOR54213_out,    NOR54209_out,   XUY14_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54211(NOR54211_out,    CI14_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54215(SUMB14_,         NOR54213_out,   NOR54211_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54214(CI15_,           NOR54209_out,   SUMA14_,        CO14,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR54217(NOR54217_out,    SUMA14_,        SUMB14_,        RULOG_,                     reset, prop_clk);
    
    // NOR54216 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54218(NOR54218_out,    WAG_,           WL14_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54219(NOR54219_out,    WL16_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54220(A14_,            NOR54218_out,   NOR54219_out,   NOR54221_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54221(NOR54221_out,    A14_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54222(NOR54222_out,    RAG_,           A14_,                                       reset, prop_clk);
    
    // RL14_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54223(A11_1_RL14_,     NOR54217_out,   NOR54222_out,   CH14,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54224(NOR54224_out,    WLG_,           WL14_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54225(NOR54225_out,    WL02_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54226(L14_,            NOR54224_out,   NOR54225_out,   NOR54227_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54227(NOR54227_out,    L14_,           CLG2G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54228(NOR54228_out,    RLG_,           L14_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54229(NOR54229_out,    WQG_,           WL14_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54230(NOR54230_out,    NOR54229_out,   NOR54231_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54231(NOR54231_out,    NOR54230_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54232(NOR54232_out,    RQG_,           NOR54230_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54234(NOR54234_out,    WZG_,           WL14_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54235(Z14_,            NOR54234_out,   NOR54236_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54236(NOR54236_out,    Z14_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54237(NOR54237_out,    RZG_,           Z14_,                                       reset, prop_clk);
    
    // RL14_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54233(A11_2_RL14_,     NOR54228_out,   NOR54232_out,   NOR54237_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54238(NOR54238_out,    WBG_,           WL14_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54239(NOR54239_out,    NOR54238_out,   NOR54240_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54240(NOR54240_out,    NOR54239_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54241(NOR54241_out,    RBHG_,          NOR54239_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54242(NOR54242_out,    NOR54240_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54243(NOR54243_out,    WL13_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54244(NOR54244_out,    WL16_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54245(NOR54245_out,    L2GDG_,         L13_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54246(NOR54246_out,    WG1G_,          WL14_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54247(NOR54247_out,    SA14,           NOR54243_out,   NOR54244_out,               reset, prop_clk);
    
    nor_3 #(1'b1) NOR54248(NOR54248_out,    NOR54245_out,   NOR54246_out,   G14,                        reset, prop_clk);
    assign G14_ = NOR54247_out & NOR54248_out;
    nor_2 #(1'b0) NOR54249(G14,             G14_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54250(GEM14,           G14_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54251(NOR54251_out,    RGG_,           G14_,                                       reset, prop_clk);
    
    // RL14_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54257(A11_3_RL14_,     NOR54241_out,   NOR54242_out,   NOR54251_out,               reset, prop_clk);
    
    // RL14_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR54258(A11_4_RL14_,     MDT14,          R1C,                                        reset, prop_clk);
    
    
    // WL14
    nor_1 #(1'b0) NOR54252(WL14,            RL14_,                                                      reset, prop_clk);
    
    // MWL14
    nor_1 #(1'b0) NOR54253(NOR54253_out,    RL14_,                                                      reset, prop_clk);
    assign MWL14 = NOR54253_out;
    
    // WL14_
    nor_1 #(1'b0) NOR54254(WL14_,           WL14,                                                       reset, prop_clk);
    // NOR54255 and NOR54256 omitted
    
    
    /**************************
    *
    *  Module A11 sheet 2
    *  Sheet number 2005258/2
    *
    **************************/
    
    // Bit column 15
    
    // CO02 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR54401(NOR54401_out,    XUY01_,         XUY15_,         CI15_,                      reset, prop_clk);
    
    // X register flip-flop
    nor_2 #(1'b0) NOR54402(NOR54402_out,    A2XG_,          A15_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54403(NOR54403_out,    BXVX,           NOR54402_out,   NOR54404_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54404(NOR54404_out,    NOR54403_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR54405(NOR54405_out,    WYHIG_,         WL15_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54406(NOR54406_out,    WL14_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54407(NOR54407_out,    NOR54405_out,   NOR54406_out,   NOR54408_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54408(NOR54408_out,    NOR54407_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54409(NOR54409_out,    NOR54403_out,   NOR54407_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54410(XUY15_,          NOR54404_out,   NOR54408_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54412(SUMA15_,         NOR54409_out,   CI15_,          XUY15_,                     reset, prop_clk);
        
    nor_2 #(1'b0) NOR54413(NOR54413_out,    NOR54409_out,   XUY15_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54411(NOR54411_out,    CI15_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54415(SUMB15_,         NOR54413_out,   NOR54411_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR54414(CI16_,           NOR54409_out,   SUMA15_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR54417(NOR54417_out,    SUMA15_,        SUMB15_,        RULOG_,                     reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54418(NOR54418_out,    WAG_,           WL15_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54419(NOR54419_out,    G16SW_,         WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54420(A15_,            NOR54418_out,   NOR54419_out,   NOR54421_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54421(NOR54421_out,    A15_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54422(NOR54422_out,    RAG_,           A15_,                                       reset, prop_clk);
    
    // RL15_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54423(A11_1_RL15_,     NOR54417_out,   NOR54422_out,   CH16,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54424(NOR54424_out,    WLG_,           WL15_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54425(NOR54425_out,    G01_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54426(L15_,            NOR54424_out,   NOR54425_out,   NOR54427_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54427(NOR54427_out,    L15_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54428(NOR54428_out,    RLG_,           L15_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54429(NOR54429_out,    WQG_,           WL15_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54430(NOR54430_out,    NOR54429_out,   NOR54431_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54431(NOR54431_out,    NOR54430_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54432(NOR54432_out,    RQG_,           NOR54430_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54434(NOR54434_out,    WZG_,           WL15_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54435(Z15_,            NOR54434_out,   NOR54436_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54436(NOR54436_out,    Z15_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54437(NOR54437_out,    RZG_,           Z15_,                                       reset, prop_clk);
    
    // RL15_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54433(A11_2_RL15_,     NOR54428_out,   NOR54432_out,   NOR54437_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54438(NOR54438_out,    WBG_,           WL15_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54439(NOR54439_out,    NOR54438_out,   NOR54440_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54440(NOR54440_out,    NOR54439_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54441(NOR54441_out,    RBHG_,          NOR54439_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54442(NOR54442_out,    NOR54440_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_1 #(1'b0) NOR54443(NOR54443_out,    ONE,                                                        reset, prop_clk);
    nor_1 #(1'b0) NOR54444(NOR54444_out,    ONE,                                                        reset, prop_clk);
    nor_2 #(1'b0) NOR54445(NOR54445_out,    L2GDG_,         L14_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54446(NOR54446_out,    WG1G_,          WL15_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54447(NOR54447_out,    SA16,           NOR54443_out,   NOR54444_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54448(NOR54448_out,    NOR54445_out,   NOR54446_out,   G15,                        reset, prop_clk);
    assign G15_ = NOR54447_out & NOR54448_out;
    nor_2 #(1'b0) NOR54449(G15,             G15_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54450(GEM15,           G15_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54451(NOR54451_out,    RGG_,           G15_,                                       reset, prop_clk);
    
    // RL15_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54457(A11_3_RL15_,     NOR54441_out,   NOR54442_out,   NOR54451_out,               reset, prop_clk);
    
    // RL15_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54458(A11_4_RL15_,     MDT15,          R1C,            RL16,                       reset, prop_clk);
    
    // WL15
    nor_1 #(1'b0) NOR54452(WL15,            RL15_,                                                      reset, prop_clk);
    
    // MWL15
    nor_1 #(1'b0) NOR54453(NOR54453_out,    RL15_,                                                      reset, prop_clk);
    assign MWL15 = NOR54453_out;
    
    // WL15_
    nor_1 #(1'b0) NOR54454(WL15_,           WL15,                                                       reset, prop_clk);
    // NOR54455 and NOR54456 omitted
    
    // Bit column 16
    
    // CO02 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR54301(NOR54301_out,    XUY02_,         XUY16_,                                     reset, prop_clk);
    assign CO02 = NOR54401_out & NOR54301_out;
    
    // X register flip-flop
    nor_2 #(1'b0) NOR54302(NOR54302_out,    A2XG_,          A16_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR54303(NOR54303_out,    MONEX,          NOR54302_out,   NOR54304_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR54304(NOR54304_out,    NOR54303_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR54305(NOR54305_out,    WYHIG_,         WL16_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54306(NOR54306_out,    WL16_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54307(NOR54307_out,    NOR54305_out,   NOR54306_out,   NOR54308_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54308(NOR54308_out,    NOR54307_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR54309(NOR54309_out,    NOR54303_out,   NOR54307_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54310(XUY16_,          NOR54304_out,   NOR54308_out,                               reset, prop_clk);
    
    nor_4 #(1'b0) NOR54312(SUMA16_,         NOR54309_out,   XUY16_,         CI16_,          WHOMPA,     reset, prop_clk);
    // NOR54363 merged with NOR54312
    
    nor_2 #(1'b0) NOR54313(NOR54313_out,    NOR54309_out,   XUY16_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR54311(NOR54311_out,    CI16_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54315(SUMB16_,         NOR54313_out,   NOR54311_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR54314(EAC_,            NOR54309_out,   SUMA16_,        CO16,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR54317(NOR54317_out,    SUMA16_,        SUMB16_,        RUG_,                       reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR54318(NOR54318_out,    WAG_,           WL16_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54319(NOR54319_out,    G16SW_,         WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR54320(A16_,            NOR54318_out,   NOR54319_out,   NOR54321_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54321(NOR54321_out,    A16_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54322(NOR54322_out,    RAG_,           A16_,                                       reset, prop_clk);
    
    // RL16_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54323(A11_1_RL16_,     NOR54317_out,   NOR54322_out,   CH16,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR54324(NOR54324_out,    WLG_,           WL16_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54325(NOR54325_out,    G16_,           G2LSG_,                                     reset, prop_clk);
    
    // Cross-module fan-in, connected to A4 sheet 2
    nor_3 #(1'b1) NOR54326(A11_1_L16_,      NOR54324_out,   NOR54325_out,   NOR54327_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR54327(NOR54327_out,    L16_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR54328(RL16,            RLG_,           L16_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR54329(NOR54329_out,    WQG_,           WL16_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54330(NOR54330_out,    NOR54329_out,   NOR54331_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54331(NOR54331_out,    NOR54330_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54332(NOR54332_out,    RQG_,           NOR54330_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR54334(NOR54334_out,    WZG_,           WL16_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54335(Z16_,            NOR54334_out,   NOR54336_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54336(NOR54336_out,    Z16_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54337(NOR54337_out,    RZG_,           Z16_,                                       reset, prop_clk);
    
    // RL16_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54333(A11_2_RL16_,     RL16,           NOR54332_out,   NOR54337_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR54338(NOR54338_out,    WBG_,           WL16_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR54339(NOR54339_out,    NOR54338_out,   NOR54340_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54340(NOR54340_out,    NOR54339_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR54341(NOR54341_out,    RBHG_,          NOR54339_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR54342(NOR54342_out,    NOR54340_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR54343(NOR54343_out,    WL14_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54344(NOR54344_out,    WL01_,          WG5G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR54345(NOR54345_out,    L2GDG_,         L16_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54346(NOR54346_out,    WG2G_,          WL16_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR54347(NOR54347_out,    SA16,           NOR54343_out,   NOR54344_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR54348(NOR54348_out,    NOR54345_out,   NOR54346_out,   G16,                        reset, prop_clk);
    assign G16_ = NOR54347_out & NOR54348_out;
    nor_2 #(1'b0) NOR54349(G16,             G16_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR54350(GEM16,           G16_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR54351(NOR54351_out,    RGG_,           G16_,                                       reset, prop_clk);
    
    // RL16_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54357(A11_3_RL16_,     NOR54341_out,   NOR54342_out,   NOR54351_out,               reset, prop_clk);
    
    // RL16_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR54358(A11_4_RL16_,     MDT16,          R1C,            US2SG,                      reset, prop_clk);
    
    // WL16
    nor_1 #(1'b0) NOR54352(WL16,            RL16_,                                                      reset, prop_clk);
    
    // MWL16
    nor_1 #(1'b0) NOR54353(NOR54353_out,    RL16_,                                                      reset, prop_clk);
    assign MWL16 = NOR54353_out;
    
    // WL16_
    nor_1 #(1'b0) NOR54354(WL16_,           WL16,                                                       reset, prop_clk);
    // NOR54355 and NOR54356 omitted
    
endmodule


