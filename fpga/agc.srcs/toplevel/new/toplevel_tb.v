`timescale 1ns / 1ps

module toplevel_tb();
	wire MAMU;
	wire MDT01;
	wire MDT02;
	wire MDT03;
    wire MDT04;
	wire MDT05;
	wire MDT06;
	wire MDT07;
    wire MDT08;
	wire MDT09;
	wire MDT10;
	wire MDT11;
	wire MDT12;
	wire MDT13;
	wire MDT14;
	wire MDT15;
	wire MDT16;
	wire MLDCH;
	wire MLOAD;
	wire MNHSBF;
	wire MONPAR;
	wire MONWBK;
	wire MRDCH;
	wire MREAD;
	wire MTCSAI;
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
	wire CAURST;
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
	wire IN3214;
	reg IN3216 = 0;
	reg IN3301 = 0;
	reg ISSTOR = 0;
	reg LEMATT = 0;
	reg LFTOFF = 0;
	reg LRIN0 = 0;
	reg LRIN1 = 0;
	reg LRRLSC = 0;
	reg LVDAGD = 0;
	wire MAINRS;
	reg MANRmP = 0;
	reg MANRmR = 0;
	reg MANRmY = 0;
	reg MANRpP = 0;
	reg MANRpR = 0;
	reg MANRpY = 0;
	wire MARK;
	wire MKEY1;
	wire MKEY2;
	wire MKEY3;
	wire MKEY4;
	wire MKEY5;
	reg MNIMmP = 0;
	reg MNIMmR = 0;
	reg MNIMmY = 0;
	reg MNIMpP = 0;
	reg MNIMpR = 0;
	reg MNIMpY = 0;
	wire MRKREJ;
	wire MRKRST;
	wire NAVRST;
	reg NHVFAL = 0;
	wire NKEY1;
	wire NKEY2;
	wire NKEY3;
	wire NKEY4;
	wire NKEY5;
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
	wire SBYBUT;
	reg SHAFTM = 0;
	reg SHAFTP = 0;
	reg SIGNX = 0;
	reg SIGNZ = 0;
	reg SMSEPR = 0;
	reg SPSRDY = 0;
	reg STRPRS = 0;
	reg TEMPIN = 1;
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
		.MRSC(MRSC),  //
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
		.MRGG(MRGG),  //
		.MGOJAM(MGOJAM),
		.MIIP(MIIP), //
		.MSTPIT_(MSTPIT_),
		.MINHL(MINHL),
		.MINKL(MINKL),
		.MSP(MSP),
		.MGP_(MGP_), //
		.MSTP(MSTP),
		.MSTRT(MSTRT),
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
		.MREQIN(MREQIN),
		.MTCSA_(MTCSA_),
		.MTCSAI(MTCSAI),
		
		.MKEY1(MKEY1),
		.MKEY2(MKEY2),
		.MKEY3(MKEY3),
		.MKEY4(MKEY4),
		.MKEY5(MKEY5),
		.MAINRS(MAINRS),
		
        .NKEY1(NKEY1),
        .NKEY2(NKEY2),
        .NKEY3(NKEY3),
        .NKEY4(NKEY4),
        .NKEY5(NKEY5),
        .NAVRST(NAVRST),
        
        .MARK(MARK),
        .MRKREJ(MRKREJ),
        .MRKRST(MRKRST),
    
        .IN3214(IN3214),
        .SBYBUT(SBYBUT),
        .CAURST(CAURST),
        .RESTRT(RESTRT),
        
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
    
        .RYWD12(RYWD12),
        .RYWD13(RYWD13),
        .RYWD14(RYWD14),
        .RYWD16(RYWD16),
    
        .COMACT(COMACT),
        .UPLACT(UPLACT),
        .TMPCAU(TMPCAU),
        .KYRLS(KYRLS),
        .VNFLSH(VNFLSH),
        .OPEROR(OPEROR),
        .SBYLIT(SBYLIT),
        
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
		
		.MONPAR(MONPAR),
		
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
	    //# 250000000 // 250 ms
	    //$stop;
	    
		clk = 1'b0;
		reset = 1'b1;
		clkout = 1'b0;
		rxf_n = 1'b1;
		txe_n = 1'b1;
		data_in = 8'h00;
		#200 reset = 1'b0;
		
		
		#1000000 // 1ms
		
		// Load channel
		
		// Set S1 comparator: group 20, address 6, value 13 octal
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h06;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0B;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Set W comparator: group 20, address 11, value 400 hex
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h11;
		@(posedge clkout) data_in = 8'h04;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Send load preset channel: group 20, address 72, value 0
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h72;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		
		// Push PRO button: group A3, address A, value 1
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0A;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#7000000 // 8ms
		
		// Key release: group A3, addres D, value 1
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		
		#1000000
		
		// Push PRO button: group A3, address A, value 1
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0A;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#8000000 // 8ms
		
		// Key release: group A3, addres D, value 1
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#20000000
		
		// Enable sim fixed memory
		// Set bank enable: group 20, address 1A, value ffff
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h1A;
		@(posedge clkout) data_in = 8'hFF;
		@(posedge clkout) data_in = 8'hFF;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		#2000000
		
		
		// Load channel
		
		// Set S1 comparator: group 20, address 6, value 10 octal
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h06;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h08;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Set W comparator: group 20, address 11, value 4000
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h11;
		@(posedge clkout) data_in = 8'h08;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Set Write G pulse to RCH: group 20, address 10, value 16 = 10 in hex
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h10;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h10;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Set Write G mode to S: group 20, address E, value 1
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0E;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Send load preset channel: group 20, address 72, value 0
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h72;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#500000 // 0.5ms
		
		// Send read preset channel: group 20, address 75, value 0
		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h75;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#55000000 // 55 ms
		
        // VERB key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h11;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 2 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h02;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 1 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// NOUN key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h1F;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 2 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h02;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 7 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h07;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// ENTER key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h1C;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 1 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// 0 key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h10;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		
		// ENTER key
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h09;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h1C;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#10000000 // 10 ms
		
		// Key release
        #500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA3;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0D;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;
		
		#6000000 // 5 ms
		#10000000
		$stop;
	end

endmodule
