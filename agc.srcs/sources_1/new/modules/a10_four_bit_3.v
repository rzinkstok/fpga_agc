`timescale 1ns / 1ps

module a10_four_bit_3(
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
    input wire WHOMP,
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
    output wire L09_,
    output wire L10_,
    output wire L11_,
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
    output wire G12_,
    output wire GEM12,
    
    input wire reset,
    input wire prop_clk
);
    
    
    /**************************
    *
    *  Module A10 sheet 1
    *  Sheet number 2005257/1
    *
    **************************/
    
    wire NOR53101_out;
    wire NOR53102_out;
    wire NOR53103_out;
    wire NOR53104_out;
    wire NOR53105_out;
    wire NOR53106_out;
    wire NOR53107_out;
    wire NOR53108_out;
    wire NOR53109_out;
    wire NOR53111_out;
    wire NOR53113_out;
    wire NOR53117_out;
    wire NOR53118_out;
    wire NOR53119_out;
    wire NOR53121_out;
    wire NOR53122_out;
    wire NOR53124_out;
    wire NOR53125_out;
    wire NOR53127_out;
    wire NOR53128_out;
    wire NOR53129_out;
    wire NOR53130_out;
    wire NOR53131_out;
    wire NOR53132_out;
    wire NOR53134_out;
    wire NOR53136_out;
    wire NOR53137_out;
    wire NOR53138_out;
    wire NOR53139_out;
    wire NOR53140_out;
    wire NOR53141_out;
    wire NOR53142_out;
    wire NOR53143_out;
    wire NOR53144_out;
    wire NOR53145_out;
    wire NOR53146_out;
    wire NOR53147_out;
    wire NOR53148_out;
    wire NOR53151_out;
    wire NOR53153_out;
    
    wire NOR53201_out;
    wire NOR53202_out;
    wire NOR53203_out;
    wire NOR53204_out;
    wire NOR53205_out;
    wire NOR53206_out;
    wire NOR53207_out;
    wire NOR53208_out;
    wire NOR53209_out;
    wire NOR53211_out;
    wire NOR53213_out;
    wire NOR53217_out;
    wire NOR53218_out;
    wire NOR53219_out;
    wire NOR53221_out;
    wire NOR53222_out;
    wire NOR53224_out;
    wire NOR53225_out;
    wire NOR53227_out;
    wire NOR53228_out;
    wire NOR53229_out;
    wire NOR53230_out;
    wire NOR53231_out;
    wire NOR53232_out;
    wire NOR53234_out;
    wire NOR53236_out;
    wire NOR53237_out;
    wire NOR53238_out;
    wire NOR53239_out;
    wire NOR53240_out;
    wire NOR53241_out;
    wire NOR53242_out;
    wire NOR53243_out;
    wire NOR53244_out;
    wire NOR53245_out;
    wire NOR53246_out;
    wire NOR53247_out;
    wire NOR53248_out;
    wire NOR53251_out;
    wire NOR53253_out;
    
    wire NOR53401_out;
    wire NOR53402_out;
    wire NOR53403_out;
    wire NOR53404_out;
    wire NOR53405_out;
    wire NOR53406_out;
    wire NOR53407_out;
    wire NOR53408_out;
    wire NOR53409_out;
    wire NOR53411_out;
    wire NOR53413_out;
    wire NOR53417_out;
    wire NOR53418_out;
    wire NOR53419_out;
    wire NOR53421_out;
    wire NOR53422_out;
    wire NOR53424_out;
    wire NOR53425_out;
    wire NOR53427_out;
    wire NOR53428_out;
    wire NOR53429_out;
    wire NOR53430_out;
    wire NOR53431_out;
    wire NOR53432_out;
    wire NOR53434_out;
    wire NOR53436_out;
    wire NOR53437_out;
    wire NOR53438_out;
    wire NOR53439_out;
    wire NOR53440_out;
    wire NOR53441_out;
    wire NOR53442_out;
    wire NOR53443_out;
    wire NOR53444_out;
    wire NOR53445_out;
    wire NOR53446_out;
    wire NOR53447_out;
    wire NOR53448_out;
    wire NOR53451_out;
    wire NOR53453_out;
    
    wire NOR53301_out;
    wire NOR53302_out;
    wire NOR53303_out;
    wire NOR53304_out;
    wire NOR53305_out;
    wire NOR53306_out;
    wire NOR53307_out;
    wire NOR53308_out;
    wire NOR53309_out;
    wire NOR53311_out;
    wire NOR53313_out;
    wire NOR53317_out;
    wire NOR53318_out;
    wire NOR53319_out;
    wire NOR53321_out;
    wire NOR53322_out;
    wire NOR53324_out;
    wire NOR53325_out;
    wire NOR53327_out;
    wire NOR53328_out;
    wire NOR53329_out;
    wire NOR53330_out;
    wire NOR53331_out;
    wire NOR53332_out;
    wire NOR53334_out;
    wire NOR53336_out;
    wire NOR53337_out;
    wire NOR53338_out;
    wire NOR53339_out;
    wire NOR53340_out;
    wire NOR53341_out;
    wire NOR53342_out;
    wire NOR53343_out;
    wire NOR53344_out;
    wire NOR53345_out;
    wire NOR53346_out;
    wire NOR53347_out;
    wire NOR53348_out;
    wire NOR53351_out;
    wire NOR53353_out;
    
    wire NOR34452_out;
    wire NOR34453_out;
    
    wire SUMA09_, SUMB09_, SUMA10_, SUMB10_, SUMA11_, SUMB11_, SUMA12_, SUMB12_;
    wire A09_, A10_, A11_, A12_;
    wire XUY11_, XUY08_;
    wire CI10_, CI11_, CI12_;
    wire CO12;
    wire Z09_, Z10_, Z11_, Z12_;

    // Bit column 9
     
    // CO12 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR53101(NOR53101_out,    XUY11_,         XUY09_,         CI09_,                      reset, prop_clk);
    
    // X flip-flop
    nor_2 #(1'b0) NOR53102(NOR53102_out,    A2XG_,          A09_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR53103(NOR53103_out,    MONEX,          NOR53102_out,   NOR53104_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR53104(NOR53104_out,    NOR53103_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR53105(NOR53105_out,    WYLOG_,         WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53106(NOR53106_out,    WL08_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53107(NOR53107_out,    NOR53105_out,   NOR53106_out,   NOR53108_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53108(NOR53108_out,    NOR53107_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR53109(NOR53109_out,    NOR53103_out,   NOR53107_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53110(XUY09_,          NOR53104_out,   NOR53108_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR53112(SUMA09_,         NOR53109_out,   CI09_,          XUY09_,                     reset, prop_clk);
    
    nor_2 #(1'b0) NOR53113(NOR53113_out,    NOR53109_out,   XUY09_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR53111(NOR53111_out,    CI09_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53115(SUMB09_,         NOR53113_out,   NOR53111_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR53114(CI10_,           NOR53109_out,   SUMA09_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR53117(NOR53117_out,    SUMA09_,        SUMB09_,        RULOG_,                     reset, prop_clk);
    
    // NOR53116 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR53118(NOR53118_out,    WAG_,           WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53119(NOR53119_out,    WL11_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53120(A09_,            NOR53118_out,   NOR53119_out,   NOR53121_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53121(NOR53121_out,    A09_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53122(NOR53122_out,    RAG_,           A09_,                                       reset, prop_clk);
    
    // RL09_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53123(A10_1_RL09_,     NOR53117_out,   NOR53122_out,   CH09,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR53124(NOR53124_out,    WLG_,           WL09_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53125(NOR53125_out,    G12_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53126(L09_,            NOR53124_out,   NOR53125_out,   NOR53127_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53127(NOR53127_out,    L09_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR53128(NOR53128_out,    RLG_,           L09_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR53129(NOR53129_out,    WQG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53130(NOR53130_out,    NOR53129_out,   NOR53131_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53131(NOR53131_out,    NOR53130_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53132(NOR53132_out,    RQG_,           NOR53130_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR53134(NOR53134_out,    WZG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53135(Z09_,            NOR53134_out,   NOR53136_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53136(NOR53136_out,    Z09_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53137(NOR53137_out,    RZG_,           Z09_,                                       reset, prop_clk);
    
    // RL09_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53133(A10_2_RL09_,     NOR53128_out,   NOR53132_out,   NOR53137_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR53138(NOR53138_out,    WBG_,           WL09_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53139(NOR53139_out,    NOR53138_out,   NOR53140_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53140(NOR53140_out,    NOR53139_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53141(NOR53141_out,    RBLG_,          NOR53139_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53142(NOR53142_out,    NOR53140_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR53143(NOR53143_out,    WL08_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53144(NOR53144_out,    WL10_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53145(NOR53145_out,    L2GDG_,         L08_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53146(NOR53146_out,    WG1G_,          WL09_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53147(NOR53147_out,    SA09,           NOR53143_out,   NOR53144_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR53148(NOR53148_out,    NOR53145_out,   NOR53146_out,   G09,                        reset, prop_clk);
    assign G09_ = NOR53147_out & NOR53148_out;
    nor_2 #(1'b0) NOR53149(G09,             G09_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR53150(GEM09,           G09_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53151(NOR53151_out,    RGG_,           G09_,                                       reset, prop_clk);
    
    // RL09_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53157(A10_3_RL09_,     NOR53141_out,   NOR53142_out,   NOR53151_out,               reset, prop_clk);
    
    // RL09_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR53158(A10_4_RL09_,     MDT09,          R1C,                                        reset, prop_clk);
       
    // WL09
    nor_1 #(1'b0) NOR53152(WL09,            RL09_,                                                      reset, prop_clk);
    
    // MWL09
    nor_1 #(1'b0) NOR53153(NOR53153_out,    WL09,                                                       reset, prop_clk);
    assign MWL09 = NOR53153_out;
    
    // WL09_
    nor_1 #(1'b0) NOR53154(WL09_,           WL09,                                                       reset, prop_clk);
    // NOR53155 and NOR53156 omitted
    
    
    // Bit column 10
    
    // CO12 part 2
    // No cross-module fan-in
    nor_3 #(1'b0) NOR53201(NOR53201_out,    XUY12_,         XUY10_,         WHOMPA,                     reset, prop_clk);
    // NOR53463 moved here from sheet 2 and merged with NOR53201
    
    assign CO12 = NOR53101_out & NOR53201_out;
    
    // X flip-flop
    nor_2 #(1'b0) NOR53202(NOR53202_out,    A2XG_,          A10_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR53203(NOR53203_out,    MONEX,          NOR53202_out,   NOR53204_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR53204(NOR53204_out,    NOR53203_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y flip-flop
    nor_2 #(1'b0) NOR53205(NOR53205_out,    WYLOG_,         WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53206(NOR53206_out,    WL09_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53207(NOR53207_out,    NOR53205_out,   NOR53206_out,   NOR53208_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53208(NOR53208_out,    NOR53207_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR53209(NOR53209_out,    NOR53203_out,   NOR53207_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53210(XUY10_,          NOR53204_out,   NOR53208_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR53212(SUMA10_,         NOR53209_out,   XUY10_,         CI10_,                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR53213(NOR53213_out,    NOR53209_out,   XUY10_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR53211(NOR53211_out,    CI10_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53215(SUMB10_,         NOR53213_out,   NOR53211_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR53214(CI11_,           NOR53209_out,   SUMA10_,        CO10,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR53217(NOR53217_out,    SUMA10_,        SUMB10_,        RULOG_,                     reset, prop_clk);
    
    // NOR53216 not used
    
    // A register flip-flop
    nor_2 #(1'b0) NOR53218(NOR53218_out,    WAG_,           WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53219(NOR53219_out,    WL12_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53220(A10_,            NOR53218_out,   NOR53219_out,   NOR53221_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53221(NOR53221_out,    A10_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53222(NOR53222_out,    RAG_,           A10_,                                       reset, prop_clk);
    
    // RL10_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53223(A10_1_RL10_,     NOR53217_out,   NOR53222_out,   CH10,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR53224(NOR53224_out,    WLG_,           WL10_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53225(NOR53225_out,    G13_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53226(L10_,            NOR53224_out,   NOR53225_out,   NOR53227_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53227(NOR53227_out,    L10_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR53228(NOR53228_out,    RLG_,           L10_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR53229(NOR53229_out,    WQG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53230(NOR53230_out,    NOR53229_out,   NOR53231_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53231(NOR53231_out,    NOR53230_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53232(NOR53232_out,    RQG_,           NOR53230_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR53234(NOR53234_out,    WZG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53235(Z10_,            NOR53234_out,   NOR53236_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53236(NOR53236_out,    Z10_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53237(NOR53237_out,    RZG_,           Z10_,                                       reset, prop_clk);
    
    // RL10_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53233(A10_2_RL10_,     NOR53228_out,   NOR53232_out,   NOR53237_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR53238(NOR53238_out,    WBG_,           WL10_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53239(NOR53239_out,    NOR53238_out,   NOR53240_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53240(NOR53240_out,    NOR53239_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53241(NOR53241_out,    RBLG_,          NOR53239_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53242(NOR53242_out,    NOR53240_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR53243(NOR53243_out,    WL09_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53244(NOR53244_out,    WL11_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53245(NOR53245_out,    L2GDG_,         L09_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53246(NOR53246_out,    WG1G_,          WL10_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53247(NOR53247_out,    SA10,           NOR53243_out,   NOR53244_out,               reset, prop_clk);
    
    nor_3 #(1'b1) NOR53248(NOR53248_out,    NOR53245_out,   NOR53246_out,   G10,                        reset, prop_clk);
    assign G10_ = NOR53247_out & NOR53248_out;
    nor_2 #(1'b0) NOR53249(G10,             G10_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR53250(GEM10,           G10_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53251(NOR53251_out,    RGG_,           G10_,                                       reset, prop_clk);
    
    // RL10_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53257(A10_3_RL10_,     NOR53241_out,   NOR53242_out,   NOR53251_out,               reset, prop_clk);
    
    // RL10_ part 4
    // No cross-module fan-in
    nor_2 #(1'b0) NOR53258(A10_4_RL10_,     MDT10,          R1C,                                        reset, prop_clk);
    
    
    // WL10
    nor_1 #(1'b0) NOR53252(WL10,            RL10_,                                                      reset, prop_clk);
    
    // MWL10
    nor_1 #(1'b0) NOR53253(NOR53253_out,    RL10_,                                                      reset, prop_clk);
    assign MWL10 = NOR53253_out;
    
    // WL10_
    nor_1 #(1'b0) NOR53254(WL10_,           WL10,                                                       reset, prop_clk);
    // NOR53255 and NOR53256 omitted
    
    
    /**************************
    *
    *  Module A10 sheet 2
    *  Sheet number 2005257/2
    *
    **************************/
    
    // Bit column 11
    
    // CO14 part 1
    // No cross-module fan-in
    nor_3 #(1'b0) NOR53401(NOR53401_out,    XUY13_,         XUY11_,         CI11_,                      reset, prop_clk);
    
    // X register flip-flop
    nor_2 #(1'b0) NOR53402(NOR53402_out,    A2XG_,          A11_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR53403(NOR53403_out,    MONEX,          NOR53402_out,   NOR53404_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR53404(NOR53404_out,    NOR53403_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR53405(NOR53405_out,    WYLOG_,         WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53406(NOR53406_out,    WL10_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53407(NOR53407_out,    NOR53405_out,   NOR53406_out,   NOR53408_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53408(NOR53408_out,    NOR53407_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR53409(NOR53409_out,    NOR53403_out,   NOR53407_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53410(XUY11_,          NOR53404_out,   NOR53408_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR53412(SUMA11_,         NOR53409_out,   CI11_,          XUY11_,                     reset, prop_clk);
        
    nor_2 #(1'b0) NOR53413(NOR53413_out,    NOR53409_out,   XUY11_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR53411(NOR53411_out,    CI11_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53415(SUMB11_,         NOR53413_out,   NOR53411_out,                               reset, prop_clk);
    
    nor_2 #(1'b0) NOR53414(CI12_,           NOR53409_out,   SUMA11_,                                    reset, prop_clk);
    
    nor_3 #(1'b0) NOR53417(NOR53417_out,    SUMA11_,        SUMB11_,        RULOG_,                     reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR53418(NOR53418_out,    WAG_,           WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53419(NOR53419_out,    WL13_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53420(A11_,            NOR53418_out,   NOR53419_out,   NOR53421_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53421(NOR53421_out,    A11_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53422(NOR53422_out,    RAG_,           A11_,                                       reset, prop_clk);
    
    // RL11_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53423(A10_1_RL11_,     NOR53417_out,   NOR53422_out,   CH11,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR53424(NOR53424_out,    WLG_,           WL11_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53425(NOR53425_out,    G14_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53426(L11_,            NOR53424_out,   NOR53425_out,   NOR53427_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53427(NOR53427_out,    L11_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR53428(NOR53428_out,    RLG_,           L11_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR53429(NOR53429_out,    WQG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53430(NOR53430_out,    NOR53429_out,   NOR53431_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53431(NOR53431_out,    NOR53430_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53432(NOR53432_out,    RQG_,           NOR53430_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR53434(NOR53434_out,    WZG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53435(Z11_,            NOR53434_out,   NOR53436_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53436(NOR53436_out,    Z11_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53437(NOR53437_out,    RZG_,           Z11_,                                       reset, prop_clk);
    
    // RL11_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53433(A10_2_RL11_,     NOR53428_out,   NOR53432_out,   NOR53437_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR53438(NOR53438_out,    WBG_,           WL11_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53439(NOR53439_out,    NOR53438_out,   NOR53440_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53440(NOR53440_out,    NOR53439_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53441(NOR53441_out,    RBLG_,          NOR53439_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53442(NOR53442_out,    NOR53440_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR53443(NOR53443_out,    WL10_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53444(NOR53444_out,    WL12_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53445(NOR53445_out,    L2GDG_,         L10_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53446(NOR53446_out,    WG1G_,          WL11_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53447(NOR53447_out,    SA11,           NOR53443_out,   NOR53444_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR53448(NOR53448_out,    NOR53445_out,   NOR53446_out,   G11,                        reset, prop_clk);
    assign G11_ = NOR53447_out & NOR53448_out;
    nor_2 #(1'b0) NOR53449(G11,             G11_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR53450(GEM11,           G11_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53451(NOR53451_out,    RGG_,           G11_,                                       reset, prop_clk);
    
    // RL11_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53457(A10_3_RL11_,     NOR53441_out,   NOR53442_out,   NOR53451_out,               reset, prop_clk);
    
    // RL11_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR53458(A10_4_RL11_,     MDT11,          R1C,                                        reset, prop_clk);
    
    // WL11
    nor_1 #(1'b0) NOR53452(WL11,            RL11_,                                                      reset, prop_clk);
    
    // MWL11
    nor_1 #(1'b0) NOR53453(NOR53453_out,    RL11_,                                                      reset, prop_clk);
    assign MWL11 = NOR53453_out;
    
    // WL11_
    nor_1 #(1'b0) NOR53454(WL11_,           WL11,                                                       reset, prop_clk);
    // NOR53455 and NOR53456 omitted
    
    // Bit column 12
    
    // CO14 part 2
    // No cross-module fan-in
    nor_2 #(1'b0) NOR53301(NOR53301_out,    XUY14_,         XUY12_,                                     reset, prop_clk);
    assign CO14 = NOR53401_out & NOR53301_out;
    
    // X register flip-flop
    nor_2 #(1'b0) NOR53302(NOR53302_out,    A2XG_,          A12_,                                       reset, prop_clk);
    
    nor_3 #(1'b1) NOR53303(NOR53303_out,    MONEX,          NOR53302_out,   NOR53304_out,               reset, prop_clk);
    nor_3 #(1'b0) NOR53304(NOR53304_out,    NOR53303_out,   CLXC,           CUG,                        reset, prop_clk);
    
    // Y register flip-flop
    nor_2 #(1'b0) NOR53305(NOR53305_out,    WYLOG_,         WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53306(NOR53306_out,    WL11_,          WYDG_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53307(NOR53307_out,    NOR53305_out,   NOR53306_out,   NOR53308_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53308(NOR53308_out,    NOR53307_out,   CUG,                                        reset, prop_clk);
    
    // Adder
    nor_2 #(1'b0) NOR53309(NOR53309_out,    NOR53303_out,   NOR53307_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53310(XUY12_,          NOR53304_out,   NOR53308_out,                               reset, prop_clk);
    
    nor_4 #(1'b0) NOR53312(SUMA12_,         NOR53309_out,   XUY12_,         CI12_,          WHOMP,      reset, prop_clk);
    // NOR54463 moved here from A11 sheet 2 and merged with NOR53312
    
    nor_2 #(1'b0) NOR53313(NOR53313_out,    NOR53309_out,   XUY12_,                                     reset, prop_clk);
    nor_1 #(1'b0) NOR53311(NOR53311_out,    CI12_,                                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53315(SUMB12_,         NOR53313_out,   NOR53311_out,                               reset, prop_clk);
    
    nor_3 #(1'b0) NOR53314(CI13_,           NOR53309_out,   SUMA12_,        CO12,                       reset, prop_clk);
    
    nor_3 #(1'b0) NOR53317(NOR53317_out,    SUMA12_,        SUMB12_,        RULOG_,                     reset, prop_clk);
    
    // A register flip-flop
    nor_2 #(1'b0) NOR53318(NOR53318_out,    WAG_,           WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53319(NOR53319_out,    WL14_,          WALSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53320(A12_,            NOR53318_out,   NOR53319_out,   NOR53321_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53321(NOR53321_out,    A12_,           CAG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53322(NOR53322_out,    RAG_,           A12_,                                       reset, prop_clk);
    
    // RL12_ part 1
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53323(A10_1_RL12_,     NOR53317_out,   NOR53322_out,   CH12,                       reset, prop_clk);
    
    // L register flip-flop
    nor_2 #(1'b0) NOR53324(NOR53324_out,    WLG_,           WL12_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53325(NOR53325_out,    G15_,           G2LSG_,                                     reset, prop_clk);
    
    nor_3 #(1'b1) NOR53326(L12_,            NOR53324_out,   NOR53325_out,   NOR53327_out,               reset, prop_clk);
    nor_2 #(1'b0) NOR53327(NOR53327_out,    L12_,           CLG1G,                                      reset, prop_clk);
    
    nor_2 #(1'b0) NOR53328(NOR53328_out,    RLG_,           L12_,                                       reset, prop_clk);
    
    // Q register flip-flop
    nor_2 #(1'b0) NOR53329(NOR53329_out,    WQG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53330(NOR53330_out,    NOR53329_out,   NOR53331_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53331(NOR53331_out,    NOR53330_out,   CQG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53332(NOR53332_out,    RQG_,           NOR53330_out,                               reset, prop_clk);
    
    // Z register flip-flop
    nor_2 #(1'b0) NOR53334(NOR53334_out,    WZG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53335(Z12_,            NOR53334_out,   NOR53336_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53336(NOR53336_out,    Z12_,           CZG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53337(NOR53337_out,    RZG_,           Z12_,                                       reset, prop_clk);
    
    // RL12_ part 2
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53333(A10_2_RL12_,     NOR53328_out,   NOR53332_out,   NOR53337_out,               reset, prop_clk);
    
    // B register flip-flop
    nor_2 #(1'b0) NOR53338(NOR53338_out,    WBG_,           WL12_,                                      reset, prop_clk);
    
    nor_2 #(1'b1) NOR53339(NOR53339_out,    NOR53338_out,   NOR53340_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53340(NOR53340_out,    NOR53339_out,   CBG,                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR53341(NOR53341_out,    RBLG_,          NOR53339_out,                               reset, prop_clk);
    nor_2 #(1'b0) NOR53342(NOR53342_out,    NOR53340_out,   RCG_,                                       reset, prop_clk);
    
    // G register flip-flop
    nor_2 #(1'b0) NOR53343(NOR53343_out,    WL11_,          WG3G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53344(NOR53344_out,    WL13_,          WG4G_,                                      reset, prop_clk);
    nor_2 #(1'b0) NOR53345(NOR53345_out,    L2GDG_,         L11_,                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53346(NOR53346_out,    WG1G_,          WL12_,                                      reset, prop_clk);
    
    nor_3 #(1'b1) NOR53347(NOR53347_out,    SA12,           NOR53343_out,   NOR53344_out,               reset, prop_clk);
    nor_3 #(1'b1) NOR53348(NOR53348_out,    NOR53345_out,   NOR53346_out,   G12,                        reset, prop_clk);
    assign G12_ = NOR53347_out & NOR53348_out;
    nor_2 #(1'b0) NOR53349(G12,             G12_,           CGG,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR53350(GEM12,           G12_,                                                       reset, prop_clk);
    nor_2 #(1'b0) NOR53351(NOR53351_out,    RGG_,           G12_,                                       reset, prop_clk);
    
    // RL12_ part 3
    // Cross-module fan-in, connected to A15 sheet 1
    nor_3 #(1'b0) NOR53357(A10_3_RL12_,     NOR53341_out,   NOR53342_out,   NOR53351_out,               reset, prop_clk);
    
    // RL12_ part 4
    // Cross-module fan-in, connected to A15 sheet 1
    nor_2 #(1'b0) NOR53358(A10_4_RL12_,     MDT12,          R1C,                                        reset, prop_clk);
    
    
    // WL12
    nor_1 #(1'b0) NOR53352(WL12,            RL12_,                                                      reset, prop_clk);
    
    // MWL12
    nor_1 #(1'b0) NOR53353(NOR53353_out,    RL12_,                                                      reset, prop_clk);
    assign MWL12 = NOR53353_out;
    
    // WL12_
    nor_1 #(1'b0) NOR53354(WL12_,           WL12,                                                       reset, prop_clk);
    // NOR53355 and NOR53356 omitted
    
endmodule


