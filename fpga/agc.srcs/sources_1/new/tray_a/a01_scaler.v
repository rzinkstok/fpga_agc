`timescale 1ns / 1ps

module a01_scaler(
    input wire FS01_,
    input wire RCHAT_, 
    input wire RCHBT_,

    output wire FS02,
    output wire F02B,
    output wire FS03,
    output wire F03B_,
    output wire FS04,
    output wire F04A, 
    output wire F04B,
    output wire FS05, 
    output wire FS05_,
    output wire F05A_,
    output wire F05B_, 
    output wire F05D,
    output wire FS06, 
    output wire FS06_,
    output wire F06B_,
    output wire FS07_, 
    output wire FS07A, 
    output wire F07A, 
    output wire F07A_, 
    output wire F07B, 
    output wire F07B_, 
    output wire F07C_, 
    output wire F07D_,
    output wire FS08, 
    output wire FS08_,
    output wire F08B,
    output wire FS09, 
    output wire FS09_,
    output wire F09A_, 
    output wire F09B, 
    output wire F09B_, 
    output wire F09D,
    output wire FS10, 
    output wire F10A, 
    output wire F10A_, 
    output wire F10B, 
    output wire F10B_,
    output wire F12B,
    output wire FS13,
    output wire FS14,
    output wire F14B,
    output wire FS16,
    output wire FS17, 
    output wire F17A, 
    output wire F17A_, 
    output wire F17B, 
    output wire F17B_,
    output wire F18B_, 
    output wire F18AX,
    output wire CHAT01,
    output wire CHAT02, 
    output wire CHAT03, 
    output wire CHAT04, 
    output wire CHAT05, 
    output wire CHAT06, 
    output wire CHAT07, 
    output wire CHAT08, 
    output wire CHAT09, 
    output wire CHAT10, 
    output wire CHAT11, 
    output wire CHAT12, 
    output wire CHAT13, 
    output wire CHAT14,
    output wire CHBT01, 
    output wire CHBT02, 
    output wire CHBT03, 
    output wire CHBT04, 
    output wire CHBT05, 
    output wire CHBT06, 
    output wire CHBT07,
    output wire CHBT08, 
    output wire CHBT09, 
    output wire CHBT10, 
    output wire CHBT11, 
    output wire CHBT12, 
    output wire CHBT13, 
    output wire CHBT14,

    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
);

    /**************************
    *
    *  Module A1 sheet 1
    *  Sheet number 2005259/1
    *
    ***************************/
    
    wire NOR38103_out;
    wire NOR38104_out;
    wire NOR38105_out;
    wire NOR38113_out;
    wire NOR38114_out;
    wire NOR38115_out;
    wire NOR38123_out;
    wire NOR38124_out;
    wire NOR38125_out;
    wire NOR38133_out;
    wire NOR38134_out;
    wire NOR38135_out;
    wire NOR38143_out;
    wire NOR38144_out;
    wire NOR38145_out;
    wire NOR38153_out;
    wire NOR38154_out;
    wire NOR38155_out;
    wire NOR38163_out;
    wire NOR38164_out;
    wire NOR38165_out;
    wire NOR38173_out;
    wire NOR38174_out;
    wire NOR38175_out;
    
    wire NOR38203_out;
    wire NOR38204_out;
    wire NOR38205_out;
    wire NOR38213_out;
    wire NOR38214_out;
    wire NOR38215_out;
    wire NOR38223_out;
    wire NOR38224_out;
    wire NOR38225_out;
    wire NOR38233_out;
    wire NOR38234_out;
    wire NOR38235_out;
    wire NOR38243_out;
    wire NOR38244_out;
    wire NOR38245_out;
    wire NOR38253_out;
    wire NOR38254_out;
    wire NOR38255_out;    
    wire NOR38263_out;
    wire NOR38264_out;
    wire NOR38265_out;   
    wire NOR38273_out;
    wire NOR38274_out;
    wire NOR38275_out;
    
    wire NOR49351_out;
    wire NOR49355_out;
    wire NOR49356_out;
    
    wire F02A;
    wire FS02A;
    wire F03A;
    wire F03B;
    wire FS03A;
    wire FS04A;
    wire F04B_;
    wire F05A;
    wire F05B;
    wire FS05A;
    wire F06A;
    wire F06B;
    wire FS07;
    wire F08A;
    wire F08B_;
    wire F09A;
    wire F11A;
    wire F11B;
    wire FS11;
    wire F12A;
    wire FS12;
    wire F13A;
    wire F13B;
    wire F14A;
    wire F15A;
    wire F15B;
    wire FS15;
    wire F16A;
    wire F16B;
    wire F18A;
    wire F18A_;
    wire F18B;
    wire FS18;
    wire F19A;
    wire F19B;
    wire FS19;
    wire F20A;
    wire F20B;
    wire FS20;
    wire F21A;
    wire F21B;
    wire FS21;
    wire F22A;
    wire F22B;
    wire FS22;
    wire F23A;
    wire F23B;
    wire FS23;
    wire F24A;
    wire F24B;
    wire FS24;
    wire F25A;
    wire F25B;
    wire FS25;
    wire F26A;
    wire F26B;
    wire FS26;
    wire F27A;
    wire F27B;
    wire FS27;
    wire F28A;
    wire F28B;
    wire FS28;
    wire F29A;
    wire F29B;
    wire FS29;
    wire F30A;
    wire F30B;
    wire FS30;
    wire F31A;
    wire F31B;
    wire FS31;
    wire F32A;
    wire F32B;
    wire FS32;
    wire F33A;
    wire F33B;
    wire FS33;


    // Stage 2
    nor_3 #(1'b0)  NOR38201(FS02A,          NOR38204_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38202(F02A,           NOR38204_out,   NOR38203_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38203(NOR38203_out,   F02A,           FS01_,          NOR38205_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38204(NOR38204_out,   NOR38203_out,   FS02,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38205(NOR38205_out,   NOR38203_out,   FS01_,          F02B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38206(FS02,           NOR38204_out,   NOR38205_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38207(F02B,           NOR38205_out,   FS02,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38208 - NOR38210 not used
    
    
    // Stage 3
    nor_3 #(1'b0)  NOR38211(FS03A,          NOR38214_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38212(F03A,           NOR38214_out,   NOR38213_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38213(NOR38213_out,   F03A,           F02A,           NOR38215_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38214(NOR38214_out,   NOR38213_out,   FS03,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38215(NOR38215_out,   NOR38213_out,   F02A,           F03B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38216(FS03,           NOR38214_out,   NOR38215_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38217(F03B,           NOR38215_out,   FS03,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38218 - NOR38220 not used
    
    // F03B_ moved here from sheet 2
    nor_3 #(1'b0)  NOR38491(F03B_,          F03B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    
    // Stage 4
    nor_3 #(1'b0)  NOR38221(FS04A,          NOR38224_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38222(F04A,           NOR38224_out,   NOR38223_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38223(NOR38223_out,   F04A,           F03A,           NOR38225_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38224(NOR38224_out,   NOR38223_out,   FS04,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38225(NOR38225_out,   NOR38223_out,   F03A,           F04B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38226(FS04,           NOR38224_out,   NOR38225_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38227(F04B,           NOR38225_out,   FS04,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38228 - NOR38230 not used
    
    // F04B_ moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49418(F04B_,          F04B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 5
    nor_3 #(1'b0)  NOR38231(FS05A,          NOR38234_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38232(F05A,           NOR38234_out,   NOR38233_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38233(NOR38233_out,   F05A,           F04A,           NOR38235_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38234(NOR38234_out,   NOR38233_out,   FS05,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38235(NOR38235_out,   NOR38233_out,   F04A,           F05B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38236(FS05,           NOR38234_out,   NOR38235_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38237(F05B,           NOR38235_out,   FS05,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38238 - NOR38240 not used
    
    // FS05_ moved here from A24 sheet 1
    nor_3 #(1'b0)  NOR49205(FS05_,          FS05,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // F05A_ moved here from A24 sheet 1
    nor_3 #(1'b0)  NOR49230(F05A_,          F05A,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // F05B_ moved here from A24 sheet 1
    nor_3 #(1'b0)  NOR49232(F05B_,          F05B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // F05D moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49420(F05D,           F04B_,          FS05_,          n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 6
    nor_3 #(1'b0)  NOR38241(CHAT01,         RCHAT_,         NOR38244_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38242(F06A,           NOR38244_out,   NOR38243_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38243(NOR38243_out,   F06A,           F05A,           NOR38245_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38244(NOR38244_out,   NOR38243_out,   FS06,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38245(NOR38245_out,   NOR38243_out,   F05A,           F06B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38246(FS06,           NOR38244_out,   NOR38245_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38247(F06B,           NOR38245_out,   FS06,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38248 - NOR38250 not used
    
    // FS06_
    nor_3 #(1'b0)  NOR38190(FS06_,          FS06,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F06B_ moved here from A19 sheet 2
    nor_3 #(1'b0)  NOR46316(F06B_,          F06B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 7
    nor_3 #(1'b0)  NOR38251(CHAT02,         RCHAT_,         NOR38254_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38252(F07A,           NOR38254_out,   NOR38253_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38253(NOR38253_out,   F07A,           F06A,           NOR38255_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38254(NOR38254_out,   NOR38253_out,   FS07,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38255(NOR38255_out,   NOR38253_out,   F06A,           F07B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38256(FS07,           NOR38254_out,   NOR38255_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38257(F07B,           NOR38255_out,   FS07,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38258 - NOR38260 not used
    
    // FS07_
    nor_3 #(1'b0)  NOR38191(FS07_,          FS07,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // FS07A
    nor_3 #(1'b0)  NOR38291(FS07A,          FS07_,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F07A_ moved here from sheet 2
    nor_3 #(1'b0)  NOR38391(F07A_,          F07A,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F07B_ moved here from A24 sheet 1
    nor_3 #(1'b0)  NOR49234(F07B_,          F07B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F07C_ and F07D_ moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49355(NOR49355_out,   FS07_,          F06B_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49356(NOR49356_out,   F06B_,          FS07A,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49357(F07D_,          NOR49355_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49358(F07C_,          NOR49356_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 8
    nor_3 #(1'b0)  NOR38261(CHAT03,         RCHAT_,         NOR38264_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38262(F08A,           NOR38264_out,   NOR38263_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38263(NOR38263_out,   F08A,           F07A,           NOR38265_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38264(NOR38264_out,   NOR38263_out,   FS08,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38265(NOR38265_out,   NOR38263_out,   F07A,           F08B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38266(FS08,           NOR38264_out,   NOR38265_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38267(F08B,           NOR38265_out,   FS08,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38268 - NOR38270 not used
    
    // FS08_
    nor_3 #(1'b0)  NOR38290(FS08_,          FS08,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F08B_ moved here from A13 sheet 1
    nor_3 #(1'b0)  NOR41241(F08B_,          F08B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    
    // Stage 9
    nor_3 #(1'b0)  NOR38271(CHAT04,         RCHAT_,         NOR38274_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38272(F09A,           NOR38274_out,   NOR38273_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38273(NOR38273_out,   F09A,           F08A,           NOR38275_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38274(NOR38274_out,   NOR38273_out,   FS09,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38275(NOR38275_out,   NOR38273_out,   F08A,           F09B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38276(FS09,           NOR38274_out,   NOR38275_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38277(F09B,           NOR38275_out,   FS09,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38278 - NOR38289 not used
    
    // F09B_ moved here from A19 sheet 2
    nor_3 #(1'b0)  NOR46312(F09B_,          F09B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // F09A_ moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49353(F09A_,          F09A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // F09D_ and FS09_ moved here from A24 sheet 2
    nor_3 #(1'b0)  NOR49348(FS09_,          FS09,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49351(NOR49351_out,   F08B_,          F08B_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49352(F09D,           NOR49351_out,   FS09_,          n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 10
    nor_3 #(1'b0)  NOR38101(CHAT05,         RCHAT_,         NOR38104_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38102(F10A,           NOR38104_out,   NOR38103_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38103(NOR38103_out,   F10A,           F09A,           NOR38105_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38104(NOR38104_out,   NOR38103_out,   FS10,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38105(NOR38105_out,   NOR38103_out,   F09A,           F10B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38106(FS10,           NOR38104_out,   NOR38105_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38107(F10B,           NOR38105_out,   FS10,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38108 - NOR38110 not used
    
    // F10A_ moved here from A19 sheet 2
    nor_3 #(1'b0)  NOR46314(F10A_,          F10A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // F10B_ moved here from A19 sheet 2
    nor_3 #(1'b0)  NOR46309(F10B_,          F10B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // Stage 11
    nor_3 #(1'b0)  NOR38111(CHAT06,         RCHAT_,         NOR38114_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38112(F11A,           NOR38114_out,   NOR38113_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38113(NOR38113_out,   F11A,           F10A,           NOR38115_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38114(NOR38114_out,   NOR38113_out,   FS11,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38115(NOR38115_out,   NOR38113_out,   F10A,           F11B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38116(FS11,           NOR38114_out,   NOR38115_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38117(F11B,           NOR38115_out,   FS11,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38118 - NOR38120 not used
    
    
    // Stage 12
    nor_3 #(1'b0)  NOR38121(CHAT07,         RCHAT_,         NOR38124_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38122(F12A,           NOR38124_out,   NOR38123_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38123(NOR38123_out,   F12A,           F11A,           NOR38125_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38124(NOR38124_out,   NOR38123_out,   FS12,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38125(NOR38125_out,   NOR38123_out,   F11A,           F12B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38126(FS12,           NOR38124_out,   NOR38125_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38127(F12B,           NOR38125_out,   FS12,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38128 - NOR38130 not used
    
    
    // Stage 13
    nor_3 #(1'b0)  NOR38131(CHAT08,         RCHAT_,         NOR38134_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38132(F13A,           NOR38134_out,   NOR38133_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38133(NOR38133_out,   F13A,           F12A,           NOR38135_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38134(NOR38134_out,   NOR38133_out,   FS13,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38135(NOR38135_out,   NOR38133_out,   F12A,           F13B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38136(FS13,           NOR38134_out,   NOR38135_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38137(F13B,           NOR38135_out,   FS13,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38138 - NOR38140 not used
    
    
    // Stage 14
    nor_3 #(1'b0)  NOR38141(CHAT09,         RCHAT_,         NOR38144_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38142(F14A,           NOR38144_out,   NOR38143_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38143(NOR38143_out,   F14A,           F13A,           NOR38145_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38144(NOR38144_out,   NOR38143_out,   FS14,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38145(NOR38145_out,   NOR38143_out,   F13A,           F14B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38146(FS14,           NOR38144_out,   NOR38145_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38147(F14B,           NOR38145_out,   FS14,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38148 - NOR38150 not used
    
    
    // Stage 15
    nor_3 #(1'b0)  NOR38151(CHAT10,         RCHAT_,         NOR38154_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38152(F15A,           NOR38154_out,   NOR38153_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38153(NOR38153_out,   F15A,           F14A,           NOR38155_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38154(NOR38154_out,   NOR38153_out,   FS15,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38155(NOR38155_out,   NOR38153_out,   F14A,           F15B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38156(FS15,           NOR38154_out,   NOR38155_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38157(F15B,           NOR38155_out,   FS15,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38158 - NOR38160 not used
    
    
    // Stage 16
    nor_3 #(1'b0)  NOR38161(CHAT11,         RCHAT_,         NOR38164_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38162(F16A,           NOR38164_out,   NOR38163_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38163(NOR38163_out,   F16A,           F15A,           NOR38165_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38164(NOR38164_out,   NOR38163_out,   FS16,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38165(NOR38165_out,   NOR38163_out,   F15A,           F16B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38166(FS16,           NOR38164_out,   NOR38165_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38167(F16B,           NOR38165_out,   FS16,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38168 - NOR38170 not used
    
    
    // Stage 17
    nor_3 #(1'b0)  NOR38171(CHAT12,         RCHAT_,         NOR38174_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38172(F17A,           NOR38174_out,   NOR38173_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38173(NOR38173_out,   F17A,           F16A,           NOR38175_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38174(NOR38174_out,   NOR38173_out,   FS17,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38175(NOR38175_out,   NOR38173_out,   F16A,           F17B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38176(FS17,           NOR38174_out,   NOR38175_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38177(F17B,           NOR38175_out,   FS17,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38178 - NOR38189 not used
    
    // F17A_ moved here from A18 sheet 1
    nor_3 #(1'b0)  NOR45159(F17A_,          F17A,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F17B_ moved here from A18 sheet 1
    nor_3 #(1'b0)  NOR45261(F17B_,          F17B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A1 sheet 2
    *  Sheet number 2005259/2
    *
    ***************************/
    
    wire NOR38303_out;
    wire NOR38304_out;
    wire NOR38305_out;
    wire NOR38313_out;
    wire NOR38314_out;
    wire NOR38315_out;
    wire NOR38323_out;
    wire NOR38324_out;
    wire NOR38325_out;
    wire NOR38333_out;
    wire NOR38334_out;
    wire NOR38335_out;
    wire NOR38343_out;
    wire NOR38344_out;
    wire NOR38345_out;
    wire NOR38353_out;
    wire NOR38354_out;
    wire NOR38355_out;
    wire NOR38363_out;
    wire NOR38364_out;
    wire NOR38365_out;
    wire NOR38373_out;
    wire NOR38374_out;
    wire NOR38375_out;
    
    wire NOR38403_out;
    wire NOR38404_out;
    wire NOR38405_out;
    wire NOR38413_out;
    wire NOR38414_out;
    wire NOR38415_out;
    wire NOR38423_out;
    wire NOR38424_out;
    wire NOR38425_out;
    wire NOR38433_out;
    wire NOR38434_out;
    wire NOR38435_out;
    wire NOR38443_out;
    wire NOR38444_out;
    wire NOR38445_out;
    wire NOR38453_out;
    wire NOR38454_out;
    wire NOR38455_out;
    wire NOR38463_out;
    wire NOR38464_out;
    wire NOR38465_out;
    wire NOR38473_out;
    wire NOR38474_out;
    wire NOR38475_out;
    
    
    // Stage 18
    nor_3 #(1'b0)  NOR38301(CHAT13,         RCHAT_,         NOR38304_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38302(F18A,           NOR38304_out,   NOR38303_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38303(NOR38303_out,   F18A,           F17A,           NOR38305_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38304(NOR38304_out,   NOR38303_out,   FS18,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38305(NOR38305_out,   NOR38303_out,   F17A,           F18B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38306(FS18,           NOR38304_out,   NOR38305_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38307(F18B,           NOR38305_out,   FS18,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38308 - NOR38310 not used
    
    // F18A_
    nor_3 #(1'b0)  NOR38490(F18A_,          F18A,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F18AX
    nor_3 #(1'b0)  NOR38390(F18AX,          F18A_,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // F18B_ moved here from A23 sheet 1
    nor_3 #(1'b0)  NOR48157(F18B_,          F18B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    // Stage 19
    nor_3 #(1'b0)  NOR38311(CHAT14,         RCHAT_,         NOR38314_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38312(F19A,           NOR38314_out,   NOR38313_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38313(NOR38313_out,   F19A,           F18A,           NOR38315_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38314(NOR38314_out,   NOR38313_out,   FS19,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38315(NOR38315_out,   NOR38313_out,   F18A,           F19B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38316(FS19,           NOR38314_out,   NOR38315_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38317(F19B,           NOR38315_out,   FS19,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38318 - NOR38320 not used
    
    
    // Stage 20
    nor_3 #(1'b0)  NOR38321(CHBT01,         RCHBT_,         NOR38324_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38322(F20A,           NOR38324_out,   NOR38323_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38323(NOR38323_out,   F20A,           F19A,           NOR38325_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38324(NOR38324_out,   NOR38323_out,   FS20,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38325(NOR38325_out,   NOR38323_out,   F19A,           F20B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38326(FS20,           NOR38324_out,   NOR38325_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38327(F20B,           NOR38325_out,   FS20,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38328 - NOR38330 not used
    
    
    // Stage 21
    
    nor_3 #(1'b0)  NOR38331(CHBT02,         RCHBT_,         NOR38334_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38332(F21A,           NOR38334_out,   NOR38333_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38333(NOR38333_out,   F21A,           F20A,           NOR38335_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38334(NOR38334_out,   NOR38333_out,   FS21,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38335(NOR38335_out,   NOR38333_out,   F20A,           F21B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38336(FS21,           NOR38334_out,   NOR38335_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38337(F21B,           NOR38335_out,   FS21,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38338 - NOR38340 not used
    
    
    // Stage 22
    nor_3 #(1'b0)  NOR38341(CHBT03,         RCHBT_,         NOR38344_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38342(F22A,           NOR38344_out,   NOR38343_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38343(NOR38343_out,   F22A,           F21A,           NOR38345_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38344(NOR38344_out,   NOR38343_out,   FS22,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38345(NOR38345_out,   NOR38343_out,   F21A,           F22B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38346(FS22,           NOR38344_out,   NOR38345_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38347(F22B,           NOR38345_out,   FS22,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38348 - NOR38350 not used
    
    
    // Stage 23
    nor_3 #(1'b0)  NOR38351(CHBT04,         RCHBT_,         NOR38354_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38352(F23A,           NOR38354_out,   NOR38353_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38353(NOR38353_out,   F23A,           F22A,           NOR38355_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38354(NOR38354_out,   NOR38353_out,   FS23,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38355(NOR38355_out,   NOR38353_out,   F22A,           F23B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38356(FS23,           NOR38354_out,   NOR38355_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38357(F23B,           NOR38355_out,   FS23,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38358 - NOR38360 not used
    
    
    // Stage 24
    nor_3 #(1'b0)  NOR38361(CHBT05,         RCHBT_,         NOR38364_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38362(F24A,           NOR38364_out,   NOR38363_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38363(NOR38363_out,   F24A,           F23A,           NOR38365_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38364(NOR38364_out,   NOR38363_out,   FS24,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38365(NOR38365_out,   NOR38363_out,   F23A,           F24B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38366(FS24,           NOR38364_out,   NOR38365_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38367(F24B,           NOR38365_out,   FS24,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38368 - NOR38370 not used

    
    // Stage 25
    nor_3 #(1'b0)  NOR38371(CHBT06,         RCHBT_,         NOR38374_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38372(F25A,           NOR38374_out,   NOR38373_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38373(NOR38373_out,   F25A,           F24A,           NOR38375_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38374(NOR38374_out,   NOR38373_out,   FS25,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38375(NOR38375_out,   NOR38373_out,   F24A,           F25B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38376(FS25,           NOR38374_out,   NOR38375_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38377(F25B,           NOR38375_out,   FS25,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38378 - NOR38389 not used


    // Stage 26
    nor_3 #(1'b0)  NOR38401(CHBT07,         RCHBT_,         NOR38404_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38402(F26A,           NOR38404_out,   NOR38403_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38403(NOR38403_out,   F26A,           F25A,           NOR38405_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38404(NOR38404_out,   NOR38403_out,   FS26,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38405(NOR38405_out,   NOR38403_out,   F25A,           F26B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38406(FS26,           NOR38404_out,   NOR38405_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38407(F26B,           NOR38405_out,   FS26,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38408 - NOR38410 not used

    
    // Stage 27
    nor_3 #(1'b0)  NOR38411(CHBT08,         RCHBT_,         NOR38414_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38412(F27A,           NOR38414_out,   NOR38413_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38413(NOR38413_out,   F27A,           F26A,           NOR38415_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38414(NOR38414_out,   NOR38413_out,   FS27,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38415(NOR38415_out,   NOR38413_out,   F26A,           F27B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38416(FS27,           NOR38414_out,   NOR38415_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38417(F27B,           NOR38415_out,   FS27,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38418 - NOR38420 not used
    
    
    // Stage 28
    nor_3 #(1'b0)  NOR38421(CHBT09,         RCHBT_,         NOR38424_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38422(F28A,           NOR38424_out,   NOR38423_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38423(NOR38423_out,   F28A,           F27A,           NOR38425_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38424(NOR38424_out,   NOR38423_out,   FS28,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38425(NOR38425_out,   NOR38423_out,   F27A,           F28B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38426(FS28,           NOR38424_out,   NOR38425_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38427(F28B,           NOR38425_out,   FS28,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38428 - NOR38430 not used
    
    
    // Stage 29
    nor_3 #(1'b0)  NOR38431(CHBT10,         RCHBT_,         NOR38434_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38432(F29A,           NOR38434_out,   NOR38433_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38433(NOR38433_out,   F29A,           F28A,           NOR38435_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38434(NOR38434_out,   NOR38433_out,   FS29,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38435(NOR38435_out,   NOR38433_out,   F28A,           F29B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38436(FS29,           NOR38434_out,   NOR38435_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38437(F29B,           NOR38435_out,   FS29,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38438 - NOR38440 not used
    
    
    // Stage 30
    nor_3 #(1'b0)  NOR38441(CHBT11,         RCHBT_,         NOR38444_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38442(F30A,           NOR38444_out,   NOR38443_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38443(NOR38443_out,   F30A,           F29A,           NOR38445_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38444(NOR38444_out,   NOR38443_out,   FS30,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38445(NOR38445_out,   NOR38443_out,   F29A,           F30B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38446(FS30,           NOR38444_out,   NOR38445_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38447(F30B,           NOR38445_out,   FS30,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38448 - NOR38450 not used
    
    
    // Stage 31
    nor_3 #(1'b0)  NOR38451(CHBT12,         RCHBT_,         NOR38454_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38452(F31A,           NOR38454_out,   NOR38453_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38453(NOR38453_out,   F31A,           F30A,           NOR38455_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38454(NOR38454_out,   NOR38453_out,   FS31,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38455(NOR38455_out,   NOR38453_out,   F30A,           F31B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38456(FS31,           NOR38454_out,   NOR38455_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38457(F31B,           NOR38455_out,   FS31,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38458 - NOR38460 not used
    
    
    // Stage 32
    nor_3 #(1'b0)  NOR38461(CHBT13,         RCHBT_,         NOR38464_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38462(F32A,           NOR38464_out,   NOR38463_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38463(NOR38463_out,   F32A,           F31A,           NOR38465_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38464(NOR38464_out,   NOR38463_out,   FS32,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38465(NOR38465_out,   NOR38463_out,   F31A,           F32B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38466(FS32,           NOR38464_out,   NOR38465_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38467(F32B,           NOR38465_out,   FS32,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38468 - NOR38470 not used
    
    
    // Stage 33
    nor_3 #(1'b0)  NOR38471(CHBT14,         RCHBT_,         NOR38474_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38472(F33A,           NOR38474_out,   NOR38473_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38473(NOR38473_out,   F33A,           F32A,           NOR38475_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38474(NOR38474_out,   NOR38473_out,   FS33,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38475(NOR38475_out,   NOR38473_out,   F32A,           F33B,           p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR38476(FS33,           NOR38474_out,   NOR38475_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR38477(F33B,           NOR38475_out,   FS33,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // Gates NOR38478 - NOR38489 not used

endmodule
