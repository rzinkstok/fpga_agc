module a1_scaler(
    FS01_, RCHAT_, RCHBT_,
    FS02, FS02A, F02A, F02B,
    FS03, FS03A, F03A, F03B,
    FS04, FS04A, F04A, F04B, F04B_,
    FS05, FS05_, FS05A, F05A, F05A_, F05B, F05B_, F05D,
    FS06, FS06_, F06A, F06B, F06B_,
    FS07, FS07_, FS07A, F07A, F07B, F07B_, F07B_, F07D_, F07C_,
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
    CHAT01, CHAT02, CHAT03, CHAT04, CHAT05, CHAT06, CHAT07, CHAT08,
    CHAT09, CHAT10, CHAT11, CHAT12,
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
    output wire FS06, FS06_, F06A, F06B, F06B_, CHAT01;
    wire NOR38243_out,NOR38244_out, NOR38245_out;
    
    nor_2 #(1'b0) NOR38241(CHAT01,          RCHAT_,         NOR38244_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38242(F06A,            NOR38244_out,   NOR38243_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38243(NOR38243_out,    F06A,           F05A,           NOR38245_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38244(NOR38244_out,    NOR38243_out,   FS06,                           SIM_CLK);
    nor_3 #(1'b0) NOR38245(NOR38245_out,    NOR38243_out,   F05A,           F06B,           SIM_CLK);
    nor_2 #(1'b1) NOR38246(FS06,            NOR38244_out,   NOR38245_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38247(F06B,            NOR38245,       FS06,                           SIM_CLK);
    
    // Gates NOR38248 - NOR38250 not used
    
    // FS06_
    nor_1 #(1'b0) NOR38190(FS06_,           FS06,                                           SIM_CLK);
    
    // F06B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46316(F06B_,           F06B,                                           SIM_CLK);
    
    
    // Stage 7
    output wire FS07, FS07_, FS07A, F07A, F07B, F07B_, F07B_, F07D_, F07C_, CHAT02;
    wire NOR38253_out,NOR38254_out, NOR38255_out, NOR49355_out, NOR49356_out;
    
    nor_2 #(1'b0) NOR38251(CHAT02,          RCHAT_,         NOR38254_out,                   SIM_CLK);
    nor_2 #(1'b1) NOR38252(F07A,            NOR38254_out,   NOR38253_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38253(NOR38253_out,    F07A,           F06A,           NOR38255_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38254(NOR38254_out,    NOR38253_out,   FS07,                           SIM_CLK);
    nor_3 #(1'b0) NOR38255(NOR38255_out,    NOR38253_out,   F06A,           F07B,           SIM_CLK);
    nor_2 #(1'b1) NOR38256(FS07,            NOR38254_out,   NOR38255_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38257(F07B,            NOR38255,       FS07,                           SIM_CLK);
    
    // Gates NOR38258 - NOR38260 not used
    
    // FS07_
    nor_1 #(1'b0) NOR38191(FS07_,           FS07,                                           SIM_CLK);
    
    // FS07A
    nor_1 #(1'b0) NOR38291(FS07A,           FS07_,                                          SIM_CLK);
    
    // F07B_ moved here from A24 sheet 1
    nor_1 #(1'b0) NOR49234(F07B_,           F07B,                                           SIM_CLK);
    
    // F07C_ and F07D_ moved here from A24 sheet 2
    nor_2 #(1'b0) NOR49355(NOR49355_out,    FS07_,          F06B_,                          SIM_CLK);
    nor_2 #(1'b0) NOR49356(NOR49356_out,    F06B_,          FS07A,                          SIM_CLK);
    nor_1 #(1'b0) NOR49357(F07D_,           NOR49355_out,                                   SIM_CLK);
    nor_1 #(1'b0) NOR49358(F07C_,           NOR49356_out,                                   SIM_CLK);
    
    
    // Stage 8
    output wire FS08, FS08_, F08A, F08B, F08B_, CHAT03;
    wire NOR38263_out,NOR38264_out, NOR38265_out;
    
    nor_1 #(1'b0) NOR38261(CHAT03,          NOR38264_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38262(F08A,            NOR38264_out,   NOR38263_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38263(NOR38263_out,    F08A,           F07A,           NOR38265_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38264(NOR38264_out,    NOR38263_out,   FS08,                           SIM_CLK);
    nor_3 #(1'b0) NOR38265(NOR38265_out,    NOR38263_out,   F07A,           F08B,           SIM_CLK);
    nor_2 #(1'b1) NOR38266(FS08,            NOR38264_out,   NOR38265_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38267(F08B,            NOR38265,       FS08,                           SIM_CLK);
    
    // Gates NOR38268 - NOR38270 not used
    
    // FS08_
    nor_1 #(1'b0) NOR38290(FS08_,           FS08,                                           SIM_CLK);
    
    // F08B_ moved here from A13 sheet 1
    nor_1 #(1'b0) NOR41241(F08B_,           F08B,                                           SIM_CLK);
    
    
    // Stage 9
    output wire FS09, FS09_, F09A, F09A_, F09B, F09B_, F09D_, CHAT04;
    wire NOR38273_out,NOR38274_out, NOR38275_out, NOR49351_out;
    
    nor_1 #(1'b0) NOR38271(CHAT04,          NOR38274_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38272(F09A,            NOR38274_out,   NOR38273_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38273(NOR38273_out,    F09A,           F08A,           NOR38275_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38274(NOR38274_out,    NOR38273_out,   FS09,                           SIM_CLK);
    nor_3 #(1'b0) NOR38275(NOR38275_out,    NOR38273_out,   F08A,           F09B,           SIM_CLK);
    nor_2 #(1'b1) NOR38276(FS09,            NOR38274_out,   NOR38275_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38277(F09B,            NOR38275,       FS09,                           SIM_CLK);
    
    // Gates NOR38278 - NOR38290 not used
    
    // F09B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46312(F09B_,           F09B,                                           SIM_CLK);    
    
    // F09A_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49353(F09A_,           F09A,                                           SIM_CLK);
    
    // F09D_ and FS09_ moved here from A24 sheet 2
    nor_1 #(1'b0) NOR49348(FS09_,           FS09,                                           SIM_CLK);
    nor_1 #(1'b0) NOR49351(NOR49351_out,    F08B_,          F08B_,                          SIM_CLK);
    nor_2 #(1'b0) NOR49352(F09D_,           NOR49351_out,   FS09_,                          SIM_CLK);
    
    
    // Stage 10
    output wire FS10, F10A, F10A_, F10B, F10B_, CHAT05;
    wire NOR38103_out,NOR38104_out, NOR38105_out;
    
    nor_1 #(1'b0) NOR38101(CHAT05,          NOR38104_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38102(F10A,            NOR38104_out,   NOR38103_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38103(NOR38103_out,    F10A,           F09A,           NOR38105_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38104(NOR38104_out,    NOR38103_out,   FS10,                           SIM_CLK);
    nor_3 #(1'b0) NOR38105(NOR38105_out,    NOR38103_out,   F09A,           F10B,           SIM_CLK);
    nor_2 #(1'b1) NOR38106(FS10,            NOR38104_out,   NOR38105_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38107(F10B,            NOR38105,       FS10,                           SIM_CLK);
    
    // Gates NOR38108 - NOR38110 not used
    
    // F10A_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46314(F10A_,           F10A,                                           SIM_CLK);
    
    // F10B_ moved here from A19 sheet 2
    nor_1 #(1'b0) NOR46309(F10B_,           F10B,                                           SIM_CLK);
    
    // Stage 11
    output wire FS11, F11A, F11B, CHAT06;
    wire NOR38113_out,NOR38114_out, NOR38115_out;
    
    nor_1 #(1'b0) NOR38111(CHAT06,          NOR38114_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38112(F11A,            NOR38114_out,   NOR38113_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38113(NOR38113_out,    F11A,           F10A,           NOR38115_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38114(NOR38114_out,    NOR38113_out,   FS11,                           SIM_CLK);
    nor_3 #(1'b0) NOR38115(NOR38115_out,    NOR38113_out,   F10A,           F11B,           SIM_CLK);
    nor_2 #(1'b1) NOR38116(FS11,            NOR38114_out,   NOR38115_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38117(F11B,            NOR38115,       FS11,                           SIM_CLK);
    
    // Gates NOR38118 - NOR38120 not used
    
    
    // Stage 12
    output wire FS12, F12A, F12B, CHAT07;
    wire NOR38123_out,NOR38124_out, NOR38125_out;
    
    nor_1 #(1'b0) NOR38121(CHAT07,          NOR38124_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38122(F12A,            NOR38124_out,   NOR38123_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38123(NOR38123_out,    F12A,           F11A,           NOR38125_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38124(NOR38124_out,    NOR38123_out,   FS12,                           SIM_CLK);
    nor_3 #(1'b0) NOR38125(NOR38125_out,    NOR38123_out,   F11A,           F12B,           SIM_CLK);
    nor_2 #(1'b1) NOR38126(FS12,            NOR38124_out,   NOR38125_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38127(F12B,            NOR38125,       FS12,                           SIM_CLK);
    
    // Gates NOR38128 - NOR38130 not used
    
    
    // Stage 13
    output wire FS13, F13A, F13B, CHAT08;
    wire NOR38133_out,NOR38134_out, NOR38135_out;
    
    nor_1 #(1'b0) NOR38131(CHAT08,          NOR38134_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38132(F13A,            NOR38134_out,   NOR38133_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38133(NOR38133_out,    F13A,           F12A,           NOR38135_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38134(NOR38134_out,    NOR38133_out,   FS13,                           SIM_CLK);
    nor_3 #(1'b0) NOR38135(NOR38135_out,    NOR38133_out,   F12A,           F13B,           SIM_CLK);
    nor_2 #(1'b1) NOR38136(FS13,            NOR38134_out,   NOR38135_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38137(F13B,            NOR38135,       FS13,                           SIM_CLK);
    
    // Gates NOR38138 - NOR38140 not used
    
    
    // Stage 14
    output wire FS14, F14A, F14B, CHAT09;
    wire NOR38143_out,NOR38144_out, NOR38145_out;
    
    nor_1 #(1'b0) NOR38141(CHAT09,          NOR38144_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38142(F14A,            NOR38144_out,   NOR38143_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38143(NOR38143_out,    F14A,           F13A,           NOR38145_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38144(NOR38144_out,    NOR38143_out,   FS14,                           SIM_CLK);
    nor_3 #(1'b0) NOR38145(NOR38145_out,    NOR38143_out,   F13A,           F14B,           SIM_CLK);
    nor_2 #(1'b1) NOR38146(FS14,            NOR38144_out,   NOR38145_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38147(F14B,            NOR38145,       FS14,                           SIM_CLK);
    
    // Gates NOR38148 - NOR38150 not used
    
    
    // Stage 15
    output wire FS15, F15A, F15B, CHAT10;
    wire NOR38153_out,NOR38154_out, NOR38155_out;
    
    nor_1 #(1'b0) NOR38151(CHAT10,          NOR38154_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38152(F15A,            NOR38154_out,   NOR38153_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38153(NOR38153_out,    F15A,           F14A,           NOR38155_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38154(NOR38154_out,    NOR38153_out,   FS15,                           SIM_CLK);
    nor_3 #(1'b0) NOR38155(NOR38155_out,    NOR38153_out,   F14A,           F15B,           SIM_CLK);
    nor_2 #(1'b1) NOR38156(FS15,            NOR38154_out,   NOR38155_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38157(F15B,            NOR38155,       FS15,                           SIM_CLK);
    
    // Gates NOR38158 - NOR38160 not used
    
    
    // Stage 16
    output wire FS16, F16A, F16B, CHAT11;
    wire NOR38163_out,NOR38164_out, NOR38165_out;
    
    nor_1 #(1'b0) NOR38161(CHAT11,          NOR38164_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38162(F16A,            NOR38164_out,   NOR38163_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38163(NOR38163_out,    F16A,           F15A,           NOR38165_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38164(NOR38164_out,    NOR38163_out,   FS16,                           SIM_CLK);
    nor_3 #(1'b0) NOR38165(NOR38165_out,    NOR38163_out,   F15A,           F16B,           SIM_CLK);
    nor_2 #(1'b1) NOR38166(FS16,            NOR38164_out,   NOR38165_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38167(F16B,            NOR38165,       FS16,                           SIM_CLK);
    
    // Gates NOR38168 - NOR38170 not used
    
    
    // Stage 17
    output wire FS17, F17A, F17A_, F17B, F17B_, CHAT12;
    wire NOR38173_out,NOR38174_out, NOR38175_out;
    
    nor_1 #(1'b0) NOR38171(CHAT12,          NOR38174_out,                                   SIM_CLK);
    nor_2 #(1'b1) NOR38172(F17A,            NOR38174_out,   NOR38173_out,                   SIM_CLK);
    nor_3 #(1'b0) NOR38173(NOR38173_out,    F17A,           F16A,           NOR38175_out,   SIM_CLK);
    nor_2 #(1'b0) NOR38174(NOR38174_out,    NOR38173_out,   FS17,                           SIM_CLK);
    nor_3 #(1'b0) NOR38175(NOR38175_out,    NOR38173_out,   F16A,           F17B,           SIM_CLK);
    nor_2 #(1'b1) NOR38176(FS17,            NOR38174_out,   NOR38175_out,                   SIM_CLK);
    nor_2 #(1'b0) NOR38177(F17B,            NOR38175,       FS17,                           SIM_CLK);
    
    // Gates NOR38178 - NOR38190 not used
    
    // F17A_ moved here from A18 sheet 1
    nor_1 #(1'b0) NOR45159(F17A_,           F17A,                                           SIM_CLK);
    
    // F17B_ moved here from A18 sheet 1
    nor_1 #(1'b0) NOR45261(F17B_,           F17B,                                           SIM_CLK);
    
    
    /**************************
     *
     *  Module A1 sheet 2
     *  Sheet number 2005259/2
     *
     **************************/
    
    input wire RCHBT_;
    
    

endmodule