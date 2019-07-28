module agc();
    reg CLOCK = 0;
    reg STOP = 0;
    reg SIM_RST = 1;
    reg SIM_CLK = 1;
	
    wire CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
	wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    
	a2_timer timer(
        CLOCK, STOP, 
        CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_, 
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        SIM_RST, SIM_CLK
    );
    
endmodule