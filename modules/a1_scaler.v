module a1_scaler(
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
    wire NOR38203_out, NOR38204_out, NOR38205_out;
    
    nor_1 #(1'b0) NOR38201(FS02A,           NOR38204_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38202(F02A,            NOR38204_out,   NOR38203_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38203(NOR38203_out,    F02A,           FS01_,          NOR38205_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38204(NOR38204_out,    NOR38203_out,   FS02,                           SIM_CLK);
    nor_3 #(1'b0) NOR38205(NOR38205_out,    NOR38203_out,   FS01_,          F02B,           SIM_CLK);
    nor_2 #(1'b1) NOR38206(FS02,            NOR38204_out,   NOR38205_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38207(F02B,            NOR38205_out,   FS02,                           SIM_CLK);
    
    // Gates NOR38208 - NOR38210 not used
    
    
    // Stage 3
    output wire FS03, FS03A, F03A, F03B, F03B_;
    wire NOR38213_out, NOR38214_out, NOR38215_out;
    
    nor_1 #(1'b0) NOR38211(FS03A,           NOR38214_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38212(F03A,            NOR38214_out,   NOR38213_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38213(NOR38213_out,    F03A,           F02A,           NOR38215_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38214(NOR38214_out,    NOR38213_out,   FS03,                           SIM_CLK);
    nor_3 #(1'b0) NOR38215(NOR38215_out,    NOR38213_out,   F02A,           F03B,           SIM_CLK);
    nor_2 #(1'b1) NOR38216(FS03,            NOR38214_out,   NOR38215_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38217(F03B,            NOR38215_out,   FS03,                           SIM_CLK);
    
    // Gates NOR38218 - NOR38220 not used
    
    // F03B_ moved here from sheet 2
    nor_1 #(1'b0) NOR38491(F03B_,           F03B,                                           SIM_CLK);
    
    
    // Stage 4
    output wire FS04, FS04A, F04A, F04B, F04B_;
    wire NOR38223_out, NOR38224_out, NOR38225_out;
    
    nor_1 #(1'b0) NOR38221(FS04A,           NOR38224_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38222(F04A,            NOR38224_out,   NOR38223_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38223(NOR38223_out,    F04A,           F03A,           NOR38225_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38224(NOR38224_out,    NOR38223_out,   FS04,                           SIM_CLK);
    nor_3 #(1'b0) NOR38225(NOR38225_out,    NOR38223_out,   F03A,           F04B,           SIM_CLK);
    nor_2 #(1'b1) NOR38226(FS04,            NOR38224_out,   NOR38225_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38227(F04B,            NOR38225_out,   FS04,                           SIM_CLK);
    
    // Gates NOR38228 - NOR38230 not used
    
    // F04B_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49418(F04B_,           F04B,                                           SIM_CLK);
    
    
    // Stage 5
    output wire FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D;
    wire NOR38233_out, NOR38234_out, NOR38235_out;
    
    nor_1 #(1'b0) NOR38231(FS05A,           NOR38234_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38232(F05A,            NOR38234_out,   NOR38233_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38233(NOR38233_out,    F05A,           F04A,           NOR38235_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38234(NOR38234_out,    NOR38233_out,   FS05,                           SIM_CLK);
    nor_3 #(1'b0) NOR38235(NOR38235_out,    NOR38233_out,   F04A,           F05B,           SIM_CLK);
    nor_2 #(1'b1) NOR38236(FS05,            NOR38234_out,   NOR38235_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38237(F05B,            NOR38235_out,   FS05,                           SIM_CLK);
    
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
    output wire FS06,  FS06_, F06A, F06B, F06B_, CHAT01;
    wire NOR38243_out,NOR38244_out, NOR38245_out;
    
    nor_2 #(1'b0) NOR38241(CHAT01,          RCHAT_,         NOR38244_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38242(F06A,            NOR38244_out,   NOR38243_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38243(NOR38243_out,    F06A,           F05A,           NOR38245_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38244(NOR38244_out,    NOR38243_out,   FS06,                           SIM_CLK);
    nor_3 #(1'b0) NOR38245(NOR38245_out,    NOR38243_out,   F05A,           F06B,           SIM_CLK);
    nor_2 #(1'b1) NOR38246(FS06,            NOR38244_out,   NOR38245_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38247(F06B,            NOR38245_out,   FS06,                           SIM_CLK);
    
    // Gates NOR38248 - NOR38250 not used
    
    // FS06_
    nor_1 #(1'b0) NOR38190(FS06_,           FS06,                                           SIM_CLK);
    
    // F06B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46316(F06B_,           F06B,                                           SIM_CLK);
    
    
    // Stage 7
    output wire FS07, FS07_, FS07A, F07A, F07A_, F07B, F07B_, F07C_, F07D_, CHAT02;
    wire NOR38253_out, NOR38254_out, NOR38255_out, NOR49355_out, NOR49356_out;
    
    nor_2 #(1'b0) NOR38251(CHAT02,          RCHAT_,         NOR38254_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38252(F07A,            NOR38254_out,   NOR38253_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38253(NOR38253_out,    F07A,           F06A,           NOR38255_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38254(NOR38254_out,    NOR38253_out,   FS07,                           SIM_CLK);
    nor_3 #(1'b0) NOR38255(NOR38255_out,    NOR38253_out,   F06A,           F07B,           SIM_CLK);
    nor_2 #(1'b1) NOR38256(FS07,            NOR38254_out,   NOR38255_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38257(F07B,            NOR38255_out,   FS07,                           SIM_CLK);
    
    // Gates NOR38258 - NOR38260 not used
    
    // FS07_
    nor_1 #(1'b0) NOR38191(FS07_,           FS07,                                           SIM_CLK);
    
    // FS07A
    nor_1 #(1'b0) NOR38291(FS07A,           FS07_,                                          SIM_CLK);
    
    // F07A_ moved here from sheet 2
    nor_1 #(1'b0) NOR38391(F07A_,           F07A,                                           SIM_CLK);
    
    // F07B_ moved here from A24 sheet 1
    nor_1 #(1'b0) NOR49234(F07B_,           F07B,                                           SIM_CLK);
    
    // F07C_ and F07D_ moved here from A24 sheet 2
    nor_2 #(1'b0) NOR49355(NOR49355_out,    FS07_,          F06B_,                          SIM_CLK);
    nor_2 #(1'b0) NOR49356(NOR49356_out,    F06B_,          FS07A,                          SIM_CLK);
    nor_1 #(1'b0) NOR49357(F07D_,           NOR49355_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR49358(F07C_,           NOR49356_out,                                   SIM_CLK);
    
    
    // Stage 8
    output wire FS08, FS08_, F08A, F08B, F08B_, CHAT03;
    wire NOR38263_out, NOR38264_out, NOR38265_out;
    
    nor_2 #(1'b0) NOR38261(CHAT03,          RCHAT_,         NOR38264_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38262(F08A,            NOR38264_out,   NOR38263_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38263(NOR38263_out,    F08A,           F07A,           NOR38265_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38264(NOR38264_out,    NOR38263_out,   FS08,                           SIM_CLK);
    nor_3 #(1'b0) NOR38265(NOR38265_out,    NOR38263_out,   F07A,           F08B,           SIM_CLK);
    nor_2 #(1'b1) NOR38266(FS08,            NOR38264_out,   NOR38265_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38267(F08B,            NOR38265_out,   FS08,                           SIM_CLK);
    
    // Gates NOR38268 - NOR38270 not used
    
    // FS08_
    nor_1 #(1'b0) NOR38290(FS08_,           FS08,                                           SIM_CLK);
    
    // F08B_ moved here from A13 sheet 1
    nor_1 #(1'b0) NOR41241(F08B_,           F08B,                                           SIM_CLK);
    
    
    // Stage 9
    output wire FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_, CHAT04;
    wire NOR38273_out, NOR38274_out, NOR38275_out, NOR49351_out;
    
    nor_2 #(1'b0) NOR38271(CHAT04,          RCHAT_,         NOR38274_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38272(F09A,            NOR38274_out,   NOR38273_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38273(NOR38273_out,    F09A,           F08A,           NOR38275_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38274(NOR38274_out,    NOR38273_out,   FS09,                           SIM_CLK);
    nor_3 #(1'b0) NOR38275(NOR38275_out,    NOR38273_out,   F08A,           F09B,           SIM_CLK);
    nor_2 #(1'b1) NOR38276(FS09,            NOR38274_out,   NOR38275_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38277(F09B,            NOR38275_out,   FS09,                           SIM_CLK);
    
    // Gates NOR38278 - NOR38289 not used
    
    // F09B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46312(F09B_,           F09B,                                           SIM_CLK);    
    
    // F09A_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49353(F09A_,           F09A,                                           SIM_CLK);
    
    // F09D_ and FS09_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49348(FS09_,           FS09,                                           SIM_CLK);
    nor_2 #(1'b0) NOR49351(NOR49351_out,    F08B_,          F08B_,                          SIM_CLK);
    nor_2 #(1'b0) NOR49352(F09D_,           NOR49351_out,   FS09_,                          SIM_CLK);
    
    
    // Stage 10
    output wire FS10, F10A, F10A_, F10B, F10B_, CHAT05;
    wire NOR38103_out, NOR38104_out, NOR38105_out;
    
    nor_2 #(1'b0) NOR38101(CHAT05,          RCHAT_,         NOR38104_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38102(F10A,            NOR38104_out,   NOR38103_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38103(NOR38103_out,    F10A,           F09A,           NOR38105_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38104(NOR38104_out,    NOR38103_out,   FS10,                           SIM_CLK);
    nor_3 #(1'b0) NOR38105(NOR38105_out,    NOR38103_out,   F09A,           F10B,           SIM_CLK);
    nor_2 #(1'b1) NOR38106(FS10,            NOR38104_out,   NOR38105_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38107(F10B,            NOR38105_out,   FS10,                           SIM_CLK);
    
    // Gates NOR38108 - NOR38110 not used
    
    // F10A_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46314(F10A_,           F10A,                                           SIM_CLK);
    
    // F10B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46309(F10B_,           F10B,                                           SIM_CLK);
    
    // Stage 11
    output wire FS11, F11A, F11B, CHAT06;
    wire NOR38113_out, NOR38114_out, NOR38115_out;
    
    nor_2 #(1'b0) NOR38111(CHAT06,          RCHAT_,         NOR38114_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38112(F11A,            NOR38114_out,   NOR38113_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38113(NOR38113_out,    F11A,           F10A,           NOR38115_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38114(NOR38114_out,    NOR38113_out,   FS11,                           SIM_CLK);
    nor_3 #(1'b0) NOR38115(NOR38115_out,    NOR38113_out,   F10A,           F11B,           SIM_CLK);
    nor_2 #(1'b1) NOR38116(FS11,            NOR38114_out,   NOR38115_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38117(F11B,            NOR38115_out,   FS11,                           SIM_CLK);
    
    // Gates NOR38118 - NOR38120 not used
    
    
    // Stage 12
    output wire FS12, F12A, F12B, CHAT07;
    wire NOR38123_out, NOR38124_out, NOR38125_out;
    
    nor_2 #(1'b0) NOR38121(CHAT07,          RCHAT_,         NOR38124_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38122(F12A,            NOR38124_out,   NOR38123_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38123(NOR38123_out,    F12A,           F11A,           NOR38125_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38124(NOR38124_out,    NOR38123_out,   FS12,                           SIM_CLK);
    nor_3 #(1'b0) NOR38125(NOR38125_out,    NOR38123_out,   F11A,           F12B,           SIM_CLK);
    nor_2 #(1'b1) NOR38126(FS12,            NOR38124_out,   NOR38125_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38127(F12B,            NOR38125_out,   FS12,                           SIM_CLK);
    
    // Gates NOR38128 - NOR38130 not used
    
    
    // Stage 13
    output wire FS13, F13A, F13B, CHAT08;
    wire NOR38133_out, NOR38134_out, NOR38135_out;
    
    nor_2 #(1'b0) NOR38131(CHAT08,          RCHAT_,         NOR38134_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38132(F13A,            NOR38134_out,   NOR38133_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38133(NOR38133_out,    F13A,           F12A,           NOR38135_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38134(NOR38134_out,    NOR38133_out,   FS13,                           SIM_CLK);
    nor_3 #(1'b0) NOR38135(NOR38135_out,    NOR38133_out,   F12A,           F13B,           SIM_CLK);
    nor_2 #(1'b1) NOR38136(FS13,            NOR38134_out,   NOR38135_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38137(F13B,            NOR38135_out,   FS13,                           SIM_CLK);
    
    // Gates NOR38138 - NOR38140 not used
    
    
    // Stage 14
    output wire FS14, F14A, F14B, CHAT09;
    wire NOR38143_out, NOR38144_out, NOR38145_out;
    
    nor_2 #(1'b0) NOR38141(CHAT09,          RCHAT_,         NOR38144_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38142(F14A,            NOR38144_out,   NOR38143_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38143(NOR38143_out,    F14A,           F13A,           NOR38145_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38144(NOR38144_out,    NOR38143_out,   FS14,                           SIM_CLK);
    nor_3 #(1'b0) NOR38145(NOR38145_out,    NOR38143_out,   F13A,           F14B,           SIM_CLK);
    nor_2 #(1'b1) NOR38146(FS14,            NOR38144_out,   NOR38145_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38147(F14B,            NOR38145_out,   FS14,                           SIM_CLK);
    
    // Gates NOR38148 - NOR38150 not used
    
    
    // Stage 15
    output wire FS15, F15A, F15B, CHAT10;
    wire NOR38153_out, NOR38154_out, NOR38155_out;
    
    nor_2 #(1'b0) NOR38151(CHAT10,          RCHAT_,         NOR38154_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38152(F15A,            NOR38154_out,   NOR38153_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38153(NOR38153_out,    F15A,           F14A,           NOR38155_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38154(NOR38154_out,    NOR38153_out,   FS15,                           SIM_CLK);
    nor_3 #(1'b0) NOR38155(NOR38155_out,    NOR38153_out,   F14A,           F15B,           SIM_CLK);
    nor_2 #(1'b1) NOR38156(FS15,            NOR38154_out,   NOR38155_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38157(F15B,            NOR38155_out,   FS15,                           SIM_CLK);
    
    // Gates NOR38158 - NOR38160 not used
    
    
    // Stage 16
    output wire FS16, F16A, F16B, CHAT11;
    wire NOR38163_out, NOR38164_out, NOR38165_out;
    
    nor_2 #(1'b0) NOR38161(CHAT11,          RCHAT_,         NOR38164_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38162(F16A,            NOR38164_out,   NOR38163_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38163(NOR38163_out,    F16A,           F15A,           NOR38165_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38164(NOR38164_out,    NOR38163_out,   FS16,                           SIM_CLK);
    nor_3 #(1'b0) NOR38165(NOR38165_out,    NOR38163_out,   F15A,           F16B,           SIM_CLK);
    nor_2 #(1'b1) NOR38166(FS16,            NOR38164_out,   NOR38165_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38167(F16B,            NOR38165_out,   FS16,                           SIM_CLK);
    
    // Gates NOR38168 - NOR38170 not used
    
    
    // Stage 17
    output wire FS17, F17A, F17A_, F17B, F17B_, CHAT12;
    wire NOR38173_out, NOR38174_out, NOR38175_out;
    
    nor_2 #(1'b0) NOR38171(CHAT12,          RCHAT_,         NOR38174_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38172(F17A,            NOR38174_out,   NOR38173_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38173(NOR38173_out,    F17A,           F16A,           NOR38175_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38174(NOR38174_out,    NOR38173_out,   FS17,                           SIM_CLK);
    nor_3 #(1'b0) NOR38175(NOR38175_out,    NOR38173_out,   F16A,           F17B,           SIM_CLK);
    nor_2 #(1'b1) NOR38176(FS17,            NOR38174_out,   NOR38175_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38177(F17B,            NOR38175_out,   FS17,                           SIM_CLK);
    
    // Gates NOR38178 - NOR38189 not used
    
    // F17A_ moved here from A18 sheet 1
    nor_1 #(1'b0) NOR45159(F17A_,           F17A,                                           SIM_CLK);
    
    // F17B_ moved here from A18 sheet 1
    nor_1 #(1'b0) NOR45261(F17B_,           F17B,                                           SIM_CLK);
    
    // END OF SHEET
    
    /**************************
     *
     *  Module A1 sheet 2
     *  Sheet number 2005259/2
     *
     **************************/
    
    input wire RCHBT_;
    
    
    // Stage 18
    output wire FS18, F18A, F18A_, F18B, F18B_, F18AX, CHAT13;
    wire NOR38303_out, NOR38304_out, NOR38305_out;
    
    nor_2 #(1'b0) NOR38301(CHAT13,          RCHAT_,         NOR38304_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38302(F18A,            NOR38304_out,   NOR38303_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38303(NOR38303_out,    F18A,           F17A,           NOR38305_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38304(NOR38304_out,    NOR38303_out,   FS18,                           SIM_CLK);
    nor_3 #(1'b0) NOR38305(NOR38305_out,    NOR38303_out,   F17A,           F18B,           SIM_CLK);
    nor_2 #(1'b1) NOR38306(FS18,            NOR38304_out,   NOR38305_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38307(F18B,            NOR38305_out,   FS18,                           SIM_CLK);
    
    // Gates NOR38308 - NOR38310 not used
    
    // F18A_
    nor_1 #(1'b0) NOR38490(F18A_,           F18A,                                           SIM_CLK);
    
    // F18AX
    nor_1 #(1'b0) NOR38390(F18AX,           F18A_,                                          SIM_CLK);
    
    // F18B_ moved here from A23 sheet 1
    nor_1 #(1'b0) NOR48157(F18B_,           F18B,                                           SIM_CLK);
    
    
    // Stage 19
    output wire FS19, F19A, F19B, CHAT14;
    wire NOR38313_out, NOR38314_out, NOR38315_out;
   
    nor_2 #(1'b0) NOR38311(CHAT14,          RCHAT_,         NOR38314_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38312(F19A,            NOR38314_out,   NOR38313_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38313(NOR38313_out,    F19A,           F18A,           NOR38315_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38314(NOR38314_out,    NOR38313_out,   FS19,                           SIM_CLK);
    nor_3 #(1'b0) NOR38315(NOR38315_out,    NOR38313_out,   F18A,           F19B,           SIM_CLK);
    nor_2 #(1'b1) NOR38316(FS19,            NOR38314_out,   NOR38315_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38317(F19B,            NOR38315_out,   FS19,                           SIM_CLK);
    
    // Gates NOR38318 - NOR38320 not used
    
    
    // Stage 20
    output wire FS20, F20A, F20B, CHBT01;
    wire NOR38323_out, NOR38324_out, NOR38325_out;
    
    nor_2 #(1'b0) NOR38321(CHBT01,          RCHBT_,         NOR38324_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38322(F20A,            NOR38324_out,   NOR38323_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38323(NOR38323_out,    F20A,           F19A,           NOR38325_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38324(NOR38324_out,    NOR38323_out,   FS20,                           SIM_CLK);
    nor_3 #(1'b0) NOR38325(NOR38325_out,    NOR38323_out,   F19A,           F20B,           SIM_CLK);
    nor_2 #(1'b1) NOR38326(FS20,            NOR38324_out,   NOR38325_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38327(F20B,            NOR38325_out,   FS20,                           SIM_CLK);
    
    // Gates NOR38328 - NOR38330 not used
    
    
    // Stage 21
    output wire FS21, F21A, F21B, CHBT02;
    wire NOR38333_out, NOR38334_out, NOR38335_out;
    
    nor_2 #(1'b0) NOR38331(CHBT02,          RCHBT_,         NOR38334_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38332(F21A,            NOR38334_out,   NOR38333_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38333(NOR38333_out,    F21A,           F20A,           NOR38335_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38334(NOR38334_out,    NOR38333_out,   FS21,                           SIM_CLK);
    nor_3 #(1'b0) NOR38335(NOR38335_out,    NOR38333_out,   F20A,           F21B,           SIM_CLK);
    nor_2 #(1'b1) NOR38336(FS21,            NOR38334_out,   NOR38335_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38337(F21B,            NOR38335_out,   FS21,                           SIM_CLK);
    
    // Gates NOR38338 - NOR38340 not used
    
    
    // Stage 22
    output wire FS22, F22A, F22B, CHBT03;
    wire NOR38343_out, NOR38344_out, NOR38345_out;
    
    nor_2 #(1'b0) NOR38341(CHBT03,          RCHBT_,         NOR38344_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38342(F22A,            NOR38344_out,   NOR38343_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38343(NOR38343_out,    F22A,           F21A,           NOR38345_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38344(NOR38344_out,    NOR38343_out,   FS22,                           SIM_CLK);
    nor_3 #(1'b0) NOR38345(NOR38345_out,    NOR38343_out,   F21A,           F22B,           SIM_CLK);
    nor_2 #(1'b1) NOR38346(FS22,            NOR38344_out,   NOR38345_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38347(F22B,            NOR38345_out,   FS22,                           SIM_CLK);
    
    // Gates NOR38348 - NOR38350 not used
    
    
    // Stage 23
    output wire FS23, F23A, F23B, CHBT04;
    wire NOR38353_out, NOR38354_out, NOR38355_out;
    
    nor_2 #(1'b0) NOR38351(CHBT04,          RCHBT_,         NOR38354_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38352(F23A,            NOR38354_out,   NOR38353_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38353(NOR38353_out,    F23A,           F22A,           NOR38355_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38354(NOR38354_out,    NOR38353_out,   FS23,                           SIM_CLK);
    nor_3 #(1'b0) NOR38355(NOR38355_out,    NOR38353_out,   F22A,           F23B,           SIM_CLK);
    nor_2 #(1'b1) NOR38356(FS23,            NOR38354_out,   NOR38355_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38357(F23B,            NOR38355_out,   FS23,                           SIM_CLK);
    
    // Gates NOR38358 - NOR38360 not used
    
    
    // Stage 24
    output wire FS24, F24A, F24B, CHBT05;
    wire NOR38363_out, NOR38364_out, NOR38365_out;
    
    nor_2 #(1'b0) NOR38361(CHBT05,          RCHBT_,         NOR38364_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38362(F24A,            NOR38364_out,   NOR38363_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38363(NOR38363_out,    F24A,           F23A,           NOR38365_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38364(NOR38364_out,    NOR38363_out,   FS24,                           SIM_CLK);
    nor_3 #(1'b0) NOR38365(NOR38365_out,    NOR38363_out,   F23A,           F24B,           SIM_CLK);
    nor_2 #(1'b1) NOR38366(FS24,            NOR38364_out,   NOR38365_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38367(F24B,            NOR38365_out,   FS24,                           SIM_CLK);
    
    // Gates NOR38368 - NOR38370 not used

    
    // Stage 25
    output wire FS25, F25A, F25B, CHBT06;
    wire NOR38373_out, NOR38374_out, NOR38375_out;
    
    nor_2 #(1'b0) NOR38371(CHBT06,          RCHBT_,         NOR38374_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38372(F25A,            NOR38374_out,   NOR38373_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38373(NOR38373_out,    F25A,           F24A,           NOR38375_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38374(NOR38374_out,    NOR38373_out,   FS25,                           SIM_CLK);
    nor_3 #(1'b0) NOR38375(NOR38375_out,    NOR38373_out,   F24A,           F25B,           SIM_CLK);
    nor_2 #(1'b1) NOR38376(FS25,            NOR38374_out,   NOR38375_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38377(F25B,            NOR38375_out,   FS25,                           SIM_CLK);
    
    // Gates NOR38378 - NOR38389 not used


    // Stage 26
    output wire FS26, F26A, F26B, CHBT07;
    wire NOR38403_out, NOR38404_out, NOR38405_out;
    
    nor_2 #(1'b0) NOR38401(CHBT07,          RCHBT_,         NOR38404_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38402(F26A,            NOR38404_out,   NOR38403_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38403(NOR38403_out,    F26A,           F25A,           NOR38405_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38404(NOR38404_out,    NOR38403_out,   FS26,                           SIM_CLK);
    nor_3 #(1'b0) NOR38405(NOR38405_out,    NOR38403_out,   F25A,           F26B,           SIM_CLK);
    nor_2 #(1'b1) NOR38406(FS26,            NOR38404_out,   NOR38405_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38407(F26B,            NOR38405_out,   FS26,                           SIM_CLK);
    
    // Gates NOR38408 - NOR38410 not used

    
    // Stage 27
    output wire FS27, F27A, F27B, CHBT08;
    wire NOR38413_out, NOR38414_out, NOR38415_out;
    
    nor_2 #(1'b0) NOR38411(CHBT08,          RCHBT_,         NOR38414_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38412(F27A,            NOR38414_out,   NOR38413_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38413(NOR38413_out,    F27A,           F26A,           NOR38415_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38414(NOR38414_out,    NOR38413_out,   FS27,                           SIM_CLK);
    nor_3 #(1'b0) NOR38415(NOR38415_out,    NOR38413_out,   F26A,           F27B,           SIM_CLK);
    nor_2 #(1'b1) NOR38416(FS27,            NOR38414_out,   NOR38415_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38417(F27B,            NOR38415_out,   FS27,                           SIM_CLK);
    
    // Gates NOR38418 - NOR38420 not used
    
    
    // Stage 28
    output wire FS28, F28A, F28B, CHBT09;
    wire NOR38423_out, NOR38424_out, NOR38425_out;
    
    nor_2 #(1'b0) NOR38421(CHBT09,          RCHBT_,         NOR38424_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38422(F28A,            NOR38424_out,   NOR38423_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38423(NOR38423_out,    F28A,           F27A,           NOR38425_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38424(NOR38424_out,    NOR38423_out,   FS28,                           SIM_CLK);
    nor_3 #(1'b0) NOR38425(NOR38425_out,    NOR38423_out,   F27A,           F28B,           SIM_CLK);
    nor_2 #(1'b1) NOR38426(FS28,            NOR38424_out,   NOR38425_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38427(F28B,            NOR38425_out,   FS28,                           SIM_CLK);
    
    // Gates NOR38428 - NOR38430 not used
    
    
    // Stage 29
    output wire FS29, F29A, F29B, CHBT10;
    wire NOR38433_out, NOR38434_out, NOR38435_out;
    
    nor_2 #(1'b0) NOR38431(CHBT10,          RCHBT_,         NOR38434_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38432(F29A,            NOR38434_out,   NOR38433_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38433(NOR38433_out,    F29A,           F28A,           NOR38435_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38434(NOR38434_out,    NOR38433_out,   FS29,                           SIM_CLK);
    nor_3 #(1'b0) NOR38435(NOR38435_out,    NOR38433_out,   F28A,           F29B,           SIM_CLK);
    nor_2 #(1'b1) NOR38436(FS29,            NOR38434_out,   NOR38435_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38437(F29B,            NOR38435_out,   FS29,                           SIM_CLK);
    
    // Gates NOR38438 - NOR38440 not used
    
    
    // Stage 30
    output wire FS30, F30A, F30B, CHBT11;
    wire NOR38443_out, NOR38444_out, NOR38445_out;
    
    nor_2 #(1'b0) NOR38441(CHBT11,          RCHBT_,         NOR38444_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38442(F30A,            NOR38444_out,   NOR38443_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38443(NOR38443_out,    F30A,           F29A,           NOR38445_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38444(NOR38444_out,    NOR38443_out,   FS30,                           SIM_CLK);
    nor_3 #(1'b0) NOR38445(NOR38445_out,    NOR38443_out,   F29A,           F30B,           SIM_CLK);
    nor_2 #(1'b1) NOR38446(FS30,            NOR38444_out,   NOR38445_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38447(F30B,            NOR38445_out,   FS30,                           SIM_CLK);
    
    // Gates NOR38448 - NOR38450 not used
    
    
    // Stage 31
    output wire FS31, F31A, F31B, CHBT12;
    wire NOR38453_out, NOR38454_out, NOR38455_out;
    
    nor_2 #(1'b0) NOR38451(CHBT12,          RCHBT_,         NOR38454_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38452(F31A,            NOR38454_out,   NOR38453_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38453(NOR38453_out,    F31A,           F30A,           NOR38455_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38454(NOR38454_out,    NOR38453_out,   FS31,                           SIM_CLK);
    nor_3 #(1'b0) NOR38455(NOR38455_out,    NOR38453_out,   F30A,           F31B,           SIM_CLK);
    nor_2 #(1'b1) NOR38456(FS31,            NOR38454_out,   NOR38455_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38457(F31B,            NOR38455_out,   FS31,                           SIM_CLK);
    
    // Gates NOR38458 - NOR38460 not used
    
    
    // Stage 32
    output wire FS32, F32A, F32B, CHBT13;
    wire NOR38463_out, NOR38464_out, NOR38465_out;
    
    nor_2 #(1'b0) NOR38461(CHBT13,          RCHBT_,         NOR38464_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38462(F32A,            NOR38464_out,   NOR38463_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38463(NOR38463_out,    F32A,           F31A,           NOR38465_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38464(NOR38464_out,    NOR38463_out,   FS32,                           SIM_CLK);
    nor_3 #(1'b0) NOR38465(NOR38465_out,    NOR38463_out,   F31A,           F32B,           SIM_CLK);
    nor_2 #(1'b1) NOR38466(FS32,            NOR38464_out,   NOR38465_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38467(F32B,            NOR38465_out,   FS32,                           SIM_CLK);
    
    // Gates NOR38468 - NOR38470 not used
    
    
    // Stage 33
    output wire FS33, F33A, F33B, CHBT14;
    wire NOR38473_out, NOR38474_out, NOR38475_out;
    
    nor_2 #(1'b0) NOR38471(CHBT14,          RCHBT_,         NOR38474_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38472(F33A,            NOR38474_out,   NOR38473_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38473(NOR38473_out,    F33A,           F32A,           NOR38475_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38474(NOR38474_out,    NOR38473_out,   FS33,                           SIM_CLK);
    nor_3 #(1'b0) NOR38475(NOR38475_out,    NOR38473_out,   F32A,           F33B,           SIM_CLK);
    nor_2 #(1'b1) NOR38476(FS33,            NOR38474_out,   NOR38475_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38477(F33B,            NOR38475_out,   FS33,                           SIM_CLK);
    
    // Gates NOR38478 - NOR38489 not used
    
    
    
endmodule