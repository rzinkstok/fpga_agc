`timescale 1ns / 1ps


module a14_memory_timing_addressing(
    input wire PHS2_,
    input wire PHS3_,
    input wire PHS4_,
    
    input wire T01,
    input wire T01_,
    input wire T02_,
    input wire T03,
    input wire T03_,
    input wire T05,
    input wire T05_,
    input wire T06,
    input wire T06_,
    input wire T07,
    input wire T07_,
    input wire T08,
    input wire T08_,
    input wire T09,
    input wire T10,
    input wire T10_,
    input wire T11,
    input wire T12_,
    input wire T12A,
    
    input wire S08,
    input wire S08_,
    input wire S09,
    input wire S09_,
    input wire S11,
    input wire S12,
    
    input wire TIMR,
    input wire GOJAM,
    input wire GOJ1,
    input wire TCSAJ3,
    input wire DV3764,
    input wire MP1,
    input wire MNHSBF,
    
    input wire INOUT,
    input wire CHINC,
    input wire MAMU,
    input wire STRT2,
    
    output wire ROP_,
    output wire IHENV,
    output wire SETAB,
    output wire SETAB_,
    output wire SETCD,
    output wire SETCD_,
    output wire STBF,
    output wire SBF,
    output wire RESETA,
    output wire RESETB,
    output wire RESETC,
    output wire RESETD,
    output wire STRGAT,
    output wire CLROPE,
    
    output wire ERAS,
    output wire ERAS_,
    output wire FNERAS_,
    output wire WEX,
    output wire WEY,
    output wire RSTKX_,
    output wire RSTKY_,
    output wire ZID,
    output wire SETEK,
    
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A14 sheet 1
    *  Sheet number 2005264/1
    *
    **************************/
    
    wire NOR42103_out;
    wire NOR42104_out;
    wire NOR42105_out;
    wire NOR42106_out;
    wire NOR42107_out;
    wire NOR42109_out;
    wire NOR42110_out;
    wire NOR42111_out;
    wire NOR42112_out;
    wire NOR42113_out;
    wire NOR42114_out;
    wire NOR42115_out;
    wire NOR42120_out;
    wire NOR42122_out;
    wire NOR42123_out;
    wire NOR42125_out;
    wire NOR42126_out;
    wire NOR42127_out;
    wire NOR42128_out;
    wire NOR42129_out;
    wire NOR42130_out;
    wire NOR42131_out;
    wire NOR42132_out;
    wire NOR42135_out;
    wire NOR42136_out;
    wire NOR42137_out;
    wire NOR42138_out;
    wire NOR42141_out;
    wire NOR42142_out;
    wire NOR42143_out;
    wire NOR42144_out;
    wire NOR42145_out;
    wire NOR42147_out;
    wire NOR42148_out;
    wire NOR42150_out;
    wire NOR42151_out;
    wire NOR42154_out;
    wire NOR42155_out;
    wire NOR42156_out;
    
    wire NOR42201_out;
    wire NOR42202_out;
    wire NOR42203_out;
    wire NOR42204_out;
    wire NOR42205_out;
    wire NOR42206_out;
    wire NOR42209_out;
    wire NOR42210_out;
    wire NOR42211_out;
    wire NOR42212_out;
    wire NOR42213_out;
    wire NOR42214_out;
    wire NOR42215_out;
    wire NOR42216_out;
    wire NOR42217_out;
    wire NOR42218_out;
    wire NOR42220_out;
    wire NOR42221_out;
    wire NOR42224_out;
    wire NOR42226_out;
    wire NOR42227_out;
    wire NOR42228_out;
    wire NOR42229_out;
    wire NOR42232_out;
    wire NOR42233_out;
    wire NOR42242_out;
    wire NOR42243_out;
    wire NOR42244_out;
    
    wire NOR42254_out;
    wire NOR42255_out;
    wire NOR42256_out;
    
    wire NOR40222_out;
    
    wire SBFSET;
    wire CLEARA;
    wire CLEARB;
    wire CLEARC;
    wire CLEARD;
    wire S08A;
    wire S08A_;
    wire TPGF;
    wire RSTK_;
    wire REDRST;
    
    
    // Fixed memory timing signals
    
    // ROP_
    nor_2 #(1'b0) NOR42101(ROP_,            S11,            S12,                                            reset, prop_clk);
    // NOR42102 omitted (fan-out expansion)
    
    // IHENV
    nor_2 #(1'b0) NOR42103(NOR42103_out,    T08_,           PHS3_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42104(NOR42104_out,    NOR42103_out,   NOR42105_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42105(NOR42105_out,    NOR42104_out,   T09,            GOJAM,                          reset, prop_clk);
    nor_3 #(1'b0) NOR42106(NOR42106_out,    ROP_,           NOR42104_out,   T08,                            reset, prop_clk);
    nor_2 #(1'b1) NOR42107(NOR42107_out,    NOR42106_out,   NOR42109_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42109(NOR42109_out,    NOR42107_out,   NOR42110_out,   TIMR,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42108(IHENV,           NOR42107_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42110(NOR42110_out,    T01_,                                                           reset, prop_clk);
    
    // SETAB, SETCD
    nor_3 #(1'b0) NOR42111(NOR42111_out,    TIMR,           NOR42110_out,   NOR42112_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR42112(NOR42112_out,    NOR42111_out,   NOR42113_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42113(NOR42113_out,    PHS4_,          ROP_,           T10_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR42114(NOR42114_out,    S09,            NOR42112_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR42115(NOR42115_out,    NOR42112_out,   S09_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR42116(SETAB_,          NOR42114_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42117(SETCD_,          NOR42115_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42118(SETAB,           SETAB_,                                                         reset, prop_clk);
    nor_1 #(1'b0) NOR42119(SETCD,           SETCD_,                                                         reset, prop_clk);
    
    // SBF
    nor_3 #(1'b0) NOR42120(NOR42120_out,    ROP_,           T06_,           DV3764,                         reset, prop_clk);
    nor_3 #(1'b0) NOR42122(NOR42122_out,    MNHSBF,         MP1,            PHS4_,                          reset, prop_clk);
    assign SBFSET = NOR42120_out & NOR42122_out;
    nor_2 #(1'b0) NOR42125(NOR42125_out,    T07_,           PHS3_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42123(NOR42123_out,    STBF,           SBFSET,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR42124(STBF,            GOJAM,          NOR42125_out,   NOR42123_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR42121(SBF,             NOR42123_out,                                                   reset, prop_clk);
    
    // S08A, S08A_ moved here from A8 sheet 1
    nor_1 #(1'b0) NOR51261(S08A_,           S08,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR51262(S08A,            S08_,                                                           reset, prop_clk);
    
    // CLEARA, CLEARB, CLEARC, CLEARD
    // CLEARA moved here from A8 sheet 1
    nor_2 #(1'b0) NOR51161(CLEARA,          SETAB_,         S08A_,                                          reset, prop_clk);
    // CLEARB moved here from A8 sheet 2
    nor_2 #(1'b0) NOR51461(CLEARB,          SETAB_,         S08A,                                           reset, prop_clk);
    // CLEARC moved here from A8 sheet 2
    nor_2 #(1'b0) NOR51361(CLEARC,          SETCD_,         S08A_,                                          reset, prop_clk);
    // CLEARD moved here from A8 sheet 2
    nor_2 #(1'b0) NOR51362(CLEARD,          SETCD_,         S08A,                                           reset, prop_clk);
    
    // RESETA, RESETB, RESETC, RESETD
    nor_3 #(1'b0) NOR42128(NOR42128_out,    T05_,           PHS3_,          ROP_,                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42126(NOR42126_out,    NOR42127_out,   T08,            GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR42127(NOR42127_out,    NOR42128_out,   NOR42126_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR42129(NOR42129_out,    S09,            NOR42127_out,   S08,                            reset, prop_clk);
    nor_2 #(1'b0) NOR42130(NOR42130_out,    CLEARA,         NOR42129_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42133(RESETA,          NOR42130_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR42131(NOR42131_out,    NOR42127_out,   S09,            S08_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR42132(NOR42132_out,    CLEARB,         NOR42131_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42134(RESETB,          NOR42132_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR42135(NOR42135_out,    NOR42127_out,   S08,            S09_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR42136(NOR42136_out,    CLEARC,         NOR42135_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42139(RESETC,          NOR42136_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR42137(NOR42137_out,    NOR42127_out,   S09_,           S08_,                           reset, prop_clk);
    nor_2 #(1'b0) NOR42138(NOR42138_out,    NOR42137_out,   CLEARD,                                         reset, prop_clk);
    nor_1 #(1'b0) NOR42140(RESETD,          NOR42138_out,                                                   reset, prop_clk);
    
    // TPGF
    nor_2 #(1'b0) NOR42141(NOR42141_out,    PHS2_,          MP1,                                            reset, prop_clk);
    nor_3 #(1'b0) NOR42142(NOR42142_out,    GOJ1,           GOJAM,          TCSAJ3,                         reset, prop_clk);
    nor_3 #(1'b0) NOR42143(NOR42143_out,    ROP_,           T08_,           DV3764,                         reset, prop_clk);
    assign TPGF = NOR42141_out & NOR42142_out & NOR42143_out;
    
    // STRGAT
    nor_2 #(1'b0) NOR42144(NOR42144_out,    T02_,           ROP_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR42145(NOR42145_out,    NOR42144_out,   STRGAT,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR42146(STRGAT,          NOR42145_out,   T08,            GOJAM,                          reset, prop_clk);
    
    // CLROPE
    nor_2 #(1'b0) NOR42154(NOR42154_out,    ROP_,           T10_,                                           reset, prop_clk);
    nor_2 #(1'b1) NOR42155(NOR42155_out,    NOR42154_out,   NOR42156_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42156(NOR42156_out,    NOR42155_out,   T03,            GOJAM,                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR42147(NOR42147_out,    ROP_,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR42148(NOR42148_out,    T02_,           NOR42147_out,   NOR42155_out,                   reset, prop_clk);
    // NOR42149 omitted (fan-out expansion)
    nor_2 #(1'b1) NOR42150(NOR42150_out,    NOR42148_out,   NOR42151_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42151(NOR42151_out,    NOR42150_out,   T07,            GOJAM,                          reset, prop_clk);
    nor_1 #(1'b0) NOR42152(CLROPE,          NOR42150_out,                                                   reset, prop_clk);
    // NOR42153 omitted (fan-out expansion)
    
    // NOR42157 moved to A06 sheet 1
    // NOR42158 omitted (not connected)
    
    
    // Erasable memory timing
    
    // ERAS, FNERAS
    nor_3 #(1'b0) NOR42254(NOR42254_out,    TCSAJ3,         S11,            S12,                            reset, prop_clk);
    nor_3 #(1'b0) NOR42255(NOR42255_out,    INOUT,          CHINC,          GOJ1,                           reset, prop_clk);
    nor_2 #(1'b0) NOR42256(NOR42256_out,    MP1,            MAMU,                                           reset, prop_clk);
    assign ERAS = NOR42254_out & NOR42255_out & NOR42256_out;
    nor_1 #(1'b0) NOR42252(ERAS_,           ERAS,                                                           reset, prop_clk);
    // NOR42253 omitted (fan-out expansion)
    
    nor_2 #(1'b0) NOR42224(NOR42224_out,    T05_,           ERAS_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42225(FNERAS_,         NOR42224_out,   NOR42226_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42226(NOR42226_out,    FNERAS_,        T12A,           GOJAM,                          reset, prop_clk);
    
    // WEX, WEY
    nor_2 #(1'b0) NOR42201(NOR42201_out,    T12_,           PHS3_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42202(NOR42202_out,    NOR42203_out,   NOR42201_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR42203(NOR42203_out,    T01,            NOR42202_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR42204(NOR42204_out,    T12A,           NOR42202_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42205(NOR42205_out,    NOR42204_out,   TIMR,           NOR42206_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR42206(NOR42206_out,    NOR42205_out,   NOR42211_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42207(WEX,             NOR42206_out,                                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR42212(NOR42212_out,    NOR42213_out,   NOR42216_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42213(NOR42213_out,    TIMR,           T11,            NOR42212_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR42211(NOR42211_out,    NOR42212_out,   T10,                                            reset, prop_clk);
    nor_3 #(1'b0) NOR42214(NOR42214_out,    T10_,           FNERAS_,        PHS4_,                          reset, prop_clk);
    nor_2 #(1'b1) NOR42209(NOR42209_out,    NOR42210_out,   NOR42214_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42210(NOR42210_out,    TIMR,           NOR42204_out,   NOR42209_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR42208(WEY,             NOR42209_out,                                                   reset, prop_clk);
    
    // RSTK_
    nor_2 #(1'b0) NOR42215(NOR42215_out,    PHS4_,          T02_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR42216(NOR42216_out,    FNERAS_,        T10_,           PHS3_,                          reset, prop_clk);
    nor_3 #(1'b0) NOR42218(NOR42218_out,    TIMR,           NOR42215_out,   RSTK_,                          reset, prop_clk);
    nor_2 #(1'b1) NOR42219(RSTK_,           NOR42218_out,   NOR42216_out,                                   reset, prop_clk);
    // Next three gates moved here from A6 sheet 1
    nor_1 #(1'b0) NOR40222(NOR40222_out,    RSTK_,                                                          reset, prop_clk);
    nor_1 #(1'b0) NOR40224(RSTKX_,          NOR40222_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR40225(RSTKY_,          NOR40222_out,                                                   reset, prop_clk);
    
    // ZID
    nor_2 #(1'b0) NOR42217(NOR42217_out,    FNERAS_,        T10_,                                           reset, prop_clk);
    nor_3 #(1'b0) NOR42220(NOR42220_out,    TIMR,           T01,            NOR42221_out,                   reset, prop_clk);
    nor_2 #(1'b1) NOR42221(NOR42221_out,    NOR42220_out,   NOR42217_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR42222(ZID,             STRT2,          NOR42221_out,                                   reset, prop_clk);
    
    // SETEK
    nor_2 #(1'b0) NOR42227(NOR42227_out,    ERAS,           T03_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR42232(NOR42232_out,    T06_,           PHS4_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42228(NOR42228_out,    NOR42227_out,   NOR42229_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42229(NOR42229_out,    NOR42228_out,   NOR42232_out,   GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR42230(SETEK,           NOR42228_out,   STRT2,                                          reset, prop_clk);
    // NOR42231 omitted (fan-out expansion)
    
    // REDRST
    nor_2 #(1'b0) NOR42244(NOR42244_out,    T05_,           PHS3_,                                          reset, prop_clk);
    nor_2 #(1'b1) NOR42242(NOR42242_out,    NOR42244_out,   NOR42243_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR42243(NOR42243_out,    NOR42242_out,   T06,                                            reset, prop_clk);
    nor_2 #(1'b0) NOR42241(REDRST,          NOR42242_out,   T05,                                            reset, prop_clk);
    
    // REY
    nor_3 #(1'b0) NOR42233(NOR42233_out,    PHS3_,          ERAS_,          T03_,                           reset, prop_clk);
    
    
    
endmodule
