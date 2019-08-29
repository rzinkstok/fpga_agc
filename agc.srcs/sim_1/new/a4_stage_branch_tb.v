`timescale 1ns / 1ps

module a4_stage_branch_tb(

    );
    
    reg PHS2_, PHS3_, PHS4, PHS4_, T01, T03_, T12_,
        SUMA16_, SUMB16_,
        WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_, WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL15_, WL16_,
        QC0_, SQ0_, SQ1_, SQ2_, SQEXT, SQEXT_,
        DVST,
        ST1, ST2,
        INKL,
        MTCSAI,
        GOJAM,
        RSTSTG,
        STRTFC,
        TRSM,
        XT1_,
        XB7_,
        NDR100_,
        UNF_, L15_,
        TSGU_, TOV_, TSGN_,
        GEQZRO_, OVF_,
        TPZG_, TMZ_,
        T01_, T02_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_,
        QC1_, QC2_, QC3_,
        SQR10, SQR10_, SQR12_,
        EXST0_, EXST1_,
        IC12, IC13, IC15,
        n7XP14,
        RSM3, RSM3_,
        STORE1_,
        RSC_,
        MP0_, MP1, MP3_, MP3A,
        TS0_,
        SIM_CLK;
         
    wire DIV_,
        ST376, ST376_,
        DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764,
        ST0_, ST1_, STD2, ST3_, ST4_, ST1376_,
        MST1, MST2,
        SGUM,
        BR1, BR1_, MBR1, BR2, BR2_, MBR2,
        READ0, READ0_, WRITE0, WRITE0_, RAND0, WAND0, INOUT, INOUT_,
        ROR0, WOR0, WOR0_, RXOR0, RXOR0_,
        RUPT0, RUPT0_, RUPT1, RUPT1_,
        BPP4, PRINC, RRPA,
        n1XP10, n2XP3, n2XP5, n3XP2, n3XP7, n4XP5, n4XP11, n5XP4, n5XP11, n5XP28, n6XP5, n7XP19, n8XP5, n8XP6, n9XP1,
        A04_RA_, A04_RB_, A04_RC_, A04_RB1_, A04_R1C_, A04_RSC_, A04_WG_, A04_WL_, A04_WY_, A04_CI_, A04_TMZ_, A04_TSGN_, A04_L16_,
        R15, RB2, WCH_,
        MRSC_, MP0T10,    
        B15X, BR1B2, BR1B2_, BR12B, BR12B_, BRDIF_, BR1B2B, BR1B2B_,
        TL15,
        KRPT;
    
    always
        #10 SIM_CLK = !SIM_CLK;    // 20 ns gate delay
    
    a4_stage_branch a4(
        // Inputs
        PHS2_, PHS3_, PHS4, PHS4_, T01, T03_, T12_,
        SUMA16_, SUMB16_,
        WL01_, WL02_, WL03_, WL04_, WL05_, WL06_, WL07_, WL08_, WL09_, WL10_, WL11_, WL12_, WL13_, WL14_, WL15_, WL16_,
        QC0_, QC1_, QC2_, QC3_,
        SQ0_, SQ1_, SQ2_, SQEXT, SQEXT_,
        DVST,
        ST1, ST2,
        INKL,
        MTCSAI,
        GOJAM,
        RSTSTG,
        STRTFC,
        TRSM,
        XT1_,
        XB7_,
        NDR100_,
        UNF_, L15_,
        TSGU_, TOV_, TSGN_,
        GEQZRO_, OVF_,
        TPZG_, TMZ_,
        T01_, T02_, T04_, T05_, T06_, T07_, T08_, T09_, T10_, T11_,
        
        SQR10, SQR10_, SQR12_,
        EXST0_, EXST1_,
        IC12, IC13, IC15,
        n7XP14,
        RSM3, RSM3_,
        STORE1_,
        RSC_,
        MP0_, MP1, MP3_, MP3A,
        TS0_,
        
        // Outputs
        DIV_,
        ST376, ST376_,
        DV0, DV0_, DV1, DV1_, DV4, DV4_, DV376, DV376_, DV1376, DV1376_, DV3764,
        ST0_, ST1_, STD2, ST3_, ST4_, ST1376_,
        MST1, MST2,
        SGUM,
        BR1, BR1_, MBR1, BR2, BR2_, MBR2,
        READ0, READ0_, WRITE0, WRITE0_, RAND0, WAND0, INOUT, INOUT_,
        ROR0, WOR0, WOR0_, RXOR0, RXOR0_,
        RUPT0, RUPT0_, RUPT1, RUPT1_,
        BPP4, PRINC, RRPA,
        n1XP10, n2XP3, n2XP5, n3XP2, n3XP7, n4XP5, n4XP11, n5XP4, n5XP11, n5XP28, n6XP5, n7XP19, n8XP5, n8XP6, n9XP1,
        A04_RA_, A04_RB_, A04_RC_, A04_RB1_, A04_R1C_, A04_RSC_, A04_WG_, A04_WL_, A04_WY_, A04_CI_, A04_TMZ_, A04_TSGN_, A04_L16_,
        R15, RB2, WCH_,
        MRSC_, MP0T10,    
        B15X, BR1B2, BR1B2_, BR12B, BR12B_, BRDIF_, BR1B2B, BR1B2B_,
        TL15,
        KRPT,
        
        SIM_CLK
    );
    
    initial
    begin
        #7900
        $stop;
    end
    
endmodule
