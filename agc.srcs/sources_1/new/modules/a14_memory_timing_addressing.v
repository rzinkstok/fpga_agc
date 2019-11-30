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
    input wire T04_,
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
    
    input wire S01,
    input wire S01_,
    input wire S02,
    input wire S02_,
    input wire S03,
    input wire S03_,
    input wire S04,
    input wire S04_,
    input wire S05,
    input wire S05_,
    input wire S06,
    input wire S06_,
    input wire S07,
    input wire S07_,
    input wire S08,
    input wire S08_,
    input wire S09,
    input wire S09_,
    input wire S10_,
    input wire S11,
    input wire S12,
    
    input wire EB9,
    input wire EB10,
    input wire EB11_,
    
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
    input wire SCAD,
    
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
    output wire REX,
    output wire REY,
    output wire SBE,
    output wire STBE,
    output wire TPARG_,
    
    output wire XB0,
    output wire XB0_,
    output wire XB0E,
    output wire XB1,
    output wire XB1_,
    output wire XB1E,
    output wire XB2,
    output wire XB2_,
    output wire XB2E,
    output wire XB3,
    output wire XB3_,
    output wire XB3E,
    output wire XB4,
    output wire XB4_,
    output wire XB4E,
    output wire XB5,
    output wire XB5_,
    output wire XB5E,
    output wire XB6,
    output wire XB6_,
    output wire XB6E,
    output wire XB7,
    output wire XB7_,
    output wire XB7E,
    
    output wire YB0,
    output wire YB0_,
    output wire YB0E,
    output wire YB1,
    output wire YB1_,
    output wire YB1E,
    output wire YB2,
    output wire YB2_,
    output wire YB2E,
    output wire YB3,
    output wire YB3_,
    output wire YB3E,
    
    output wire XT0,
    output wire XT0_,
    output wire XT0E,
    output wire XT1,
    output wire XT1_,
    output wire XT1E,
    output wire XT2,
    output wire XT2_,
    output wire XT2E,
    output wire XT3,
    output wire XT3_,
    output wire XT3E,
    output wire XT4,
    output wire XT4_,
    output wire XT4E,
    output wire XT5,
    output wire XT5_,
    output wire XT5E,
    output wire XT6,
    output wire XT6_,
    output wire XT6E,
    output wire XT7,
    output wire XT7_,
    output wire XT7E,
    
    output wire YT0, 
    output wire YT0_, 
    output wire YT0E, 
    output wire YT1, 
    output wire YT1_, 
    output wire YT1E, 
    output wire YT2, 
    output wire YT2_, 
    output wire YT2E, 
    output wire YT3, 
    output wire YT3_, 
    output wire YT3E, 
    output wire YT4, 
    output wire YT4_, 
    output wire YT4E, 
    output wire YT5, 
    output wire YT5_, 
    output wire YT5E, 
    output wire YT6, 
    output wire YT6_, 
    output wire YT6E, 
    output wire YT7, 
    output wire YT7_, 
    output wire YT7E,
    
    output wire EAD09,
    output wire EAD09_,
    output wire EAD10,
    output wire EAD10_,
    output wire EAD11,
    output wire EAD11_,
    
    output wire IL01,
    output wire IL01_,
    output wire IL02,
    output wire IL02_,
    output wire IL03,
    output wire IL03_,
    output wire IL04,
    output wire IL04_,
    output wire IL05,
    output wire IL05_,
    output wire IL06,
    output wire IL06_,
    output wire IL07,
    output wire IL07_,
    output wire ILP,
    output wire ILP_,
    
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
    wire NOR42234_out;
    wire NOR42235_out;
    wire NOR42238_out;
    wire NOR42239_out;
    wire NOR42240_out;
    wire NOR42242_out;
    wire NOR42243_out;
    wire NOR42244_out;
    wire NOR42246_out;
    wire NOR42248_out;
    wire NOR42250_out;
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
    wire SBESET;
    wire TPGE;
    
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
    nor_3 #(1'b0) NOR42216(NOR42216_out,    FNERAS_,        T10_,           PHS3_,                          reset, prop_clk);
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
    nor_2 #(1'b1) NOR42234(NOR42234_out,    NOR42233_out,   NOR42235_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42235(NOR42235_out,    NOR42234_out,   GOJAM,          REDRST,                         reset, prop_clk);
    nor_1 #(1'b0) NOR42236(REY,             NOR42234_out,                                                   reset, prop_clk);
    
    // REX
    nor_3 #(1'b0) NOR42240(NOR42240_out,    ERAS_,          T03_,           PHS4_,                          reset, prop_clk);
    nor_2 #(1'b1) NOR42238(NOR42238_out,    NOR42240_out,   NOR42239_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR42239(NOR42239_out,    NOR42238_out,   REDRST,         GOJAM,                          reset, prop_clk);
    nor_1 #(1'b0) NOR42237(REX,             NOR42238_out,                                                   reset, prop_clk);
    
    // SBE
    nor_3 #(1'b0) NOR42245(SBESET,          T04_,           ERAS_,          SCAD,                           reset, prop_clk);
    nor_2 #(1'b1) NOR42246(NOR42246_out,    STBE,           SBESET,                                         reset, prop_clk);
    nor_3 #(1'b0) NOR42247(STBE,            GOJAM,          T05,            NOR42246_out,                   reset, prop_clk);
    nor_1 #(1'b0) NOR42251(SBE,             NOR42246_out,                                                   reset, prop_clk);
    
    // TPGE
    nor_3 #(1'b0) NOR42248(NOR42248_out,    SCAD,           ERAS_,          GOJAM,                          reset, prop_clk);
    nor_2 #(1'b0) NOR42250(NOR42250_out,    T05_,           PHS3_,                                          reset, prop_clk);
    assign TPGE = NOR42248_out & NOR42250_out;
    
    // TPARG
    nor_2 #(1'b0) NOR42249(TPARG_,          TPGF,           TPGE,                                           reset, prop_clk); 
    
    // NOR42257 moved to A13

    
    /**************************
    *
    *  Module A14 sheet 2
    *  Sheet number 2005264/2
    *
    **************************/
    
    wire NOR42433_out;
    wire NOR42435_out;
    wire NOR42436_out;
    wire NOR42437_out;
    wire NOR42438_out;
    wire NOR42439_out;
    wire NOR42440_out;
    wire NOR42442_out;
    wire NOR42443_out;
    wire NOR42445_out;
    
    wire NOR34219_out;
    wire NOR34220_out;
    
    wire RILP1;
    wire RILP1_;
    
    // X bottom signals
    
    nor_3 #(1'b0) NOR42301(XB0,             S01,            S02,            S03,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42302(XB0_,            XB0,                                                            reset, prop_clk);
    // NOR42303-42305 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42306(XB0E,            XB0_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42307(XB1,             S01_,           S02,            S03,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42308(XB1_,            XB1,                                                            reset, prop_clk);
    // NOR42309 and NOR42310 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42311(XB1E,            XB1_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42312(XB2,             S01,            S02_,           S03,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42313(XB2_,            XB2,                                                            reset, prop_clk);
    // NOR42314 and NOR42315 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42316(XB2E,            XB2_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42317(XB3,             S01_,           S02_,           S03,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42318(XB3_,            XB3,                                                            reset, prop_clk);
    // NOR42319 and NOR42320 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42321(XB3E,            XB3_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42322(XB4,             S01,            S02,            S03_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42323(XB4_,            XB4,                                                            reset, prop_clk);
    // NOR42324 and NOR42325 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42326(XB4E,            XB4_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42327(XB5,             S01_,           S02,            S03_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42328(XB5_,            XB5,                                                            reset, prop_clk);
    // NOR42329 and NOR42330 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42331(XB5E,            XB5_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42332(XB6,             S01,            S02_,           S03_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42333(XB6_,            XB6,                                                            reset, prop_clk);
    // NOR42334 and NOR42335 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42336(XB6E,            XB6_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42337(XB7,             S01_,           S02_,           S03_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42339(XB7_,            XB7,                                                            reset, prop_clk);
    // NOR42338 omitted (not used)
    // NOR42340 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42341(XB7E,            XB7_,                                                           reset, prop_clk);
    
    
    // Y bottom signals
    nor_2 #(1'b0) NOR42342(YB0,             S07,            S08,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42343(YB0_,            YB0,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42345(YB0E,            YB0_,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR42346(YB1,             S07_,           S08,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42347(YB1_,            YB1,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42348(YB1E,            YB1_,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR42349(YB2,             S07,            S08_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR42350(YB2_,            YB2,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42351(YB2E,            YB2_,                                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR42352(YB3,             S07_,           S08_,                                           reset, prop_clk);
    nor_1 #(1'b0) NOR42353(YB3_,            YB3,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42354(YB3E,            YB3_,                                                           reset, prop_clk);
    
    // RILP1, RILP1_
    nor_2 #(1'b0) NOR42355(RILP1,           YB0,            YB3,                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42356(RILP1_,          RILP1,                                                          reset, prop_clk);
    
    // NOR42357 moved to A20 sheet ?
    
    // X top signals
    nor_3 #(1'b0) NOR42401(XT0,             S06,            S05,            S04,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42402(XT0_,            XT0,                                                            reset, prop_clk);
    // NOR42403 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42404(XT0E,            XT0_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42405(XT1,             S06,            S05,            S04_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42406(XT1_,            XT1,                                                            reset, prop_clk);
    // NOR42407 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42408(XT1E,            XT1_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42409(XT2,             S06,            S05_,           S04,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42410(XT2_,            XT2,                                                            reset, prop_clk);
    // NOR42411 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42412(XT2E,            XT2_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42413(XT3,             S06,            S05_,           S04_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42414(XT3_,            XT3,                                                            reset, prop_clk);
    // NOR42415 omitted (fan-out expansion)
    // NOR42422 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42416(XT3E,            XT3_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42417(XT4,             S06_,           S05,            S04,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42418(XT4_,            XT4,                                                            reset, prop_clk);
    // NOR42419 omitted (fan-out expansion)
    nor_1 #(1'b0) NOR42420(XT4E,            XT4_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42421(XT5,             S06_,           S05,            S04_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42423(XT5_,            XT5,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42424(XT5E,            XT5_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42425(XT6,             S06_,           S05_,           S04,                            reset, prop_clk);
    nor_1 #(1'b0) NOR42427(XT6_,            XT6,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42428(XT6E,            XT6_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR42429(XT7,             S06_,           S05_,           S04_,                           reset, prop_clk);
    nor_1 #(1'b0) NOR42431(XT7_,            XT7,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR42432(XT7E,            XT7_,                                                           reset, prop_clk);
    
    // NOR42426 omitted (fan-out expansion for A6 sheet 1
    // NOR42430 omitted (fan-out expansion for A11 sheet 2)
    
    // ILP
    nor_4 #(1'b0) NOR42433(NOR42433_out,    XT0,            XT3,            XT5,            XT6,            reset, prop_clk);
    // NOR42434 merged into NOR42433
    nor_1 #(1'b0) NOR42435(NOR42435_out,    NOR42433_out,                                                   reset, prop_clk);
    
    nor_4 #(1'b0) NOR42440(NOR42440_out,    XB0,            XB3,            XB5,            XB6,            reset, prop_clk);
    // NOR42441 merged into NOR42440
    nor_1 #(1'b0) NOR42442(NOR42442_out,    NOR42440_out,                                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR42436(NOR42436_out,    NOR42440_out,   RILP1,          NOR42433_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR42437(NOR42437_out,    NOR42442_out,   RILP1,          NOR42435_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR42438(NOR42438_out,    NOR42442_out,   RILP1_,         NOR42433_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR42439(NOR42439_out,    NOR42440_out,   RILP1_,         NOR42435_out,                   reset, prop_clk);
    
    nor_4 #(1'b0) NOR42443(NOR42443_out,    NOR42436_out,   NOR42437_out,   NOR42438_out,   NOR42439_out,   reset, prop_clk);
    // NOR42444 omitted (fan-in expansion)
    nor_1 #(1'b0) NOR42445(NOR42445_out,    NOR42443_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42446(ILP,             NOR42445_out,                                                   reset, prop_clk);
    nor_1 #(1'b0) NOR42447(ILP_,            NOR42443_out,                                                   reset, prop_clk);
    
    // NOR42448 - NOR42453 moved to A7 sheet 2
    // NOR42454 moved to A4 sheet 2
    // NOR42455 and NOR42456 removed (fan-in expansion)
    // NOR42457 moved to A18 sheet 1
    // NOR42458 removed (fan-out expansion)
    // NOR42459 moved to A13
    // NOR42460 removed (fan-out expansion)
    
    
    // EAD09 - EAD11 (moved here from A12 sheet 1)
    nor_2 #(1'b0) NOR34219(NOR34219_out,    EB9,            S10_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR34220(NOR34220_out,    EB10,           S09_,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR34221(EAD09,           S09_,           NOR34219_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR34222(EAD10,           S10_,           NOR34220_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR34223(EAD11,           S10_,           S09_,           EB11_,                          reset, prop_clk);
    nor_1 #(1'b0) NOR34224(EAD09_,          EAD09,                                                          reset, prop_clk);
    nor_1 #(1'b0) NOR34225(EAD10_,          EAD10,                                                          reset, prop_clk);
    nor_1 #(1'b0) NOR34226(EAD11_,          EAD11,                                                          reset, prop_clk);
    
    // Y top signals (moved here from A7 sheet 2)
    nor_3 #(1'b0) NOR33433(YT0,             EAD11,          EAD10,          EAD09,                          reset, prop_clk);
    nor_1 #(1'b0) NOR33434(YT0_,            YT0,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33435(YT0E,            YT0_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33436(YT1,             EAD11,          EAD10,          EAD09_,                         reset, prop_clk);
    nor_1 #(1'b0) NOR33437(YT1_,            YT1,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33438(YT1E,            YT1_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33439(YT2,             EAD11,          EAD10_,         EAD09,                          reset, prop_clk);
    nor_1 #(1'b0) NOR33440(YT2_,            YT2,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33441(YT2E,            YT2_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33442(YT3,             EAD11,          EAD10_,         EAD09_,                         reset, prop_clk);
    nor_1 #(1'b0) NOR33443(YT3_,            YT3,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33444(YT3E,            YT3_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33445(YT4,             EAD11_,         EAD10,          EAD09,                          reset, prop_clk);
    nor_1 #(1'b0) NOR33446(YT4_,            YT4,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33447(YT4E,            YT4_,                                                           reset, prop_clk);
        
    nor_3 #(1'b0) NOR33448(YT5,             EAD11_,         EAD10,          EAD09_,                         reset, prop_clk);
    nor_1 #(1'b0) NOR33449(YT5_,            YT5,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33450(YT5E,            YT5_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33451(YT6,             EAD11_,         EAD10_,         EAD09,                          reset, prop_clk);
    nor_1 #(1'b0) NOR33452(YT6_,            YT6,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33453(YT6E,            YT6_,                                                           reset, prop_clk);
    
    nor_3 #(1'b0) NOR33454(YT7,             EAD11_,         EAD10_,         EAD09_,                         reset, prop_clk);
    nor_1 #(1'b0) NOR33455(YT7_,            YT7,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR33456(YT7E,            YT7_,                                                           reset, prop_clk);
    
    // Inhibit lines
    nor_1 #(1'b0) NOR40226(IL01,            S01,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40227(IL01_,           S01_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40228(IL02,            S02,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40229(IL02_,           S02_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40230(IL03,            S03,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40231(IL03_,           S03_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40232(IL04,            S04,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40233(IL04_,           S04_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40234(IL05,            S05,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40235(IL05_,           S05_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40236(IL06,            S06,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40237(IL06_,           S06_,                                                           reset, prop_clk);
    
    nor_1 #(1'b0) NOR40238(IL07,            S07,                                                            reset, prop_clk);
    nor_1 #(1'b0) NOR40239(IL07_,           S07_,                                                           reset, prop_clk);
    
endmodule
