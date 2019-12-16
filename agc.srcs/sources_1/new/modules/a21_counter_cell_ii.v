`timescale 1ns / 1ps

module a21_counter_cell_ii(
    input wire C24A,
    input wire C25A,
    input wire C26A,
    input wire C27A,
    input wire C30A,
    input wire C31A,
    input wire C32A,
    input wire C33A,
    input wire C34A,
    input wire C35A,
    input wire C36A,
    input wire C37A,
    input wire C40A,
    input wire C41A,
    input wire C42A,
    input wire C43A,
    input wire C44A,
    input wire C45A,
    input wire C46A,
    input wire C47A,
    input wire C50A,
    input wire C51A,
    input wire C52A,
    input wire C53A,
    input wire C54A,
    input wire C55A,
    input wire C56A,
    input wire C57A,
    input wire C60A,
    
    input wire C32P,
    input wire C32M,
    input wire C33P,
    input wire C33M,
    input wire C34P,
    input wire C34M,
    input wire C35P,
    input wire C35M,
    input wire C36P,
    input wire C36M,
    input wire C37M,
    input wire C40M,
    input wire C41M,
    
    input wire RSCT_,
    input wire T12A,
    
    output wire CAD1,
    output wire CAD2,
    output wire CAD3,
    output wire CAD4,
    output wire CAD5,
    output wire CAD6,
    
    output wire INCSET_,
    output wire SHINC,
    output wire SHINC_,
    output wire SHANC,
    output wire SHANC_,
    output wire DINC,
    output wire DINC_,
    output wire SHIFT,
    output wire SHIFT_,
    output wire MINC,
    output wire MINC_,
    output wire PCDU,
    output wire PCDU_,
    output wire MCDU,
    output wire MCDU_,
    
    input wire reset,
    input wire prop_clk
    );
    
    
    /**************************
    *
    *  Module A21 sheet 1
    *  Sheet number 2005250/1
    *
    **************************/
    
    wire NOR32001_out;
    wire NOR32002_out;
    wire NOR32003_out;
    wire NOR32004_out;
    wire NOR32005_out;
    wire NOR32006_out;
    wire NOR32007_out;
    wire NOR32011_out;
    wire NOR32012_out;
    wire NOR32013_out;
    wire NOR32014_out;
    wire NOR32015_out;
    wire NOR32016_out;
    wire NOR32021_out;
    wire NOR32022_out;
    wire NOR32023_out;
    wire NOR32024_out;
    wire NOR32026_out;
    wire NOR32031_out;
    wire NOR32032_out;
    wire NOR32033_out;
    wire NOR32034_out;
    wire NOR32035_out;
    wire NOR32036_out;
    wire NOR32041_out;
    wire NOR32042_out;
    wire NOR32043_out;
    wire NOR32044_out;
    wire NOR32049_out;
    wire NOR32053_out;
    wire NOR32054_out;
    wire NOR32055_out;
    wire NOR32056_out;
    wire NOR32058_out;
    wire NOR32062_out;
    wire NOR32064_out;
    wire NOR32067_out;
    wire NOR32068_out;
    wire NOR32069_out;
    
    wire NOR35236_out;
    wire NOR35237_out;
    wire NOR35238_out;
    wire NOR35241_out;
    wire NOR35242_out;
    wire NOR35243_out;
    wire NOR35246_out;
    wire NOR35247_out;
    wire NOR35248_out;
    
    wire nCAD1_in;
    wire nCAD2_in;
    wire nCAD3_in;
    wire nCAD5_in;
    wire nCAD6_in;
    
    wire n32004K;
    wire n32034K;
    wire n30SUM;
    wire n50SUM;
    
    wire C42M;
    wire C43M;
    wire C44M;
    
    wire C45P;
    wire C45M;
    wire C46P;
    wire C46M;
    
    wire nSHINCSET_;
    wire nSHANCSET_;
    wire nDINCSET_;
    wire DINCNC_;
    wire nMINCSET_;
    wire nPCDUSET_;
    wire nMCDUSET_;
    
    // CAD1
    nor_3 #(1'b0) NOR32001(NOR32001_out,    C25A,           C27A,           C31A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32011(NOR32011_out,    C33A,           C35A,           C37A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32021(NOR32021_out,    C41A,           C43A,           C45A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32031(NOR32031_out,    C47A,           C51A,           C53A,                           reset, prop_clk);
    nor_2 #(1'b0) NOR32041(NOR32041_out,    C55A,           C57A,                                           reset, prop_clk);
    assign nCAD1_in = NOR32001_out & NOR32011_out & NOR32021_out & NOR32031_out & NOR32041_out;
    nor_2 #(1'b0) NOR32051(CAD1,            RSCT_,          nCAD1_in,                                       reset, prop_clk);
    
    // CAD2
    nor_3 #(1'b0) NOR32002(NOR32002_out,    C26A,           C27A,           C32A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32012(NOR32012_out,    C33A,           C36A,           C37A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32022(NOR32022_out,    C42A,           C43A,           C46A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32032(NOR32032_out,    C47A,           C52A,           C53A,                           reset, prop_clk);
    nor_2 #(1'b0) NOR32042(NOR32042_out,    C56A,           C57A,                                           reset, prop_clk);
    assign nCAD2_in = NOR32002_out & NOR32012_out & NOR32022_out & NOR32032_out & NOR32042_out;
    nor_2 #(1'b0) NOR32052(CAD2,            RSCT_,          nCAD2_in,                                       reset, prop_clk);
    
    // CAD3
    nor_3 #(1'b0) NOR32003(NOR32003_out,    C24A,           C25A,           C26A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32013(NOR32013_out,    C27A,           C34A,           C35A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32023(NOR32023_out,    C36A,           C37A,           C44A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32033(NOR32033_out,    C45A,           C46A,           C47A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32043(NOR32043_out,    C54A,           C55A,           C56A,                           reset, prop_clk);
    nor_1 #(1'b0) NOR32053(NOR32053_out,    C57A,                                                           reset, prop_clk);
    assign nCAD3_in = NOR32003_out & NOR32013_out & NOR32023_out & NOR32033_out & NOR32043_out & NOR32053_out;
    nor_2 #(1'b0) NOR32063(CAD3,            RSCT_,          nCAD3_in,                                       reset, prop_clk);
    
    // CAD4
    nor_3 #(1'b0) NOR32004(NOR32004_out,    C30A,           C31A,           C32A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32014(NOR32014_out,    C33A,           C34A,           C35A,                           reset, prop_clk);
    nor_2 #(1'b0) NOR32024(NOR32024_out,    C36A,           C37A,                                           reset, prop_clk);
    assign n32004K = NOR32004_out & NOR32014_out & NOR32024_out;
    nor_1 #(1'b0) NOR32064(n30SUM,          n32004K,                                                        reset, prop_clk);
    
    nor_3 #(1'b0) NOR32034(NOR32034_out,    C50A,           C51A,           C52A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32044(NOR32044_out,    C53A,           C54A,           C55A,                           reset, prop_clk);
    nor_2 #(1'b0) NOR32054(NOR32054_out,    C56A,           C57A,                                           reset, prop_clk);
    assign n32034K = NOR32034_out & NOR32044_out & NOR32054_out;
    nor_1 #(1'b0) NOR32050(n50SUM,          n32034K,                                                        reset, prop_clk);
    
    nor_2 #(1'b0) NOR32007(NOR32007_out,    n30SUM,         n50SUM,                                         reset, prop_clk);
    nor_2 #(1'b0) NOR32008(CAD4,            RSCT_,          NOR32007_out,                                   reset, prop_clk);
    
    // CAD5
    nor_3 #(1'b0) NOR32005(NOR32005_out,    C24A,           C25A,           C26A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32015(NOR32015_out,    C27A,           n30SUM,         C60A,                           reset, prop_clk);
    // NOR32025 removed (no inputs)
    assign nCAD5_in = NOR32005_out & NOR32015_out;
    nor_2 #(1'b0) NOR32035(CAD5,            RSCT_,          nCAD5_in,                                       reset, prop_clk);
    
    // CAD6
    nor_3 #(1'b0) NOR32006(NOR32006_out,    C40A,           C41A,           C42A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32016(NOR32016_out,    C43A,           C44A,           C45A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32026(NOR32026_out,    C46A,           C47A,           n50SUM,                         reset, prop_clk);
    nor_1 #(1'b0) NOR32036(NOR32036_out,    C60A,                                                           reset, prop_clk);
    assign nCAD6_in = NOR32006_out & NOR32016_out & NOR32026_out & NOR32036_out;
    nor_2 #(1'b0) NOR32046(CAD6,            RSCT_,          nCAD6_in,                                       reset, prop_clk);
    
    // SHINC
    nor_2 #(1'b0) NOR32055(NOR32055_out,    C45M,           C46M,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR32056(NOR32056_out,    C57A,           C60A,                                           reset, prop_clk);
    // NOR32057 removed (no inputs)
    assign nSHINCSET_ = NOR32055_out & NOR32056_out;
    nor_2 #(1'b0) NOR32058(NOR32058_out,    INCSET_,        nSHINCSET_,                                     reset, prop_clk);
    nor_2 #(1'b1) NOR32059(SHINC_,          NOR32058_out,   SHINC,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR32060(SHINC,           SHINC_,         T12A,                                           reset, prop_clk);
    
    // SHANC
    nor_2 #(1'b0) NOR32061(nSHANCSET_,      C45P,           C46P,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR32062(NOR32062_out,    INCSET_,        nSHANCSET_,                                     reset, prop_clk);
    nor_2 #(1'b1) NOR32065(SHANC_,          NOR32062_out,   SHANC,                                          reset, prop_clk);
    nor_2 #(1'b0) NOR32066(SHANC,           SHANC_,         T12A,                                           reset, prop_clk);
    
    // SHIFT (moved here from A12 sheet 2)
    nor_2 #(1'b0) NOR34340(SHIFT_,          SHINC,          SHANC,                                          reset, prop_clk);
    nor_1 #(1'b0) NOR34362(SHIFT,           SHIFT_,                                                         reset, prop_clk);
    
    // DINC
    nor_3 #(1'b0) NOR32067(NOR32067_out,    C31A,           C47A,           C50A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32068(NOR32068_out,    C51A,           C52A,           C53A,                           reset, prop_clk);
    nor_3 #(1'b0) NOR32069(NOR32069_out,    C54A,           C55A,           C56A,                           reset, prop_clk);
    assign nDINCSET_ = NOR32067_out & NOR32068_out & NOR32069_out;
    nor_2 #(1'b0) NOR32049(NOR32049_out,    INCSET_,        nDINCSET_,                                      reset, prop_clk);
    nor_2 #(1'b1) NOR32048(DINCNC_,         NOR32049_out,   DINC,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR32047(DINC,            DINCNC_,        T12A,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR32045(DINC_,           DINC,                                                           reset, prop_clk);
    
    // MINC (moved here from A15 sheet 1)
    nor_3 #(1'b0) NOR35237(NOR35237_out,    C42M,           C43M,           C44M,                           reset, prop_clk);
    nor_3 #(1'b0) NOR35236(NOR35236_out,    C37M,           C40M,           C41M,                           reset, prop_clk);
    assign nMINCSET_ = NOR35237_out & NOR35236_out;
    nor_2 #(1'b0) NOR35238(NOR35238_out,    INCSET_,        nMINCSET_,                                      reset, prop_clk);
    nor_2 #(1'b1) NOR35239(MINC_,           NOR35238_out,   MINC,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35240(MINC,            MINC_,          T12A,                                           reset, prop_clk);
    
    // PCDU (moved here from A15 sheet 1);
    nor_3 #(1'b0) NOR35241(NOR35241_out,    C32P,           C33P,           C34P,                           reset, prop_clk);
    nor_2 #(1'b0) NOR35242(NOR35242_out,    C35P,           C36P,                                           reset, prop_clk);
    assign nPCDUSET_ = NOR35241_out & NOR35242_out;
    nor_2 #(1'b0) NOR35243(NOR35243_out,    INCSET_,        nPCDUSET_,                                      reset, prop_clk);
    nor_2 #(1'b1) NOR35244(PCDU_,           NOR35243_out,   PCDU,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35245(PCDU,            PCDU_,          T12A,                                           reset, prop_clk);
    
    // MCDU (moved here from A15 sheet 1);
    nor_3 #(1'b0) NOR35246(NOR35246_out,    C32M,           C33M,           C34M,                           reset, prop_clk);
    nor_2 #(1'b0) NOR35247(NOR35247_out,    C35M,           C36M,                                           reset, prop_clk);
    assign nMCDUSET_ = NOR35246_out & NOR35247_out;
    nor_2 #(1'b0) NOR35248(NOR35248_out,    INCSET_,        nMCDUSET_,                                      reset, prop_clk);
    nor_2 #(1'b1) NOR35249(MCDU_,           NOR35248_out,   MCDU,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR35250(MCDU,            MCDU_,          T12A,                                           reset, prop_clk);
    
endmodule
