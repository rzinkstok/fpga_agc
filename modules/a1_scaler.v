module a1_scaler(
    FS01_, RCHAT_, RCHBT_,
    FS02, FS02A, F02A, F02B,
    FS03, FS03A, F03A, F03B,
    FS04, FS04A, F04A, F04B,
    FS05, FS05A, F05A, F05B,
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
    output wire FS04, FS04A, F04A, F04B;
    wire NOR38223_out,NOR38224_out, NOR38225_out;
    
    nor_1 #(1'b0) NOR38221(FS04A,           NOR38224_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38222(F04A,            NOR38224_out,   NOR38223_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38223(NOR38223_out,    F04A,           F03A,           NOR38225_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38224(NOR38224_out,    NOR38223_out,   FS04,                           SIM_CLK);
    nor_3 #(1'b0) NOR38225(NOR38225_out,    NOR38223_out,   F03A,           F04B,           SIM_CLK);
    nor_2 #(1'b1) NOR38226(FS04,            NOR38224_out,   NOR38225_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38227(F04B,            NOR38225,       FS04,                           SIM_CLK);
    
    // Gates NOR38228 - NOR38230 not used
    
    // Stage 5
    output wire FS05, FS05A, F05A, F05B;
    wire NOR38233_out,NOR38234_out, NOR38235_out;
    
    nor_1 #(1'b0) NOR38231(FS05A,           NOR38234_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38232(F05A,            NOR38234_out,   NOR38233_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38233(NOR38233_out,    F05A,           F04A,           NOR38235_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38234(NOR38234_out,    NOR38233_out,   FS05,                           SIM_CLK);
    nor_3 #(1'b0) NOR38235(NOR38235_out,    NOR38233_out,   F04A,           F05B,           SIM_CLK);
    nor_2 #(1'b1) NOR38236(FS05,            NOR38234_out,   NOR38235_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38237(F05B,            NOR38235,       FS05,                           SIM_CLK);
    
    // Gates NOR38238 - NOR38240 not used
    
    /**************************
     *
     *  Module A1 sheet 2
     *  Sheet number 2005259/2
     *
     **************************/
    
    input wire RCHBT_;
    
    

endmodule