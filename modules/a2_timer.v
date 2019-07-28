module a2_timer(
    CLOCK, 
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

    input wire SIM_CLK;
    
	// input wires used in multiple sheets
	input wire STOP, T12DC_;
    
    /************************
     *
     *  Module A2 sheet 1
     *  Sheet number 205260/1
     *
     ************************/
    
    input wire CLOCK;
    
    output wire CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, RT_, WT, WT_, TT_, OVFSTB_;
    output wand MONWT, Q2A;
    output wire RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
    
    wire NOR37101_out;
    wire NOR37102_out;
    wire NOR37103_out;
    wire NOR37105_out;
    wire NOR37106_out;
    wire NOR37107_out;
    wire NOR37111_out;
    wire NOR37112_out;
    wire NOR37113_out;
    wire NOR37114_out;
    wire NOR37117_out;
    wire NOR37118_out;
    wire NOR37121_out;
    wire NOR37136_out;
    wire BUF37136_proxy;
    wire NOR37138_out;
    wire BUF37138_proxy;
    wire NOR37139_out;
    wire NOR37148_out;
    wire NOR37149_out;
    wire NOR37150_out;
    wire NOR37152_out;
    wire NOR37153_out;
    wire NOR37154_out;
    
    // Clock divider 1
    nor_2 #(1'b0) NOR37101(NOR37101_out,    NOR37105_out,   NOR37102_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR37102(NOR37102_out,    NOR37101_out,   CLOCK,          NOR37103_out,   SIM_CLK);
    nor_3 #(1'b1) NOR37103(NOR37103_out,    NOR37102_out,   CLOCK,          PHS2,           SIM_CLK);
    nor_2 #(1'b0) NOR37104(PHS2,            NOR37103_out,   NOR37106_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR37105(NOR37105_out,    NOR37102_out,   NOR37106_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37106(NOR37106_out,    NOR37105_out,   NOR37103_out,                   SIM_CLK);
    
    // PHS4 and PHS4_
    nor_1 #(1'b1) NOR37107(NOR37107_out,    NOR37101_out,                                   SIM_CLK);
    nor_2 #(1'b0) NOR37108(PHS4,            NOR37107_out,   NOR37103_out,                   SIM_CLK);
    nor_1 #(1'b0) NOR37109(PHS4_,           PHS4,                                           SIM_CLK);
    //nor_1 #(1'b1) NOR37110(PHS4_,         PHS4,                                           SIM_CLK);
    
    // Clock divider 2, part 1
    nor_2 #(1'b0) NOR37111(NOR37111_out,    NOR37117_out,   NOR37112_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR37112(NOR37112_out,    NOR37111_out,   NOR37107_out,   NOR37113_out,   SIM_CLK);
    nor_3 #(1'b1) NOR37113(NOR37113_out,    NOR37112_out,   NOR37107_out,   NOR37114_out,   SIM_CLK);
    nor_2 #(1'b0) NOR37114(NOR37114_out,    NOR37113_out,   NOR37118_out,                   SIM_CLK);
    
    // RINGA_
    nor_1 #(1'b1) NOR37115(RINGA_,          NOR37111_out,                                   SIM_CLK);
    //nor_1 #(1'b1) NOR37116(RINGA_,        NOR37111_out,                                   SIM_CLK);
    
    // Clock divider 2, part 2
    nor_2 #(1'b1) NOR37117(NOR37117_out,    NOR37112_out,   NOR37118_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37118(NOR37118_out,    NOR37117_out,   NOR37113_out,                   SIM_CLK);
    
    // RINGB_
    nor_1 #(1'b1) NOR37119(RINGB_,          NOR37114_out,                                   SIM_CLK);
    //nor_1 #(1'b1) NOR37120(RINGB_,        NOR37114_out,                                   SIM_CLK);
    
    // ODDSET_
    nor_2 #(1'b0) NOR37121(NOR37121_out,    STOP,           RINGA_,                         SIM_CLK);
    nor_1 #(1'b0) NOR37122(ODDSET_,         NOR37121_out,                                   SIM_CLK);
    //nor_1 #(1'b1) NOR37123(ODDSET_,       NOR37121_out,                                   SIM_CLK);
    //nor_1 #(1'b1) NOR37124(ODDSET_,       NOR37121_out,                                   SIM_CLK);
    
    // EVNSET and EVNSET_
    nor_1 #(1'b0) NOR37125(EVNSET,          RINGB_,                                         SIM_CLK);
    nor_1 #(1'b0) NOR37126(EVNSET_,         EVNSET,                                         SIM_CLK);
    //nor_1 #(1'b0) NOR37127(EVNSET_,       EVNSET,                                         SIM_CLK);
    //nor_1 #(1'b0) NOR37128(EVNSET_,       EVNSET,                                         SIM_CLK);
    
    // RT
    nor_1 #(1'b0) NOR37129(RT,              NOR37103_out,                                   SIM_CLK);
    
    // RT_, from page 3
     nor_1 #(1'b0) NOR37350(RT_,            RT,                                             SIM_CLK);
     //nor_1 #(1'b0) NOR37351(RT_,          RT,                                             SIM_CLK);
     //nor_1 #(1'b0) NOR37352(RT_,          RT,                                             SIM_CLK);
     
    // WT, WT_ and TT_
    nor_1 #(1'b0) NOR37130(WT,              NOR37105_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR37131(WT_,             WT,                                             SIM_CLK);
    //nor_1 #(1'b0) NOR37132(WT_,           WT,                                             SIM_CLK);
    //nor_1 #(1'b0) NOR37133(WT_,           WT,                                             SIM_CLK);
    //nor_1 #(1'b0) NOR37134(WT_,           WT,                                             SIM_CLK);
    nor_1 #(1'b0) NOR37135(TT_,             WT,                                             SIM_CLK);
    
    // MONWT
    nor_2 #(1'b0) NOR37136(NOR37136_out,    WT_,            WT_,                            SIM_CLK);
    od_buf        BUF37136(BUF37136_proxy,  NOR37136_out);
    assign MONWT = BUF37136_proxy;
    
    // CLK
    nor_1 #(1'b0) NOR37137(CLK,             WT_,                                            SIM_CLK);
    
    // Q2A
    nor_3 #(1'b0) NOR37138(NOR37138_out,    WT_,            WT_,            WT_,            SIM_CLK);
    od_buf        BUF37138(BUF37138_proxy,  NOR37138_out);
    assign Q2A = BUF37138_proxy;
    
    // CT and CT_
    nor_1 #(1'b1) NOR37139(NOR37139_out,    NOR37102_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR37140(CT,              NOR37139_out,                                   SIM_CLK);
    //nor_1 #(1'b0) NOR37141(CT,            NOR37139_out,                                   SIM_CLK);
    nor_1 #(1'b1) NOR37142(CT_,             CT,                                             SIM_CLK);
    //nor_1 #(1'b1) NOR37143(CT_,           CT,                                             SIM_CLK);
    //nor_1 #(1'b1) NOR37144(CT_,           CT,                                             SIM_CLK);
    //nor_1 #(1'b1) NOR37145(CT_,           CT,                                             SIM_CLK);
    //nor_1 #(1'b1) NOR37146(CT_,           CT,                                             SIM_CLK);
    //nor_1 #(1'b1) NOR37147(CT_,           CT,                                             SIM_CLK);
    
    // OVFSTB
    nor_2 #(1'b0) NOR37148(NOR37148_out,    CT_,            NOR37149_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37149(NOR37149_out,    NOR37154_out,   NOR37148_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37150(NOR37150_out,    NOR37152_out,   NOR37149_out,                   SIM_CLK);
    nor_1 #(1'b1) NOR37151(OVFSTB_,         NOR37149_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR37152(NOR37152_out,    NOR37150_out,   NOR37148_out,                   SIM_CLK);
    nor_1 #(1'b0) NOR37153(NOR37153_out,    NOR37152_out,                                   SIM_CLK);
    nor_1 #(1'b1) NOR37154(NOR37154_out,    NOR37153_out,                                   SIM_CLK);
    
    // PHS2_
    nor_1 #(1'b0) NOR37155(PHS2_,           PHS2,                                           SIM_CLK);
    
    // Extra PHS4_
    //nor_1 #(1'b0) NOR37156(PHS4_,         PHS4,                                           SIM_CLK);
    
    // Extra WT_
    //nor_1 #(1'b0) NOR37157(WT_,           WT,                                             SIM_CLK);
    
    // NOR37158 moved to sheet 2
    
    // Extra EVNSET_
    //nor_1 #(1'b0) NOR37159(EVNSET_,       EVNSET,                                         SIM_CLK);
    
    // NOR37160 omitted (extra gate generating a copy of T03, see sheet 3)
    
    // END OF SHEET (160 gates)
    
    
    /************************
     *
     *  Module A2 sheet 2
     *  Sheet number 205260/2
     *
     ************************/
    
    input wire SBY, ALGA, MSTRTP, STRT1, STRT2, GOJ1, MSTP;
    output wire P01, P01_, P02, P02_, P03, P03_, P04, P04_, P05, P05_;
    output wire F01A, F01B, F01C, F01D, FS01, FS01_;
    output wire SB0, SB1, SB2, SB4, EDSET;
    output wire STOPA, GOJAM, GOJAM_, STOP_;
    output wand MSTPIT_, MGOJAM;
    
    wire NOR37201_out;
    wire NOR37202_out;
    wire NOR37205_out;
    wire NOR37206_out;
    wire NOR37209_out;
    wire NOR37210_out;
    wire NOR37213_out;
    wire NOR37214_out;
    wire NOR37217_out;
    wire NOR37218_out;
    wire NOR37227_out;
    wire NOR37228_out;
    wire BUF37227_proxy;
    wire BUF37228_proxy;
    wand GOSET_;
    wire NOR37229_out;
    wire NOR37230_out;
    wire NOR37231_out;
    wire NOR37232_out;
    wire NOR37233_out;
    wire NOR37235_out;
    wire NOR37236_out;
    wire NOR37237_out;
    wire NOR37238_out;
    wire NOR37239_out;
    wire NOR37244_out;
    wire BUF37244_proxy;
    wire NOR37251_out;
    wire BUF37251_proxy;
    
    
    // Ring counter
    
    nor_3 #(1'b0) NOR37201(NOR37201_out,    RINGB_,         P05_,           P04_,           SIM_CLK);
    nor_3 #(1'b0) NOR37202(NOR37202_out,    RINGA_,         P04,            P05,            SIM_CLK);
    nor_2 #(1'b0) NOR37203(P01,             NOR37201_out,   P01_,                           SIM_CLK);
    nor_2 #(1'b1) NOR37204(P01_,            P01,            NOR37202_out,                   SIM_CLK);

    nor_2 #(1'b0) NOR37205(NOR37205_out,    RINGA_,         P01,                            SIM_CLK);
    nor_2 #(1'b0) NOR37206(NOR37206_out,    RINGB_,         P01_,                           SIM_CLK);
    nor_2 #(1'b0) NOR37207(P02,             NOR37205_out,   P02_,                           SIM_CLK);
    nor_2 #(1'b1) NOR37208(P02_,            P02,            NOR37206_out,                   SIM_CLK);
    
    // In module A5, EDSET folds back into NOR37211 via a fan-in gate attached to P03, effectively making that a 3-input NOR
    nor_2 #(1'b0) NOR37209(NOR37209_out,    RINGB_,         P02,                            SIM_CLK);
    nor_2 #(1'b0) NOR37210(NOR37210_out,    RINGA_,         P02_,                           SIM_CLK);
    nor_3 #(1'b0) NOR37211(P03,             EDSET,          NOR37209_out,   P03_,           SIM_CLK);
    nor_2 #(1'b1) NOR37212(P03_,            P03,            NOR37210_out,                   SIM_CLK);
    
    nor_2 #(1'b0) NOR37213(NOR37213_out,    RINGA_,         P03,                            SIM_CLK);
    nor_2 #(1'b0) NOR37214(NOR37214_out,    RINGB_,         P03_,                           SIM_CLK);
    nor_2 #(1'b0) NOR37215(P04,             NOR37213_out,   P04_,                           SIM_CLK);
    nor_2 #(1'b1) NOR37216(P04_,            P04,            NOR37214_out,                   SIM_CLK);
    
    nor_2 #(1'b0) NOR37217(NOR37217_out,    RINGB_,         P04,                            SIM_CLK);
    nor_2 #(1'b0) NOR37218(NOR37218_out,    RINGA_,         P04_,                           SIM_CLK);
    nor_2 #(1'b0) NOR37219(P05,             NOR37217_out,   P05_,                           SIM_CLK);
    nor_2 #(1'b1) NOR37220(P05_,            P05,            NOR37218_out,                   SIM_CLK);
    
    // Clock divider 3
    nor_2 #(1'b0) NOR37221(F01D,            FS01_,          F01B,                           SIM_CLK);
    nor_3 #(1'b0) NOR37222(F01B,            F01D,           P01_,           F01A,           SIM_CLK);
    nor_3 #(1'b1) NOR37223(F01A,            F01B,           P01_,           F01C,           SIM_CLK);
    nor_2 #(1'b0) NOR37224(F01C,            F01A,           FS01,                           SIM_CLK);
    nor_2 #(1'b1) NOR37225(FS01_,           F01B,           FS01,                           SIM_CLK);
    nor_2 #(1'b0) NOR37226(FS01,            FS01_,          F01A,                           SIM_CLK);
    
    // Restart logic
    nor_3 #(1'b1) NOR37227(NOR37227_out,    SBY,            ALGA,           MSTRTP,         SIM_CLK);
    nor_3 #(1'b1) NOR37228(NOR37228_out,    STRT1,          STRT2,          NOR37229_out,   SIM_CLK);
    od_buf        BUF37227(BUF37227_proxy,  NOR37227_out);
    od_buf        BUF37228(BUF37228_proxy,  NOR37228_out);
    // GOSET_ is displayed as an inpout connected to an unconnected pin, so it's a local wand
    assign GOSET_ = BUF37227_proxy;
    assign GOSET_ = BUF37228_proxy;
    nor_2 #(1'b0) NOR37229(NOR37229_out,    GOSET_,         GOJ1,                           SIM_CLK);
    nor_1 #(1'b0) NOR37230(NOR37230_out,    GOSET_,                                         SIM_CLK);
    nor_3 #(1'b0) NOR37231(NOR37231_out,    T12DC_,         GOSET_,         EVNSET_,        SIM_CLK);
    nor_2 #(1'b0) NOR37232(NOR37232_out,    EVNSET_,        NOR37230_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37233(NOR37233_out,    NOR37231_out,   STOPA,                          SIM_CLK);
    nor_2 #(1'b1) NOR37234(STOPA,           NOR37233_out,   NOR37232_out,                   SIM_CLK);
    nor_1 #(1'b0) NOR37235(NOR37235_out,    MSTP,                                           SIM_CLK);
    nor_3 #(1'b0) NOR37236(NOR37236_out,    T12DC_,         NOR37235_out,   EVNSET_,        SIM_CLK);
    nor_2 #(1'b0) NOR37237(NOR37237_out,    EVNSET_,        MSTP,                           SIM_CLK);
    nor_2 #(1'b0) NOR37238(NOR37238_out,    NOR37236_out,   NOR37239_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR37239(NOR37239_out,    NOR37238_out,   NOR37237_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR37158(GOJAM_,          STRT2,          STOPA,                          SIM_CLK);
    // NOR37240 and NOR37241 are omitted here, and replaced with NOR37158, moved over from sheet 1.
    // Not sure why this is drawn like this...
    nor_2 #(1'b0) NOR37242(STOP_,           STOPA,          NOR37239_out,                   SIM_CLK);
    nor_1 #(1'b1) NOR37243(STOP,            STOP_,                                          SIM_CLK);
    nor_1 #(1'b0) NOR37244(NOR37244_out,    STOP,                                           SIM_CLK);
    od_buf        BUF37244(BUF37244_proxy,  NOR37244_out);
    assign MSTPIT_ = BUF37244_proxy;
    nor_1 #(1'b1) NOR37245(GOJAM,           GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37246(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37247(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37248(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37249(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37250(GOJAM,         GOJAM_,                                         SIM_CLK);
    nor_1 #(1'b0) NOR37251(NOR37251_out,    GOJAM_,                                         SIM_CLK);
    od_buf        BUF37251(BUF37251_proxy,  NOR37251_out);
    assign MGOJAM = BUF37251_proxy;
    //nor_1 #(1'b1) NOR37252(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37253(GOJAM,         GOJAM_,                                         SIM_CLK);
    //nor_1 #(1'b1) NOR37254(GOJAM,         GOJAM_,                                         SIM_CLK);
    
    // Strobe signals
    nor_2 #(1'b0) NOR37255(SB0,             P02_,           P05,                            SIM_CLK);
    nor_2 #(1'b0) NOR37256(SB1,             P05_,           P03_,                           SIM_CLK);
    nor_2 #(1'b0) NOR37257(SB2,             P05_,           P02,                            SIM_CLK);
    nor_2 #(1'b0) NOR37258(SB4,             P02_,           P04,                            SIM_CLK);
    nor_3 #(1'b0) NOR37259(EDSET,           P02,            P03_,           P04,            SIM_CLK);
    
    // END OF SHEET (259 gates)
    
    
    /************************
     *
     *  Module A2 sheet 3
     *  Sheet number 205260/3
     *
     ************************/
     
     output wire T01, T01DC_, T02, T02DC_, T03, T03DC_, T04, T04DC_, T05, T05DC_, T06, T06DC_;
     output wire T07, T07DC_, T08, T08DC_, T09, T09DC_, T10, T10DC_, T11, T12;
     output wand T12SET;
     
     wire NOR37303_out;
     wire NOR37304_out;
     wire NOR37306_out;
     wire NOR37308_out;
     wire NOR37310_out;
     wire NOR37312_out;
     wire NOR37314_out;
     wire NOR37316_out;
     wire NOR37318_out;
     wire NOR37320_out;
     wire NOR37322_out;
     wire NOR37325_out;
     wire NOR37327_out;
     wire NOR37329_out;
     wire NOR37331_out;
     wire NOR37333_out;
     wire NOR37335_out;
     wire NOR37337_out;
     wire NOR37339_out;
     wire NOR37341_out;
     wire NOR37343_out;
     wire NOR37345_out;
     wire NOR37346_out;
     wire NOR37347_out;
     wire NOR37348_out;
     wire NOR37355_out;
     wire BUF37355_proxy;
     wire NOR37356_out;
     wire BUF37356_proxy;
     wire NOR37357_out;
     wire BUF37357_proxy;
     wire NOR37358_out;
     wire BUF37358_proxy;
    
     
     // Time pulse generator
     
     
     nor_2 #(1'b0) NOR37301(T12,            T12DC_,         EVNSET_,                        SIM_CLK);
     nor_3 #(1'b1) NOR37302(T12DC_,         T12SET,         GOJAM,          NOR37303_out,   SIM_CLK);
     nor_2 #(1'b0) NOR37303(NOR37303_out,   T12DC_,         NOR37306_out,                   SIM_CLK);
     nor_2 #(1'b0) NOR37304(NOR37304_out,   T12DC_,         ODDSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37305(T01DC_,         NOR37304_out,   NOR37306_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37306(NOR37306_out,   T01DC_,         NOR37310_out,   GOJAM,          SIM_CLK);
     nor_2 #(1'b0) NOR37307(T01,            T01DC_,         ODDSET_,                        SIM_CLK);
     nor_2 #(1'b0) NOR37308(NOR37308_out,   T01DC_,         EVNSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37309(T02DC_,         NOR37308_out,   NOR37310_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37310(NOR37310_out,   T02DC_,         NOR37314_out,   GOJAM,          SIM_CLK);
     nor_2 #(1'b0) NOR37311(T02,            T02DC_,         EVNSET_,                        SIM_CLK);
     nor_2 #(1'b0) NOR37312(NOR37312_out,   T02DC_,         ODDSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37313(T03DC_,         NOR37312_out,   NOR37314_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37314(NOR37314_out,   T03DC_,         NOR37318_out,   GOJAM,          SIM_CLK);
     nor_2 #(1'b0) NOR37315(T03,            T03DC_,         ODDSET_,                        SIM_CLK);
     nor_2 #(1'b0) NOR37316(NOR37316_out,   T03DC_,         EVNSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37317(T04DC_,         NOR37316_out,   NOR37318_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37318(NOR37318_out,   T04DC_,         NOR37322_out,   GOJAM,          SIM_CLK);
     nor_2 #(1'b0) NOR37319(T04,            T04DC_,         EVNSET_,                        SIM_CLK);
     nor_2 #(1'b0) NOR37320(NOR37320_out,   T04DC_,         ODDSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37321(T05DC_,         NOR37320_out,   NOR37322_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37322(NOR37322_out,   T05DC_,         NOR37327_out,   GOJAM,          SIM_CLK);
     nor_2 #(1'b0) NOR37323(T05,            T05DC_,         ODDSET_,                        SIM_CLK);
     // NOR37324 is omitted here, and incorporated in NOR37323. Perhaps an error in the schematic?
     nor_2 #(1'b0) NOR37325(NOR37325_out,   T05DC_,         EVNSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37326(T06DC_,         NOR37327_out,   NOR37325_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37327(NOR37327_out,   GOJAM,          NOR37331_out,   T06DC_,         SIM_CLK);
     nor_2 #(1'b0) NOR37328(T06,            EVNSET_,        T06DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37329(NOR37329_out,   ODDSET_,        T06DC_,                         SIM_CLK);
     
     nor_2 #(1'b1) NOR37330(T07DC_,         NOR37331_out,   NOR37329_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37331(NOR37331_out,   GOJAM,          NOR37335_out,   T07DC_,         SIM_CLK);
     nor_2 #(1'b0) NOR37332(T07,            ODDSET_,        T07DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37333(NOR37333_out,   EVNSET_,        T07DC_,                         SIM_CLK);
     
     nor_2 #(1'b1) NOR37334(T08DC_,         NOR37335_out,   NOR37333_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37335(NOR37335_out,   GOJAM,          NOR37339_out,   T08DC_,         SIM_CLK);
     nor_2 #(1'b0) NOR37336(T08,            EVNSET_,        T08DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37337(NOR37337_out,   ODDSET_,        T08DC_,                         SIM_CLK);
     
     nor_2 #(1'b1) NOR37338(T09DC_,         NOR37339_out,   NOR37337_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37339(NOR37339_out,   GOJAM,          NOR37343_out,   T09DC_,         SIM_CLK);
     nor_2 #(1'b0) NOR37340(T09,            ODDSET_,        T09DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37341(NOR37341_out,   EVNSET_,        T09DC_,                         SIM_CLK);
     
     nor_2 #(1'b1) NOR37342(T10DC_,         NOR37343_out,   NOR37341_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37343(NOR37343_out,   GOJAM,          NOR37348_out,   T10DC_,         SIM_CLK);
     nor_2 #(1'b0) NOR37344(T10,            EVNSET_,        T10DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37345(NOR37345_out,   ODDSET_,        T10DC_,                         SIM_CLK);
     nor_2 #(1'b0) NOR37346(NOR37346_out,   NOR37343_out,   EVNSET_,                        SIM_CLK);
     
     nor_2 #(1'b1) NOR37347(NOR37347_out,   NOR37348_out,   NOR37345_out,                   SIM_CLK);
     nor_3 #(1'b0) NOR37348(NOR37348_out,   GOJAM,          NOR37346_out,   NOR37347_out,   SIM_CLK);
     
     nor_2 #(1'b0) NOR37349(T11,            ODDSET_,        NOR37347_out,                   SIM_CLK);
     
     // Gates 37350 - 37352 (RT_ generation) moved to sheet 1
     // Gates 37353 - 37354 (part of WL OVF/UNF detection) moved below
     
     nor_3 #(1'b0) NOR37355(NOR37355_out,   EVNSET_,        NOR37339_out,   NOR37343_out,   SIM_CLK);
     od_buf        BUF37355(BUF37355_proxy, NOR37355_out);
     assign T12SET = BUF37355_proxy;
     
     nor_3 #(1'b0) NOR37356(NOR37356_out,   NOR37327_out,   NOR37331_out,   NOR37335_out,   SIM_CLK);
     od_buf        BUF37356(BUF37356_proxy, NOR37356_out);
     assign T12SET = BUF37356_proxy;
     
     nor_3 #(1'b0) NOR37357(NOR37357_out,   NOR37322_out,   NOR37318_out,   NOR37314_out,   SIM_CLK);
     od_buf        BUF37357(BUF37357_proxy, NOR37357_out);
     assign T12SET = BUF37357_proxy;
     
     nor_2 #(1'b0) NOR37358(NOR37358_out,   NOR37310_out,   NOR37306_out,                   SIM_CLK);
     od_buf        BUF37358(BUF37358_proxy, NOR37358_out);
     assign T12SET = BUF37358_proxy;
     
     // NOR37359 omitted, extra gate generating a copy of T02
     
     // TODO: NOR37360
     
     // Gate numbers NOR37361 - NOR37400 not used
     
     
     
     
     
endmodule