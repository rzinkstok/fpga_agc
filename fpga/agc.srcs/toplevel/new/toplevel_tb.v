`timescale 1ns / 1ps

module toplevel_tb();
	reg MAMU = 0;
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
	reg MLDCH = 0;
	reg MLOAD = 0;
	reg MNHSBF = 0;
	reg MONPAR = 0;
	reg MONWBK = 0;
	reg MRDCH = 0;
	reg MREAD = 0;
	reg MTCSAI = 0;
	reg SIGNY = 0;

	wire ALGA;
	wire CNTRL1;
	wire CNTRL2;
	wire DBLTST;
	wire DOSCAL;
	wire MBR1;
	wire MBR2;
	wire MCTRAL_;
	wire MGOJAM;
	wire MGP_;
	wire MIIP;
	wire MINHL;
	wire MINKL;
	wire MNHNC;
	wire MNHRPT;
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
	wire MRPTAL_;
	wire MRSC;
	wire MRULOG;
	wire MSCAFL_;
	wire MSCDBL_;
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
	wire MSTP;
	wire MSTPIT_;
	wire MSTRT;
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
	wire NHALGA;
	wire OUTCOM;
	wire STRT1;
	wire STRT2;

	// FT2232H signals
	reg clkout;
	wire [7:0]data;
	reg rxf_n;
	reg txe_n;
	wire rd_n;
	wire wr_n;
	wire oe_n;
	wire siwu;

	reg clk;
	reg reset;

    reg [7:0]data_in;

	always
		# 5 clk = !clk;
	always
		#16.667 clkout = !clkout;

	assign data = (!rd_n) ? data_in : 8'bZ;

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
    
    
	agc_monitor agcmonitor(
		.clk(clk),
		.rst_n(!reset),
		.clkout(clkout),
		.data(data),
		.rxf_n(rxf_n),
		.txe_n(txe_n),
		.rd_n(rd_n),
		.wr_n(wr_n),
		.oe_n(oe_n),
		.siwu(siwu),
		.MONWT(MONWT),
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
		.MSQ10(MSQ10),
		.MSQ11(MSQ11),
		.MSQ12(MSQ12),
		.MSQ13(MSQ13),
		.MSQ14(MSQ14),
		.MSQ16(MSQ16),
		.MST1(MST1),
		.MST2(MST2),
		.MST3(MST3),
		.MBR1(MBR1),
		.MBR2(MBR2),
		.MSQEXT(MSQEXT),
		.MNISQ(MNISQ),
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
		.MGOJAM(MGOJAM),
		.MIIP(MIIP),
		.MSTPIT_(MSTPIT_),
		.MINHL(MINHL),
		.MINKL(MINKL),
		.MSP(MSP),
		.MGP_(MGP_),
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

	initial
	begin
		clk = 1'b0;
		reset = 1'b1;
		clkout = 1'b0;
		rxf_n = 1'b1;
		txe_n = 1'b1;
		data_in = 8'h00;
		#200 reset = 1'b0;
//		#100;
//		
//		#500 rxf_n = 1'b0;
//		@(negedge oe_n) data_in = 8'hC0;
//		@(negedge rd_n);
//		@(posedge clkout) data_in = 8'hA0;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'h40;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'h01;
//		@(posedge clkout) data_in = 8'hC0;
//		rxf_n = 1'b1;
//		#200 
		
		
		
		#11531 // 1 
		#11531
		
//		#500 rxf_n = 1'b0;
//		@(negedge oe_n) data_in = 8'hC0;
//		@(negedge rd_n);
//		@(posedge clkout) data_in = 8'hA4;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'hFF;
//		@(posedge clkout) data_in = 8'hFF;
//		@(posedge clkout) data_in = 8'hC0;
//		rxf_n = 1'b1;

        // Set stop at NISQ
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h02;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		
		
		#11531
		
		// Set N NISQ STEPS to 3
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h60;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h03;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#11531
		
		// PROCEED
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h03;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#11531 // 5
		#11531
		#11531
		#11531
		#11531
		#11531 // 10
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 15
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 20
		
		
//		#500 rxf_n = 1'b0;
//		@(negedge oe_n) data_in = 8'hC0;
//		@(negedge rd_n);
//		@(posedge clkout) data_in = 8'hA0;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'h40;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'h00;
//		@(posedge clkout) data_in = 8'hC0;
//		rxf_n = 1'b1;
		
		
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 25
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 30
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 35
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 40
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 45
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 50
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 55
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 60
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 65
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 70
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 75
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 80
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 85
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 90
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 95
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 100
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 105
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 110
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 115
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 120
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 125
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 130
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 135
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 140
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 145
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 150
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 155
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 160
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 165
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 170
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 175
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 180
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 185
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 190
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 195
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 200
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 205
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 210
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 215
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 220
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 225
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 230
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 235
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 240
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 245
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 250
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 255
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 260
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 265
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 270
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 275
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 280
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 285
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 290
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 295
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 300
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 305
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 310
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 315
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 320
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 325
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 330
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 335
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 340
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 345
		#11531
		#11531 
		#11531 
		#11531 
		#11531 // 350
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 355
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 360
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 365
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 370
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 375
		#11531 
		#11531 
		#11531 
		#11531 
		#11531 // 380
		$stop;
	end

endmodule
