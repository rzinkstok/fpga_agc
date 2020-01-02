`timescale 1ns / 1ps


module b12_erasable_memory(
    input wire XB0E,
    input wire XB1E,
    input wire XB2E,
    input wire XB3E,
    input wire XB4E,
    input wire XB5E,
    input wire XB6E,
    input wire XB7E,
    
    input wire XT0E,
    input wire XT1E,
    input wire XT2E,
    input wire XT3E,
    input wire XT4E,
    input wire XT5E,
    input wire XT6E,
    input wire XT7E,
    
    input wire YB0E,
    input wire YB1E,
    input wire YB2E,
    input wire YB3E,
    
    input wire YT0E,
    input wire YT1E,
    input wire YT2E,
    input wire YT3E,
    input wire YT4E,
    input wire YT5E,
    input wire YT6E,
    input wire YT7E,
    
    input wire SETEK,
    input wire RSTKX_,
    input wire RSTKY_,
    input wire ZID,
    input wire SBE,
    input wire REX,
    input wire REY,
    input wire WEX,
    input wire WEY,
    
    input wire GEM01,
    input wire GEM02,
    input wire GEM03,
    input wire GEM04,
    input wire GEM05,
    input wire GEM06,
    input wire GEM07,
    input wire GEM08,
    input wire GEM09,
    input wire GEM10,
    input wire GEM11,
    input wire GEM12,
    input wire GEM13,
    input wire GEM14,
    input wire GEMP,
    input wire GEM16,
    
    output wire B12_1_SA01,
    output wire B12_1_SA02,
    output wire B12_1_SA03,
    output wire B12_1_SA04,
    output wire B12_1_SA05,
    output wire B12_1_SA06,
    output wire B12_1_SA07,
    output wire B12_1_SA08,
    output wire B12_1_SA09,
    output wire B12_1_SA10,
    output wire B12_1_SA11,
    output wire B12_1_SA12,
    output wire B12_1_SA13,
    output wire B12_1_SA14,
    output wire B12_1_SAP,
    output wire B12_1_SA16,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire reset,
    input wire prop_clk
    );
    
    wire NOR00001_out;
    wire NOR00002_out;
    wire NOR00003_out;
    wire NOR00004_out;
    wire NOR00005_out;
    wire NOR00006_out;
    wire NOR00007_out;
    wire NOR00008_out;
    wire NOR00009_out;
    wire NOR00010_out;
    wire NOR00011_out;
    wire NOR00012_out;
    wire NOR00015_out;
    wire NOR00016_out;
    wire NOR00017_out;
    wire NOR00018_out;
    wire NOR00019_out;
    wire NOR00020_out;
    wire NOR00023_out;
    wire NOR00024_out;
    wire NOR00026_out;
    wire NOR00027_out;
    wire NOR00029_out;
    wire NOR00030_out;
    wire NOR00032_out;
    wire NOR00033_out;
    wire NOR00035_out;
    wire NOR00036_out;
    wire NOR00038_out;
    wire NOR00039_out;
    wire NOR00041_out;
    wire NOR00042_out;
    wire NOR00044_out;
    wire NOR00045_out;
    wire NOR00047_out;
    wire NOR00048_out;
    wire NOR00050_out;
    wire NOR00051_out;
    wire NOR00053_out;
    wire NOR00054_out;
    
    wire ES01_;
    wire ES02_;
    wire ES03_;
    wire ES04_;
    wire ES05_;
    wire ES06_;
    wire ES07_;
    wire ES08_;
    wire ES09_;
    wire ES10_;
    wire ES11_;
    
    wire EADDR01;
    wire EADDR02;
    wire EADDR03;
    wire EADDR04;
    wire EADDR05;
    wire EADDR06;
    wire EADDR07;
    wire EADDR08;
    wire EADDR09;
    wire EADDR10;
    wire EADDR11;
    
    wire SETEK_;
    wire RESETK;
    
    wire WEX_;
    wire WEY_;
    wire WE;
    wire WE_;
    wire write_enable;
    wire output_enable;
  
    wire [10:0] address;
    wire [15:0] read_word;
    wire [15:0] write_word;
    wire [15:0] sensed_word;
    
    
    // Translate address signals to an 11 bit address
    
    // X bottom determines ES01_, ES02_ and ES03_
    nor_3 #(1'b0) NOR00001(NOR00001_out,    XB1E,           XB3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00002(NOR00002_out,    XB5E,           XB7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES01_ = NOR00001_out & NOR00002_out;
    
    nor_3 #(1'b0) NOR00003(NOR00003_out,    XB2E,           XB3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00004(NOR00004_out,    XB6E,           XB7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES02_ = NOR00003_out & NOR00004_out;
    
    nor_3 #(1'b0) NOR00005(NOR00005_out,    XB4E,           XB5E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00006(NOR00006_out,    XB6E,           XB7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES03_ = NOR00005_out & NOR00006_out;
    
    
    // X top determines ES04_, ES05_ and ES06_
    nor_3 #(1'b0) NOR00007(NOR00007_out,    XT1E,           XT3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00008(NOR00008_out,    XT5E,           XT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES04_ = NOR00007_out & NOR00008_out;
    
    nor_3 #(1'b0) NOR00009(NOR00009_out,    XT2E,           XT3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00010(NOR00010_out,    XT6E,           XT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES05_ = NOR00009_out & NOR00010_out;
    
    nor_3 #(1'b0) NOR00011(NOR00011_out,    XT4E,           XT5E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00012(NOR00012_out,    XT6E,           XT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES06_ = NOR00011_out & NOR00012_out;
    
    
    // Y bottom determines ES07_ and ES08_
    nor_3 #(1'b0) NOR00013(ES07_,           YB1E,           YB3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00014(ES08_,           YB2E,           YB3E,           n0VDCA, p4VDC, reset, prop_clk);
    
    
    // Y top determines ES09_, ES10_ and ES11_
    nor_3 #(1'b0) NOR00015(NOR00015_out,    YT1E,           YT3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00016(NOR00016_out,    YT5E,           YT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES09_ = NOR00015_out & NOR00016_out;
    
    nor_3 #(1'b0) NOR00017(NOR00017_out,    YT2E,           YT3E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00018(NOR00018_out,    YT6E,           YT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES10_ = NOR00017_out & NOR00018_out;
    
    nor_3 #(1'b0) NOR00019(NOR00019_out,    YT4E,           YT5E,           n0VDCA, p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00020(NOR00020_out,    YT6E,           YT7E,           n0VDCA, p4VDC, reset, prop_clk);
    assign ES11_ = NOR00019_out & NOR00020_out;
   
    
    // Flip-flops to latch the address at SETEK
    nor_3 #(1'b0) NOR00021(SETEK_,          SETEK,          n0VDCA,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00022(RESETK,          RSTKX_,         RSTKY_,         ZID,    p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00023(NOR00023_out,    ES01_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00024(NOR00024_out,    NOR00023_out,   EADDR01,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00025(EADDR01,         NOR00024_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00026(NOR00026_out,    ES02_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00027(NOR00027_out,    NOR00026_out,   EADDR02,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00028(EADDR02,         NOR00027_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00029(NOR00029_out,    ES03_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00030(NOR00030_out,    NOR00029_out,   EADDR03,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00031(EADDR03,         NOR00030_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00032(NOR00032_out,    ES04_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00033(NOR00033_out,    NOR00032_out,   EADDR04,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00034(EADDR04,         NOR00033_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00035(NOR00035_out,    ES05_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00036(NOR00036_out,    NOR00035_out,   EADDR05,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00037(EADDR05,         NOR00036_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00038(NOR00038_out,    ES06_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00039(NOR00039_out,    NOR00038_out,   EADDR06,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00040(EADDR06,         NOR00039_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00041(NOR00041_out,    ES07_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00042(NOR00042_out,    NOR00041_out,   EADDR07,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00043(EADDR07,         NOR00042_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00044(NOR00044_out,    ES08_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00045(NOR00045_out,    NOR00044_out,   EADDR08,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00046(EADDR08,         NOR00045_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00047(NOR00047_out,    ES09_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00048(NOR00048_out,    NOR00047_out,   EADDR09,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00049(EADDR09,         NOR00048_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00050(NOR00050_out,    ES10_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00051(NOR00051_out,    NOR00050_out,   EADDR10,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00052(EADDR10,         NOR00051_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    nor_3 #(1'b0) NOR00053(NOR00053_out,    ES11_,          SETEK_,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b1) NOR00054(NOR00054_out,    NOR00053_out,   EADDR11,        n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00055(EADDR11,         NOR00054_out,   RESETK,         n0VDCA, p4VDC,  reset, prop_clk);
    
    assign address = {EADDR11, EADDR10, EADDR09, EADDR08, EADDR07, EADDR06, EADDR05, EADDR04, EADDR03, EADDR02, EADDR01};
    
    
    // Write enable
    // Maybe add a REX/REY connection to erase the word at read time
    nor_3 #(1'b0) NOR00056(WEX_,            WEX,            n0VDCA,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00057(WEY_,            WEY,            n0VDCA,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00058(WE,              WEX_,           WEY_,           n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00059(WE_,             WE,             n0VDCA,         n0VDCA, p4VDC,  reset, prop_clk);
    nor_3 #(1'b0) NOR00060(write_enable,    WE_,            n0VDCA,         n0VDCA, p4VDC,  reset, prop_clk);
    
    
    // Output enable
    assign output_enable = SBE;
    
    
    // Output word to sense amplifiers
    assign sensed_word = output_enable ? read_word : 16'b0;
    assign B12_1_SA01 = sensed_word[0];
    assign B12_1_SA02 = sensed_word[1];
    assign B12_1_SA03 = sensed_word[2];
    assign B12_1_SA04 = sensed_word[3];
    assign B12_1_SA05 = sensed_word[4];
    assign B12_1_SA06 = sensed_word[5];
    assign B12_1_SA07 = sensed_word[6];
    assign B12_1_SA08 = sensed_word[7];
    assign B12_1_SA09 = sensed_word[8];
    assign B12_1_SA10 = sensed_word[9];
    assign B12_1_SA11 = sensed_word[10];
    assign B12_1_SA12 = sensed_word[11];
    assign B12_1_SA13 = sensed_word[12];
    assign B12_1_SA14 = sensed_word[13];
    assign B12_1_SAP = sensed_word[14];
    assign B12_1_SA16 = sensed_word[15];
    
    
    // Perhaps toggle it with ZID
    assign write_word = {GEM16, GEMP, GEM14, GEM13, GEM12, GEM11, GEM10, GEM09, GEM08, GEM07, GEM06, GEM05, GEM04, GEM03, GEM02, GEM01};
    
    
    // The memory itself
    core_memory ram(
        .clka(prop_clk),
        .wea(write_enable),
        .addra(address),
        .dina(write_word),
        .douta(read_word)
    );

endmodule
