`timescale 1ns / 1ps

module agc_tb();

	reg A15_ = 1;
	reg A16_ = 1;
	reg ALGA = 0;
	reg BBK1 = 0;
	reg BBK2 = 0;
	reg BBK3 = 0;
	reg C24A = 0;
	reg C25A = 0;
	reg C26A = 0;
	reg C27A = 0;
	reg C30A = 0;
	reg C37P = 0;
	reg C40P = 0;
	reg C41P = 0;
	reg C42P = 0;
	reg C43P = 0;
	reg C44P = 0;
	reg CAD1 = 0;
	reg CAD2 = 0;
	reg CAD3 = 0;
	reg CAD4 = 0;
	reg CAD5 = 0;
	reg CAD6 = 0;
	reg CAD7 = 0;
	reg CAD8 = 0;
	reg CDUSTB_ = 1;
	reg CH01 = 0;
	reg CH02 = 0;
	reg CH03 = 0;
	reg CH04 = 0;
	reg CH05 = 0;
	reg CH06 = 0;
	reg CH07 = 0;
	reg CH08 = 0;
	reg CH09 = 0;
	reg CH10 = 0;
	reg CH11 = 0;
	reg CH12 = 0;
	reg CHINC_ = 1;
	reg CI = 0;
	reg CLOCK = 0;
	reg CYL_ = 1;
	reg CYR_ = 1;
	reg DBLTST = 0;
	reg DINC = 0;
	reg DINC_ = 1;
	reg DIVSTG = 0;
	reg EAC_ = 1;
	reg EAD09 = 0;
	reg EAD09_ = 1;
	reg EAD10 = 0;
	reg EAD10_ = 1;
	reg EAD11 = 0;
	reg EAD11_ = 1;
	reg EDOP_ = 1;
	reg EXTPLS = 0;
	reg FETCH0 = 0;
	reg FETCH0_ = 1;
	reg FETCH1 = 0;
	reg G01ED = 0;
	reg G02ED = 0;
	reg G03ED = 0;
	reg G04ED = 0;
	reg G05ED = 0;
	reg G06ED = 0;
	reg G07ED = 0;
	reg G08ED = 0;
	reg G13_ = 1;
	reg G14_ = 1;
	reg G15_ = 1;
	reg GEQZRO_ = 1;
	reg GINH = 0;
	reg INCSET_ = 1;
	reg INHPLS = 0;
	reg INKL = 0;
	reg INKL_ = 1;
	reg INOTLD = 0;
	reg L02A_ = 1;
	reg L15A_ = 1;
	reg L15_ = 1;
	reg MCDU = 0;
	reg MDT01 = 0;
	reg MDT02 = 0;
	reg MDT03 = 0;
	reg MDT04 = 0;
	reg MDT05 = 0;
	reg MDT06 = 0;
	reg MDT07 = 0;
	reg MDT08 = 0;
	reg MDT09 = 0;
	reg MDT10 = 0;
	reg MDT11 = 0;
	reg MDT12 = 0;
	reg MINC = 0;
	reg MNHRPT = 0;
	reg MONWBK = 0;
	reg MON_ = 1;
	reg MONpCH = 0;
	reg MP3 = 0;
	reg MSTP = 0;
	reg MSTRTP = 0;
	reg MTCSAI = 0;
	reg NISQ = 0;
	reg PCDU = 0;
	reg PIPPLS_ = 1;
	reg R1C = 0;
	reg RADRG = 0;
	reg RADRZ = 0;
	reg RB1 = 0;
	reg RCHAT_ = 1;
	reg RCHBT_ = 1;
	reg RCHG_ = 1;
	reg RELPLS = 0;
	reg RPTAD3 = 0;
	reg RPTAD4 = 0;
	reg RPTAD5 = 0;
	reg RPTAD6 = 0;
	reg RQ_ = 1;
	reg RSCG_ = 1;
	reg RUPTOR_ = 1;
	reg S08 = 0;
	reg S08_ = 1;
	reg S11 = 0;
	reg S12 = 0;
	reg SA01 = 0;
	reg SA02 = 0;
	reg SA03 = 0;
	reg SA04 = 0;
	reg SA05 = 0;
	reg SA06 = 0;
	reg SA07 = 0;
	reg SA08 = 0;
	reg SA09 = 0;
	reg SA10 = 0;
	reg SA11 = 0;
	reg SA12 = 0;
	reg SBY = 0;
	reg SETAB_ = 1;
	reg SETCD_ = 1;
	reg SHANC_ = 1;
	reg SHIFT = 0;
	reg SHIFT_ = 1;
	reg SIM_CLK = 1;
	reg SR_ = 1;
	reg STBE = 0;
	reg STBF = 0;
	reg STFET1_ = 1;
	reg STFETI_ = 1;
	reg STORE1_ = 1;
	reg STRT1 = 0;
	reg STRT2 = 0;
	reg SUMA16_ = 1;
	reg SUMB16_ = 1;
	reg T12USE_ = 1;
	reg WCHG_ = 1;
	reg WGA_ = 1;
	reg WHOMP = 0;
	reg WHOMPA = 0;
	reg WL13_ = 1;
	reg WL14_ = 1;
	reg WL15 = 0;
	reg WL15_ = 1;
	reg WL16 = 0;
	reg WL16_ = 1;
	reg WSCG_ = 1;
	reg XB0_ = 1;
	reg XB1_ = 1;
	reg XB2_ = 1;
	reg XB3_ = 1;
	reg XB4_ = 1;
	reg XB5_ = 1;
	reg XB6_ = 1;
	reg XB7_ = 1;
	reg XT0_ = 1;
	reg XT1_ = 1;
	reg XT2_ = 1;
	reg XT3_ = 1;
	reg XT4_ = 1;
	reg XT5_ = 1;
	reg XT6_ = 1;
	reg XUY09_ = 1;
	reg XUY10_ = 1;
	reg XUY12_ = 1;
	reg XUY14_ = 1;
	reg YB0_ = 1;
	reg reset = 0;

	wire A03_1_RPTSET;
	wire A03_2_RPTSET;
	wire A03_3_RPTSET;
	wire A04_1_CI_;
	wire A04_1_L16_;
	wire A04_1_R1C_;
	wire A04_1_RA_;
	wire A04_1_RB1_;
	wire A04_1_RB_;
	wire A04_1_RC_;
	wire A04_1_RSC_;
	wire A04_1_TMZ_;
	wire A04_1_TSGN_;
	wire A04_1_WG_;
	wire A04_1_WL_;
	wire A04_1_WY_;
	wire A04_1_n8PP4;
	wire A04_2_RA_;
	wire A04_2_RB_;
	wire A04_2_RC_;
	wire A04_2_TSGN_;
	wire A04_2_WG_;
	wire A04_2_WY_;
	wire A04_3_WG_;
	wire A05_1_A2X_;
	wire A05_1_CI_;
	wire A05_1_MONEX_;
	wire A05_1_RA_;
	wire A05_1_RB_;
	wire A05_1_RC_;
	wire A05_1_RG_;
	wire A05_1_RL_;
	wire A05_1_RU_;
	wire A05_1_RZ_;
	wire A05_1_ST2_;
	wire A05_1_TMZ_;
	wire A05_1_TOV_;
	wire A05_1_TSGN_;
	wire A05_1_WA_;
	wire A05_1_WB_;
	wire A05_1_WG_;
	wire A05_1_WL_;
	wire A05_1_WS_;
	wire A05_1_WY12_;
	wire A05_1_WYD_;
	wire A05_1_WY_;
	wire A05_1_WZ_;
	wire A05_1_Z15_;
	wire A05_1_Z16_;
	wire A05_2_A2X_;
	wire A05_2_CI_;
	wire A05_2_RA_;
	wire A05_2_RB_;
	wire A05_2_RC_;
	wire A05_2_RG_;
	wire A05_2_RL_;
	wire A05_2_RU_;
	wire A05_2_RZ_;
	wire A05_2_TMZ_;
	wire A05_2_TSGN_;
	wire A05_2_WA_;
	wire A05_2_WB_;
	wire A05_2_WY12_;
	wire A05_2_WY_;
	wire A05_2_WZ_;
	wire A05_3_RA_;
	wire A05_3_RB_;
	wire A05_3_RC_;
	wire A05_3_RG_;
	wire A05_3_RU_;
	wire A05_3_RZ_;
	wire A05_3_WA_;
	wire A05_3_WB_;
	wire A05_3_WY_;
	wire A05_4_RB_;
	wire A05_4_RG_;
	wire A05_4_WB_;
	wire A06_1_A2X_;
	wire A06_1_CI_;
	wire A06_1_MONEX_;
	wire A06_1_R1C_;
	wire A06_1_RB1_;
	wire A06_1_RB_;
	wire A06_1_RC_;
	wire A06_1_RG_;
	wire A06_1_RPTSET;
	wire A06_1_RU_;
	wire A06_1_RZ_;
	wire A06_1_ST2_;
	wire A06_1_TOV_;
	wire A06_1_WA_;
	wire A06_1_WB_;
	wire A06_1_WG_;
	wire A06_1_WL_;
	wire A06_1_WSC_;
	wire A06_1_WS_;
	wire A06_1_WYD_;
	wire A06_1_WY_;
	wire A06_1_WZ_;
	wire A06_1_n8PP4;
	wire A06_2_RB_;
	wire A06_2_RC_;
	wire A06_2_RU_;
	wire A06_2_WA_;
	wire A06_2_WG_;
	wire A06_2_WSC_;
	wire A06_2_n8PP4;
	wire A06_3_RU_;
	wire A06_3_n8PP4;
	wire A10_1_RL09_;
	wire A10_1_RL10_;
	wire A10_1_RL11_;
	wire A10_1_RL12_;
	wire A10_2_RL09_;
	wire A10_2_RL10_;
	wire A10_2_RL11_;
	wire A10_2_RL12_;
	wire A10_3_RL09_;
	wire A10_3_RL10_;
	wire A10_3_RL11_;
	wire A10_3_RL12_;
	wire A10_4_RL09_;
	wire A10_4_RL10_;
	wire A10_4_RL11_;
	wire A10_4_RL12_;
	wire A2XG_;
	wire A2X_;
	wire AD0;
	wire ADS0;
	wire AUG0_;
	wire B15X;
	wire BR1;
	wire BR12B;
	wire BR12B_;
	wire BR1B2;
	wire BR1B2B;
	wire BR1B2B_;
	wire BR1B2_;
	wire BR1_;
	wire BR2;
	wire BR2_;
	wire BRDIF_;
	wire BXVX;
	wire CAG;
	wire CBG;
	wire CCS0;
	wire CCS0_;
	wire CEBG;
	wire CFBG;
	wire CGG;
	wire CGMC;
	wire CHAT01;
	wire CHAT02;
	wire CHAT03;
	wire CHAT04;
	wire CHAT05;
	wire CHAT06;
	wire CHAT07;
	wire CHAT08;
	wire CHAT09;
	wire CHAT10;
	wire CHAT11;
	wire CHAT12;
	wire CHAT13;
	wire CHAT14;
	wire CHBT01;
	wire CHBT02;
	wire CHBT03;
	wire CHBT04;
	wire CHBT05;
	wire CHBT06;
	wire CHBT07;
	wire CHBT08;
	wire CHBT09;
	wire CHBT10;
	wire CHBT11;
	wire CHBT12;
	wire CHBT13;
	wire CHBT14;
	wire CI01_;
	wire CI05_;
	wire CI09_;
	wire CI13_;
	wire CI_;
	wire CLEARA;
	wire CLEARB;
	wire CLEARC;
	wire CLEARD;
	wire CLG1G;
	wire CLG2G;
	wire CLK;
	wire CLXC;
	wire CO06;
	wire CO10;
	wire CO14;
	wire CQG;
	wire CSG;
	wire CT;
	wire CT_;
	wire CUG;
	wire CZG;
	wire DAS0;
	wire DAS0_;
	wire DAS1;
	wire DAS1_;
	wire DCA0;
	wire DCS0;
	wire DIM0_;
	wire DIV_;
	wire DV0;
	wire DV0_;
	wire DV1;
	wire DV1376;
	wire DV1376_;
	wire DV1_;
	wire DV376;
	wire DV3764;
	wire DV376_;
	wire DV4;
	wire DV4B1B;
	wire DV4_;
	wire DVST;
	wire DVXP1;
	wire DXCH0;
	wire EDSET;
	wire EVNSET;
	wire EVNSET_;
	wire EXST0_;
	wire EXST1_;
	wire EXT;
	wire F01A;
	wire F01B;
	wire F01C;
	wire F01D;
	wire F02A;
	wire F02B;
	wire F03A;
	wire F03B;
	wire F03B_;
	wire F04A;
	wire F04B;
	wire F04B_;
	wire F05A;
	wire F05A_;
	wire F05B;
	wire F05B_;
	wire F05D;
	wire F06A;
	wire F06B;
	wire F06B_;
	wire F07A;
	wire F07A_;
	wire F07B;
	wire F07B_;
	wire F07C_;
	wire F07D_;
	wire F08A;
	wire F08B;
	wire F08B_;
	wire F09A;
	wire F09A_;
	wire F09B;
	wire F09B_;
	wire F09D_;
	wire F10A;
	wire F10A_;
	wire F10B;
	wire F10B_;
	wire F11A;
	wire F11B;
	wire F12A;
	wire F12B;
	wire F13A;
	wire F13B;
	wire F14A;
	wire F14B;
	wire F15A;
	wire F15B;
	wire F16A;
	wire F16B;
	wire F17A;
	wire F17A_;
	wire F17B;
	wire F17B_;
	wire F18A;
	wire F18AX;
	wire F18A_;
	wire F18B;
	wire F18B_;
	wire F19A;
	wire F19B;
	wire F20A;
	wire F20B;
	wire F21A;
	wire F21B;
	wire F22A;
	wire F22B;
	wire F23A;
	wire F23B;
	wire F24A;
	wire F24B;
	wire F25A;
	wire F25B;
	wire F26A;
	wire F26B;
	wire F27A;
	wire F27B;
	wire F28A;
	wire F28B;
	wire F29A;
	wire F29B;
	wire F30A;
	wire F30B;
	wire F31A;
	wire F31B;
	wire F32A;
	wire F32B;
	wire F33A;
	wire F33B;
	wire FS01;
	wire FS01_;
	wire FS02;
	wire FS02A;
	wire FS03;
	wire FS03A;
	wire FS04;
	wire FS04A;
	wire FS05;
	wire FS05A;
	wire FS05_;
	wire FS06;
	wire FS06_;
	wire FS07;
	wire FS07A;
	wire FS07_;
	wire FS08;
	wire FS08_;
	wire FS09;
	wire FS09_;
	wire FS10;
	wire FS11;
	wire FS12;
	wire FS13;
	wire FS14;
	wire FS15;
	wire FS16;
	wire FS17;
	wire FS18;
	wire FS19;
	wire FS20;
	wire FS21;
	wire FS22;
	wire FS23;
	wire FS24;
	wire FS25;
	wire FS26;
	wire FS27;
	wire FS28;
	wire FS29;
	wire FS30;
	wire FS31;
	wire FS32;
	wire FS33;
	wire FUTEXT;
	wire G01;
	wire G01_;
	wire G02;
	wire G03;
	wire G04;
	wire G05;
	wire G05_;
	wire G06;
	wire G06_;
	wire G07;
	wire G07_;
	wire G08;
	wire G09;
	wire G09_;
	wire G10;
	wire G10_;
	wire G11;
	wire G11_;
	wire G12;
	wire G2LSG_;
	wire GEM01;
	wire GEM02;
	wire GEM03;
	wire GEM04;
	wire GEM05;
	wire GEM06;
	wire GEM07;
	wire GEM08;
	wire GEM09;
	wire GEM10;
	wire GEM11;
	wire GEM12;
	wire GNHNC;
	wire GOJ1;
	wire GOJ1_;
	wire GOJAM;
	wire GOJAM_;
	wire IC1;
	wire IC10;
	wire IC10_;
	wire IC11;
	wire IC11_;
	wire IC12;
	wire IC12_;
	wire IC13;
	wire IC14;
	wire IC15;
	wire IC15_;
	wire IC16;
	wire IC16_;
	wire IC17;
	wire IC2;
	wire IC2_;
	wire IC3;
	wire IC4;
	wire IC5;
	wire IC5_;
	wire IC6;
	wire IC7;
	wire IC8_;
	wire IC9;
	wire IIP;
	wire IIP_;
	wire INCR0;
	wire INOUT;
	wire INOUT_;
	wire KRPT;
	wire L01_;
	wire L02_;
	wire L03_;
	wire L04_;
	wire L08_;
	wire L12_;
	wire L16_;
	wire L2GDG_;
	wire L2GD_;
	wire MASK0;
	wire MASK0_;
	wire MBR1;
	wire MBR2;
	wire MCRO_;
	wire MGOJAM;
	wire MIIP;
	wire MINHL;
	wire MONEX;
	wire MONEX_;
	wire MONWT;
	wire MOUT;
	wire MP0;
	wire MP0T10;
	wire MP0_;
	wire MP1;
	wire MP1_;
	wire MP3A;
	wire MP3_;
	wire MRAG;
	wire MRGG;
	wire MRLG;
	wire MRSC_;
	wire MRULOG;
	wire MSQ10;
	wire MSQ11;
	wire MSQ12;
	wire MSQ13;
	wire MSQ14;
	wire MSQ16;
	wire MSQEXT;
	wire MST1;
	wire MST2;
	wire MSTPIT_;
	wire MSU0;
	wire MSU0_;
	wire MT01;
	wire MT02;
	wire MT03;
	wire MT04;
	wire MT05;
	wire MT06;
	wire MT07;
	wire MT08;
	wire MT09;
	wire MT10;
	wire MT11;
	wire MT12;
	wire MTCSA_;
	wire MWAG;
	wire MWBBEG;
	wire MWBG;
	wire MWEBG;
	wire MWFBG;
	wire MWG;
	wire MWL01;
	wire MWL02;
	wire MWL03;
	wire MWL04;
	wire MWL05;
	wire MWL06;
	wire MWL07;
	wire MWL08;
	wire MWL09;
	wire MWL10;
	wire MWL11;
	wire MWL12;
	wire MWLG;
	wire MWQG;
	wire MWSG;
	wire MWYG;
	wire MWZG;
	wire NDR100_;
	wire NDX0_;
	wire NDXX1_;
	wire NEAC;
	wire NISQL_;
	wire NISQ_;
	wire OCTAD2;
	wire OCTAD3;
	wire OCTAD4;
	wire OCTAD5;
	wire OCTAD6;
	wire ODDSET_;
	wire OVF;
	wire OVFSTB_;
	wire OVF_;
	wire P01;
	wire P01_;
	wire P02;
	wire P02_;
	wire P03;
	wire P03_;
	wire P04;
	wire P04_;
	wire P05;
	wire P05_;
	wire PHS2;
	wire PHS2_;
	wire PHS3_;
	wire PHS4;
	wire PHS4_;
	wire PIFL_;
	wire PINC;
	wire PINC_;
	wire PIPSAM;
	wire PONEX;
	wire POUT;
	wire PRINC;
	wire PSEUDO;
	wire PTWOX;
	wire Q2A;
	wire QC0_;
	wire QC1_;
	wire QC2_;
	wire QC3_;
	wire QXCH0_;
	wire R15;
	wire R1C_;
	wire R6;
	wire RAD;
	wire RAG_;
	wire RAND0;
	wire RA_;
	wire RB1F;
	wire RB1_;
	wire RB2;
	wire RBBEG_;
	wire RBHG_;
	wire RBLG_;
	wire RBSQ;
	wire RB_;
	wire RCG_;
	wire RCH_;
	wire RC_;
	wire RDBANK;
	wire READ0;
	wire READ0_;
	wire REBG_;
	wire RFBG_;
	wire RGG_;
	wire RG_;
	wire RINGA_;
	wire RINGB_;
	wire RL09_;
	wire RL10BB;
	wire RL10_;
	wire RL11_;
	wire RL12_;
	wire RLG_;
	wire RL_;
	wire ROR0;
	wire RPTSET;
	wire RQ;
	wire RQG_;
	wire RRPA;
	wire RSCT;
	wire RSC_;
	wire RSM3;
	wire RSM3_;
	wire RSTRT;
	wire RSTSTG;
	wire RT;
	wire RT_;
	wire RUG_;
	wire RULOG_;
	wire RUPT0;
	wire RUPT0_;
	wire RUPT1;
	wire RUPT1_;
	wire RUSG_;
	wire RUS_;
	wire RU_;
	wire RXOR0;
	wire RXOR0_;
	wire RZG_;
	wire RZ_;
	wire SB0;
	wire SB0_;
	wire SB1;
	wire SB1_;
	wire SB2;
	wire SB2_;
	wire SB4;
	wire SCAD;
	wire SCAD_;
	wire SGUM;
	wire SQ0_;
	wire SQ1_;
	wire SQ2_;
	wire SQ3_;
	wire SQ4_;
	wire SQ5_;
	wire SQ6_;
	wire SQ7_;
	wire SQEXT;
	wire SQEXT_;
	wire SQR10;
	wire SQR10_;
	wire SQR12_;
	wire ST0_;
	wire ST1;
	wire ST1376_;
	wire ST1_;
	wire ST2;
	wire ST2_;
	wire ST376;
	wire ST376_;
	wire ST3_;
	wire ST4_;
	wire STD2;
	wire STG1;
	wire STG2;
	wire STG3;
	wire STOP;
	wire STOPA;
	wire STOP_;
	wire STRTFC;
	wire SU0;
	wire SUMA01_;
	wire SUMA02_;
	wire SUMA03_;
	wire SUMA04_;
	wire SUMB01_;
	wire SUMB02_;
	wire SUMB03_;
	wire SUMB04_;
	wire T01;
	wire T01DC_;
	wire T01_;
	wire T02;
	wire T02DC_;
	wire T02_;
	wire T03;
	wire T03DC_;
	wire T03_;
	wire T04;
	wire T04DC_;
	wire T04_;
	wire T05;
	wire T05DC_;
	wire T05_;
	wire T06;
	wire T06DC_;
	wire T06_;
	wire T07;
	wire T07DC_;
	wire T07_;
	wire T08;
	wire T08DC_;
	wire T08_;
	wire T09;
	wire T09DC_;
	wire T09_;
	wire T10;
	wire T10DC_;
	wire T10_;
	wire T11;
	wire T11_;
	wire T12;
	wire T12DC_;
	wire T12SET;
	wire T12_;
	wire TC0;
	wire TC0_;
	wire TCF0;
	wire TCSAJ3;
	wire TCSAJ3_;
	wire TIMR;
	wire TL15;
	wire TMZ_;
	wire TOV_;
	wire TPZG_;
	wire TRSM;
	wire TS0;
	wire TS0_;
	wire TSGN_;
	wire TSGU_;
	wire TSUDO_;
	wire TT_;
	wire TWOX;
	wire U2BBK;
	wire UNF;
	wire UNF_;
	wire WAG_;
	wire WALSG;
	wire WALSG_;
	wire WAND0;
	wire WA_;
	wire WBBEG_;
	wire WBG_;
	wire WB_;
	wire WCH_;
	wire WEBG_;
	wire WEDOPG_;
	wire WFBG_;
	wire WG1G_;
	wire WG2G_;
	wire WG3G_;
	wire WG4G_;
	wire WG5G_;
	wire WGNORM;
	wire WG_;
	wire WL01;
	wire WL01_;
	wire WL02;
	wire WL02_;
	wire WL03;
	wire WL03_;
	wire WL04;
	wire WL04_;
	wire WL05;
	wire WL05_;
	wire WL06;
	wire WL06_;
	wire WL07;
	wire WL07_;
	wire WL08;
	wire WL08_;
	wire WL09;
	wire WL09_;
	wire WL10;
	wire WL10_;
	wire WL11;
	wire WL11_;
	wire WL12;
	wire WL12_;
	wire WLG_;
	wire WL_;
	wire WOR0;
	wire WOR0_;
	wire WOVR;
	wire WQG_;
	wire WQ_;
	wire WRITE0;
	wire WRITE0_;
	wire WSC_;
	wire WSG_;
	wire WS_;
	wire WT;
	wire WT_;
	wire WY12_;
	wire WYDG_;
	wire WYDLOG_;
	wire WYD_;
	wire WYHIG_;
	wire WYLOG_;
	wire WY_;
	wire WZG_;
	wire WZ_;
	wire XUY01_;
	wire XUY02_;
	wire XUY05_;
	wire XUY06_;
	wire XUY13_;
	wire YT0;
	wire YT0E;
	wire YT0_;
	wire YT1;
	wire YT1E;
	wire YT1_;
	wire YT2;
	wire YT2E;
	wire YT2_;
	wire YT3;
	wire YT3E;
	wire YT3_;
	wire YT4;
	wire YT4E;
	wire YT4_;
	wire YT5;
	wire YT5E;
	wire YT5_;
	wire YT6;
	wire YT6E;
	wire YT6_;
	wire YT7;
	wire YT7E;
	wire YT7_;
	wire Z15_;
	wire Z16_;
	wire ZAP;
	wire ZAP_;
	wire ZIP;
	wire ZIPCI;
	wire ZOUT;
	wire n10XP1;
	wire n10XP8;
	wire n11XP2;
	wire n1XP10;
	wire n2XP3;
	wire n2XP5;
	wire n2XP7;
	wire n2XP8;
	wire n3XP2;
	wire n3XP6;
	wire n3XP7;
	wire n4XP11;
	wire n4XP5;
	wire n5XP11;
	wire n5XP12;
	wire n5XP15;
	wire n5XP21;
	wire n5XP28;
	wire n5XP4;
	wire n6XP10;
	wire n6XP5;
	wire n6XP8;
	wire n7XP14;
	wire n7XP19;
	wire n7XP4;
	wire n7XP9;
	wire n8PP4;
	wire n8XP10;
	wire n8XP4;
	wire n8XP5;
	wire n8XP6;
	wire n9XP1;
	wire n9XP5;

	always
		#10 SIM_CLK = !SIM_CLK; // 20 ns gate delay

	a01_scaler a01(
		FS01_,
		RCHAT_,
		RCHBT_,
		FS02,
		FS02A,
		F02A,
		F02B,
		FS03,
		FS03A,
		F03A,
		F03B,
		F03B_,
		FS04,
		FS04A,
		F04A,
		F04B,
		F04B_,
		FS05,
		FS05_,
		FS05A,
		F05A,
		F05A_,
		F05B,
		F05B_,
		F05D,
		FS06,
		FS06_,
		F06A,
		F06B,
		F06B_,
		FS07,
		FS07_,
		FS07A,
		F07A,
		F07A_,
		F07B,
		F07B_,
		F07C_,
		F07D_,
		FS08,
		FS08_,
		F08A,
		F08B,
		F08B_,
		FS09,
		FS09_,
		F09A,
		F09A_,
		F09B,
		F09B_,
		F09D_,
		FS10,
		F10A,
		F10A_,
		F10B,
		F10B_,
		FS11,
		F11A,
		F11B,
		FS12,
		F12A,
		F12B,
		FS13,
		F13A,
		F13B,
		FS14,
		F14A,
		F14B,
		FS15,
		F15A,
		F15B,
		FS16,
		F16A,
		F16B,
		FS17,
		F17A,
		F17A_,
		F17B,
		F17B_,
		FS18,
		F18A,
		F18A_,
		F18B,
		F18B_,
		F18AX,
		FS19,
		F19A,
		F19B,
		FS20,
		F20A,
		F20B,
		FS21,
		F21A,
		F21B,
		FS22,
		F22A,
		F22B,
		FS23,
		F23A,
		F23B,
		FS24,
		F24A,
		F24B,
		FS25,
		F25A,
		F25B,
		FS26,
		F26A,
		F26B,
		FS27,
		F27A,
		F27B,
		FS28,
		F28A,
		F28B,
		FS29,
		F29A,
		F29B,
		FS30,
		F30A,
		F30B,
		FS31,
		F31A,
		F31B,
		FS32,
		F32A,
		F32B,
		FS33,
		F33A,
		F33B,
		CHAT01,
		CHAT02,
		CHAT03,
		CHAT04,
		CHAT05,
		CHAT06,
		CHAT07,
		CHAT08,
		CHAT09,
		CHAT10,
		CHAT11,
		CHAT12,
		CHAT13,
		CHAT14,
		CHBT01,
		CHBT02,
		CHBT03,
		CHBT04,
		CHBT05,
		CHBT06,
		CHBT07,
		CHBT08,
		CHBT09,
		CHBT10,
		CHBT11,
		CHBT12,
		CHBT13,
		CHBT14,
		reset,
		SIM_CLK
	);

	a02_timer a02(
		CLOCK,
		SBY,
		ALGA,
		MSTRTP,
		STRT1,
		STRT2,
		GOJ1,
		MSTP,
		WL15,
		WL15_,
		WL16,
		WL16_,
		CLK,
		PHS2,
		PHS2_,
		PHS3_,
		PHS4,
		PHS4_,
		CT,
		CT_,
		RT,
		RT_,
		WT,
		WT_,
		TT_,
		OVFSTB_,
		MONWT,
		Q2A,
		RINGA_,
		RINGB_,
		ODDSET_,
		EVNSET,
		EVNSET_,
		P01,
		P01_,
		P02,
		P02_,
		P03,
		P03_,
		P04,
		P04_,
		P05,
		P05_,
		F01A,
		F01B,
		F01C,
		F01D,
		FS01,
		FS01_,
		SB0,
		SB0_,
		SB1,
		SB1_,
		SB2,
		SB2_,
		SB4,
		EDSET,
		STOPA,
		GOJAM,
		GOJAM_,
		STOP,
		STOP_,
		TIMR,
		MSTPIT_,
		MGOJAM,
		T01,
		T01_,
		T01DC_,
		T02,
		T02_,
		T02DC_,
		T03,
		T03_,
		T03DC_,
		T04,
		T04_,
		T04DC_,
		T05,
		T05_,
		T05DC_,
		T06,
		T06_,
		T06DC_,
		T07,
		T07_,
		T07DC_,
		T08,
		T08_,
		T08DC_,
		T09,
		T09_,
		T09DC_,
		T10,
		T10_,
		T10DC_,
		T11,
		T11_,
		T12,
		T12_,
		T12DC_,
		MT01,
		MT02,
		MT03,
		MT04,
		MT05,
		MT06,
		MT07,
		MT08,
		MT09,
		MT10,
		MT11,
		MT12,
		T12SET,
		UNF,
		UNF_,
		OVF,
		OVF_,
		reset,
		SIM_CLK
	);

	a03_sq_register a03(
		NISQ,
		NISQ_,
		PHS2_,
		CT_,
		WT_,
		RT_,
		T01_,
		T02,
		T12_,
		FS09,
		FS10,
		WL10_,
		WL11_,
		WL12_,
		WL13_,
		WL14_,
		WL16_,
		A15_,
		A16_,
		ST0_,
		ST1_,
		ST3_,
		BR2_,
		BR1B2B,
		INKL,
		STD2,
		GOJAM,
		MTCSAI,
		INHPLS,
		RELPLS,
		KRPT,
		EXT,
		EXTPLS,
		RUPTOR_,
		MNHRPT,
		RXOR0,
		n5XP4,
		DBLTST,
		RPTSET,
		NISQL_,
		RBSQ,
		SQR10,
		SQR10_,
		SQR12_,
		SQ0_,
		SQ1_,
		SQ2_,
		SQ3_,
		SQ4_,
		SQ5_,
		SQ6_,
		SQ7_,
		SQEXT,
		SQEXT_,
		QC0_,
		QC1_,
		QC2_,
		QC3_,
		FUTEXT,
		IIP,
		IIP_,
		STRTFC,
		MSQ10,
		MSQ11,
		MSQ12,
		MSQ13,
		MSQ14,
		MSQ16,
		MSQEXT,
		MINHL,
		MIIP,
		TC0,
		TC0_,
		TCF0,
		TS0,
		TS0_,
		DCS0,
		DCA0,
		QXCH0_,
		DXCH0,
		DAS0,
		DAS0_,
		INCR0,
		CCS0,
		CCS0_,
		DAS1,
		DAS1_,
		ADS0,
		AD0,
		SU0,
		AUG0_,
		DIM0_,
		MSU0,
		MSU0_,
		MP0,
		MP0_,
		MP1,
		MP1_,
		MP3_,
		MP3A,
		TCSAJ3,
		TCSAJ3_,
		RSM3,
		RSM3_,
		MASK0,
		MASK0_,
		NDX0_,
		NDXX1_,
		GOJ1,
		GOJ1_,
		IC1,
		IC2,
		IC2_,
		IC3,
		IC4,
		IC5,
		IC5_,
		IC6,
		IC7,
		IC8_,
		IC9,
		IC10,
		IC10_,
		IC11,
		IC11_,
		IC12,
		IC12_,
		IC13,
		IC14,
		IC15,
		IC15_,
		IC16,
		IC16_,
		IC17,
		EXST0_,
		EXST1_,
		MTCSA_,
		A03_1_RPTSET,
		A03_2_RPTSET,
		A03_3_RPTSET,
		reset,
		SIM_CLK
	);

	a04_stage_branch a04(
		PHS2_,
		PHS3_,
		PHS4,
		PHS4_,
		T01,
		T03_,
		T12_,
		SUMA16_,
		SUMB16_,
		WL01_,
		WL02_,
		WL03_,
		WL04_,
		WL05_,
		WL06_,
		WL07_,
		WL08_,
		WL09_,
		WL10_,
		WL11_,
		WL12_,
		WL13_,
		WL14_,
		WL15_,
		WL16_,
		QC0_,
		QC1_,
		QC2_,
		QC3_,
		SQ0_,
		SQ1_,
		SQ2_,
		SQEXT,
		SQEXT_,
		DVST,
		ST1,
		ST2,
		INKL,
		MTCSAI,
		GOJAM,
		RSTSTG,
		STRTFC,
		TRSM,
		XT1_,
		XB7_,
		NDR100_,
		UNF_,
		L15_,
		TSGU_,
		TOV_,
		TSGN_,
		GEQZRO_,
		OVF_,
		TPZG_,
		TMZ_,
		T01_,
		T02_,
		T04_,
		T05_,
		T06_,
		T07_,
		T08_,
		T09_,
		T10_,
		T11_,
		SQR10,
		SQR10_,
		SQR12_,
		EXST0_,
		EXST1_,
		IC12,
		IC13,
		IC15,
		n7XP14,
		RSM3,
		RSM3_,
		STORE1_,
		RSC_,
		MP0_,
		MP1,
		MP3_,
		MP3A,
		TS0_,
		STG1,
		STG2,
		STG3,
		DIV_,
		ST376,
		ST376_,
		DV0,
		DV0_,
		DV1,
		DV1_,
		DV4,
		DV4_,
		DV376,
		DV376_,
		DV1376,
		DV1376_,
		DV3764,
		ST0_,
		ST1_,
		STD2,
		ST3_,
		ST4_,
		ST1376_,
		MST1,
		MST2,
		SGUM,
		BR1,
		BR1_,
		MBR1,
		BR2,
		BR2_,
		MBR2,
		READ0,
		READ0_,
		WRITE0,
		WRITE0_,
		RAND0,
		WAND0,
		INOUT,
		INOUT_,
		ROR0,
		WOR0,
		WOR0_,
		RXOR0,
		RXOR0_,
		RUPT0,
		RUPT0_,
		RUPT1,
		RUPT1_,
		PRINC,
		RRPA,
		n1XP10,
		n2XP3,
		n2XP5,
		n3XP2,
		n3XP7,
		n4XP5,
		n4XP11,
		n5XP4,
		n5XP11,
		n5XP28,
		n6XP5,
		n7XP19,
		n8XP5,
		n8XP6,
		n9XP1,
		A04_1_RA_,
		A04_2_RA_,
		A04_1_RB_,
		A04_2_RB_,
		A04_1_RC_,
		A04_2_RC_,
		A04_1_RB1_,
		A04_1_R1C_,
		A04_1_RSC_,
		A04_1_WG_,
		A04_2_WG_,
		A04_3_WG_,
		A04_1_WL_,
		A04_1_WY_,
		A04_2_WY_,
		A04_1_CI_,
		A04_1_TMZ_,
		A04_1_TSGN_,
		A04_2_TSGN_,
		A04_1_L16_,
		A04_1_n8PP4,
		R15,
		RB2,
		WCH_,
		MRSC_,
		MP0T10,
		B15X,
		BR1B2,
		BR1B2_,
		BR12B,
		BR12B_,
		BRDIF_,
		BR1B2B,
		BR1B2B_,
		TL15,
		KRPT,
		reset,
		SIM_CLK
	);

	a05_crosspoint_nqi a05(
		T01,
		T01_,
		T02_,
		T03_,
		T04_,
		T05_,
		T06_,
		T07_,
		T08_,
		T09_,
		T10_,
		T11_,
		T12,
		T12_,
		BR1,
		BR1_,
		BR2,
		BR2_,
		BR12B_,
		BR1B2_,
		BRDIF_,
		IC1,
		IC2,
		IC2_,
		IC3,
		IC4,
		IC5,
		IC5_,
		IC8_,
		IC9,
		IC10,
		IC10_,
		IC11_,
		IC12,
		IC12_,
		IC13,
		IC14,
		IC15_,
		IC16,
		IC16_,
		STD2,
		TC0,
		TC0_,
		TCF0,
		RSM3,
		RSM3_,
		DIV_,
		MP0,
		MP3,
		MP3_,
		DAS0,
		DAS0_,
		DAS1,
		DAS1_,
		MASK0,
		MASK0_,
		INKL_,
		SHIFT,
		SHIFT_,
		MONpCH,
		PRINC,
		CCS0,
		CCS0_,
		MSU0,
		MSU0_,
		FETCH0,
		FETCH0_,
		DXCH0,
		GOJ1,
		GOJ1_,
		TCSAJ3_,
		RUPT0,
		GOJAM,
		INOUT,
		INOUT_,
		CHINC_,
		SHANC_,
		TS0,
		TS0_,
		QXCH0_,
		DV1,
		DV1_,
		DV4,
		DV4_,
		NDX0_,
		RAND0,
		WAND0,
		ROR0,
		WOR0,
		READ0,
		RXOR0,
		RXOR0_,
		STFET1_,
		MONWBK,
		ADS0,
		T12USE_,
		n4XP5,
		n5XP11,
		C24A,
		C25A,
		C26A,
		C27A,
		C30A,
		C37P,
		C40P,
		C41P,
		C42P,
		C43P,
		C44P,
		INCSET_,
		YT0_,
		YB0_,
		S11,
		S12,
		XT0_,
		XT2_,
		XT3_,
		XT4_,
		XT5_,
		XT6_,
		A05_1_MONEX_,
		A05_1_RZ_,
		A05_2_RZ_,
		A05_3_RZ_,
		A05_1_RB_,
		A05_2_RB_,
		A05_3_RB_,
		A05_4_RB_,
		A05_1_RA_,
		A05_2_RA_,
		A05_3_RA_,
		A05_1_WA_,
		A05_2_WA_,
		A05_3_WA_,
		A05_1_RL_,
		A05_2_RL_,
		A05_1_TMZ_,
		A05_2_TMZ_,
		A05_1_TSGN_,
		A05_2_TSGN_,
		A05_1_WG_,
		A05_1_RG_,
		A05_2_RG_,
		A05_3_RG_,
		A05_4_RG_,
		A05_1_RC_,
		A05_2_RC_,
		A05_3_RC_,
		A05_1_A2X_,
		A05_2_A2X_,
		A05_1_WY_,
		A05_2_WY_,
		A05_3_WY_,
		A05_1_CI_,
		A05_2_CI_,
		A05_1_WY12_,
		A05_2_WY12_,
		A05_1_WZ_,
		A05_2_WZ_,
		A05_1_WB_,
		A05_2_WB_,
		A05_3_WB_,
		A05_4_WB_,
		A05_1_RU_,
		A05_2_RU_,
		A05_3_RU_,
		A05_1_ST2_,
		A05_1_WS_,
		A05_1_Z15_,
		A05_1_Z16_,
		A05_1_TOV_,
		A05_1_WL_,
		A05_1_WYD_,
		NISQ_,
		DVST,
		TPZG_,
		n2XP7,
		n2XP8,
		n3XP6,
		n5XP12,
		n5XP15,
		n5XP21,
		n6XP8,
		n7XP4,
		n7XP9,
		n9XP5,
		n10XP1,
		n10XP8,
		n11XP2,
		PTWOX,
		TSUDO_,
		RAD,
		RSTRT,
		GNHNC,
		PINC,
		PINC_,
		RL10BB,
		RSCT,
		R6,
		RQ,
		TRSM,
		SCAD,
		SCAD_,
		NDR100_,
		OCTAD2,
		OCTAD3,
		OCTAD4,
		OCTAD5,
		OCTAD6,
		U2BBK,
		RSTSTG,
		DV4B1B,
		reset,
		SIM_CLK
	);

	a06_crosspoint_ii a06(
		T01,
		T01_,
		T02,
		T02_,
		T03,
		T03_,
		T04,
		T04_,
		T05,
		T06,
		T06_,
		T07,
		T07_,
		T08,
		T08_,
		T09,
		T10,
		T10_,
		T11,
		T11_,
		T12,
		DV4_,
		DV376_,
		DV1376_,
		DIVSTG,
		DV4B1B,
		RBSQ,
		MP1,
		MP1_,
		MP3_,
		T12USE_,
		RRPA,
		BR1,
		BR1_,
		BR2_,
		BR12B_,
		BR1B2B,
		BR1B2_,
		BR1B2B_,
		PHS4_,
		MONEX_,
		PTWOX,
		B15X,
		AUG0_,
		DIM0_,
		INCR0,
		PRINC,
		DINC,
		DINC_,
		PINC,
		MINC,
		MCDU,
		PCDU,
		CDUSTB_,
		DAS0,
		DAS1,
		DAS1_,
		MSU0,
		WAND0,
		RAND0,
		INOTLD,
		SHIFT,
		INKL,
		MONpCH,
		MON_,
		FETCH1,
		DXCH0,
		RUPT0,
		RUPT1,
		MASK0,
		DV1376,
		CCS0,
		CCS0_,
		ADS0,
		NDXX1_,
		AD0,
		DCA0,
		DCS0,
		SU0,
		RADRZ,
		RADRG,
		IC6,
		IC7,
		IC9,
		IC11,
		IC17,
		L01_,
		L02A_,
		L15A_,
		R6,
		R15,
		STBE,
		STBF,
		STFETI_,
		n1XP10,
		n2XP3,
		n2XP5,
		n2XP7,
		n2XP8,
		n3XP2,
		n3XP6,
		n3XP7,
		n4XP11,
		n5XP4,
		n5XP12,
		n5XP15,
		n5XP21,
		n5XP28,
		n6XP5,
		n6XP8,
		n7XP4,
		n7XP9,
		n7XP19,
		n8XP6,
		n9XP1,
		n9XP5,
		n10XP1,
		n10XP8,
		n11XP2,
		n8PP4,
		MP0T10,
		TL15,
		ST2_,
		GOJAM,
		A06_1_A2X_,
		A06_1_RB_,
		A06_2_RB_,
		A06_1_WYD_,
		A06_1_WY_,
		A06_1_RC_,
		A06_2_RC_,
		A06_1_WL_,
		A06_1_RG_,
		A06_1_WB_,
		A06_1_RU_,
		A06_2_RU_,
		A06_3_RU_,
		A06_1_WZ_,
		A06_1_TOV_,
		A06_1_WSC_,
		A06_2_WSC_,
		A06_1_WG_,
		A06_2_WG_,
		A06_1_MONEX_,
		A06_1_WA_,
		A06_2_WA_,
		A06_1_RZ_,
		A06_1_WS_,
		A06_1_CI_,
		A06_1_R1C_,
		A06_1_RB1_,
		A06_1_RPTSET,
		A06_1_ST2_,
		A06_1_n8PP4,
		A06_2_n8PP4,
		A06_3_n8PP4,
		DVXP1,
		L2GD_,
		ZIP,
		ZIPCI,
		ZAP,
		ZAP_,
		MCRO_,
		RB1F,
		RCH_,
		TSGU_,
		CLXC,
		WQ_,
		MONEX,
		TWOX,
		BXVX,
		PIFL_,
		CGMC,
		POUT,
		MOUT,
		ZOUT,
		WOVR,
		RDBANK,
		EXT,
		ST1,
		ST2,
		RUS_,
		NEAC,
		PONEX,
		PSEUDO,
		n6XP10,
		n7XP14,
		n8XP4,
		n8XP10,
		reset,
		SIM_CLK
	);

	a07_service_gates a07(
		WT_,
		CT_,
		RT_,
		WY12_,
		WY_,
		WYD_,
		WB_,
		WGA_,
		WZ_,
		WSCG_,
		WL_,
		WCHG_,
		WA_,
		WS_,
		WQ_,
		WG_,
		RC_,
		RQ_,
		RSCG_,
		RCHG_,
		ZAP_,
		SHIFT,
		NEAC,
		GINH,
		SR_,
		CYR_,
		CYL_,
		EDOP_,
		PIPPLS_,
		SB2_,
		XB5_,
		XB1_,
		XT0_,
		XB0_,
		XB2_,
		P04_,
		XB4_,
		XB6_,
		L15_,
		PIFL_,
		TT_,
		L2GD_,
		A2X_,
		CGMC,
		T10_,
		STFET1_,
		EAC_,
		MP3A,
		CI,
		XB3_,
		U2BBK,
		RG_,
		RA_,
		RL_,
		RZ_,
		RU_,
		RUS_,
		RB_,
		RL10BB,
		EAD09,
		EAD09_,
		EAD10,
		EAD10_,
		EAD11,
		EAD11_,
		WALSG,
		WALSG_,
		WYLOG_,
		WYHIG_,
		CUG,
		WYDG_,
		WYDLOG_,
		WBG_,
		CBG,
		WGNORM,
		WG1G_,
		WG2G_,
		WG3G_,
		WG4G_,
		WG5G_,
		WEDOPG_,
		PIPSAM,
		WZG_,
		CZG,
		WLG_,
		CLG2G,
		CLG1G,
		WAG_,
		CAG,
		WSG_,
		CSG,
		WQG_,
		CQG,
		RCG_,
		RQG_,
		RFBG_,
		RBBEG_,
		G2LSG_,
		L2GDG_,
		A2XG_,
		CGG,
		WEBG_,
		CEBG,
		CFBG,
		WFBG_,
		WBBEG_,
		RGG_,
		RAG_,
		RLG_,
		RZG_,
		REBG_,
		RUG_,
		RUSG_,
		RULOG_,
		RBHG_,
		RBLG_,
		YT0,
		YT0_,
		YT0E,
		YT1,
		YT1_,
		YT1E,
		YT2,
		YT2_,
		YT2E,
		YT3,
		YT3_,
		YT3E,
		YT4,
		YT4_,
		YT4E,
		YT5,
		YT5_,
		YT5E,
		YT6,
		YT6_,
		YT6E,
		YT7,
		YT7_,
		YT7E,
		CI01_,
		MWYG,
		MWBG,
		MWG,
		MWZG,
		MWLG,
		MWAG,
		MWSG,
		MWQG,
		MWEBG,
		MWFBG,
		MWBBEG,
		MRGG,
		MRAG,
		MRLG,
		MRULOG,
		reset,
		SIM_CLK
	);

	a08_four_bit_1 a08(
		A2XG_,
		PONEX,
		MONEX,
		TWOX,
		CLXC,
		CUG,
		WYLOG_,
		WYDLOG_,
		WYDG_,
		CI01_,
		RULOG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		CLG1G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBLG_,
		RCG_,
		WG3G_,
		WG4G_,
		L2GDG_,
		MCRO_,
		WG1G_,
		CGG,
		RGG_,
		WL05_,
		WL06_,
		WL16_,
		SA01,
		SA02,
		SA03,
		SA04,
		G01ED,
		G02ED,
		G03ED,
		G04ED,
		RB1,
		R15,
		R1C,
		RB2,
		CH01,
		CH02,
		CH03,
		CH04,
		G05_,
		G06_,
		G07_,
		MDT01,
		MDT02,
		MDT03,
		MDT04,
		SETAB_,
		SETCD_,
		S08,
		S08_,
		XUY05_,
		XUY06_,
		WHOMP,
		WHOMPA,
		CAD1,
		CAD2,
		CAD3,
		CAD4,
		BBK1,
		BBK2,
		BBK3,
		RB1F,
		R6,
		RPTAD3,
		RPTAD4,
		WL01,
		WL01_,
		MWL01,
		WL02,
		WL02_,
		MWL02,
		WL03,
		WL03_,
		MWL03,
		WL04,
		WL04_,
		MWL04,
		CO06,
		CI05_,
		XUY01_,
		XUY02_,
		SUMA01_,
		SUMB01_,
		SUMA02_,
		SUMB02_,
		SUMA03_,
		SUMB03_,
		SUMA04_,
		SUMB04_,
		G01,
		G01_,
		GEM01,
		G02,
		GEM02,
		G03,
		GEM03,
		G04,
		GEM04,
		L01_,
		L02_,
		L03_,
		L04_,
		CLEARA,
		CLEARB,
		CLEARC,
		CLEARD,
		reset,
		SIM_CLK
	);

	a09_four_bit_2 a09(
		A2XG_,
		PONEX,
		MONEX,
		TWOX,
		CLXC,
		CUG,
		WYLOG_,
		WYDLOG_,
		WYDG_,
		CI05_,
		CO06,
		RULOG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		CLG1G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBLG_,
		RCG_,
		WG3G_,
		WG4G_,
		L2GDG_,
		MCRO_,
		WG1G_,
		CGG,
		RGG_,
		L04_,
		WL04_,
		WL09_,
		WL10_,
		WL16_,
		SA05,
		SA06,
		SA07,
		SA08,
		G05ED,
		G06ED,
		G07ED,
		G08ED,
		RB1,
		R15,
		R1C,
		RB2,
		CH05,
		CH06,
		CH07,
		CH08,
		G09_,
		G10_,
		G11_,
		MDT05,
		MDT06,
		MDT07,
		MDT08,
		SETAB_,
		SETCD_,
		S08,
		S08_,
		XUY09_,
		XUY10_,
		WHOMP,
		WHOMPA,
		CAD5,
		CAD6,
		CAD7,
		CAD8,
		BBK1,
		BBK2,
		BBK3,
		RB1F,
		R6,
		RPTAD3,
		RPTAD5,
		RPTAD6,
		WL05,
		WL05_,
		MWL05,
		WL06,
		WL06_,
		MWL06,
		WL07,
		WL07_,
		MWL07,
		WL08,
		WL08_,
		MWL08,
		CI09_,
		CO10,
		XUY05_,
		XUY06_,
		L08_,
		G05,
		G05_,
		GEM05,
		G06,
		G06_,
		GEM06,
		G07,
		G07_,
		GEM07,
		G08,
		GEM08,
		CLEARA,
		CLEARB,
		CLEARC,
		CLEARD,
		reset,
		SIM_CLK
	);

	a10_four_bit_3 a10(
		A2XG_,
		PONEX,
		MONEX,
		TWOX,
		CLXC,
		CUG,
		WYLOG_,
		WYDLOG_,
		WYDG_,
		CI09_,
		CO10,
		RULOG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		CLG1G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBLG_,
		RCG_,
		WG3G_,
		WG4G_,
		L2GDG_,
		MCRO_,
		WG1G_,
		CGG,
		RGG_,
		L04_,
		WL08_,
		WL13_,
		WL14_,
		SA09,
		SA10,
		SA11,
		SA12,
		RB1,
		R15,
		R1C,
		RB2,
		CH09,
		CH10,
		CH11,
		CH12,
		G13_,
		G14_,
		G15_,
		MDT09,
		MDT10,
		MDT11,
		MDT12,
		SETAB_,
		SETCD_,
		S08,
		S08_,
		XUY09_,
		XUY10_,
		XUY12_,
		XUY14_,
		WHOMP,
		WHOMPA,
		CAD5,
		CAD6,
		CAD7,
		CAD8,
		BBK1,
		BBK2,
		BBK3,
		RB1F,
		R6,
		RPTAD3,
		RPTAD5,
		RPTAD6,
		RL09_,
		RL10_,
		RL11_,
		RL12_,
		A10_1_RL09_,
		A10_2_RL09_,
		A10_3_RL09_,
		A10_4_RL09_,
		A10_1_RL10_,
		A10_2_RL10_,
		A10_3_RL10_,
		A10_4_RL10_,
		A10_1_RL11_,
		A10_2_RL11_,
		A10_3_RL11_,
		A10_4_RL11_,
		A10_1_RL12_,
		A10_2_RL12_,
		A10_3_RL12_,
		A10_4_RL12_,
		WL09,
		WL09_,
		MWL09,
		WL10,
		WL10_,
		MWL10,
		WL11,
		WL11_,
		MWL11,
		WL12,
		WL12_,
		MWL12,
		CI13_,
		CO14,
		XUY13_,
		XUY06_,
		L08_,
		L12_,
		G09,
		G09_,
		GEM09,
		G10,
		G10_,
		GEM10,
		G11,
		G11_,
		GEM11,
		G12,
		GEM12,
		CLEARA,
		CLEARB,
		CLEARC,
		CLEARD,
		reset,
		SIM_CLK
	);

	assign A2X_ = A05_1_A2X_ & A05_2_A2X_ & A06_1_A2X_;
	assign CI_ = A04_1_CI_ & A05_1_CI_ & A05_2_CI_ & A06_1_CI_;
	assign L16_ = A04_1_L16_;
	assign MONEX_ = A05_1_MONEX_ & A06_1_MONEX_;
	assign R1C_ = A04_1_R1C_ & A06_1_R1C_;
	assign RA_ = A04_1_RA_ & A04_2_RA_ & A05_1_RA_ & A05_2_RA_ & A05_3_RA_;
	assign RB1_ = A04_1_RB1_ & A06_1_RB1_;
	assign RB_ = A04_1_RB_ & A04_2_RB_ & A05_1_RB_ & A05_2_RB_ & A05_3_RB_ & A05_4_RB_ & A06_1_RB_ & A06_2_RB_;
	assign RC_ = A04_1_RC_ & A04_2_RC_ & A05_1_RC_ & A05_2_RC_ & A05_3_RC_ & A06_1_RC_ & A06_2_RC_;
	assign RG_ = A05_1_RG_ & A05_2_RG_ & A05_3_RG_ & A05_4_RG_ & A06_1_RG_;
	assign RL09_ = A10_1_RL09_ & A10_2_RL09_ & A10_3_RL09_ & A10_4_RL09_;
	assign RL10_ = A10_1_RL10_ & A10_2_RL10_ & A10_3_RL10_ & A10_4_RL10_;
	assign RL11_ = A10_1_RL11_ & A10_2_RL11_ & A10_3_RL11_ & A10_4_RL11_;
	assign RL12_ = A10_1_RL12_ & A10_2_RL12_ & A10_3_RL12_ & A10_4_RL12_;
	assign RL_ = A05_1_RL_ & A05_2_RL_;
	assign RPTSET = A03_1_RPTSET & A03_2_RPTSET & A03_3_RPTSET & A06_1_RPTSET;
	assign RSC_ = A04_1_RSC_;
	assign RU_ = A05_1_RU_ & A05_2_RU_ & A05_3_RU_ & A06_1_RU_ & A06_2_RU_ & A06_3_RU_;
	assign RZ_ = A05_1_RZ_ & A05_2_RZ_ & A05_3_RZ_ & A06_1_RZ_;
	assign ST2_ = A05_1_ST2_ & A06_1_ST2_;
	assign TMZ_ = A04_1_TMZ_ & A05_1_TMZ_ & A05_2_TMZ_;
	assign TOV_ = A05_1_TOV_ & A06_1_TOV_;
	assign TSGN_ = A04_1_TSGN_ & A04_2_TSGN_ & A05_1_TSGN_ & A05_2_TSGN_;
	assign WA_ = A05_1_WA_ & A05_2_WA_ & A05_3_WA_ & A06_1_WA_ & A06_2_WA_;
	assign WB_ = A05_1_WB_ & A05_2_WB_ & A05_3_WB_ & A05_4_WB_ & A06_1_WB_;
	assign WG_ = A04_1_WG_ & A04_2_WG_ & A04_3_WG_ & A05_1_WG_ & A06_1_WG_ & A06_2_WG_;
	assign WL_ = A04_1_WL_ & A05_1_WL_ & A06_1_WL_;
	assign WSC_ = A06_1_WSC_ & A06_2_WSC_;
	assign WS_ = A05_1_WS_ & A06_1_WS_;
	assign WY12_ = A05_1_WY12_ & A05_2_WY12_;
	assign WYD_ = A05_1_WYD_ & A06_1_WYD_;
	assign WY_ = A04_1_WY_ & A04_2_WY_ & A05_1_WY_ & A05_2_WY_ & A05_3_WY_ & A06_1_WY_;
	assign WZ_ = A05_1_WZ_ & A05_2_WZ_ & A06_1_WZ_;
	assign Z15_ = A05_1_Z15_;
	assign Z16_ = A05_1_Z16_;
	assign n8PP4 = A04_1_n8PP4 & A06_1_n8PP4 & A06_2_n8PP4 & A06_3_n8PP4;

	initial
	begin
		$stop;
	end

endmodule
