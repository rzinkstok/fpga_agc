`timescale 1ns / 1ps

module a07_service_gates(
    input wire WT_,
    input wire CT_, 
    input wire RT_,
    input wire WY12_, 
    input wire WY_, 
    input wire WYD_, 
    input wire WB_,  
    input wire WZ_, 
    input wire WSC_,
    input wire WL_, 
    input wire WCHG_, 
    input wire WA_, 
    input wire WS_, 
    input wire WQ_, 
    input wire WG_,
    input wire RC_, 
    input wire RQ_,
    input wire RSC_, 
    input wire RCHG_,
    input wire ZAP_, 
    input wire SHIFT, 
    input wire NEAC, 
    input wire GINH, 
    input wire SR_, 
    input wire CYR_, 
    input wire CYL_, 
    input wire EDOP_, 
    input wire PIPPLS_, 
    input wire SB2_, 
    input wire XB5_, 
    input wire XB1_, 
    input wire XT0_, 
    input wire XB0_, 
    input wire XB2_, 
    input wire P04_, 
    input wire XB4_, 
    input wire XB6_,
    input wire L15_, 
    input wire PIFL_, 
    input wire TT_, 
    input wire L2GD_, 
    input wire A2X_, 
    input wire CGMC, 
    input wire T10_, 
    input wire STFET1_, 
    input wire EAC_, 
    input wire MP3A, 
    input wire CI, 
    input wire XB3_, 
    input wire U2BBK, 
    input wire RG_, 
    input wire RA_, 
    input wire RL_, 
    input wire RZ_, 
    input wire RU_, 
    input wire RUS_, 
    input wire RB_, 
    input wire RL10BB,
    input wire SCAD_,
    
    output wire WALSG_,
    output wire WYLOG_, 
    output wire WYHIG_, 
    output wire CUG, 
    output wire WYDG_, 
    output wire WYDLOG_, 
    output wire WBG_, 
    output wire CBG, 
    output wire WG1G_,
    output wire WG2G_, 
    output wire WG3G_, 
    output wire WG4G_, 
    output wire WG5G_, 
    output wire WEDOPG_,
    output wire PIPSAM, 
    output wire WZG_, 
    output wire CZG, 
    output wire WLG_, 
    output wire CLG2G, 
    output wire CLG1G, 
    output wire WAG_, 
    output wire CAG, 
    output wire WSG_, 
    output wire CSG, 
    output wire WQG_, 
    output wire CQG, 
    output wire RCG_, 
    output wire RQG_, 
    output wire RFBG_, 
    output wire RBBEG_, 
    output wire G2LSG_, 
    output wire L2GDG_,
    output wire A2XG_, 
    output wire CGG, 
    output wire WEBG_, 
    output wire CEBG, 
    output wire CFBG, 
    output wire WFBG_, 
    output wire WBBEG_, 
    output wire RGG_, 
    output wire RAG_, 
    output wire RLG_, 
    output wire RZG_, 
    output wire REBG_, 
    output wire RUG_, 
    output wire RUSG_, 
    output wire RULOG_, 
    output wire RBHG_, 
    output wire RBLG_,
    output wire CI01_,
    
    output wire MWYG, 
    output wire MWBG, 
    output wire MWG, 
    output wire MWZG, 
    output wire MWLG, 
    output wire MWAG, 
    output wire MWSG, 
    output wire MWQG, 
    output wire MWEBG, 
    output wire MWFBG, 
    output wire MWBBEG, 
    output wire MRGG, 
    output wire MRAG, 
    output wire MRLG, 
    output wire MRULOG,
    
    input wire n0VDCA,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
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
    wire NOR33114_out;
    wire NOR33122_out;
    wire NOR33123_out;
    wire NOR33124_out;
    wire NOR33125_out;
    wire NOR33129_in;
    wire NOR33130_out;
    wire NOR33135_out;
    wire NOR33136_out;
    wire NOR33138_out;
    wire NOR33139_out;
    wire NOR33144_out;
    wire NOR33149_out;
    wire NOR33151_out;
    wire NOR33155_out;
    
    wire NOR33201_out;
    wire NOR33202_out;
    wire NOR33204_out;
    wire NOR33207_out;
    wire NOR33211_out;
    wire NOR33212_out;
    wire NOR33213_out;
    wire NOR33217_out;
    wire NOR33218_out;
    wire NOR33219_out;
    wire NOR33220_out;
    wire NOR33222_out;
    wire NOR33223_out;
    wire NOR33227_out;
    wire NOR33228_out;
    wire NOR33232_out;
    wire NOR33233_out;
    wire NOR33237_out;
    wire NOR33241_out;
    wire NOR33244_out;
    wire NOR33245_out;
    wire NOR33246_out;
    wire NOR33251_out;
    wire NOR33255_out;
    
    wire NOR33401_out;
    wire NOR33405_out;
    wire NOR33407_out;
    wire NOR33409_out;
    wire NOR33411_out;
    wire NOR33413_out;
    wire NOR33415_out;
    wire NOR33419_out;
    wire NOR33423_out;
    wire NOR33427_out;
    wire NOR33428_out;
    wire NOR33429_out;
    wire NOR33457_out;
    wire NOR33458_out;
    
    wire NOR33301_out;
    wire NOR33303_out;
    wire NOR33305_out;
    wire NOR33307_out;
    wire NOR33308_out;
    wire NOR33309_out;
    wire NOR33311_out;
    wire NOR33312_out;
    wire NOR33315_out;
    wire NOR33320_out;
    wire NOR33321_out;
    wire NOR33322_out;
    wire NOR33326_out;
    wire NOR33327_out;
    wire NOR33335_out;
    wire NOR33336_out;
    wire NOR33337_out;
    wire NOR33341_out;
    wire NOR33345_out;
    wire NOR33346_out;
    wire NOR33347_out;
    wire NOR33350_out;
    wire NOR33352_out;
    wire NOR33355_out;
    wire NOR33359_out;
    
    wire NOR34467_out;
    wire NOR42448_out;
    wire NOR42451_out;
    wire NOR37360_out;
    
    wire NOR33115_in;
    wire NOR33221_in;
    wire NOR33224_in;

    wire WALSG;
    wire WGA_;
    wire G2LSG;
    wire P04A;
    wire RBBK;
    wire CINORM;
    wire CIFF;
    wire RGG1;
    wire RLG1;
    wire RLG2;
    wire RLG3;
    wire RSCG_;
    wire WSCG_;
    wire WGNORM;
    
    // WALSG, WALSG_
    nor_3 #(1'b0)  NOR33102(WALSG,          ZAP_,           WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33101(WALSG_,         WALSG,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR33103, NOR33104, NOR33158 removed (fan-out expansion)
    
    // WYLOG_
    nor_3 #(1'b0)  NOR33105(NOR33105_out,   WY12_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33106(NOR33106_out,   WY_,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33107(NOR33107_out,   NOR33105_out,   NOR33106_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33108(NOR33108_out,   NOR33107_out,   WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33109(WYLOG_,         NOR33108_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33110, NOR33159 removed (fan-out expansion)
    
    // WYHIG_
    nor_3 #(1'b0)  NOR33111(NOR33111_out,   WY_,            WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33112(WYHIG_,         NOR33111_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWYG
    nor_3 #(1'b0)  NOR33113(NOR33113_out,   NOR33108_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33114(NOR33114_out,   NOR33122_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR33115_in = NOR33113_out & NOR33114_out;
    
    // Single monitor fan-in output, no cross-module fan-in
    nor_3 #(1'b0)  NOR33115(MWYG,           NOR33115_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // CUG
    nor_3 #(1'b0)  NOR33116(CUG,            NOR33115_in,    CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33117, NOR33118, NOR33119, NOR33120, NOR33121 removed (fan-out expansion)
    
    // WYDG_
    nor_3 #(1'b0)  NOR33122(NOR33122_out,   WYD_,           WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33126(WYDG_,          NOR33122_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33127 and NOR33128 removed (fan-out expansion)
    
    // WYDLOG_
    nor_3 #(1'b0)  NOR33123(NOR33123_out,   WYD_,           WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33124(NOR33124_out,   SHIFT,          NEAC,           NOR33125_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33125(NOR33125_out,   L15_,           PIFL_,          n0VDCA,         p4SW, reset, prop_clk);
    assign NOR33129_in = NOR33123_out & NOR33124_out;
    nor_3 #(1'b1)  NOR33129(WYDLOG_,        NOR33129_in,    n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // WBG_
    nor_3 #(1'b0)  NOR33130(NOR33130_out,   WB_,            WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33131(WBG_,           NOR33130_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33132, NOR33133, NOR33134 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR33135(NOR33135_out,   WBG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWBG = NOR33135_out;
    
    // CBG
    nor_3 #(1'b0)  NOR33136(NOR33136_out,   WBG_,           CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33137 removed (no inputs)
    nor_3 #(1'b0)  NOR33138(NOR33138_out,   CT_,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign CBG = NOR33136_out & NOR33138_out;
    
    // WGA_
    nor_3 #(1'b0)  NOR34467(NOR34467_out,   WG_,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR34446(WGA_,           NOR34467_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // MWG
    nor_3 #(1'b0)  NOR33139(NOR33139_out,   WGA_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // No cross-module fan-in, single monitor output
    assign MWG = NOR33139_out;
    
    // WGNORM
    nor_3 #(1'b0)  NOR33140(WGNORM,         WGA_,           WT_,            GINH,           p4SW, reset, prop_clk);
    
    // WG1G_
    nor_3 #(1'b1)  NOR33141(WG1G_,          WGNORM,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33142 and NOR33143 removed (fan-out expansion)
    
    // WG2G_
    nor_3 #(1'b0)  NOR33144(NOR33144_out,   WGA_,           WT_,            SR_,            p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33145(WG2G_,          WGNORM,         NOR33144_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WG4G_
    nor_3 #(1'b0)  NOR33149(NOR33149_out,   WGA_,           WT_,            CYR_,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33146(WG4G_,          NOR33144_out,   NOR33149_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33147 and NOR33148 removed (fan-out expansion)
    
    // WG5G_
    nor_3 #(1'b1)  NOR33150(WG5G_,          NOR33149_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // WG3G_
    nor_3 #(1'b0)  NOR33151(NOR33151_out,   WGA_,           WT_,            CYL_,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33152(WG3G_,          NOR33151_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33153 and NOR33154 removed (fan-out expansion)
    
    // WEDOPG_
    nor_3 #(1'b0)  NOR33155(NOR33155_out,   WGA_,           WT_,            EDOP_,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33156(WEDOPG_,        NOR33155_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33157 removed (fan-out expansion)
    
    // PIPSAM
    nor_3 #(1'b0)  NOR33160(PIPSAM,         PIPPLS_,        SB2_,           P04A,           p4SW, reset, prop_clk);
    
    // WZG_
    nor_3 #(1'b0)  NOR33201(NOR33201_out,   WT_,            WZ_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33204(NOR33204_out,   WSCG_,          XB5_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33202(WZG_,           NOR33201_out,   NOR33204_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33203, NOR33205, NOR33206 removed (fan-out expansion)
    
    // MWZG
    nor_3 #(1'b0)  NOR33207(NOR33207_out,   WZG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWZG = NOR33207_out;
    
    // CZG
    nor_3 #(1'b0)  NOR33208(CZG,            WZG_,           CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33209 and NOR33210 removed (fan-out expansion)
    
    // WLG_
    nor_3 #(1'b0)  NOR33211(NOR33211_out,   WL_,            WT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33212(NOR33212_out,   XB1_,           XT0_,           WCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33213(NOR33213_out,   WSCG_,          XB1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33214(WLG_,           NOR33211_out,   NOR33212_out,   NOR33213_out,   p4SW, reset, prop_clk);
    // NOR33215 and NOR33216 removed (fan-out expansion)
    
    // MWLG
    nor_3 #(1'b1)  NOR33217(NOR33217_out,   NOR33211_out,   NOR33212_out,   NOR33213_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33218(NOR33218_out,   NOR33217_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWLG = NOR33218_out;
    
    // CLG2G
    nor_3 #(1'b0)  NOR33219(NOR33219_out,   NOR33213_out,   NOR33211_out,   NOR33212_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33220(NOR33220_out,   WALSG,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR33221_in = NOR33219_out & NOR33220_out;
    nor_3 #(1'b0)  NOR33221(CLG2G,          NOR33221_in,    CT_,            n0VDCA,         p4SW, reset, prop_clk);
    
    // CLG1G
    nor_3 #(1'b0)  NOR33222(NOR33222_out,   NOR33212_out,   NOR33211_out,   NOR33213_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33223(NOR33223_out,   G2LSG,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign NOR33224_in = NOR33222_out & NOR33223_out;
    nor_3 #(1'b0)  NOR33224(CLG1G,          CT_,            NOR33224_in,    n0VDCA,         p4SW, reset, prop_clk);
    // NOR33225 and NOR33226 removed (fan-out expansion)
    
    // WAG/
    nor_3 #(1'b0)  NOR33227(NOR33227_out,   WT_,            WA_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33228(NOR33228_out,   WSCG_,          XB0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33229(WAG_,           NOR33227_out,   NOR33228_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33230 and NOR33231 removed (fan-out expansion)
    
    // MWAG
    nor_3 #(1'b1)  NOR33232(NOR33232_out,   NOR33227_out,   NOR33228_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33255(NOR33255_out,   NOR33232_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWAG = NOR33255_out;
    
    // CAG
    nor_3 #(1'b0)  NOR33233(NOR33233_out,   NOR33227_out,   NOR33228_out,   WALSG,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33234(CAG,            NOR33233_out,   CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33235 and NOR33236 removed (fan-out expansion)
    
    // WSG_
    nor_3 #(1'b0)  NOR33237(NOR33237_out,   WT_,            WS_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33238(WSG_,           NOR33237_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33239 and NOR33240 removed (fan-out expansion)
    
    // MWSG
    nor_3 #(1'b0)  NOR33241(NOR33241_out,   WSG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWSG = NOR33241_out;
    
    // CSG
    nor_3 #(1'b0)  NOR33242(CSG,            WSG_,           CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33243 removed (fan-out expansion)
    
    // WQG_
    nor_3 #(1'b0)  NOR33244(NOR33244_out,   WT_,            WQ_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33245(NOR33245_out,   WSCG_,          XB2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33246(NOR33246_out,   XB2_,           XT0_,           WCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33247(WQG_,           NOR33245_out,   NOR33244_out,   NOR33246_out,   p4SW, reset, prop_clk);
    // NOR33248, NOR33249 and NOR33250 removed (fan-out expansion)
    
    // MWQG
    nor_3 #(1'b0)  NOR33251(NOR33251_out,   WQG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MWQG = NOR33251_out;
    
    // CQG
    nor_3 #(1'b0)  NOR33252(CQG,            WQG_,           CT_,            n0VDCA,         p4SW, reset, prop_clk);
    // NOR33253 and NOR33254 removed (fan-out expansion)
    
    // NOR33256 omitted
    
    nor_3 #(1'b0)  NOR33257(P04A,           P04_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR33258 removed (fan-out expansion)
    // NOR33259 removed (fan-out expansion)
    
    
    /**************************
    *
    *  Module A7 sheet 2
    *  Sheet number 2005252/2
    *
    **************************/
    
    // RSCG_ and WSCG_ moved here from A14 sheet 2
    nor_3 #(1'b0)  NOR42448(NOR42448_out,   RSC_,           RT_,            SCAD_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR42449(RSCG_,          NOR42448_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR42451(NOR42451_out,   WSC_,           SCAD_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR42452(WSCG_,          NOR42451_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RCG_
    nor_3 #(1'b0)  NOR33401(NOR33401_out,   RT_,            RC_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33402(RCG_,           NOR33401_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33403 and NOR33404 removed (fan-out expansion)
    
    // RQG_
    nor_3 #(1'b0)  NOR33405(NOR33405_out,   RT_,            RQ_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33407(NOR33407_out,   RSCG_,          XB2_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33409(NOR33409_out,   XB2_,           XT0_,           RCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33406(RQG_,           NOR33405_out,   NOR33407_out,   NOR33409_out,   p4SW, reset, prop_clk);
    // NOR33408 and NOR33410 removed (fan-out expansion)
    
    // RFBG_
    nor_3 #(1'b0)  NOR33411(NOR33411_out,   RSCG_,          XB4_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33413(NOR33413_out,   RSCG_,          XB6_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33412(RFBG_,          NOR33411_out,   RBBK,           NOR33413_out,   p4SW, reset, prop_clk);
    
    // RBBEG_
    nor_3 #(1'b0)  NOR33414(RBBEG_,         NOR33413_out,   RBBK,           n0VDCA,         p4SW, reset, prop_clk);
    
    // G2LSG, G2LSG_
    nor_3 #(1'b0)  NOR33415(G2LSG,          TT_,            ZAP_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33416(G2LSG_,         G2LSG,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33417 and NOR33418 removed (fan-out expansion)
    
    // L2GDG_
    nor_3 #(1'b0)  NOR33419(NOR33419_out,   TT_,            L2GD_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33420(L2GDG_,         NOR33419_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33421 and NOR33422 removed (fan-out expansion)
    
    // A2XG_
    nor_3 #(1'b0)  NOR33423(NOR33423_out,   TT_,            A2X_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33424(A2XG_,          NOR33423_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33425 and NOR33426 removed (fan-out expansion)
    
    // CGG
    nor_3 #(1'b0)  NOR33427(NOR33427_out,   L2GD_,          CT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33428(NOR33428_out,   CT_,            WG_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33429(NOR33429_out,   NOR33427_out,   NOR33428_out,   CGMC,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33430(CGG,            NOR33429_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33431 and NOR33432 removed (fan-out expansion)
    
    // Gates NOR33433 - NOR33456 moved to A14 sheet 2
    
    // CINORM
    nor_3 #(1'b0)  NOR33457(NOR33457_out,   NEAC,           EAC_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR37360(NOR37360_out,   MP3A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign CINORM = NOR33457_out & NOR37360_out;
    // NOR37360 moved here from A2 sheet 3
    
    // CIFF flip-flop
    nor_3 #(1'b1)  NOR33458(NOR33458_out,   CI,             CIFF,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33459(CIFF,           NOR33458_out,   CUG,            n0VDCA,         p4SW, reset, prop_clk);
    
    // RBBK
    nor_3 #(1'b0)  NOR33460(RBBK,           T10_,           STFET1_,        n0VDCA,         p4SW, reset, prop_clk);
    
    // WEBG_
    nor_3 #(1'b0)  NOR33301(NOR33301_out,   WSCG_,          XB3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33302(WEBG_,          NOR33301_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    nor_3 #(1'b0)  NOR33303(NOR33303_out,   WEBG_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWEBG = NOR33303_out;
    // NOR33304 removed (fan-out expansion)
    
    // CEBG
    nor_3 #(1'b0)  NOR33305(NOR33305_out,   NOR33301_out,   U2BBK,          NOR33312_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33306(CEBG,           NOR33305_out,   CT_,            n0VDCA,         p4SW, reset, prop_clk);
    
    // CFBG
    nor_3 #(1'b0)  NOR33307(NOR33307_out,   WSCG_,          XB4_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33359(NOR33359_out,   NOR33312_out,   U2BBK,          NOR33307_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33310(CFBG,           CT_,            NOR33359_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // WFBG_, MWFBG
    nor_3 #(1'b1)  NOR33308(NOR33308_out,   NOR33312_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33309(NOR33309_out,   NOR33307_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign WFBG_ = NOR33308_out & NOR33309_out;
    // Monitor output, no cross-module fan-out
    nor_3 #(1'b0)  NOR33311(NOR33311_out,   WFBG_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWFBG = NOR33311_out;
    
    // WBBEG_, MWBBEG
    nor_3 #(1'b0)  NOR33312(NOR33312_out,   WSCG_,          XB6_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR33313(WBBEG_,         NOR33312_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33314 removed (fan-out expansion)
    // Monitor output, no cross-module fan-out
    nor_3 #(1'b0)  NOR33315(NOR33315_out,   WBBEG_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    assign MWBBEG = NOR33315_out;
    
    // RGG_, MRGG
    nor_3 #(1'b0)  NOR33316(RGG1,           RT_,            RG_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33317(RGG_,           RGG1,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR33318 and NOR33319 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR33320(NOR33320_out,   RGG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MRGG = NOR33320_out;
    
    // RAG_, MRAG
    nor_3 #(1'b0)  NOR33321(NOR33321_out,   RT_,            RA_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33322(NOR33322_out,   XB0_,           RSCG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33323(RAG_,           NOR33321_out,   NOR33322_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33324, NOR33325 and NOR 33357 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR33326(NOR33326_out,   RAG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MRAG = NOR33326_out;
    
    // RLG1, RLG2, RLG3, RLG_, MRLG
    nor_3 #(1'b0)  NOR33329(RLG2,           RT_,            RL_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33331(RLG1,           RSCG_,          XB1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33333(RLG3,           XB1_,           XT0_,           RCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33330(RLG_,           RLG1,           RLG2,           RLG3,           p4SW, reset, prop_clk);
    // NOR33332 and NOR33334 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR33335(NOR33335_out,   RLG_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MRLG = NOR33335_out;
    
    // RZG_
    nor_3 #(1'b0)  NOR33336(NOR33336_out,   RT_,            RZ_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33337(NOR33337_out,   XB5_,           RSCG_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33338(RZG_,           NOR33336_out,   NOR33337_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33339 and NOR33340 removed (fan-out expansion)
    
    // REBG_
    nor_3 #(1'b0)  NOR33327(NOR33327_out,   RSCG_,          XB3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33328(REBG_,          NOR33327_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RUG_
    nor_3 #(1'b0)  NOR33341(NOR33341_out,   RT_,            RU_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33348(RUG_,           NOR33341_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RUSG_
    nor_3 #(1'b0)  NOR33345(NOR33345_out,   RT_,            RUS_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33349(RUSG_,          NOR33345_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RULOG_, MRULOG
    nor_3 #(1'b0)  NOR33342(RULOG_,         NOR33345_out,   NOR33341_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33343 and NOR33344 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR33346(NOR33346_out,   NOR33345_out,   NOR33341_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR33347(NOR33347_out,   NOR33346_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Monitor output, no cross-module fan-out
    assign MRULOG = NOR33347_out;
    
    // RBHG_
    nor_3 #(1'b0)  NOR33350(NOR33350_out,   RT_,            RB_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33351(RBHG_,          NOR33350_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // RBLG_
    nor_3 #(1'b0)  NOR33355(NOR33355_out,   RL10BB,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33352(NOR33352_out,   RT_,            NOR33355_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR33353(RBLG_,          NOR33350_out,   NOR33352_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR33354 removed (fan-out expansion)
    
    // CI01_
    nor_3 #(1'b0)  NOR33356(CI01_,          CIFF,           CINORM,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR33358 removed (not connected)
    // NOR33360 removed (not used)
    // NOR33361 removed (fan-out expansion)
    
endmodule
