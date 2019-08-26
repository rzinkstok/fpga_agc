`timescale 1ns / 1ps

module a3_sq_register_tb2();
    reg NISQ = 0;
    wire NISQ_ = !NISQ;
   
    reg CLOCK = 0;
    reg SIM_CLK = 1;
    
    reg SBY = 0;
    reg ALGA = 0;
    reg MSTRTP = 0;
    reg STRT1 = 0;
    reg STRT2 = 0;
    reg GOJ1 = 0;
    reg MSTP = 0;
    reg INKL = 0;
    reg STD2 = 0;
    reg DBLTST = 0;
    reg MP3 = 0;
    reg MTCSAI = 0;
    reg INHPLS = 0;
    reg RELPLS = 0;
    reg KRPT = 0;
    reg n5XP4 = 0;
    reg EXT = 0;
    reg EXTPLS = 0;
    reg RUPTOR_ = 1;
    reg MNHRPT = 0;
    reg WL10 = 0;
    wire WL10_ = !WL10;
    reg WL11 = 0;
    wire WL11_ = !WL11; 
    reg WL12 = 0;
    wire WL12_ = !WL12;
    reg WL13 = 0;
    wire WL13_ = !WL13;
    reg WL14 = 0;
    wire WL14_ = !WL14;
    reg WL15 = 0;
    wire WL15_ = !WL15;
    reg WL16 = 0;
    wire WL16_ = !WL16;
    reg A15_ = 1;
    reg A16_ = 1;
    reg ST0_ = 0;
    reg ST1_ = 1;
    reg ST3_ = 1;
    reg BR2_ = 1;
    reg BR1B2B = 0;
    reg RXOR0 = 0;
    wire MSQ10, MSQ11, MSQ12, MSQ13, MSQ14, MSQ16, MSQEXT, MINHL, MIIP;
        
    wire CLK, PHS2, PHS2_, PHS3_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    wire F01A, F01B, F01C, F01D, FS01, FS01_;
    wire SB0, SB0_, SB1, SB1_, SB2, SB2_, SB4, EDSET;
    wire STOPA, GOJAM, GOJAM_, STOP, STOP_, TIMR;
    wire MSTPIT_, MGOJAM;
   
    wire T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_;
    wire T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_;
    wire T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_;
    wire MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET;
    wire UNF, UNF_, OVF, OVF_;
    
    always 
        #244.140625 CLOCK = !CLOCK;  // 2.048 MHz clock
    always
        #10 SIM_CLK = !SIM_CLK;    // 20 ns gate delay

    //reg FS01_ = 0;
    reg RCHAT_ = 1;
    reg RCHBT_ = 1;
    //reg SIM_CLK = 1;
    
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

    a1_scaler a1(
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
        SIM_CLK
    );
    
    a2_timer a2(
        CLOCK,
        CLK, PHS2, PHS2_, PHS3_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
        RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
        P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_,
        F01A, F01B, F01C, F01D, FS01, FS01_,
        SB0, SB0_, SB1, SB1_, SB2, SB2_, SB4, EDSET,
        SBY, ALGA, MSTRTP, STRT1, STRT2, GOJ1, MSTP,
        STOPA, GOJAM, GOJAM_, STOP, STOP_, TIMR,
        MSTPIT_, MGOJAM,
        WL15, WL15_, WL16, WL16_,
        T01, T01_, T01DC_, T02, T02_, T02DC_, T03, T03_, T03DC_, T04, T04_, T04DC_,
        T05, T05_, T05DC_, T06, T06_, T06DC_, T07, T07_, T07DC_, T08, T08_, T08DC_,
        T09, T09_, T09DC_, T10, T10_, T10DC_, T11, T11_,         T12, T12_, T12DC_,
        MT01, MT02, MT03,MT04, MT05, MT06, MT07, MT08, MT09, MT10, MT11, MT12, T12SET,
        UNF, UNF_, OVF, OVF_,
        SIM_CLK
    );
    
    a3_sq_register a3(
        NISQ, NISQ_, 
        PHS2_, 
        CT_, WT_, RT_,
        T01_, T02, T12_, 
        FS09, FS10, 
        WL10_, WL11_, WL12_, WL13_, WL14_, WL16_,
        A15_, A16_,
        ST0_, ST1_, ST3_,
        BR2_, BR1B2B,
        INKL, STD2, 
        GOJAM, MTCSAI, 
        INHPLS, RELPLS, KRPT,
        EXT, EXTPLS,
        RUPTOR_, MNHRPT, 
        RXOR0,
        n5XP4, 
        DBLTST,
        
        SQ0_,  SQ1_, SQ2_, SQ3_, SQ4_, SQ5_, SQ6_, SQ7_, SQEXT_,
        QC0_, QC1_, QC2_, QC3_,
        MSQ10, MSQ11, MSQ12, MSQ13, MSQ14, MSQ16, MSQEXT,
        MINHL, MIIP,
        
        SIM_CLK
    );
    
    initial
    begin
        #7900
        begin // SQ0, QC0, ST0
            WL10 = 0;   // SQ10 bit
            WL11 = 0;   // QC bit 0
            WL12 = 0;   // QC bit 1
            WL13 = 0;   // SQ bit 0
            WL14 = 0;   // SQ bit 1
            WL16 = 0;   // SQ bit 2
            ST0_ = 0;   // Stage counter bit 0
            ST1_ = 1;   // Stage counter bit 1
            EXT = 0;    // EXT bit
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ1, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 1;
            WL14 = 0;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ2, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 0;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900 
        begin // SQ3, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 1;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900      
        begin // SQ4, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 0;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900         
        begin // SQ5, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 1;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900      
        begin // SQ6, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 0;
            WL14 = 1;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900         
        begin // SQ7, QC0, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 1;
            WL14 = 1;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900         
        begin // SQ0, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 0;
            WL14 = 0;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900         
        begin // SQ1, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 1;
            WL14 = 0;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900         
        begin // SQ2, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 0;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ3, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 1;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ4, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 0;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ5, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 1;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ6, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 0;
            WL14 = 1;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ7, QC1, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 0;
            WL13 = 1;
            WL14 = 1;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ1, QC2, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 1;
            WL13 = 1;
            WL14 = 0;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ2, QC2, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 1;
            WL13 = 0;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ5, QC2, ST0
            WL10 = 0; 
            WL11 = 0;
            WL12 = 1;
            WL13 = 1;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ1, QC3, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 1;
            WL13 = 1;
            WL14 = 0;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ2, QC3, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 1;
            WL13 = 0;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ5, QC3, ST0
            WL10 = 0; 
            WL11 = 1;
            WL12 = 1;
            WL13 = 1;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 0;
            ST1_ = 1;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ2, QC0, ST1
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 0;
            WL14 = 1;
            WL16 = 0;
            ST0_ = 1;
            ST1_ = 0;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
        begin // SQ5, QC0, ST1
            WL10 = 0; 
            WL11 = 0;
            WL12 = 0;
            WL13 = 1;
            WL14 = 0;
            WL16 = 1;
            ST0_ = 1;
            ST1_ = 0;
            EXT = 0;
        end
        #700 NISQ = 1;
        #100 NISQ = 0;
        #10900
                       
        $stop;
    end

endmodule
