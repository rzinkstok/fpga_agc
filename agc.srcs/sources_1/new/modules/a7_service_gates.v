`timescale 1ns / 1ps

module a7_service_gates(
    // inputs
    WT_, CT_,
    WY12_, WY_, WYD_, WB_, WGA_, WZ_, WSCG_, WL_, WCHG_, WA_, WS_, WQ_,
    ZAP_, SHIFT, NEAC, GINH, SR_, CYR_, CYL_, EDOP_, PIPPLS_, SB2_, XB5_, XB1_, XT0_, XB0_, XB2_, P04_,
    L15_, PIFL_,
        
    // outputs
    WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_, WBG_, CBG, WGNORM, WG1G_, WG2G_, WG3G_, WG4G_, WG5G_, WEDOPG_,
    PIPSAM, WZG_, CZG, WLG_, CLG2G, CLG1G, WAG_, CAG, WSG_, CSG, WQG_, CQG,
    MWYG, MWBG, MWG, MWZG, MWLG, MWAG, MWSG, MWQG,
    
    // input
    SIM_CLK
    );
    
    input wire SIM_CLK;
    input wire WT_, CT_;
    input wire WY12_, WY_, WYD_, WB_, WGA_, WZ_, WSCG_, WL_, WCHG_, WA_, WS_, WQ_;
    input wire ZAP_, SHIFT, NEAC, GINH, SR_, CYR_, CYL_, EDOP_, PIPPLS_, SB2_, XB5_, XB1_, XT0_, XB0_, XB2_, P04_;
    input wire L15_, PIFL_;
    
    output wire WALSG, WALSG_, WYLOG_, WYHIG_, CUG, WYDG_, WYDLOG_, WBG_, CBG, WGNORM, WG1G_, WG2G_, WG3G_, WG4G_, WG5G_, WEDOPG_;
    output wire PIPSAM, WZG_, CZG, WLG_, CLG2G, CLG1G, WAG_, CAG, WSG_, CSG, WQG_, CQG;
    output wire MWYG, MWBG, MWG, MWZG, MWLG, MWAG, MWSG, MWQG;
    
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
    
    wire G2LSG, P04A;
    
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
    
    
    
endmodule
