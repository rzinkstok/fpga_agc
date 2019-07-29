`timescale 1us/1ns

module tb;
    reg CLOCK = 0;
    reg SIM_CLK = 1;
    reg SBY = 0;
    reg ALGA = 0;
    reg MSTRTP = 0;
    reg STRT1 = 0;
    reg STRT2 = 0;
    reg GOJ1 = 0;
    reg MSTP = 0;
    
    wire NOR37101_out, NOR37102_out, NOR37103_out, NOR37105_out, NOR37106_out, NOR37111_out, NOR37112_out, NOR37113_out, NOR37114_out;
    wire CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    wire F01A, F01B, F01C, F01D, FS01, FS01_;
    wire SB0, SB1, SB2, SB4, EDSET;
    wire STOPA, GOJAM, GOJAM_, STOP, STOP_;
    wire MSTPIT_, MGOJAM;
    wire T01, T01DC_, T02, T02DC_, T03, T03DC_, T04, T04DC_, T05, T05DC_, T06, T06DC_;
    wire T07, T07DC_, T08, T08DC_, T09, T09DC_, T10, T10DC_, T11, T12, T12DC_;
    wire T12SET;
    
    always 
        //#0.244140625 CLOCK = !CLOCK;
	    #0.25 CLOCK = !CLOCK;  
    always
        #0.0025 SIM_CLK = !SIM_CLK;

    a2_timer timer(
        CLOCK, 
        NOR37101_out, NOR37102_out, NOR37103_out, NOR37105_out, NOR37106_out, NOR37111_out, NOR37112_out, NOR37113_out, NOR37114_out,
        CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        F01A, F01B, F01C, F01D, FS01, FS01_,
        SB0, SB1, SB2, SB4, EDSET,
        SBY, ALGA, MSTRTP, STRT1, STRT2, GOJ1, MSTP,
        STOPA, GOJAM, GOJAM_, STOP, STOP_,
        MSTPIT_, MGOJAM,
        T01, T01DC_, T02, T02DC_, T03, T03DC_, T04, T04DC_, T05, T05DC_, T06, T06DC_,
        T07, T07DC_, T08, T08DC_, T09, T09DC_, T10, T10DC_, T11, T12, T12DC_,
        T12SET,
        SIM_CLK
    );
   
    initial
    begin
       #30 $stop;
    end   
endmodule