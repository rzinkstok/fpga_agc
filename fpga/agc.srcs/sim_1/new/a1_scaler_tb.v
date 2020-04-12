`timescale 1ns / 1ps

module a01_scaler_tb;
    reg FS01_ = 0;
    reg RCHAT_ = 1;
    reg RCHBT_ = 1;
    reg SIM_CLK = 1;
    reg reset = 0;
    
    wire FS02, FS02A, F02A, F02B,
        FS03, FS03A, F03A, F03B, F03B_,
        FS04, FS04A, F04A, F04B, F04B_,
        FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
        FS06, FS06_, F06A, F06B, F06B_,
        FS07, FS07_, FS07A, F07A, F07A_, F07B, F07B_, F07C_, F07D_,
        FS08, FS08_, F08A, F08B, F08B_,
        FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_,
        FS10, F10A, F10A_, F10B, F10B_,
        FS11, F11A, F11B,
        FS12, F12A, F12B,
        FS13, F13A, F13B,
        FS14, F14A, F14B,
        FS15, F15A, F15B,
        FS16, F16A, F16B,
        FS17, F17A, F17A_, F17B, F17B_,
        FS18, F18A, F18A_, F18B, F18B_, F18AX,
        FS19, F19A, F19B,
        FS20, F20A, F20B,
        FS21, F21A, F21B,
        FS22, F22A, F22B,
        FS23, F23A, F23B,
        FS24, F24A, F24B,
        FS25, F25A, F25B,
        FS26, F26A, F26B,
        FS27, F27A, F27B,
        FS28, F28A, F28B,
        FS29, F29A, F29B,
        FS30, F30A, F30B,
        FS31, F31A, F31B,
        FS32, F32A, F32B,
        FS33, F33A, F33B, 
        CHAT01, CHAT02, CHAT03, CHAT04, CHAT05, CHAT06, CHAT07, 
        CHAT08, CHAT09, CHAT10, CHAT11, CHAT12, CHAT13, CHAT14,
        CHBT01, CHBT02, CHBT03, CHBT04, CHBT05, CHBT06, CHBT07,
        CHBT08, CHBT09, CHBT10, CHBT11, CHBT12, CHBT13, CHBT14;

    always 
        //#244.140625 CLOCK = !CLOCK;  // 2.048 MHz clock
        #9765.625 FS01_ = !FS01_;    // 2.048 MHz clock divided by 2, divided by 10, divided by 2 = divided by 40
    always
        #10 SIM_CLK = !SIM_CLK;    // 20 ns gate delay


    a01_scaler a1(
        FS01_, RCHAT_, RCHBT_,
        FS02, FS02A, F02A, F02B,
        FS03, FS03A, F03A, F03B, F03B_,
        FS04, FS04A, F04A, F04B, F04B_,
        FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
        FS06, FS06_, F06A, F06B, F06B_,
        FS07, FS07_, FS07A, F07A, F07A_, F07B, F07B_, F07C_, F07D_,
        FS08, FS08_, F08A, F08B, F08B_,
        FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_,
        FS10, F10A, F10A_, F10B, F10B_,
        FS11, F11A, F11B,
        FS12, F12A, F12B,
        FS13, F13A, F13B,
        FS14, F14A, F14B,
        FS15, F15A, F15B,
        FS16, F16A, F16B,
        FS17, F17A, F17A_, F17B, F17B_,
        FS18, F18A, F18A_, F18B, F18B_, F18AX,
        FS19, F19A, F19B,
        FS20, F20A, F20B,
        FS21, F21A, F21B,
        FS22, F22A, F22B,
        FS23, F23A, F23B,
        FS24, F24A, F24B,
        FS25, F25A, F25B,
        FS26, F26A, F26B,
        FS27, F27A, F27B,
        FS28, F28A, F28B,
        FS29, F29A, F29B,
        FS30, F30A, F30B,
        FS31, F31A, F31B,
        FS32, F32A, F32B,
        FS33, F33A, F33B, 
        CHAT01, CHAT02, CHAT03, CHAT04, CHAT05, CHAT06, CHAT07, 
        CHAT08, CHAT09, CHAT10, CHAT11, CHAT12, CHAT13, CHAT14,
        CHBT01, CHBT02, CHBT03, CHBT04, CHBT05, CHBT06, CHBT07,
        CHBT08, CHBT09, CHBT10, CHBT11, CHBT12, CHBT13, CHBT14,
        reset,
        SIM_CLK
    );


    initial
    begin
	   #200000 $stop;
    end   
endmodule
