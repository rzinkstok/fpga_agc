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
	wire PIPAXm;
	wire PIPAXp;
	wire PIPAYm;
	wire PIPAYp;
	wire PIPAZm;
	wire PIPAZp;
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
	wire mstpeven;
	wire mstpodd;
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

    wire dbMSTPIT_;
    wire dbMONWT;
    wire dbMT01;
    wire dbMT02;
    wire dbMT03;
    wire dbMT04;
    wire dbMT05;
    wire dbMT06;
    wire dbMT07;
    wire dbMT08;
    wire dbMT09;
    wire dbMT10;
    wire dbMT11;
    wire dbMT12;
    wire dbMWL01;
    wire dbMWL02;
    wire dbMWL03;
    wire dbMWL04;
    wire dbMWL05;
    wire dbMWL06;
    wire dbMWL07;
    wire dbMWL08;
    wire dbMWL09;
    wire dbMWL10;
    wire dbMWL11;
    wire dbMWL12;
    wire dbMWL13;
    wire dbMWL14;
    wire dbMWL15;
    wire dbMWL16;
    wire dbMIIP;
    wire dbMINHL;
    wire dbMINKL;
    wire dbMSQEXT;
    wire dbMSQ10;
    wire dbMSQ11;
    wire dbMSQ12;
    wire dbMSQ13;
    wire dbMSQ14;
    wire dbMSQ16;
    wire dbMST1;
    wire dbMST2;
    wire dbMST3;
    wire dbMBR1;
    wire dbMBR2;
    wire dbMRSC;
    wire dbMWAG;
    wire dbMWLG;
    wire dbMWQG;
    wire dbMWEBG;
    wire dbMWFBG;
    wire dbMWBBEG;
    wire dbMWZG;
    wire dbMWBG;
    wire dbMWSG;
    wire dbMWG;
    wire dbMWYG;
    wire dbMRULOG;
    wire dbMRGG;
    wire dbMRCH;
    wire dbMWCH;
    wire dbMNISQ;
    wire dbMSP;
    wire dbMGP_;
    wire dbMREQIN;
    wire dbMTCSA_;
    
    wire rst_n;
    assign rst_n = !reset;
    
    
    // PIPA 3-3 moding simulation
    reg [2:0] moding_counter = 3'b0;
    always @(posedge PIPASW) begin
        moding_counter = moding_counter + 3'b1;
        if (moding_counter == 3'd6) begin
            moding_counter = 3'b0;
        end
    end
    
    assign PIPAXm = PIPDAT && (moding_counter >= 3'd3);
    assign PIPAYm = PIPDAT && (moding_counter >= 3'd3);
    assign PIPAZm = PIPDAT && (moding_counter >= 3'd3);
    assign PIPAXp = PIPDAT && (moding_counter < 3'd3);
    assign PIPAYp = PIPDAT && (moding_counter < 3'd3);
    assign PIPAZp = PIPDAT && (moding_counter < 3'd3);
    
    
    io_circuits io(
        .clk(clk),
        .rst_n(rst_n),
        .MSTPIT_(MSTPIT_),
        .MONWT(MONWT),
        .MT({MT12, MT11, MT10, MT09, MT08, MT07, MT06, MT05, MT04, MT03, MT02, MT01}),
        .MWL({MWL16, MWL15, MWL14, MWL13, MWL12, MWL11, MWL10, MWL09, MWL08, MWL07, MWL06, MWL05, MWL04, MWL03, MWL02, MWL01}),
        .MIIP(MIIP),
        .MINHL(MINHL),
        .MINKL(MINKL),
        .MSQEXT(MSQEXT),
        .MSQ({MSQ16, MSQ14, MSQ13, MSQ12, MSQ11, MSQ10}),
        .MST({MST3, MST2, MST1}),
        .MBR({MBR2, MBR1}),
        .MRSC(MRSC),
        .MWAG(MWAG),
        .MWLG(MWLG),
        .MWQG(MWQG),
        .MWEBG(MWEBG),
        .MWFBG(MWFBG),
        .MWBBEG(MWBBEG),
        .MWZG(MWZG),
        .MWBG(MWBG),
        .MWSG(MWSG),
        .MWG(MWG),
        .MWYG(MWYG),
        .MRULOG(MRULOG),
        .MRGG(MRGG),
        .MRCH(MRCH),
        .MWCH(MWCH),
        .MNISQ(MNISQ),
        .MSP(MSP),
        .MGP_(MGP_),
        .MREQIN(MREQIN),
        .MTCSA_(MTCSA_),
    
        .dbMSTPIT_(dbMSTPIT_),
        .dbMONWT(dbMONWT),
        .dbMT({dbMT12, dbMT11, dbMT10, dbMT09, dbMT08, dbMT07, dbMT06, dbMT05, dbMT04, dbMT03, dbMT02, dbMT01}),
        .dbMWL({dbMWL16, dbMWL15, dbMWL14, dbMWL13, dbMWL12, dbMWL11, dbMWL10, dbMWL09, dbMWL08, dbMWL07, dbMWL06, dbMWL05, dbMWL04, dbMWL03, dbMWL02, dbMWL01}),
        .dbMIIP(dbMIIP),
        .dbMINHL(dbMINHL),
        .dbMINKL(dbMINKL),
        .dbMSQEXT(dbMSQEXT),
        .dbMSQ({dbMSQ16, dbMSQ14, dbMSQ13, dbMSQ12, dbMSQ11, dbMSQ10}),
        .dbMST({dbMST3, dbMST2, dbMST1}),
        .dbMBR({dbMBR2, dbMBR1}),
        .dbMRSC(dbMRSC),
        .dbMWAG(dbMWAG),
        .dbMWLG(dbMWLG),
        .dbMWQG(dbMWQG),
        .dbMWEBG(dbMWEBG),
        .dbMWFBG(dbMWFBG),
        .dbMWBBEG(dbMWBBEG),
        .dbMWZG(dbMWZG),
        .dbMWBG(dbMWBG),
        .dbMWSG(dbMWSG),
        .dbMWG(dbMWG),
        .dbMWYG(dbMWYG),
        .dbMRULOG(dbMRULOG),
        .dbMRGG(dbMRGG),
        .dbMRCH(dbMRCH),
        .dbMWCH(dbMWCH),
        .dbMNISQ(dbMNISQ),
        .dbMSP(dbMSP),
        .dbMGP_(dbMGP_),
        .dbMREQIN(dbMREQIN),
        .dbMTCSA_(dbMTCSA_)
    );
    
	agc_monitor agcmonitor(
		.clk(clk),
		.rst_n(rst_n),
		.clkout(clkout),
		.data(data),
		.rxf_n(rxf_n),
		.txe_n(txe_n),
		.rd_n(rd_n),
		.wr_n(wr_n),
		.oe_n(oe_n),
		.siwu(siwu),
		.MONWT(dbMONWT), //
		.MT01(dbMT01),
		.MT02(dbMT02),
		.MT03(dbMT03),
		.MT04(dbMT04),
		.MT05(dbMT05),
		.MT06(dbMT06),
		.MT07(dbMT07),
		.MT08(dbMT08),
		.MT09(dbMT09),
		.MT10(dbMT10),
		.MT11(dbMT11),
		.MT12(dbMT12),
		.MWL01(dbMWL01),
		.MWL02(dbMWL02),
		.MWL03(dbMWL03),
		.MWL04(dbMWL04),
		.MWL05(dbMWL05),
		.MWL06(dbMWL06),
		.MWL07(dbMWL07),
		.MWL08(dbMWL08),
		.MWL09(dbMWL09),
		.MWL10(dbMWL10),
		.MWL11(dbMWL11),
		.MWL12(dbMWL12),
		.MWL13(dbMWL13),
		.MWL14(dbMWL14),
		.MWL15(dbMWL15),
		.MWL16(dbMWL16),
		.MSQ10(dbMSQ10),
		.MSQ11(dbMSQ11),
		.MSQ12(dbMSQ12),
		.MSQ13(dbMSQ13),
		.MSQ14(dbMSQ14),
		.MSQ16(dbMSQ16),
		.MST1(dbMST1),
		.MST2(dbMST2),
		.MST3(dbMST3),
		.MBR1(dbMBR1),
		.MBR2(dbMBR2),
		.MSQEXT(dbMSQEXT),
		.MNISQ(dbMNISQ),
		.MWAG(dbMWAG),
		.MWLG(dbMWLG),
		.MWQG(dbMWQG),
		.MWEBG(dbMWEBG),
		.MWFBG(dbMWFBG),
		.MWBBEG(dbMWBBEG),
		.MWZG(dbMWZG),
		.MWBG(dbMWBG),
		.MWSG(dbMWSG),
		.MWG(dbMWG),
		.MWYG(dbMWYG),
		.MRULOG(dbMRULOG),
		.MRGG(dbMRGG),  //
		.MGOJAM(MGOJAM),
		.MIIP(dbMIIP), //
		.MSTPIT_(dbMSTPIT_),
		.MINHL(dbMINHL),
		.MINKL(dbMINKL),
		.MSP(dbMSP),
		.MGP_(dbMGP_), //
		.MSTP(MSTP),
		.MSTRT(MSTRT),
		.mstpeven(mstpeven),
		.mstpodd(mstpodd),
		.MNHRPT(MNHRPT),
		.MNHNC(MNHNC),
		.NHALGA(NHALGA),
		.nhstrt1(nhstrt1),
		.nhstrt2(nhstrt2),
		.DOSCAL(DOSCAL),
		.DBLTST(DBLTST),
		.MVFAIL_(MVFAIL_),
		.MOSCAL_(MOSCAL_),
		.MSCAFL_(MSCAFL_),
		.MSCDBL_(MSCDBL_),
		.MCTRAL_(MCTRAL_),
		.MTCAL_(MTCAL_),
		.MRPTAL_(MRPTAL_),
		.MPAL_(MPAL_),
		.MWATCH_(MWATCH_),
		.MPIPAL_(MPIPAL_),
		.MWARNF_(MWARNF_),
		.MNHSBF(MNHSBF),
		.MAMU(MAMU),
		.MLOAD(MLOAD),
		.MLDCH(MLDCH),
		.MREAD(MREAD),
		.MRDCH(MRDCH),
		.MRCH(MRCH),
		.MWCH(MWCH),
		.n0VDCA(n0VDCA),
		.BPLSSW(BPLSSW),
		.p4SW(p4SW),
		.CNTRL1(CNTRL1),
		.CNTRL2(CNTRL2),
		.leds(leds),
		.dbg(dbg)
	);

	fpga_agc fpgaagc(
		.BLKUPL_(BLKUPL_),
		.BMGXM(BMGXM),
		.BMGXP(BMGXP),
		.BMGYM(BMGYM),
		.BMGYP(BMGYP),
		.BMGZM(BMGZM),
		.BMGZP(BMGZP),
		.CAURST(CAURST),
		.CDUFAL(CDUFAL),
		.CDUXM(CDUXM),
		.CDUXP(CDUXP),
		.CDUYM(CDUYM),
		.CDUYP(CDUYP),
		.CDUZM(CDUZM),
		.CDUZP(CDUZP),
		.CNTRL1(CNTRL1),
		.CNTRL2(CNTRL2),
		.CTLSAT(CTLSAT),
		.DBLTST(DBLTST),
		.DKBSNC(DKBSNC),
		.DKEND(DKEND),
		.DKSTRT(DKSTRT),
		.DOSCAL(DOSCAL),
		.FREFUN(FREFUN),
		.GATEX_(GATEX_),
		.GATEY_(GATEY_),
		.GATEZ_(GATEZ_),
		.GCAPCL(GCAPCL),
		.GUIREL(GUIREL),
		.HOLFUN(HOLFUN),
		.IMUCAG(IMUCAG),
		.IMUFAL(IMUFAL),
		.IMUOPR(IMUOPR),
		.IN3008(IN3008),
		.IN3212(IN3212),
		.IN3213(IN3213),
		.IN3214(IN3214),
		.IN3216(IN3216),
		.IN3301(IN3301),
		.ISSTOR(ISSTOR),
		.LEMATT(LEMATT),
		.LFTOFF(LFTOFF),
		.LRIN0(LRIN0),
		.LRIN1(LRIN1),
		.LRRLSC(LRRLSC),
		.LVDAGD(LVDAGD),
		.MAINRS(MAINRS),
		.MAMU(MAMU),
		.MANRmP(MANRmP),
		.MANRmR(MANRmR),
		.MANRmY(MANRmY),
		.MANRpP(MANRpP),
		.MANRpR(MANRpR),
		.MANRpY(MANRpY),
		.MARK(MARK),
		.MDT01(MDT01),
		.MDT02(MDT02),
		.MDT03(MDT03),
		.MDT04(MDT04),
		.MDT05(MDT05),
		.MDT06(MDT06),
		.MDT07(MDT07),
		.MDT08(MDT08),
		.MDT09(MDT09),
		.MDT10(MDT10),
		.MDT11(MDT11),
		.MDT12(MDT12),
		.MDT13(MDT13),
		.MDT14(MDT14),
		.MDT15(MDT15),
		.MDT16(MDT16),
		.MKEY1(MKEY1),
		.MKEY2(MKEY2),
		.MKEY3(MKEY3),
		.MKEY4(MKEY4),
		.MKEY5(MKEY5),
		.MLDCH(MLDCH),
		.MLOAD(MLOAD),
		.MNHNC(MNHNC),
		.MNHRPT(MNHRPT),
		.MNHSBF(MNHSBF),
		.MNIMmP(MNIMmP),
		.MNIMmR(MNIMmR),
		.MNIMmY(MNIMmY),
		.MNIMpP(MNIMpP),
		.MNIMpR(MNIMpR),
		.MNIMpY(MNIMpY),
		.MONPAR(MONPAR),
		.MONWBK(MONWBK),
		.MRDCH(MRDCH),
		.MREAD(MREAD),
		.MRKREJ(MRKREJ),
		.MRKRST(MRKRST),
		.MSTP(MSTP),
		.MSTRT(MSTRT),
		.MTCSAI(MTCSAI),
		.NAVRST(NAVRST),
		.NHALGA(NHALGA),
		.NHVFAL(NHVFAL),
		.NKEY1(NKEY1),
		.NKEY2(NKEY2),
		.NKEY3(NKEY3),
		.NKEY4(NKEY4),
		.NKEY5(NKEY5),
		.OPCDFL(OPCDFL),
		.OPMSW2(OPMSW2),
		.OPMSW3(OPMSW3),
		.PCHGOF(PCHGOF),
		.PIPAXm(PIPAXm),
		.PIPAXp(PIPAXp),
		.PIPAYm(PIPAYm),
		.PIPAYp(PIPAYp),
		.PIPAZm(PIPAZm),
		.PIPAZp(PIPAZp),
		.ROLGOF(ROLGOF),
		.RRIN0(RRIN0),
		.RRIN1(RRIN1),
		.RRPONA(RRPONA),
		.RRRLSC(RRRLSC),
		.S4BSAB(S4BSAB),
		.SBYBUT(SBYBUT),
		.SHAFTM(SHAFTM),
		.SHAFTP(SHAFTP),
		.SIGNX(SIGNX),
		.SIGNY(SIGNY),
		.SIGNZ(SIGNZ),
		.SMSEPR(SMSEPR),
		.SPSRDY(SPSRDY),
		.STRPRS(STRPRS),
		.TEMPIN(TEMPIN),
		.TRANmX(TRANmX),
		.TRANmY(TRANmY),
		.TRANmZ(TRANmZ),
		.TRANpX(TRANpX),
		.TRANpY(TRANpY),
		.TRANpZ(TRANpZ),
		.TRNM(TRNM),
		.TRNP(TRNP),
		.TRST10(TRST10),
		.TRST9(TRST9),
		.ULLTHR(ULLTHR),
		.UPL0(UPL0),
		.UPL1(UPL1),
		.WD167(WD167),
		.WD168(WD168),
		.XLNK0(XLNK0),
		.XLNK1(XLNK1),
		.ZEROP(ZEROP),
		.mstpeven(mstpeven),
		.mstpodd(mstpodd),
		.ALGA(ALGA),
		.ALRT0(ALRT0),
		.ALRT1(ALRT1),
		.ALT0(ALT0),
		.ALT1(ALT1),
		.ALTSNC(ALTSNC),
		.BPLSSW(BPLSSW),
		.BPLUS(BPLUS),
		.CDUCLK(CDUCLK),
		.CDUXDM(CDUXDM),
		.CDUXDP(CDUXDP),
		.CDUYDM(CDUYDM),
		.CDUYDP(CDUYDP),
		.CDUZDM(CDUZDM),
		.CDUZDP(CDUZDP),
		.CGCWAR(CGCWAR),
		.CLK(CLK),
		.COARSE(COARSE),
		.COMACT(COMACT),
		.DISDAC(DISDAC),
		.DKDATA(DKDATA),
		.DKDATB(DKDATB),
		.ELSNCM(ELSNCM),
		.ELSNCN(ELSNCN),
		.EMSm(EMSm),
		.EMSp(EMSp),
		.ENERIM(ENERIM),
		.ENEROP(ENEROP),
		.GYENAB(GYENAB),
		.GYRRST(GYRRST),
		.GYRSET(GYRSET),
		.GYXM(GYXM),
		.GYXP(GYXP),
		.GYYM(GYYM),
		.GYYP(GYYP),
		.GYZM(GYZM),
		.GYZP(GYZP),
		.ISSTDC(ISSTDC),
		.ISSWAR(ISSWAR),
		.KYRLS(KYRLS),
		.LRRANG(LRRANG),
		.LRRST(LRRST),
		.LRSYNC(LRSYNC),
		.LRXVEL(LRXVEL),
		.LRYVEL(LRYVEL),
		.LRZVEL(LRZVEL),
		.MBR1(MBR1),
		.MBR2(MBR2),
		.MCTRAL_(MCTRAL_),
		.MGOJAM(MGOJAM),
		.MGP_(MGP_),
		.MIIP(MIIP),
		.MINHL(MINHL),
		.MINKL(MINKL),
		.MNISQ(MNISQ),
		.MON800(MON800),
		.MONWT(MONWT),
		.MOSCAL_(MOSCAL_),
		.MPAL_(MPAL_),
		.MPIPAL_(MPIPAL_),
		.MRAG(MRAG),
		.MRCH(MRCH),
		.MREQIN(MREQIN),
		.MRGG(MRGG),
		.MRLG(MRLG),
		.MROLGT(MROLGT),
		.MRPTAL_(MRPTAL_),
		.MRSC(MRSC),
		.MRULOG(MRULOG),
		.MSCAFL_(MSCAFL_),
		.MSCDBL_(MSCDBL_),
		.MSP(MSP),
		.MSQ10(MSQ10),
		.MSQ11(MSQ11),
		.MSQ12(MSQ12),
		.MSQ13(MSQ13),
		.MSQ14(MSQ14),
		.MSQ16(MSQ16),
		.MSQEXT(MSQEXT),
		.MST1(MST1),
		.MST2(MST2),
		.MST3(MST3),
		.MSTPIT_(MSTPIT_),
		.MT01(MT01),
		.MT02(MT02),
		.MT03(MT03),
		.MT04(MT04),
		.MT05(MT05),
		.MT06(MT06),
		.MT07(MT07),
		.MT08(MT08),
		.MT09(MT09),
		.MT10(MT10),
		.MT11(MT11),
		.MT12(MT12),
		.MTCAL_(MTCAL_),
		.MTCSA_(MTCSA_),
		.MVFAIL_(MVFAIL_),
		.MWAG(MWAG),
		.MWARNF_(MWARNF_),
		.MWATCH_(MWATCH_),
		.MWBBEG(MWBBEG),
		.MWBG(MWBG),
		.MWCH(MWCH),
		.MWEBG(MWEBG),
		.MWFBG(MWFBG),
		.MWG(MWG),
		.MWL01(MWL01),
		.MWL02(MWL02),
		.MWL03(MWL03),
		.MWL04(MWL04),
		.MWL05(MWL05),
		.MWL06(MWL06),
		.MWL07(MWL07),
		.MWL08(MWL08),
		.MWL09(MWL09),
		.MWL10(MWL10),
		.MWL11(MWL11),
		.MWL12(MWL12),
		.MWL13(MWL13),
		.MWL14(MWL14),
		.MWL15(MWL15),
		.MWL16(MWL16),
		.MWLG(MWLG),
		.MWQG(MWQG),
		.MWSG(MWSG),
		.MWYG(MWYG),
		.MWZG(MWZG),
		.OPEROR(OPEROR),
		.OT1108(OT1108),
		.OT1110(OT1110),
		.OT1111(OT1111),
		.OT1112(OT1112),
		.OT1113(OT1113),
		.OT1114(OT1114),
		.OT1116(OT1116),
		.OT1207(OT1207),
		.OT1207_(OT1207_),
		.OTLNK0(OTLNK0),
		.OTLNK1(OTLNK1),
		.OUTCOM(OUTCOM),
		.PIPASW(PIPASW),
		.PIPDAT(PIPDAT),
		.PIPINT(PIPINT),
		.RCmXmP(RCmXmP),
		.RCmXmY(RCmXmY),
		.RCmXpP(RCmXpP),
		.RCmXpY(RCmXpY),
		.RCmYmR(RCmYmR),
		.RCmYpR(RCmYpR),
		.RCmZmR(RCmZmR),
		.RCmZpR(RCmZpR),
		.RCpXmP(RCpXmP),
		.RCpXmY(RCpXmY),
		.RCpXpP(RCpXpP),
		.RCpXpY(RCpXpY),
		.RCpYmR(RCpYmR),
		.RCpYpR(RCpYpR),
		.RCpZmR(RCpZmR),
		.RCpZpR(RCpZpR),
		.RESTRT(RESTRT),
		.RHCGO(RHCGO),
		.RLYB01(RLYB01),
		.RLYB02(RLYB02),
		.RLYB03(RLYB03),
		.RLYB04(RLYB04),
		.RLYB05(RLYB05),
		.RLYB06(RLYB06),
		.RLYB07(RLYB07),
		.RLYB08(RLYB08),
		.RLYB09(RLYB09),
		.RLYB10(RLYB10),
		.RLYB11(RLYB11),
		.RRRANG(RRRANG),
		.RRRARA(RRRARA),
		.RRRST(RRRST),
		.RRSYNC(RRSYNC),
		.RYWD12(RYWD12),
		.RYWD13(RYWD13),
		.RYWD14(RYWD14),
		.RYWD16(RYWD16),
		.S4BOFF(S4BOFF),
		.S4BSEQ(S4BSEQ),
		.S4BTAK(S4BTAK),
		.SBYLIT(SBYLIT),
		.SHFTDM(SHFTDM),
		.SHFTDP(SHFTDP),
		.STARON(STARON),
		.STNDBY(STNDBY),
		.STRT1(STRT1),
		.STRT2(STRT2),
		.THRSTm(THRSTm),
		.THRSTp(THRSTp),
		.TMPCAU(TMPCAU),
		.TRNDM(TRNDM),
		.TRNDP(TRNDP),
		.TVCNAB(TVCNAB),
		.UPLACT(UPLACT),
		.VNFLSH(VNFLSH),
		.ZEROPT(ZEROPT),
		.ZIMCDU(ZIMCDU),
		.ZOPCDU(ZOPCDU),
		.n12KPPS(n12KPPS),
		.n25KPPS(n25KPPS),
		.n3200A(n3200A),
		.n3200B(n3200B),
		.n3200C(n3200C),
		.n3200D(n3200D),
		.n800RST(n800RST),
		.n800SET(n800SET),
		.p28COM(p28COM),
		.p4SW(p4SW),
		.p4VDC(p4VDC),
		.clk(clk),
		.reset(reset),
		.n0VDCA(n0VDCA)
	);

	styx_ps_bootloader styxpsbootloader(
		.DDR_addr(DDR_addr),
		.DDR_ba(DDR_ba),
		.DDR_cas_n(DDR_cas_n),
		.DDR_ck_n(DDR_ck_n),
		.DDR_ck_p(DDR_ck_p),
		.DDR_cke(DDR_cke),
		.DDR_cs_n(DDR_cs_n),
		.DDR_dm(DDR_dm),
		.DDR_dq(DDR_dq),
		.DDR_dqs_n(DDR_dqs_n),
		.DDR_dqs_p(DDR_dqs_p),
		.DDR_odt(DDR_odt),
		.DDR_ras_n(DDR_ras_n),
		.DDR_reset_n(DDR_reset_n),
		.DDR_we_n(DDR_we_n),
		.FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
		.FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
		.FIXED_IO_mio(FIXED_IO_mio),
		.FIXED_IO_ps_clk(FIXED_IO_ps_clk),
		.FIXED_IO_ps_porb(FIXED_IO_ps_porb),
		.FIXED_IO_ps_srstb(FIXED_IO_ps_srstb)
	);

endmodule
