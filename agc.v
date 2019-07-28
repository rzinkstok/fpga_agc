module agc(CLOCK, CLK, SIM_CLK);
    input wire CLOCK, SIM_CLK;
    output wire CLK;
    
    reg STOP = 0;
    wire PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A;
    wire RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    wire F01A, F01B, F01C, F01D, FS01, FS01_;
    wire SB0, SB1, SB2, SB4, EDSET;
    
    a2_timer timer(
        CLOCK, STOP, 
        CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        F01A, F01B, F01C, F01D, FS01, FS01_,
        SB0, SB1, SB2, SB4, EDSET,
        SIM_CLK
    );
   
endmodule