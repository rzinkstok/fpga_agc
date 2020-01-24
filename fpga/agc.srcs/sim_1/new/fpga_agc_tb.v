`timescale 1ns / 1ps

module fpga_agc_tb(
);

	reg BLKUPL_ = 1;
	reg BMGXM = 0;
	reg BMGXP = 0;
	reg BMGYM = 0;
	reg BMGYP = 0;
	reg BMGZM = 0;
	reg BMGZP = 0;
	reg CAURST = 0;
	reg CDUFAL = 0;
	reg CDUXM = 0;
	reg CDUXP = 0;
	reg CDUYM = 0;
	reg CDUYP = 0;
	reg CDUZM = 0;
	reg CDUZP = 0;
	reg CTLSAT = 0;
	reg DBLTST = 0;
	reg DKBSNC = 0;
	reg DKEND = 0;
	reg DKSTRT = 0;
	reg DOSCAL = 0;
	reg FREFUN = 0;
	reg GATEX_ = 1;
	reg GATEY_ = 1;
	reg GATEZ_ = 1;
	reg GCAPCL = 0;
	reg GUIREL = 0;
	reg HOLFUN = 0;
	reg IMUCAG = 0;
	reg IMUFAL = 0;
	reg IMUOPR = 0;
	reg IN3008 = 0;
	reg IN3212 = 0;
	reg IN3213 = 0;
	reg IN3214 = 0;
	reg IN3216 = 0;
	reg IN3301 = 0;
	reg ISSTOR = 0;
	reg LEMATT = 0;
	reg LFTOFF = 0;
	reg LRIN0 = 0;
	reg LRIN1 = 0;
	reg LRRLSC = 0;
	reg LVDAGD = 0;
	reg MAINRS = 0;
	reg MAMU = 0;
	reg MANRmP = 0;
	reg MANRmR = 0;
	reg MANRmY = 0;
	reg MANRpP = 0;
	reg MANRpR = 0;
	reg MANRpY = 0;
	reg MARK = 0;
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
	reg MDT13 = 0;
	reg MDT14 = 0;
	reg MDT15 = 0;
	reg MDT16 = 0;
	reg MKEY1 = 0;
	reg MKEY2 = 0;
	reg MKEY3 = 0;
	reg MKEY4 = 0;
	reg MKEY5 = 0;
	reg MLDCH = 0;
	reg MLOAD = 0;
	reg MNHNC = 0;
	reg MNHRPT = 0;
	reg MNHSBF = 0;
	reg MNIMmP = 0;
	reg MNIMmR = 0;
	reg MNIMmY = 0;
	reg MNIMpP = 0;
	reg MNIMpR = 0;
	reg MNIMpY = 0;
	reg MONPAR = 0;
	reg MONWBK = 0;
	reg MRDCH = 0;
	reg MREAD = 0;
	reg MRKREJ = 0;
	reg MRKRST = 0;
	reg MSTP = 0;
	reg MSTRT = 0;
	reg MTCSAI = 0;
	reg NAVRST = 0;
	reg NHALGA = 0;
	reg NHVFAL = 0;
	reg NKEY1 = 0;
	reg NKEY2 = 0;
	reg NKEY3 = 0;
	reg NKEY4 = 0;
	reg NKEY5 = 0;
	reg OPCDFL = 0;
	reg OPMSW2 = 0;
	reg OPMSW3 = 0;
	reg PCHGOF = 0;
	reg PIPAXm = 0;
	reg PIPAXp = 0;
	reg PIPAYm = 0;
	reg PIPAYp = 0;
	reg PIPAZm = 0;
	reg PIPAZp = 0;
	reg ROLGOF = 0;
	reg RRIN0 = 0;
	reg RRIN1 = 0;
	reg RRPONA = 0;
	reg RRRLSC = 0;
	reg S4BSAB = 0;
	reg SBYBUT = 0;
	reg SHAFTM = 0;
	reg SHAFTP = 0;
	reg SIGNX = 0;
	reg SIGNY = 0;
	reg SIGNZ = 0;
	reg SMSEPR = 0;
	reg SPSRDY = 0;
	reg STRPRS = 0;
	reg TEMPIN = 0;
	reg TRANmX = 0;
	reg TRANmY = 0;
	reg TRANmZ = 0;
	reg TRANpX = 0;
	reg TRANpY = 0;
	reg TRANpZ = 0;
	reg TRNM = 0;
	reg TRNP = 0;
	reg TRST10 = 0;
	reg TRST9 = 0;
	reg ULLTHR = 0;
	reg UPL0 = 0;
	reg UPL1 = 0;
	reg WD167 = 1;
	reg WD168 = 1;
	reg XLNK0 = 0;
	reg XLNK1 = 0;
	reg ZEROP = 0;
	reg clk = 0;
	reg n0VDCA = 0;
	reg reset = 0;

	wire ALGA;
	wire ALRT0;
	wire ALRT1;
	wire ALT0;
	wire ALT1;
	wire ALTSNC;
	wire BPLSSW;
	wire BPLUS;
	wire CDUCLK;
	wire CDUXDM;
	wire CDUXDP;
	wire CDUYDM;
	wire CDUYDP;
	wire CDUZDM;
	wire CDUZDP;
	wire CGCWAR;
	wire CLK;
	wire CLOCK;
	wire CLROPE;
	wire COARSE;
	wire COMACT;
	wire DISDAC;
	wire DKDATA;
	wire DKDATB;
	wire ELSNCM;
	wire ELSNCN;
	wire EMSm;
	wire EMSp;
	wire ENERIM;
	wire ENEROP;
	wire FILTIN;
	wire FLTOUT;
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
	wire GEM13;
	wire GEM14;
	wire GEM16;
	wire GEMP;
	wire GYENAB;
	wire GYRRST;
	wire GYRSET;
	wire GYXM;
	wire GYXP;
	wire GYYM;
	wire GYYP;
	wire GYZM;
	wire GYZP;
	wire HIMOD;
	wire IHENV;
	wire IL01;
	wire IL01_;
	wire IL02;
	wire IL02_;
	wire IL03;
	wire IL03_;
	wire IL04;
	wire IL04_;
	wire IL05;
	wire IL05_;
	wire IL06;
	wire IL06_;
	wire IL07;
	wire IL07_;
	wire ILP;
	wire ILP_;
	wire ISSTDC;
	wire ISSWAR;
	wire KYRLS;
	wire LOMOD;
	wire LRRANG;
	wire LRRST;
	wire LRSYNC;
	wire LRXVEL;
	wire LRYVEL;
	wire LRZVEL;
	wire MBR1;
	wire MBR2;
	wire MCTRAL_;
	wire MGOJAM;
	wire MGP_;
	wire MIIP;
	wire MINHL;
	wire MINKL;
	wire MNISQ;
	wire MON800;
	wire MONWT;
	wire MOSCAL_;
	wire MPAL_;
	wire MPIPAL_;
	wire MRAG;
	wire MRCH;
	wire MREQIN;
	wire MRGG;
	wire MRLG;
	wire MROLGT;
	wire MRPTAL_;
	wire MRSC;
	wire MRULOG;
	wire MSCAFL_;
	wire MSP;
	wire MSQ10;
	wire MSQ11;
	wire MSQ12;
	wire MSQ13;
	wire MSQ14;
	wire MSQ16;
	wire MSQEXT;
	wire MST1;
	wire MST2;
	wire MST3;
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
	wire MTCAL_;
	wire MTCSA_;
	wire MVFAIL_;
	wire MWAG;
	wire MWARNF_;
	wire MWATCH_;
	wire MWBBEG;
	wire MWBG;
	wire MWCH;
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
	wire MWL13;
	wire MWL14;
	wire MWL15;
	wire MWL16;
	wire MWLG;
	wire MWQG;
	wire MWSG;
	wire MWYG;
	wire MWZG;
	wire MYCLMP;
	wire OPEROR;
	wire OT1108;
	wire OT1110;
	wire OT1111;
	wire OT1112;
	wire OT1113;
	wire OT1114;
	wire OT1116;
	wire OT1207;
	wire OT1207_;
	wire OTLNK0;
	wire OTLNK1;
	wire OUTCOM;
	wire PIPASW;
	wire PIPDAT;
	wire PIPINT;
	wire Q2A;
	wire RCmXmP;
	wire RCmXmY;
	wire RCmXpP;
	wire RCmXpY;
	wire RCmYmR;
	wire RCmYpR;
	wire RCmZmR;
	wire RCmZpR;
	wire RCpXmP;
	wire RCpXmY;
	wire RCpXpP;
	wire RCpXpY;
	wire RCpYmR;
	wire RCpYpR;
	wire RCpZmR;
	wire RCpZpR;
	wire RESETA;
	wire RESETB;
	wire RESETC;
	wire RESETD;
	wire RESTRT;
	wire REX;
	wire REY;
	wire RHCGO;
	wire RLYB01;
	wire RLYB02;
	wire RLYB03;
	wire RLYB04;
	wire RLYB05;
	wire RLYB06;
	wire RLYB07;
	wire RLYB08;
	wire RLYB09;
	wire RLYB10;
	wire RLYB11;
	wire ROPER;
	wire ROPES;
	wire ROPET;
	wire RRRANG;
	wire RRRARA;
	wire RRRST;
	wire RRSYNC;
	wire RSTKX_;
	wire RSTKY_;
	wire RYWD12;
	wire RYWD13;
	wire RYWD14;
	wire RYWD16;
	wire S4BOFF;
	wire S4BSEQ;
	wire S4BTAK;
	wire SA01;
	wire SA02;
	wire SA03;
	wire SA04;
	wire SA05;
	wire SA06;
	wire SA07;
	wire SA08;
	wire SA09;
	wire SA10;
	wire SA11;
	wire SA12;
	wire SA13;
	wire SA14;
	wire SA16;
	wire SAP;
	wire SBE;
	wire SBF;
	wire SBYLIT;
	wire SCAFAL;
	wire SCAS10;
	wire SCAS17;
	wire SETAB;
	wire SETCD;
	wire SETEK;
	wire SHFTDM;
	wire SHFTDP;
	wire STARON;
	wire STNDBY;
	wire STR14;
	wire STR19;
	wire STR210;
	wire STR311;
	wire STR412;
	wire STR58;
	wire STR912;
	wire STRT1;
	wire STRT2;
	wire THRSTm;
	wire THRSTp;
	wire TMPCAU;
	wire TRNDM;
	wire TRNDP;
	wire TVCNAB;
	wire UPLACT;
	wire VFAIL;
	wire VNFLSH;
	wire WEX;
	wire WEY;
	wire XB0E;
	wire XB1E;
	wire XB2E;
	wire XB3E;
	wire XB4E;
	wire XB5E;
	wire XB6E;
	wire XB7E;
	wire XT0E;
	wire XT1E;
	wire XT2E;
	wire XT3E;
	wire XT4E;
	wire XT5E;
	wire XT6E;
	wire XT7E;
	wire YB0E;
	wire YB1E;
	wire YB2E;
	wire YB3E;
	wire YT0E;
	wire YT1E;
	wire YT2E;
	wire YT3E;
	wire YT4E;
	wire YT5E;
	wire YT6E;
	wire YT7E;
	wire ZEROPT;
	wire ZID;
	wire ZIMCDU;
	wire ZOPCDU;
	wire n12KPPS;
	wire n25KPPS;
	wire n2FSFAL;
	wire n3200A;
	wire n3200B;
	wire n3200C;
	wire n3200D;
	wire n800RST;
	wire n800SET;
	wire p28COM;
	wire p4SW;
	wire p4VDC;
	wire prop_clk;
	wire prop_clk_locked;

	always
		# 5 clk = !clk;
	tray_a traya(
		BLKUPL_,
		BMGXM,
		BMGXP,
		BMGYM,
		BMGYP,
		BMGZM,
		BMGZP,
		CAURST,
		CDUFAL,
		CDUXM,
		CDUXP,
		CDUYM,
		CDUYP,
		CDUZM,
		CDUZP,
		CLOCK,
		CTLSAT,
		DBLTST,
		DKBSNC,
		DKEND,
		DKSTRT,
		DOSCAL,
		FLTOUT,
		FREFUN,
		GATEX_,
		GATEY_,
		GATEZ_,
		GCAPCL,
		GUIREL,
		HOLFUN,
		IMUCAG,
		IMUFAL,
		IMUOPR,
		IN3008,
		IN3212,
		IN3213,
		IN3214,
		IN3216,
		IN3301,
		ISSTOR,
		LEMATT,
		LFTOFF,
		LRIN0,
		LRIN1,
		LRRLSC,
		LVDAGD,
		MAINRS,
		MAMU,
		MANRmP,
		MANRmR,
		MANRmY,
		MANRpP,
		MANRpR,
		MANRpY,
		MARK,
		MDT01,
		MDT02,
		MDT03,
		MDT04,
		MDT05,
		MDT06,
		MDT07,
		MDT08,
		MDT09,
		MDT10,
		MDT11,
		MDT12,
		MDT13,
		MDT14,
		MDT15,
		MDT16,
		MKEY1,
		MKEY2,
		MKEY3,
		MKEY4,
		MKEY5,
		MLDCH,
		MLOAD,
		MNHNC,
		MNHRPT,
		MNHSBF,
		MNIMmP,
		MNIMmR,
		MNIMmY,
		MNIMpP,
		MNIMpR,
		MNIMpY,
		MONPAR,
		MONWBK,
		MRDCH,
		MREAD,
		MRKREJ,
		MRKRST,
		MSTP,
		MSTRT,
		MTCSAI,
		MYCLMP,
		NAVRST,
		NHALGA,
		NHVFAL,
		NKEY1,
		NKEY2,
		NKEY3,
		NKEY4,
		NKEY5,
		OPCDFL,
		OPMSW2,
		OPMSW3,
		PCHGOF,
		PIPAXm,
		PIPAXp,
		PIPAYm,
		PIPAYp,
		PIPAZm,
		PIPAZp,
		ROLGOF,
		RRIN0,
		RRIN1,
		RRPONA,
		RRRLSC,
		S4BSAB,
		SA01,
		SA02,
		SA03,
		SA04,
		SA05,
		SA06,
		SA07,
		SA08,
		SA09,
		SA10,
		SA11,
		SA12,
		SA13,
		SA14,
		SA16,
		SAP,
		SBYBUT,
		SCAFAL,
		SHAFTM,
		SHAFTP,
		SIGNX,
		SIGNY,
		SIGNZ,
		SMSEPR,
		SPSRDY,
		STRPRS,
		STRT2,
		TEMPIN,
		TRANmX,
		TRANmY,
		TRANmZ,
		TRANpX,
		TRANpY,
		TRANpZ,
		TRNM,
		TRNP,
		TRST10,
		TRST9,
		ULLTHR,
		UPL0,
		UPL1,
		VFAIL,
		WD167,
		WD168,
		XLNK0,
		XLNK1,
		ZEROP,
		n2FSFAL,
		prop_clk_locked,
		ALGA,
		ALRT0,
		ALRT1,
		ALT0,
		ALT1,
		ALTSNC,
		BPLSSW,
		BPLUS,
		CDUCLK,
		CDUXDM,
		CDUXDP,
		CDUYDM,
		CDUYDP,
		CDUZDM,
		CDUZDP,
		CGCWAR,
		CLK,
		CLROPE,
		COARSE,
		COMACT,
		DISDAC,
		DKDATA,
		DKDATB,
		ELSNCM,
		ELSNCN,
		EMSm,
		EMSp,
		ENERIM,
		ENEROP,
		FILTIN,
		GEM01,
		GEM02,
		GEM03,
		GEM04,
		GEM05,
		GEM06,
		GEM07,
		GEM08,
		GEM09,
		GEM10,
		GEM11,
		GEM12,
		GEM13,
		GEM14,
		GEM16,
		GEMP,
		GYENAB,
		GYRRST,
		GYRSET,
		GYXM,
		GYXP,
		GYYM,
		GYYP,
		GYZM,
		GYZP,
		HIMOD,
		IHENV,
		IL01,
		IL01_,
		IL02,
		IL02_,
		IL03,
		IL03_,
		IL04,
		IL04_,
		IL05,
		IL05_,
		IL06,
		IL06_,
		IL07,
		IL07_,
		ILP,
		ILP_,
		ISSTDC,
		ISSWAR,
		KYRLS,
		LOMOD,
		LRRANG,
		LRRST,
		LRSYNC,
		LRXVEL,
		LRYVEL,
		LRZVEL,
		MBR1,
		MBR2,
		MCTRAL_,
		MGOJAM,
		MGP_,
		MIIP,
		MINHL,
		MINKL,
		MNISQ,
		MON800,
		MONWT,
		MOSCAL_,
		MPAL_,
		MPIPAL_,
		MRAG,
		MRCH,
		MREQIN,
		MRGG,
		MRLG,
		MROLGT,
		MRPTAL_,
		MRSC,
		MRULOG,
		MSCAFL_,
		MSP,
		MSQ10,
		MSQ11,
		MSQ12,
		MSQ13,
		MSQ14,
		MSQ16,
		MSQEXT,
		MST1,
		MST2,
		MST3,
		MSTPIT_,
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
		MTCAL_,
		MTCSA_,
		MVFAIL_,
		MWAG,
		MWARNF_,
		MWATCH_,
		MWBBEG,
		MWBG,
		MWCH,
		MWEBG,
		MWFBG,
		MWG,
		MWL01,
		MWL02,
		MWL03,
		MWL04,
		MWL05,
		MWL06,
		MWL07,
		MWL08,
		MWL09,
		MWL10,
		MWL11,
		MWL12,
		MWL13,
		MWL14,
		MWL15,
		MWL16,
		MWLG,
		MWQG,
		MWSG,
		MWYG,
		MWZG,
		OPEROR,
		OT1108,
		OT1110,
		OT1111,
		OT1112,
		OT1113,
		OT1114,
		OT1116,
		OT1207,
		OT1207_,
		OTLNK0,
		OTLNK1,
		OUTCOM,
		PIPASW,
		PIPDAT,
		PIPINT,
		Q2A,
		RCmXmP,
		RCmXmY,
		RCmXpP,
		RCmXpY,
		RCmYmR,
		RCmYpR,
		RCmZmR,
		RCmZpR,
		RCpXmP,
		RCpXmY,
		RCpXpP,
		RCpXpY,
		RCpYmR,
		RCpYpR,
		RCpZmR,
		RCpZpR,
		RESETA,
		RESETB,
		RESETC,
		RESETD,
		RESTRT,
		REX,
		REY,
		RHCGO,
		RLYB01,
		RLYB02,
		RLYB03,
		RLYB04,
		RLYB05,
		RLYB06,
		RLYB07,
		RLYB08,
		RLYB09,
		RLYB10,
		RLYB11,
		ROPER,
		ROPES,
		ROPET,
		RRRANG,
		RRRARA,
		RRRST,
		RRSYNC,
		RSTKX_,
		RSTKY_,
		RYWD12,
		RYWD13,
		RYWD14,
		RYWD16,
		S4BOFF,
		S4BSEQ,
		S4BTAK,
		SBE,
		SBF,
		SBYLIT,
		SCAS10,
		SCAS17,
		SETAB,
		SETCD,
		SETEK,
		SHFTDM,
		SHFTDP,
		STARON,
		STNDBY,
		STR14,
		STR19,
		STR210,
		STR311,
		STR412,
		STR58,
		STR912,
		STRT1,
		THRSTm,
		THRSTp,
		TMPCAU,
		TRNDM,
		TRNDP,
		TVCNAB,
		UPLACT,
		VNFLSH,
		WEX,
		WEY,
		XB0E,
		XB1E,
		XB2E,
		XB3E,
		XB4E,
		XB5E,
		XB6E,
		XB7E,
		XT0E,
		XT1E,
		XT2E,
		XT3E,
		XT4E,
		XT5E,
		XT6E,
		XT7E,
		YB0E,
		YB1E,
		YB2E,
		YB3E,
		YT0E,
		YT1E,
		YT2E,
		YT3E,
		YT4E,
		YT5E,
		YT6E,
		YT7E,
		ZEROPT,
		ZID,
		ZIMCDU,
		ZOPCDU,
		n12KPPS,
		n25KPPS,
		n3200A,
		n3200B,
		n3200C,
		n3200D,
		n800RST,
		n800SET,
		p28COM,
		p4SW,
		p4VDC,
		reset,
		prop_clk,
		n0VDCA
	);

	tray_b trayb(
		BPLUS,
		CLROPE,
		FILTIN,
		GEM01,
		GEM02,
		GEM03,
		GEM04,
		GEM05,
		GEM06,
		GEM07,
		GEM08,
		GEM09,
		GEM10,
		GEM11,
		GEM12,
		GEM13,
		GEM14,
		GEM16,
		GEMP,
		HIMOD,
		IL01,
		IL02,
		IL03,
		IL04,
		IL05,
		IL06,
		IL07,
		LOMOD,
		RESETA,
		RESETB,
		RESETC,
		RESETD,
		REX,
		REY,
		ROPER,
		ROPES,
		ROPET,
		RSTKX_,
		RSTKY_,
		SBE,
		SBF,
		SCAS10,
		SCAS17,
		SETAB,
		SETCD,
		SETEK,
		STR14,
		STR19,
		STR210,
		STR311,
		STR412,
		STR58,
		STR912,
		WEX,
		WEY,
		XB0E,
		XB1E,
		XB2E,
		XB3E,
		XB4E,
		XB5E,
		XB6E,
		XB7E,
		XT0E,
		XT1E,
		XT2E,
		XT3E,
		XT4E,
		XT5E,
		XT6E,
		XT7E,
		YB0E,
		YB1E,
		YB2E,
		YB3E,
		YT0E,
		YT1E,
		YT2E,
		YT3E,
		YT4E,
		YT5E,
		YT6E,
		YT7E,
		ZID,
		p28COM,
		CLOCK,
		FLTOUT,
		MYCLMP,
		SA01,
		SA02,
		SA03,
		SA04,
		SA05,
		SA06,
		SA07,
		SA08,
		SA09,
		SA10,
		SA11,
		SA12,
		SA13,
		SA14,
		SA16,
		SAP,
		SCAFAL,
		STRT2,
		VFAIL,
		n2FSFAL,
		prop_clk,
		prop_clk_locked,
		clk,
		reset,
		n0VDCA,
		p4VDC,
		p4SW
	);

	initial
	begin
		# 1 NHALGA = 1;
		# 100000 $stop;
	end

endmodule
