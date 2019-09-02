`timescale 1ns / 1ps

module commands();

	reg A15_ = 1;
	reg A16_ = 1;
	reg ALGA = 0;
	reg CLOCK = 0;
	reg DBLTST = 0;
	reg DVST = 0;
	reg EXST0_ = 1;
	reg EXST1_ = 1;
	reg EXT = 0;
	reg EXTPLS = 0;
	reg GEQZRO_ = 1;
	reg GOJ1 = 0;
	reg INHPLS = 0;
	reg INKL = 0;
	reg L15_ = 1;
	reg MNHRPT = 0;
	reg MSTP = 0;
	reg MSTRTP = 0;
	reg MTCSAI = 0;
	reg NDR100_ = 1;
	reg NISQ = 0;
	reg NISQ_ = 1;
	reg RCHAT_ = 1;
	reg RCHBT_ = 1;
	reg RELPLS = 0;
	reg RPTSET = 0;
	reg RSC_ = 1;
	reg RSM3 = 0;
	reg RSM3_ = 1;
	reg RSTSTG = 0;
	reg RUPTOR_ = 1;
	reg SBY = 0;
	reg SIM_CLK = 1;
	reg ST1 = 0;
	reg ST2 = 0;
	reg STORE1_ = 1;
	reg STRT1 = 0;
	reg STRT2 = 0;
	reg STRTFC = 0;
	reg SUMA16_ = 1;
	reg SUMB16_ = 1;
	reg TMZ_ = 1;
	reg TOV_ = 1;
	reg TPZG_ = 1;
	reg TRSM = 0;
	reg TS0_ = 1;
	reg TSGN_ = 1;
	reg TSGU_ = 1;
	reg WL01_ = 1;
	reg WL02_ = 1;
	reg WL03_ = 1;
	reg WL04_ = 1;
	reg WL05_ = 1;
	reg WL06_ = 1;
	reg WL07_ = 1;
	reg WL08_ = 1;
	reg WL09_ = 1;
	reg WL10_ = 1;
	reg WL11_ = 1;
	reg WL12_ = 1;
	reg WL13_ = 1;
	reg WL14_ = 1;
	reg WL15 = 0;
	reg WL15_ = 1;
	reg WL16 = 0;
	reg WL16_ = 1;
	reg XB7_ = 1;
	reg XT1_ = 1;
	reg n7XP14 = 0;

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
	wire A04_2_RA_;
	wire A04_2_RB_;
	wire A04_2_RC_;
	wire A04_2_TSGN_;
	wire A04_2_WG_;
	wire A04_2_WY_;
	wire A04_3_WG_;
	wire B15X;
	wire BPP4;
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
	wire CLK;
	wire CT;
	wire CT_;
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
	wire DV4_;
	wire EDSET;
	wire EVNSET;
	wire EVNSET_;
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
	wire GOJAM;
	wire GOJAM_;
	wire IC12;
	wire IC13;
	wire IC15;
	wire INOUT;
	wire INOUT_;
	wire KRPT;
	wire MBR1;
	wire MBR2;
	wire MGOJAM;
	wire MIIP;
	wire MINHL;
	wire MONWT;
	wire MP0T10;
	wire MP0_;
	wire MP1;
	wire MP3A;
	wire MP3_;
	wire MRSC_;
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
	wire PRINC;
	wire Q2A;
	wire QC0_;
	wire QC1_;
	wire QC2_;
	wire QC3_;
	wire R15;
	wire RAND0;
	wire RB2;
	wire READ0;
	wire READ0_;
	wire RINGA_;
	wire RINGB_;
	wire ROR0;
	wire RRPA;
	wire RT;
	wire RT_;
	wire RUPT0;
	wire RUPT0_;
	wire RUPT1;
	wire RUPT1_;
	wire RXOR0;
	wire RXOR0_;
	wire SB0;
	wire SB0_;
	wire SB1;
	wire SB1_;
	wire SB2;
	wire SB2_;
	wire SB4;
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
	wire ST1376_;
	wire ST1_;
	wire ST376;
	wire ST376_;
	wire ST3_;
	wire ST4_;
	wire STD2;
	wire STOP;
	wire STOPA;
	wire STOP_;
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
	wire TIMR;
	wire TL15;
	wire TT_;
	wire UNF;
	wire UNF_;
	wire WAND0;
	wire WCH_;
	wire WOR0;
	wire WOR0_;
	wire WRITE0;
	wire WRITE0_;
	wire WT;
	wire WT_;
	wire n1XP10;
	wire n2XP3;
	wire n2XP5;
	wire n3XP2;
	wire n3XP7;
	wire n4XP11;
	wire n4XP5;
	wire n5XP11;
	wire n5XP28;
	wire n5XP4;
	wire n6XP5;
	wire n7XP19;
	wire n8XP5;
	wire n8XP6;
	wire n9XP1;

	always
		#10 SIM_CLK = !SIM_CLK; // 20 ns gate delay

	always
		#244.140625 CLOCK = !CLOCK;  // 2.048 MHz clock

	a1_scaler a1(
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
		SIM_CLK
	);

	a2_timer a2(
		CLOCK,
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
		SBY,
		ALGA,
		MSTRTP,
		STRT1,
		STRT2,
		GOJ1,
		MSTP,
		STOPA,
		GOJAM,
		GOJAM_,
		STOP,
		STOP_,
		TIMR,
		MSTPIT_,
		MGOJAM,
		WL15,
		WL15_,
		WL16,
		WL16_,
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
		SIM_CLK
	);

	a3_sq_register a3(
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
		A03_1_RPTSET,
		A03_2_RPTSET,
		A03_3_RPTSET,
		IC12,
		IC13,
		IC15,
		MP0_,
		MP1,
		MP3_,
		MP3A,
		MSQ10,
		MSQ11,
		MSQ12,
		MSQ13,
		MSQ14,
		MSQ16,
		MSQEXT,
		MINHL,
		MIIP,
		SIM_CLK
	);

	a4_stage_branch a4(
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
		BPP4,
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
		SIM_CLK
	);


	initial
	begin
		#200000 $stop;
	end

endmodule