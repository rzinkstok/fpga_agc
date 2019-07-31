module a1_scaler(
    FS01_, RCHAT_, RCHBT_,
    FS02, FS02A, F02A, F02B,
    FS03, FS03A, F03A, F03B,
    FS04, FS04A, F04A, F04B, F04B_,
    FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
    SIM_CLK
);
    // input wire used in multiple sheets
    input wire SIM_CLK, RCHAT_;
    
    
    /**************************
     *
     *  Module A1 sheet 1
     *  Sheet number 2005259/1
     *
     **************************/
    
    input wire FS01_;
    
    // Stage 2
    output wire FS02, FS02A, F02A, F02B;
    wire NOR38203_out,NOR38204_out, NOR38205_out;
    
    nor_1 #(1'b0) NOR38201(FS02A,           NOR38204_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38202(F02A,            NOR38204_out,   NOR38203_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38203(NOR38203_out,    F02A,           FS01_,          NOR38205_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38204(NOR38204_out,    NOR38203_out,   FS02,                           SIM_CLK);
    nor_3 #(1'b0) NOR38205(NOR38205_out,    NOR38203_out,   FS01_,          F02B,           SIM_CLK);
    nor_2 #(1'b1) NOR38206(FS02,            NOR38204_out,   NOR38205_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38207(F02B,            NOR38205,       FS02,                           SIM_CLK);
    
    // Gates NOR38208 - NOR38210 not used
    
    // Stage 3
    output wire FS03, FS03A, F03A, F03B;
    wire NOR38213_out,NOR38214_out, NOR38215_out;
    
    nor_1 #(1'b0) NOR38211(FS03A,           NOR38214_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38212(F03A,            NOR38214_out,   NOR38213_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38213(NOR38213_out,    F03A,           F02A,           NOR38215_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38214(NOR38214_out,    NOR38213_out,   FS03,                           SIM_CLK);
    nor_3 #(1'b0) NOR38215(NOR38215_out,    NOR38213_out,   F02A,           F03B,           SIM_CLK);
    nor_2 #(1'b1) NOR38216(FS03,            NOR38214_out,   NOR38215_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38217(F03B,            NOR38215,       FS03,                           SIM_CLK);
    
    // Gates NOR38218 - NOR38220 not used
    
    // Stage 4
    output wire FS04, FS04A, F04A, F04B, F04B_;
    wire NOR38223_out,NOR38224_out, NOR38225_out;
    
    nor_1 #(1'b0) NOR38221(FS04A,           NOR38224_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38222(F04A,            NOR38224_out,   NOR38223_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38223(NOR38223_out,    F04A,           F03A,           NOR38225_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38224(NOR38224_out,    NOR38223_out,   FS04,                           SIM_CLK);
    nor_3 #(1'b0) NOR38225(NOR38225_out,    NOR38223_out,   F03A,           F04B,           SIM_CLK);
    nor_2 #(1'b1) NOR38226(FS04,            NOR38224_out,   NOR38225_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38227(F04B,            NOR38225,       FS04,                           SIM_CLK);
    
    // Gates NOR38228 - NOR38230 not used
    
    // F04B_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49418(F04B_,           F04B,                                           SIM_CLK);
    
    // Stage 5
    output wire FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D;
    wire NOR38233_out,NOR38234_out, NOR38235_out;
    
    nor_1 #(1'b0) NOR38231(FS05A,           NOR38234_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38232(F05A,            NOR38234_out,   NOR38233_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38233(NOR38233_out,    F05A,           F04A,           NOR38235_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38234(NOR38234_out,    NOR38233_out,   FS05,                           SIM_CLK);
    nor_3 #(1'b0) NOR38235(NOR38235_out,    NOR38233_out,   F04A,           F05B,           SIM_CLK);
    nor_2 #(1'b1) NOR38236(FS05,            NOR38234_out,   NOR38235_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38237(F05B,            NOR38235,       FS05,                           SIM_CLK);
    
    // Gates NOR38238 - NOR38240 not used
    
    // FS05_ moved here from A24 sheet 1
    nor_1 #(1'b0) NOR49205(FS05_,           FS05,                                           SIM_CLK);
    // F05A_ moved here from A24 sheet 1
    nor_1 #(1'b0) NOR49230(F05A_,           F05A,                                           SIM_CLK);
    // F05B_ moved here from A24 sheet 1
    nor_1 #(1'b0) NOR49232(F05B_,           F05B,                                           SIM_CLK);
    // F05D moved here from A24 sheet 2
    nor_2 #(1'b0) NOR49420(F05D,            F04B_,          FS05_,                          SIM_CLK);
    
    // Stage 6
    output wire FS06, FS06A, F06A, F06B, F06B_;
    wire NOR38243_out,NOR38244_out, NOR38245_out;
    
    nor_2 #(1'b0) NOR38241(CHAT01,          RCHAT_,         NOR38244_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38242(F06A,            NOR38244_out,   NOR38243_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38243(NOR38243_out,    F06A,           F05A,           NOR38245_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38244(NOR38244_out,    NOR38243_out,   FS06,                           SIM_CLK);
    nor_3 #(1'b0) NOR38245(NOR38245_out,    NOR38243_out,   F05A,           F06B,           SIM_CLK);
    nor_2 #(1'b1) NOR38246(FS06,            NOR38244_out,   NOR38245_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38237(F06B,            NOR38245,       FS06,                           SIM_CLK);
    
    // Gates NOR38248 - NOR38250 not used
    
    // F06B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46316(F06B_,           F06B,                                           SIM_CLK);
    
    /**************************
     *
     *  Module A1 sheet 2
     *  Sheet number 2005259/2
     *
     **************************/
    
    input wire RCHBT_;
    
    

endmodule