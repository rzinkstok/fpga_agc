`timescale 1us/1ns

module a2_timer_tb;
    reg CLOCK = 0;
    reg SIM_CLK = 1;
    reg SBY = 0;
    reg ALGA = 0;
    reg MSTRTP = 0;
    reg STRT1 = 0;
    reg STRT2 = 0;
    reg GOJ1 = 0;
    reg MSTP = 0;
    
    wire CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    wire F01A, F01B, F01C, F01D, FS01, FS01_;
    wire SB0, SB1, SB2, SB4, EDSET;
    wire STOPA, GOJAM, GOJAM_, STOP, STOP_;
    wire MSTPIT_, MGOJAM;
    reg WL15 = 0;
    reg WL15_ = 1;
    reg WL16 = 0;
    reg WL16_ = 1;
    wire T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_;
    wire T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_;
    wire T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_;
    wire MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET;
    wire UNF, UNF_, OVF, OVF_;
    
    always 
        #0.244140625 CLOCK = !CLOCK;  // 2.048 MHz clock
    always
        #0.010 SIM_CLK = !SIM_CLK;    // 20 ns gate delay

    a2_timer timer(
        CLOCK,
        CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        F01A, F01B, F01C, F01D, FS01, FS01_,
        SB0, SB1, SB2, SB4, EDSET,
        SBY, ALGA, MSTRTP, STRT1, STRT2, GOJ1, MSTP,
        STOPA, GOJAM, GOJAM_, STOP, STOP_,
        MSTPIT_, MGOJAM,
        WL15, WL15_, WL16, WL16_,
        T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_,
        T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_,
        T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_,
        MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET,
        UNF, UNF_, OVF, OVF_,
        SIM_CLK
    );
   
    initial
    begin
       #30 $stop;
    end   
endmodule