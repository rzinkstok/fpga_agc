`timescale 1ns / 1ps

module a7_service_gates(
    // inputs
    WT_, CT_, RT_,
    WY12_, WY_, WYD_, WB_, WGA_, WZ_, WSCG_, WL_, WCHG_, WA_, WS_, WQ_, WG_,
    RC_, RQ_, RSCG_, RCHG_,
    ZAP_, SHIFT, NEAC, GINH, SR_, CYR_, CYL_, EDOP_, PIPPLS_, SB2_, XB5_, XB1_, XT0_, XB0_, XB2_, P04_, XB4_, XB6_,
    L15_, PIFL_, TT_, L2GD_, A2X_, CGMC, T10_, STFET1_, EAC_, MP3A, CI, XB3_, U2BBK, RG_, RA_, RL_, RZ_, RU_, RUS_, RB_, RL10BB,
    EAD09, EAD09_, EAD10, EAD10_, EAD11, EAD11_,
    
    // outputs
    WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_, WBG_, CBG, WGNORM, WG1G_, WG2G_, WG3G_, WG4G_, WG5G_, WEDOPG_,
    PIPSAM, WZG_, CZG, WLG_, CLG2G, CLG1G, WAG_, CAG, WSG_, CSG, WQG_, CQG, RCG_, RQG_, RFBG_, RBBEG_, G2LSG_, L2GDG_,
    A2XG_, CGG, WEBG_, CEBG, CFBG, WFBG_, WBBEG_, RGG_, RAG_, RLG_, RZG_, REBG_, RUG_, RUSG_, RULOG_, RBHG_, RBLG_,
    
    YT0, YT0_, YT0E, YT1, YT1_, YT1E, YT2, YT2_, YT2E, YT3, YT3_, YT3E, YT4, YT4_, YT4E, YT5, YT5_, YT5E, YT6, YT6_, YT6E, YT7, YT7_, YT7E,
    CI01_,
    
    MWYG, MWBG, MWG, MWZG, MWLG, MWAG, MWSG, MWQG, MWEBG, MWFBG, MWBBEG, MRGG, MRAG, MRLG, MRULOG,
    
    // input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    input wire WT_, CT_, RT_;
    input wire WY12_, WY_, WYD_, WB_, WGA_, WZ_, WSCG_, WL_, WCHG_, WA_, WS_, WQ_, WG_;
    input wire RC_, RQ_, RSCG_, RCHG_;
    input wire ZAP_, SHIFT, NEAC, GINH, SR_, CYR_, CYL_, EDOP_, PIPPLS_, SB2_, XB5_, XB1_, XT0_, XB0_, XB2_, P04_, XB4_, XB6_;
    input wire L15_, PIFL_, TT_, L2GD_, A2X_, CGMC, T10_, STFET1_, EAC_, MP3A, CI, XB3_, U2BBK, RG_, RA_, RL_, RZ_, RU_, RUS_, RB_, RL10BB;
    input wire EAD09, EAD09_, EAD10, EAD10_, EAD11, EAD11_;
    
    output wire WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_, WBG_, CBG, WGNORM, WG1G_, WG2G_, WG3G_, WG4G_, WG5G_, WEDOPG_;
    output wire PIPSAM, WZG_, CZG, WLG_, CLG2G, CLG1G, WAG_, CAG, WSG_, CSG, WQG_, CQG, RCG_, RQG_, RFBG_, RBBEG_, G2LSG_, L2GDG_;
    output wire A2XG_, CGG, WEBG_, CEBG, CFBG, WFBG_, WBBEG_, RGG_, RAG_, RLG_, RZG_, REBG_, RUG_, RUSG_, RULOG_, RBHG_, RBLG_;
    output wire YT0, YT0_, YT0E, YT1, YT1_, YT1E, YT2, YT2_, YT2E, YT3, YT3_, YT3E, YT4, YT4_, YT4E, YT5, YT5_, YT5E, YT6, YT6_, YT6E, YT7, YT7_, YT7E;
    output wire CI01_;
    output wire MWYG, MWBG, MWG, MWZG, MWLG, MWAG, MWSG, MWQG, MWEBG, MWFBG, MWBBEG, MRGG, MRAG, MRLG, MRULOG;
    
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
    wire NOR33130_out;
    wire NOR33135_out;
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
    wire NOR33222_out;
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
    wire NOR33458_out;
    
    wire NOR33301_out;
    wire NOR33303_out;
    wire NOR33305_out;
    wire NOR33307_out;
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
    
    wire G2LSG, P04A, RBBK, CINORM, CIFF, RGG1, RLG1, RLG2, RLG3;
    
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
    // NOR33127 and NOR33128 omitted
    
    // WYDLOG_
    nor_2 #(1'b0) NOR33123(NOR33123_out,    WYD_,           WT_,                                    SIM_CLK);
    nor_3 #(1'b0) NOR33124(NOR33124_out,    SHIFT,          NEAC,           NOR33125_out,           SIM_CLK);
    nor_2 #(1'b0) NOR33125(NOR33125_out,    L15_,           PIFL_,                                  SIM_CLK);
    assign NOR33129_in = NOR33123_out & NOR33124_out;
    nor_1 #(1'b0) NOR33129(WYDLOG_,         NOR33129_in,                                            SIM_CLK);
    
    // WBG_
    nor_2 #(1'b0) NOR33130(NOR33130_out,    WB_,            WT_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33131(WBG_,            NOR33130_out,                                           SIM_CLK);
    // NOR33132, NOR33133, NOR33134 omitted
    nor_1 #(1'b0) NOR33135(NOR33135_out,    WBG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWBG = NOR33135_out;
    
    // CBG
    nor_2 #(1'b0) NOR33136(CBG,             WBG_,           CT_,                                    SIM_CLK);
    // NOR33137 and NOR33138 omitted
    
    // MWG
    nor_1 #(1'b0) NOR33139(NOR33139_out,    WGA_,                                                   SIM_CLK);
    // No cross-module fan-in, single monitor output
    assign MWG = NOR33139_out;
    
    // WGNORM
    nor_3 #(1'b0) NOR33140(WGNORM,          WGA_,           WT_,            GINH,                   SIM_CLK);
    
    // WG1G_
    nor_1 #(1'b0) NOR33141(WG1G_,           WGNORM,                                                 SIM_CLK);
    // NOR33142 and NOR33143 omitted
    
    // WG2G_
    nor_3 #(1'b0) NOR33144(NOR33144_out,    WGA_,           WT_,            SR_,                    SIM_CLK);
    nor_2 #(1'b0) NOR33145(WG2G_,           WGNORM,         NOR33144_out,                           SIM_CLK);
    
    // WG4G_
    nor_3 #(1'b0) NOR33149(NOR33149_out,    WGA_,           WT_,            CYR_,                   SIM_CLK);
    nor_2 #(1'b0) NOR33146(WG4G_,           NOR33144_out,   NOR33149_out,                           SIM_CLK);
    // NOR33147 and NOR33148 omitted
    
    // WG5G_
    nor_1 #(1'b0) NOR33150(WG5G_,           NOR33149_out,                                           SIM_CLK);
    
    // WG3G_
    nor_3 #(1'b0) NOR33151(NOR33151_out,    WGA_,           WT_,            CYL_,                   SIM_CLK);
    nor_1 #(1'b0) NOR33152(WG3G_,           NOR33151_out,                                           SIM_CLK);
    // NOR33153 and NOR33154 omitted
    
    // WEDOPG_
    nor_3 #(1'b0) NOR33155(NOR33155_out,    WGA_,           WT_,            EDOP_,                  SIM_CLK);
    nor_1 #(1'b0) NOR33156(WEDOPG_,         NOR33155_out,                                           SIM_CLK);
    // NOR33157 omitted
    
    // PIPSAM
    nor_3 #(1'b0) NOR33160(PIPSAM,          PIPPLS_,        SB2_,           P04A,                   SIM_CLK);
    
    // WZG_
    nor_2 #(1'b0) NOR33201(NOR33201_out,    WT_,            WZ_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33204(NOR33204_out,    WSCG_,          XB5_,                                   SIM_CLK);
    nor_2 #(1'b0) NOR33202(WZG_,            NOR33201_out,   NOR33204_out,                           SIM_CLK);
    // NOR33203, NOR33205, NOR33206 omitted
    
    // MWZG
    nor_1 #(1'b0) NOR33207(NOR33207_out,    WZG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWZG = NOR33207_out;
    
    // CZG
    nor_2 #(1'b0) NOR33208(CZG,             WZG_,           CT_,                                    SIM_CLK);
    // NOR33209 and NOR33210 omitted
    
    // WLG_
    nor_2 #(1'b0) NOR33211(NOR33211_out,    WL_,            WT_,                                    SIM_CLK);
    nor_3 #(1'b0) NOR33212(NOR33212_out,    XB1_,           XT0_,           WCHG_,                  SIM_CLK);
    nor_2 #(1'b0) NOR33213(NOR33213_out,    WSCG_,          XB1_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33214(WLG_,            NOR33211_out,   NOR33212_out,   NOR33213_out,           SIM_CLK);
    // NOR33215 and NOR33216 omitted
    
    // MWLG
    nor_3 #(1'b0) NOR33217(NOR33217_out,    NOR33211_out,   NOR33212_out,   NOR33213_out,           SIM_CLK);
    nor_1 #(1'b0) NOR33218(NOR33218_out,    NOR33217_out,                                           SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWLG = NOR33218_out;
    
    // CLG2G
    nor_4 #(1'b0) NOR33219(NOR33219_out,    NOR33213_out,   NOR33211_out,   NOR33212_out,   WALSG,  SIM_CLK);
    // NOR33220 merged into NOR33219
    nor_2 #(1'b0) NOR33221(CLG2G,           NOR33219_out,   CT_,                                    SIM_CLK);
    
    // CLG1G
    nor_4 #(1'b0) NOR33222(NOR33222_out,    NOR33212_out,   NOR33211_out,   NOR33213_out,   G2LSG,  SIM_CLK);
    // NOR33223 merged into NOR33222
    nor_2 #(1'b0) NOR33224(CLG1G,           CT_,            NOR33222_out,                           SIM_CLK);
    // NOR33225 and NOR33226 omitted
    
    // WAG/
    nor_2 #(1'b0) NOR33227(NOR33227_out,    WT_,            WA_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33228(NOR33228_out,    WSCG_,          XB0_,                                   SIM_CLK);
    nor_2 #(1'b0) NOR33229(WAG_,            NOR33227_out,   NOR33228_out,                           SIM_CLK);
    // NOR33230 and NOR33231 omitted
    
    // MWAG
    nor_2 #(1'b0) NOR33232(NOR33232_out,    NOR33227_out,   NOR33228_out,                           SIM_CLK);
    nor_1 #(1'b0) NOR33255(NOR33255_out,    NOR33232_out,                                           SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWAG = NOR33255_out;
    
    // CAG
    nor_3 #(1'b0) NOR33233(NOR33233_out,    NOR33227_out,   NOR33228_out,   WALSG,                  SIM_CLK);
    nor_2 #(1'b0) NOR33234(CAG,             NOR33233_out,   CT_,                                    SIM_CLK);
    // NOR33235 and NOR33236 omitted
    
    // WSG_
    nor_2 #(1'b0) NOR33237(NOR33237_out,    WT_,            WS_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33238(WSG_,            NOR33237_out,                                           SIM_CLK);
    // NOR33239 and NOR33240 omitted
    
    // MWSG
    nor_1 #(1'b0) NOR33241(NOR33241_out,    WSG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWSG = NOR33241_out;
    
    // CSG
    nor_2 #(1'b0) NOR33242(CSG,             WSG_,           CT_,                                    SIM_CLK);
    // NOR33243 omitted
    
    // WQG_
    nor_2 #(1'b0) NOR33244(NOR33244_out,    WT_,            WQ_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33245(NOR33245_out,    WSCG_,          XB2_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33246(NOR33246_out,    XB2_,           XT0_,           WCHG_,                  SIM_CLK);
    nor_3 #(1'b0) NOR33247(WQG_,            NOR33245_out,   NOR33244_out,   NOR33246_out,           SIM_CLK);
    // NOR33248, NOR33249 and NOR33250 omitted
    
    // MWQG
    nor_1 #(1'b0) NOR33251(NOR33251_out,    WQG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MWQG = NOR33251_out;
    
    // CQG
    nor_2 #(1'b0) NOR33252(CQG,             WQG_,           CT_,                                    SIM_CLK);
    // NOR33253 and NOR33254 omitted
    
    // NOR33256 omitted
    
    nor_1 #(1'b0) NOR33257(P04A,            P04_,                                                   SIM_CLK);
    
    // NOR33258 omitted
    // NOR33259 omitted
    
    /**************************
    *
    *  Module A7 sheet 2
    *  Sheet number 2005252/2
    *
    **************************/
    
    // RCG_
    nor_2 #(1'b0) NOR33401(NOR33401_out,    RT_,            RC_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33402(RCG_,            NOR33401_out,                                           SIM_CLK);
    // NOR33403 and NOR33404 omitted
    
    // RQG_
    nor_2 #(1'b0) NOR33405(NOR33405_out,    RT_,            RQ_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33407(NOR33407_out,    RSCG_,          XB2_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33409(NOR33409_out,    XB2_,           XT0_,           RCHG_,                  SIM_CLK);
    nor_3 #(1'b0) NOR33406(RQG_,            NOR33405_out,   NOR33407_out,   NOR33409_out,           SIM_CLK);
    // NOR33408 and NOR33410 omitted
    
    // RFBG_
    nor_2 #(1'b0) NOR33411(NOR33411_out,    RSCG_,          XB4_,                                   SIM_CLK);
    nor_2 #(1'b0) NOR33413(NOR33413_out,    RSCG_,          XB6_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33412(RFBG_,           NOR33411_out,   RBBK,           NOR33413_out,           SIM_CLK);
    
    // RBBEG_
    nor_2 #(1'b0) NOR33414(RBBEG_,          NOR33413_out,   RBBK,                                   SIM_CLK);
    
    // G2LSG, G2LSG_
    nor_2 #(1'b0) NOR33415(G2LSG,           TT_,            ZAP_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33416(G2LSG_,          G2LSG,                                                  SIM_CLK);
    // NOR33417 and NOR33418 omitted
    
    // L2GDG_
    nor_2 #(1'b0) NOR33419(NOR33419_out,    TT_,            L2GD_,                                  SIM_CLK);
    nor_1 #(1'b0) NOR33420(L2GDG_,          NOR33419_out,                                           SIM_CLK);
    // NOR33421 and NOR33422 omitted
    
    // A2XG_
    nor_2 #(1'b0) NOR33423(NOR33423_out,    TT_,            A2X_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33424(A2XG_,           NOR33423_out,                                           SIM_CLK);
    // NOR33425 and NOR33426 omitted
    
    // CGG
    nor_2 #(1'b0) NOR33427(NOR33427_out,    L2GD_,          CT_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33428(NOR33428_out,    CT_,            WG_,                                    SIM_CLK);
    nor_3 #(1'b0) NOR33429(NOR33429_out,    NOR33427_out,   NOR33428_out,   CGMC,                   SIM_CLK);
    nor_1 #(1'b0) NOR33430(CGG,             NOR33429_out,                                           SIM_CLK);
    // NOR33431 and NOR33432 omitted
    
    // Erasable memory addressing - Y
    
    // YT0
    nor_3 #(1'b0) NOR33433(YT0,             EAD11,          EAD10,          EAD09,                  SIM_CLK);
    nor_1 #(1'b0) NOR33434(YT0_,            YT0,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33435(YT0E,            YT0_,                                                   SIM_CLK);
    
    // YT1
    nor_3 #(1'b0) NOR33436(YT1,             EAD11,          EAD10,          EAD09_,                 SIM_CLK);
    nor_1 #(1'b0) NOR33437(YT1_,            YT1,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33438(YT1E,            YT1_,                                                   SIM_CLK);
    
    // YT2
    nor_3 #(1'b0) NOR33439(YT2,             EAD11,          EAD10_,         EAD09,                  SIM_CLK);
    nor_1 #(1'b0) NOR33440(YT2_,            YT2,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33441(YT2E,            YT2_,                                                   SIM_CLK);
    
    // YT3
    nor_3 #(1'b0) NOR33442(YT3,             EAD11,          EAD10_,         EAD09_,                 SIM_CLK);
    nor_1 #(1'b0) NOR33443(YT3_,            YT3,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33444(YT3E,            YT3_,                                                   SIM_CLK);
    
    // YT4
    nor_3 #(1'b0) NOR33445(YT4,             EAD11_,         EAD10,          EAD09,                  SIM_CLK);
    nor_1 #(1'b0) NOR33446(YT4_,            YT4,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33447(YT4E,            YT4_,                                                   SIM_CLK);
        
    // YT5
    nor_3 #(1'b0) NOR33448(YT5,             EAD11_,         EAD10,          EAD09_,                 SIM_CLK);
    nor_1 #(1'b0) NOR33449(YT5_,            YT5,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33450(YT5E,            YT5_,                                                   SIM_CLK);
    
    // YT6
    nor_3 #(1'b0) NOR33451(YT6,             EAD11_,         EAD10_,         EAD09,                  SIM_CLK);
    nor_1 #(1'b0) NOR33452(YT6_,            YT6,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33453(YT6E,            YT6_,                                                   SIM_CLK);
    
    // YT7
    nor_3 #(1'b0) NOR33454(YT7,             EAD11_,         EAD10_,         EAD09_,                 SIM_CLK);
    nor_1 #(1'b0) NOR33455(YT7_,            YT7,                                                    SIM_CLK);
    nor_1 #(1'b0) NOR33456(YT7E,            YT7_,                                                   SIM_CLK);
    
    // CINORM
    nor_3 #(1'b0) NOR33457(CINORM,          NEAC,           EAC_,           MP3A,                    SIM_CLK);
    // NOR37360 moved here from A2 sheet 3 and merged with NOR33457
    
    // CIFF flip-flop
    nor_2 #(1'b0) NOR33458(NOR33458_out,    CI,             CIFF,                                   SIM_CLK);
    nor_2 #(1'b0) NOR33459(CIFF,            NOR33458_out,   CUG,                                    SIM_CLK);
    
    // RBBK
    nor_2 #(1'b0) NOR33460(RBBK,            T10_,           STFET1_,                                SIM_CLK);
    
    // WEBG_
    nor_2 #(1'b0) NOR33301(NOR33301_out,    WSCG_,          XB3_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33302(WEBG_,           NOR33301_out,                                           SIM_CLK);
    // Monitor output, no cross-module fan-out
    nor_1 #(1'b0) NOR33303(NOR33303_out,    WEBG_,                                                  SIM_CLK);
    assign MWEBG = NOR33303_out;
    // NOR33304 omitted
    
    // CEBG
    nor_3 #(1'b0) NOR33305(NOR33305_out,    NOR33301_out,   U2BBK,          NOR33312_out,           SIM_CLK);
    nor_2 #(1'b0) NOR33306(CEBG,            NOR33305_out,   CT_,                                    SIM_CLK);
    
    // CFBG
    nor_2 #(1'b0) NOR33307(NOR33307_out,    WSCG_,          XB4_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33359(NOR33359_out,    NOR33312_out,   U2BBK,          NOR33307_out,           SIM_CLK);
    nor_2 #(1'b0) NOR33310(CFBG,            CT_,            NOR33359_out,                           SIM_CLK);
    
    // WFBG_, MWFBG
    nor_2 #(1'b0) NOR33308(WFBG_,           NOR33312_out,   NOR33307_out,                           SIM_CLK);
    // NOR33309 merged with NOR33308
    // Monitor output, no cross-module fan-out
    nor_2 #(1'b0) NOR33311(NOR33311_out,    WFBG_,                                                  SIM_CLK);
    assign MWFBG = NOR33311_out;
    
    // WBBEG_, MWBBEG
    nor_2 #(1'b0) NOR33312(NOR33312_out,    WSCG_,          XB6_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33313(WBBEG_,          NOR33312_out,                                           SIM_CLK);
    // NOR33314 merged with NOR33313
    // Monitor output, no cross-module fan-out
    nor_1 #(1'b0) NOR33315(NOR33315_out,    WBBEG_,                                                 SIM_CLK);
    assign MWBBEG = NOR33315_out;
    
    // RGG_, MRGG
    nor_2 #(1'b0) NOR33316(RGG1,            RT_,            RG_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33317(RGG_,            RGG1,                                                   SIM_CLK);
    // NOR33318 and NOR33319 omitted
    nor_1 #(1'b0) NOR33320(NOR33320_out,    RGG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MRGG = NOR33320_out;
    
    // RAG_, MRAG
    nor_2 #(1'b0) NOR33321(NOR33321_out,    RT_,            RA_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33322(NOR33322_out,    XB0_,           RSCG_,                                  SIM_CLK);
    nor_2 #(1'b0) NOR33323(RAG_,            NOR33321_out,   NOR33322_out,                           SIM_CLK);
    // NOR33324, NOR33325 and NOR 33357 omitted
    nor_1 #(1'b0) NOR33326(NOR33326_out,    RAG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MRAG = NOR33326_out;
    
    // RLG1, RLG2, RLG3, RLG_, MRLG
    nor_2 #(1'b0) NOR33329(RLG2,            RT_,            RL_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33331(RLG1,            RSCG_,          XB1_,                                   SIM_CLK);
    nor_3 #(1'b0) NOR33333(RLG3,            XB1_,           XT0_,           RCHG_,                  SIM_CLK);
    nor_3 #(1'b0) NOR33330(RLG_,            RLG1,           RLG2,           RLG3,                   SIM_CLK);
    // NOR33332 and NOR33334 omitted
    nor_1 #(1'b0) NOR33335(NOR33335_out,    RLG_,                                                   SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MRLG = NOR33335_out;
    
    // RZG_
    nor_2 #(1'b0) NOR33336(NOR33336_out,    RT_,            RZ_,                                    SIM_CLK);
    nor_2 #(1'b0) NOR33337(NOR33337_out,    XB5_,           RSCG_,                                  SIM_CLK);
    nor_2 #(1'b0) NOR33338(RZG_,            NOR33336_out,   NOR33337_out,                           SIM_CLK);
    // NOR33339 and NOR33340 omitted
    
    // REBG_
    nor_2 #(1'b0) NOR33327(NOR33327_out,    RSCG_,          XB3_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33328(REBG_,           NOR33327_out,                                           SIM_CLK);
    
    // RUG_
    nor_2 #(1'b0) NOR33341(NOR33341_out,    RT_,            RU_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33348(RUG_,            NOR33341_out,                                           SIM_CLK);
    
    // RUSG_
    nor_2 #(1'b0) NOR33345(NOR33345_out,    RT_,            RUS_,                                   SIM_CLK);
    nor_1 #(1'b0) NOR33349(RUSG_,           NOR33345_out,                                           SIM_CLK);
    
    // RULOG_, MRULOG
    nor_2 #(1'b0) NOR33342(RULOG_,          NOR33345_out,   NOR33341_out,                           SIM_CLK);
    // NOR33343 and NOR33344 omitted
    nor_2 #(1'b0) NOR33346(NOR33346_out,    NOR33345_out,   NOR33341_out,                           SIM_CLK);
    
    nor_1 #(1'b0) NOR33347(NOR33347_out,    NOR33346_out,                                           SIM_CLK);
    // Monitor output, no cross-module fan-out
    assign MRULOG = NOR33347_out;
    
    // RBHG_
    nor_2 #(1'b0) NOR33350(NOR33350_out,    RT_,            RB_,                                    SIM_CLK);
    nor_1 #(1'b0) NOR33351(RBHG_,           NOR33350_out,                                           SIM_CLK);
    // NOR33360 and NOR33361 omitted
    
    // RBLG_
    nor_1 #(1'b0) NOR33355(NOR33355_out,    RL10BB,                                                 SIM_CLK);
    nor_2 #(1'b0) NOR33352(NOR33352_out,    RT_,            NOR33355_out,                           SIM_CLK);
    nor_2 #(1'b0) NOR33353(RBLG_,           NOR33350_out,   NOR33352_out,                           SIM_CLK);
    // NOR33354 omitted
    
    // CI01_
    nor_2 #(1'b0) NOR33356(CI01_,           CIFF,           CINORM,                                 SIM_CLK);
    
    // NOR33358 not connected
endmodule
