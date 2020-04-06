`timescale 1ns / 1ps

module toplevel(
	input wire MAMU,
	input wire MDT01,
	input wire MDT02,
	input wire MDT03,
	input wire MDT04,
	input wire MDT05,
	input wire MDT06,
	input wire MDT07,
	input wire MDT08,
	input wire MDT09,
	input wire MDT10,
	input wire MDT11,
	input wire MDT12,
	input wire MDT13,
	input wire MDT14,
	input wire MDT15,
	input wire MDT16,
	input wire MLDCH,
	input wire MLOAD,
	input wire MNHSBF,
	input wire MONPAR,
	input wire MONWBK,
	input wire MRDCH,
	input wire MREAD,
	input wire MTCSAI,
	input wire SIGNY,

	output wire ALGA,
	output wire CNTRL1,
	output wire CNTRL2,
	output wire DBLTST,
	output wire DOSCAL,
	output wire MBR1,
	output wire MBR2,
	output wire MCTRAL_,
	output wire MGOJAM,
	output wire MGP_,
	output wire MIIP,
	output wire MINHL,
	output wire MINKL,
	output wire MNHNC,
	output wire MNHRPT,
	output wire MNISQ,
	output wire MON800,
	output wire MONWT,
	output wire MOSCAL_,
	output wire MPAL_,
	output wire MPIPAL_,
	output wire MRAG,
	output wire MRCH,
	output wire MREQIN,
	output wire MRGG,
	output wire MRLG,
	output wire MRPTAL_,
	output wire MRSC,
	output wire MRULOG,
	output wire MSCAFL_,
	output wire MSCDBL_,
	output wire MSP,
	output wire MSQ10,
	output wire MSQ11,
	output wire MSQ12,
	output wire MSQ13,
	output wire MSQ14,
	output wire MSQ16,
	output wire MSQEXT,
	output wire MST1,
	output wire MST2,
	output wire MST3,
	output wire MSTP,
	output wire MSTPIT_,
	output wire MSTRT,
	output wire MT01,
	output wire MT02,
	output wire MT03,
	output wire MT04,
	output wire MT05,
	output wire MT06,
	output wire MT07,
	output wire MT08,
	output wire MT09,
	output wire MT10,
	output wire MT11,
	output wire MT12,
	output wire MTCAL_,
	output wire MTCSA_,
	output wire MVFAIL_,
	output wire MWAG,
	output wire MWARNF_,
	output wire MWATCH_,
	output wire MWBBEG,
	output wire MWBG,
	output wire MWCH,
	output wire MWEBG,
	output wire MWFBG,
	output wire MWG,
	output wire MWL01,
	output wire MWL02,
	output wire MWL03,
	output wire MWL04,
	output wire MWL05,
	output wire MWL06,
	output wire MWL07,
	output wire MWL08,
	output wire MWL09,
	output wire MWL10,
	output wire MWL11,
	output wire MWL12,
	output wire MWL13,
	output wire MWL14,
	output wire MWL15,
	output wire MWL16,
	output wire MWLG,
	output wire MWQG,
	output wire MWSG,
	output wire MWYG,
	output wire MWZG,
	output wire NHALGA,
	output wire OUTCOM,
	output wire STRT1,
	output wire STRT2,

	// FT2232H signals
	input wire clkout,
	inout wire [7:0]data,
	input wire rxf_n,
	input wire txe_n,
	output wire rd_n,
	output wire wr_n,
	output wire oe_n,
	output wire siwu,

	// Zynq Processing System signals
	inout wire [14:0]DDR_addr,
	inout wire [2:0]DDR_ba,
	inout wire DDR_cas_n,
	inout wire DDR_ck_n,
	inout wire DDR_ck_p,
	inout wire DDR_cke,
	inout wire DDR_cs_n,
	inout wire [3:0]DDR_dm,
	inout wire [31:0]DDR_dq,
	inout wire [3:0]DDR_dqs_n,
	inout wire [3:0]DDR_dqs_p,
	inout wire DDR_odt,
	inout wire DDR_ras_n,
	inout wire DDR_reset_n,
	inout wire DDR_we_n,
	inout wire FIXED_IO_ddr_vrn,
	inout wire FIXED_IO_ddr_vrp,
	inout wire [53:0]FIXED_IO_mio,
	inout wire FIXED_IO_ps_clk,
	inout wire FIXED_IO_ps_porb,
	inout wire FIXED_IO_ps_srstb,

	input wire clk,
	input wire reset
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
	reg DKBSNC = 0;
	reg DKEND = 0;
	reg DKSTRT = 0;
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
	reg MANRmP = 0;
	reg MANRmR = 0;
	reg MANRmY = 0;
	reg MANRpP = 0;
	reg MANRpR = 0;
	reg MANRpY = 0;
	reg MARK = 0;
	reg MKEY1 = 0;
	reg MKEY2 = 0;
	reg MKEY3 = 0;
	reg MKEY4 = 0;
	reg MKEY5 = 0;
	reg MNIMmP = 0;
	reg MNIMmR = 0;
	reg MNIMmY = 0;
	reg MNIMpP = 0;
	reg MNIMpR = 0;
	reg MNIMpY = 0;
	reg MRKREJ = 0;
	reg MRKRST = 0;
	reg NAVRST = 0;
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
	reg n0VDCA = 0;

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
	wire GYENAB;
	wire GYRRST;
	wire GYRSET;
	wire GYXM;
	wire GYXP;
	wire GYYM;
	wire GYYP;
	wire GYZM;
	wire GYZP;
	wire ISSTDC;
	wire ISSWAR;
	wire KYRLS;
	wire LRRANG;
	wire LRRST;
	wire LRSYNC;
	wire LRXVEL;
	wire LRYVEL;
	wire LRZVEL;
	wire MROLGT;
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
	wire PIPASW;
	wire PIPDAT;
	wire PIPINT;
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
	wire RESTRT;
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
	wire RRRANG;
	wire RRRARA;
	wire RRRST;
	wire RRSYNC;
	wire RYWD12;
	wire RYWD13;
	wire RYWD14;
	wire RYWD16;
	wire S4BOFF;
	wire S4BSEQ;
	wire S4BTAK;
	wire SBYLIT;
	wire SHFTDM;
	wire SHFTDP;
	wire STARON;
	wire STNDBY;
	wire THRSTm;
	wire THRSTp;
	wire TMPCAU;
	wire TRNDM;
	wire TRNDP;
	wire TVCNAB;
	wire UPLACT;
	wire VNFLSH;
	wire ZEROPT;
	wire ZIMCDU;
	wire ZOPCDU;
	wire [6:1]dbg;
	wire [6:1]leds;
	wire n12KPPS;
	wire n25KPPS;
	wire n3200A;
	wire n3200B;
	wire n3200C;
	wire n3200D;
	wire n800RST;
	wire n800SET;
	wire nhstrt1;
	wire nhstrt2;
	wire p28COM;
	wire p4SW;
	wire p4VDC;

	agc_monitor agcmonitor(
		clk,
		reset,
		clkout,
		data,
		rxf_n,
		txe_n,
		rd_n,
		wr_n,
		oe_n,
		siwu,
		MONWT,
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
		MSQ10,
		MSQ11,
		MSQ12,
		MSQ13,
		MSQ14,
		MSQ16,
		MST1,
		MST2,
		MST3,
		MBR1,
		MBR2,
		MSQEXT,
		MNISQ,
		MWAG,
		MWLG,
		MWQG,
		MWEBG,
		MWFBG,
		MWBBEG,
		MWZG,
		MWBG,
		MWSG,
		MWG,
		MWYG,
		MRULOG,
		MRGG,
		MGOJAM,
		MIIP,
		MSTPIT_,
		MINHL,
		MINKL,
		MSP,
		MGP_,
		MSTP,
		MSTRT,
		MNHRPT,
		MNHNC,
		NHALGA,
		nhstrt1,
		nhstrt2,
		DOSCAL,
		DBLTST,
		MVFAIL_,
		MOSCAL_,
		MSCAFL_,
		MSCDBL_,
		MCTRAL_,
		MTCAL_,
		MRPTAL_,
		MPAL_,
		MWATCH_,
		MPIPAL_,
		MWARNF_,
		MNHSBF,
		MAMU,
		MLOAD,
		MLDCH,
		MREAD,
		MRDCH,
		n0VDCA,
		BPLSSW,
		p4SW,
		CNTRL1,
		CNTRL2,
		leds,
		dbg
	);

	fpga_agc fpgaagc(
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
		CNTRL1,
		CNTRL2,
		CTLSAT,
		DBLTST,
		DKBSNC,
		DKEND,
		DKSTRT,
		DOSCAL,
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
		SBYBUT,
		SHAFTM,
		SHAFTP,
		SIGNX,
		SIGNY,
		SIGNZ,
		SMSEPR,
		SPSRDY,
		STRPRS,
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
		WD167,
		WD168,
		XLNK0,
		XLNK1,
		ZEROP,
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
		GYENAB,
		GYRRST,
		GYRSET,
		GYXM,
		GYXP,
		GYYM,
		GYYP,
		GYZM,
		GYZP,
		ISSTDC,
		ISSWAR,
		KYRLS,
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
		MSCDBL_,
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
		RESTRT,
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
		RRRANG,
		RRRARA,
		RRRST,
		RRSYNC,
		RYWD12,
		RYWD13,
		RYWD14,
		RYWD16,
		S4BOFF,
		S4BSEQ,
		S4BTAK,
		SBYLIT,
		SHFTDM,
		SHFTDP,
		STARON,
		STNDBY,
		STRT1,
		STRT2,
		THRSTm,
		THRSTp,
		TMPCAU,
		TRNDM,
		TRNDP,
		TVCNAB,
		UPLACT,
		VNFLSH,
		ZEROPT,
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
		clk,
		reset,
		n0VDCA
	);

	styx_ps_bootloader styxpsbootloader(
		DDR_addr,
		DDR_ba,
		DDR_cas_n,
		DDR_ck_n,
		DDR_ck_p,
		DDR_cke,
		DDR_cs_n,
		DDR_dm,
		DDR_dq,
		DDR_dqs_n,
		DDR_dqs_p,
		DDR_odt,
		DDR_ras_n,
		DDR_reset_n,
		DDR_we_n,
		FIXED_IO_ddr_vrn,
		FIXED_IO_ddr_vrp,
		FIXED_IO_mio,
		FIXED_IO_ps_clk,
		FIXED_IO_ps_porb,
		FIXED_IO_ps_srstb
	);

endmodule
