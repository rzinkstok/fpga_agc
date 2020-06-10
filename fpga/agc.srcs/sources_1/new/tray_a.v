`timescale 1ns / 1ps

module tray_a(
	input wire BLKUPL_,
	input wire BMGXM,
	input wire BMGXP,
	input wire BMGYM,
	input wire BMGYP,
	input wire BMGZM,
	input wire BMGZP,
	input wire CAURST,
	input wire CDUFAL,
	input wire CDUXM,
	input wire CDUXP,
	input wire CDUYM,
	input wire CDUYP,
	input wire CDUZM,
	input wire CDUZP,
	input wire CLOCK,
	input wire CNTRL1,
	input wire CNTRL2,
	input wire CTLSAT,
	input wire DBLTST,
	input wire DKBSNC,
	input wire DKEND,
	input wire DKSTRT,
	input wire DOSCAL,
	input wire FLTOUT,
	input wire FREFUN,
	input wire GATEX_,
	input wire GATEY_,
	input wire GATEZ_,
	input wire GCAPCL,
	input wire GUIREL,
	input wire HOLFUN,
	input wire IMUCAG,
	input wire IMUFAL,
	input wire IMUOPR,
	input wire IN3008,
	input wire IN3212,
	input wire IN3213,
	input wire IN3214,
	input wire IN3216,
	input wire IN3301,
	input wire ISSTOR,
	input wire LEMATT,
	input wire LFTOFF,
	input wire LRIN0,
	input wire LRIN1,
	input wire LRRLSC,
	input wire LVDAGD,
	input wire MAINRS,
	input wire MAMU,
	input wire MANRmP,
	input wire MANRmR,
	input wire MANRmY,
	input wire MANRpP,
	input wire MANRpR,
	input wire MANRpY,
	input wire MARK,
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
	input wire MKEY1,
	input wire MKEY2,
	input wire MKEY3,
	input wire MKEY4,
	input wire MKEY5,
	input wire MLDCH,
	input wire MLOAD,
	input wire MNHNC,
	input wire MNHRPT,
	input wire MNHSBF,
	input wire MNIMmP,
	input wire MNIMmR,
	input wire MNIMmY,
	input wire MNIMpP,
	input wire MNIMpR,
	input wire MNIMpY,
	input wire MONPAR,
	input wire MONWBK,
	input wire MRDCH,
	input wire MREAD,
	input wire MRKREJ,
	input wire MRKRST,
	input wire MSTP,
	input wire MSTRT,
	input wire MTCSAI,
	input wire MYCLMP,
	input wire NAVRST,
	input wire NHALGA,
	input wire NHVFAL,
	input wire NKEY1,
	input wire NKEY2,
	input wire NKEY3,
	input wire NKEY4,
	input wire NKEY5,
	input wire OPCDFL,
	input wire OPMSW2,
	input wire OPMSW3,
	input wire PCHGOF,
	input wire PIPAXm,
	input wire PIPAXp,
	input wire PIPAYm,
	input wire PIPAYp,
	input wire PIPAZm,
	input wire PIPAZp,
	input wire ROLGOF,
	input wire RRIN0,
	input wire RRIN1,
	input wire RRPONA,
	input wire RRRLSC,
	input wire S4BSAB,
	input wire SA01,
	input wire SA02,
	input wire SA03,
	input wire SA04,
	input wire SA05,
	input wire SA06,
	input wire SA07,
	input wire SA08,
	input wire SA09,
	input wire SA10,
	input wire SA11,
	input wire SA12,
	input wire SA13,
	input wire SA14,
	input wire SA16,
	input wire SAP,
	input wire SBYBUT,
	input wire SCAFAL,
	input wire SHAFTM,
	input wire SHAFTP,
	input wire SIGNX,
	input wire SIGNY,
	input wire SIGNZ,
	input wire SMSEPR,
	input wire SPSRDY,
	input wire STRPRS,
	input wire STRT2,
	input wire TEMPIN,
	input wire TRANmX,
	input wire TRANmY,
	input wire TRANmZ,
	input wire TRANpX,
	input wire TRANpY,
	input wire TRANpZ,
	input wire TRNM,
	input wire TRNP,
	input wire TRST10,
	input wire TRST9,
	input wire ULLTHR,
	input wire UPL0,
	input wire UPL1,
	input wire VFAIL,
	input wire WD167,
	input wire WD168,
	input wire XLNK0,
	input wire XLNK1,
	input wire ZEROP,
	input wire n2FSFAL,
	input wire prop_clk_locked,

	output wire ALGA,
	output wire ALRT0,
	output wire ALRT1,
	output wire ALT0,
	output wire ALT1,
	output wire ALTSNC,
	output wire BPLSSW,
	output wire BPLUS,
	output wire CDUCLK,
	output wire CDUXDM,
	output wire CDUXDP,
	output wire CDUYDM,
	output wire CDUYDP,
	output wire CDUZDM,
	output wire CDUZDP,
	output wire CGCWAR,
	output wire CLK,
	output wire CLROPE,
	output wire COARSE,
	output wire COMACT,
	output wire DISDAC,
	output wire DKDATA,
	output wire DKDATB,
	output wire ELSNCM,
	output wire ELSNCN,
	output wire EMSm,
	output wire EMSp,
	output wire ENERIM,
	output wire ENEROP,
	output wire FILTIN,
	output wire GEM01,
	output wire GEM02,
	output wire GEM03,
	output wire GEM04,
	output wire GEM05,
	output wire GEM06,
	output wire GEM07,
	output wire GEM08,
	output wire GEM09,
	output wire GEM10,
	output wire GEM11,
	output wire GEM12,
	output wire GEM13,
	output wire GEM14,
	output wire GEM16,
	output wire GEMP,
	output wire GYENAB,
	output wire GYRRST,
	output wire GYRSET,
	output wire GYXM,
	output wire GYXP,
	output wire GYYM,
	output wire GYYP,
	output wire GYZM,
	output wire GYZP,
	output wire HIMOD,
	output wire IHENV,
	output wire IL01,
	output wire IL01_,
	output wire IL02,
	output wire IL02_,
	output wire IL03,
	output wire IL03_,
	output wire IL04,
	output wire IL04_,
	output wire IL05,
	output wire IL05_,
	output wire IL06,
	output wire IL06_,
	output wire IL07,
	output wire IL07_,
	output wire ILP,
	output wire ILP_,
	output wire ISSTDC,
	output wire ISSWAR,
	output wire KYRLS,
	output wire LOMOD,
	output wire LRRANG,
	output wire LRRST,
	output wire LRSYNC,
	output wire LRXVEL,
	output wire LRYVEL,
	output wire LRZVEL,
	output wire MBR1,
	output wire MBR2,
	output wire MCTRAL_,
	output wire MGOJAM,
	output wire MGP_,
	output wire MIIP,
	output wire MINHL,
	output wire MINKL,
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
	output wire MROLGT,
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
	output wire MSTPIT_,
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
	output wire OPEROR,
	output wire OT1108,
	output wire OT1110,
	output wire OT1111,
	output wire OT1112,
	output wire OT1113,
	output wire OT1114,
	output wire OT1116,
	output wire OT1207,
	output wire OT1207_,
	output wire OTLNK0,
	output wire OTLNK1,
	output wire OUTCOM,
	output wire PIPASW,
	output wire PIPDAT,
	output wire PIPINT,
	output wire Q2A,
	output wire RCmXmP,
	output wire RCmXmY,
	output wire RCmXpP,
	output wire RCmXpY,
	output wire RCmYmR,
	output wire RCmYpR,
	output wire RCmZmR,
	output wire RCmZpR,
	output wire RCpXmP,
	output wire RCpXmY,
	output wire RCpXpP,
	output wire RCpXpY,
	output wire RCpYmR,
	output wire RCpYpR,
	output wire RCpZmR,
	output wire RCpZpR,
	output wire RESETA,
	output wire RESETB,
	output wire RESETC,
	output wire RESETD,
	output wire RESTRT,
	output wire REX,
	output wire REY,
	output wire RHCGO,
	output wire RLYB01,
	output wire RLYB02,
	output wire RLYB03,
	output wire RLYB04,
	output wire RLYB05,
	output wire RLYB06,
	output wire RLYB07,
	output wire RLYB08,
	output wire RLYB09,
	output wire RLYB10,
	output wire RLYB11,
	output wire ROPER,
	output wire ROPES,
	output wire ROPET,
	output wire RRRANG,
	output wire RRRARA,
	output wire RRRST,
	output wire RRSYNC,
	output wire RSTKX_,
	output wire RSTKY_,
	output wire RYWD12,
	output wire RYWD13,
	output wire RYWD14,
	output wire RYWD16,
	output wire S4BOFF,
	output wire S4BSEQ,
	output wire S4BTAK,
	output wire SBE,
	output wire SBF,
	output wire SBYLIT,
	output wire SCAS10,
	output wire SCAS17,
	output wire SETAB,
	output wire SETCD,
	output wire SETEK,
	output wire SHFTDM,
	output wire SHFTDP,
	output wire STARON,
	output wire STNDBY,
	output wire STR14,
	output wire STR19,
	output wire STR210,
	output wire STR311,
	output wire STR412,
	output wire STR58,
	output wire STR912,
	output wire STRT1,
	output wire THRSTm,
	output wire THRSTp,
	output wire TMPCAU,
	output wire TRNDM,
	output wire TRNDP,
	output wire TVCNAB,
	output wire UPLACT,
	output wire VNFLSH,
	output wire WEX,
	output wire WEY,
	output wire XB0E,
	output wire XB1E,
	output wire XB2E,
	output wire XB3E,
	output wire XB4E,
	output wire XB5E,
	output wire XB6E,
	output wire XB7E,
	output wire XT0E,
	output wire XT1E,
	output wire XT2E,
	output wire XT3E,
	output wire XT4E,
	output wire XT5E,
	output wire XT6E,
	output wire XT7E,
	output wire YB0E,
	output wire YB1E,
	output wire YB2E,
	output wire YB3E,
	output wire YT0E,
	output wire YT1E,
	output wire YT2E,
	output wire YT3E,
	output wire YT4E,
	output wire YT5E,
	output wire YT6E,
	output wire YT7E,
	output wire ZEROPT,
	output wire ZID,
	output wire ZIMCDU,
	output wire ZOPCDU,
	output wire n12KPPS,
	output wire n25KPPS,
	output wire n3200A,
	output wire n3200B,
	output wire n3200C,
	output wire n3200D,
	output wire n800RST,
	output wire n800SET,
	output wire p28COM,
	output wire p4SW,
	output wire p4VDC,

	input wire reset,
	input wire prop_clk,
	input wire n0VDCA
);

	wire A15_;
	wire A16_;
	wire A2XG_;
	wire A2X_;
	wire AD0;
	wire ADS0;
	wire AGCWAR;
	wire ALTEST;
	wire ALTM;
	wire AUG0_;
	wire B15X;
	wire BBK1;
	wire BBK2;
	wire BBK3;
	wire BKTF_;
	wire BMAGXM;
	wire BMAGXP;
	wire BMAGYM;
	wire BMAGYP;
	wire BMAGZM;
	wire BMAGZP;
	wire BOTHZ;
	wire BR1;
	wire BR12B_;
	wire BR1B2B;
	wire BR1B2B_;
	wire BR1B2_;
	wire BR1_;
	wire BR2;
	wire BR2_;
	wire BRDIF_;
	wire BXVX;
	wire C24A;
	wire C25A;
	wire C26A;
	wire C27A;
	wire C30A;
	wire C31A;
	wire C32A;
	wire C32M;
	wire C32P;
	wire C33A;
	wire C33M;
	wire C33P;
	wire C34A;
	wire C34M;
	wire C34P;
	wire C35A;
	wire C35M;
	wire C35P;
	wire C36A;
	wire C36M;
	wire C36P;
	wire C37A;
	wire C37M;
	wire C37P;
	wire C40A;
	wire C40M;
	wire C40P;
	wire C41A;
	wire C41M;
	wire C41P;
	wire C45R;
	wire C50A;
	wire C51A;
	wire C52A;
	wire C53A;
	wire C54A;
	wire C55A;
	wire CA2_;
	wire CA3_;
	wire CA4_;
	wire CA5_;
	wire CA6_;
	wire CAD1;
	wire CAD2;
	wire CAD3;
	wire CAD4;
	wire CAD5;
	wire CAD6;
	wire CAG;
	wire CBG;
	wire CCH11;
	wire CCH12;
	wire CCH13;
	wire CCH14;
	wire CCH33;
	wire CCH34;
	wire CCH35;
	wire CCHG_;
	wire CCS0;
	wire CCS0_;
	wire CDUSTB_;
	wire CDUXD;
	wire CDUYD;
	wire CDUZD;
	wire CEBG;
	wire CFBG;
	wire CG13;
	wire CG23;
	wire CG26;
	wire CGG;
	wire CGMC;
	wire CH01;
	wire CH02;
	wire CH03;
	wire CH04;
	wire CH05;
	wire CH06;
	wire CH07;
	wire CH0705;
	wire CH0706;
	wire CH0707;
	wire CH08;
	wire CH09;
	wire CH10;
	wire CH11;
	wire CH1109;
	wire CH1110;
	wire CH1111;
	wire CH1112;
	wire CH1113;
	wire CH1114;
	wire CH1116;
	wire CH12;
	wire CH1208;
	wire CH1209;
	wire CH1210;
	wire CH1211;
	wire CH1212;
	wire CH1213;
	wire CH1214;
	wire CH1216;
	wire CH13;
	wire CH1301;
	wire CH1302;
	wire CH1303;
	wire CH1304;
	wire CH1305;
	wire CH1306;
	wire CH1307;
	wire CH1308;
	wire CH1309;
	wire CH1310;
	wire CH1311;
	wire CH1316;
	wire CH14;
	wire CH1401;
	wire CH1402;
	wire CH1403;
	wire CH1404;
	wire CH1405;
	wire CH1406;
	wire CH1407;
	wire CH1408;
	wire CH1409;
	wire CH1410;
	wire CH1411;
	wire CH1412;
	wire CH1413;
	wire CH1414;
	wire CH1416;
	wire CH1501;
	wire CH1502;
	wire CH1503;
	wire CH1504;
	wire CH1505;
	wire CH16;
	wire CH1601;
	wire CH1602;
	wire CH1603;
	wire CH1604;
	wire CH1605;
	wire CH1606;
	wire CH1607;
	wire CH3201;
	wire CH3202;
	wire CH3203;
	wire CH3204;
	wire CH3205;
	wire CH3206;
	wire CH3207;
	wire CH3208;
	wire CH3209;
	wire CH3210;
	wire CH3310;
	wire CH3311;
	wire CH3312;
	wire CH3313;
	wire CH3314;
	wire CH3316;
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
	wire CHINC;
	wire CHINC_;
	wire CHOR01_;
	wire CHOR02_;
	wire CHOR03_;
	wire CHOR04_;
	wire CHOR05_;
	wire CHOR06_;
	wire CHOR07_;
	wire CHOR08_;
	wire CHOR09_;
	wire CHOR10_;
	wire CHOR11_;
	wire CHOR12_;
	wire CHOR13_;
	wire CHOR14_;
	wire CHOR16_;
	wire CHWL01_;
	wire CHWL02_;
	wire CHWL03_;
	wire CHWL04_;
	wire CHWL05_;
	wire CHWL06_;
	wire CHWL07_;
	wire CHWL08_;
	wire CHWL09_;
	wire CHWL10_;
	wire CHWL11_;
	wire CHWL12_;
	wire CHWL13_;
	wire CHWL14_;
	wire CHWL16_;
	wire CI;
	wire CI01_;
	wire CI05_;
	wire CI09_;
	wire CI13_;
	wire CI_;
	wire CLG1G;
	wire CLG2G;
	wire CLXC;
	wire CO06;
	wire CO10;
	wire CO14;
	wire CQG;
	wire CSG;
	wire CT;
	wire CTROR;
	wire CT_;
	wire CUG;
	wire CXB0_;
	wire CXB2_;
	wire CXB3_;
	wire CXB4_;
	wire CXB5_;
	wire CXB6_;
	wire CXB7_;
	wire CYL_;
	wire CYR_;
	wire CZG;
	wire DAS0;
	wire DAS0_;
	wire DAS1;
	wire DAS1_;
	wire DATA_;
	wire DCA0;
	wire DCS0;
	wire DIM0_;
	wire DINC;
	wire DINC_;
	wire DIVSTG;
	wire DIV_;
	wire DKCTR4;
	wire DKCTR4_;
	wire DKCTR5;
	wire DKCTR5_;
	wire DLKPLS;
	wire DLKRPT;
	wire DRPRST;
	wire DV1;
	wire DV1376;
	wire DV1376_;
	wire DV1_;
	wire DV3764;
	wire DV376_;
	wire DV4;
	wire DV4B1B;
	wire DV4_;
	wire DVST;
	wire DXCH0;
	wire E5;
	wire E6;
	wire E7_;
	wire EAC_;
	wire EB10;
	wire EB11_;
	wire EB9;
	wire EDOP_;
	wire EMSD;
	wire END;
	wire ERRST;
	wire EXST0_;
	wire EXST1_;
	wire EXT;
	wire EXTPLS;
	wire F01A;
	wire F01B;
	wire F02B;
	wire F03B_;
	wire F04A;
	wire F04B;
	wire F05A_;
	wire F05B_;
	wire F05D;
	wire F06B_;
	wire F07A;
	wire F07A_;
	wire F07B;
	wire F07B_;
	wire F07C_;
	wire F07D_;
	wire F08B;
	wire F09A_;
	wire F09B;
	wire F09B_;
	wire F09D;
	wire F10A;
	wire F10A_;
	wire F10B;
	wire F10B_;
	wire F12B;
	wire F14B;
	wire F17A;
	wire F17A_;
	wire F17B;
	wire F17B_;
	wire F18AX;
	wire F18B_;
	wire F5ASB0_;
	wire F5ASB2;
	wire F5ASB2_;
	wire F5BSB2_;
	wire FETCH0;
	wire FETCH0_;
	wire FETCH1;
	wire FF1109_;
	wire FF1110_;
	wire FF1111_;
	wire FF1112_;
	wire FLASH;
	wire FLASH_;
	wire FS01;
	wire FS01_;
	wire FS02;
	wire FS03;
	wire FS04;
	wire FS05;
	wire FS05_;
	wire FS06;
	wire FS06_;
	wire FS07A;
	wire FS07_;
	wire FS08;
	wire FS08_;
	wire FS09;
	wire FS09_;
	wire FS10;
	wire FS13;
	wire FS14;
	wire FS16;
	wire FS17;
	wire FUTEXT;
	wire G01;
	wire G01ED;
	wire G01_;
	wire G02;
	wire G02ED;
	wire G03;
	wire G03ED;
	wire G04;
	wire G04ED;
	wire G05;
	wire G05ED;
	wire G05_;
	wire G06;
	wire G06ED;
	wire G06_;
	wire G07;
	wire G07ED;
	wire G07_;
	wire G08;
	wire G09;
	wire G09_;
	wire G10;
	wire G10_;
	wire G11;
	wire G11_;
	wire G12;
	wire G13;
	wire G13_;
	wire G14;
	wire G14_;
	wire G15;
	wire G15_;
	wire G16;
	wire G16SW_;
	wire G2LSG_;
	wire GEQZRO_;
	wire GINH;
	wire GOJ1;
	wire GOJ1_;
	wire GOJAM;
	wire GTONE;
	wire GTRST_;
	wire GTSET;
	wire GTSET_;
	wire GYROD;
	wire HIGH0_;
	wire HIGH1_;
	wire HIGH2_;
	wire HIGH3_;
	wire HNDRPT;
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
	wire INHPLS;
	wire INKL;
	wire INKL_;
	wire INLNKM;
	wire INLNKP;
	wire INOTLD;
	wire INOUT;
	wire INOUT_;
	wire KRPT;
	wire KYRPT1;
	wire KYRPT2;
	wire L01_;
	wire L02_;
	wire L04_;
	wire L08_;
	wire L12_;
	wire L15_;
	wire L16_;
	wire L2GDG_;
	wire L2GD_;
	wire LOW6_;
	wire LOW7_;
	wire MASK0;
	wire MASK0_;
	wire MCDU;
	wire MCRO_;
	wire MINC;
	wire MISSZ;
	wire MKRPT;
	wire MONEX;
	wire MONEX_;
	wire MON_;
	wire MONpCH;
	wire MOUT;
	wire MOUT_;
	wire MP0;
	wire MP0T10;
	wire MP0_;
	wire MP1;
	wire MP1_;
	wire MP3;
	wire MP3A;
	wire MP3_;
	wire MSTRTP;
	wire MSU0;
	wire MSU0_;
	wire NDR100_;
	wire NDX0_;
	wire NDXX1_;
	wire NEAC;
	wire NISQ;
	wire NISQL_;
	wire NISQ_;
	wire NOZM;
	wire NOZP;
	wire OCTAD2;
	wire OCTAD3;
	wire OCTAD4;
	wire OCTAD5;
	wire OCTAD6;
	wire ONE;
	wire OSCALM;
	wire OTLNKM;
	wire OVF_;
	wire P02;
	wire P02_;
	wire P03;
	wire P03_;
	wire P04_;
	wire PALE;
	wire PC15_;
	wire PCDU;
	wire PHS2_;
	wire PHS3_;
	wire PHS4;
	wire PHS4_;
	wire PIFL_;
	wire PINC;
	wire PIPAFL;
	wire PIPPLS_;
	wire PIPSAM;
	wire PIPSAM_;
	wire PIPXM;
	wire PIPXP;
	wire PIPYM;
	wire PIPYP;
	wire PIPZM;
	wire PIPZP;
	wire PONEX;
	wire POUT;
	wire POUT_;
	wire PRINC;
	wire PSEUDO;
	wire PTWOX;
	wire QC0_;
	wire QC1_;
	wire QC2_;
	wire QC3_;
	wire QXCH0_;
	wire R15;
	wire R1C;
	wire R6;
	wire RAD;
	wire RADRG;
	wire RADRPT;
	wire RADRZ;
	wire RAG_;
	wire RAND0;
	wire RA_;
	wire RB1;
	wire RB1F;
	wire RB1_;
	wire RB2;
	wire RBBEG_;
	wire RBHG_;
	wire RBLG_;
	wire RBSQ;
	wire RB_;
	wire RCG_;
	wire RCH11_;
	wire RCH12_;
	wire RCH13_;
	wire RCH14_;
	wire RCH33_;
	wire RCHAT_;
	wire RCHBT_;
	wire RCHG_;
	wire RCH_;
	wire RC_;
	wire READ0;
	wire REBG_;
	wire RELPLS;
	wire RFBG_;
	wire RGG_;
	wire RG_;
	wire RL09_;
	wire RL10BB;
	wire RL10_;
	wire RL11_;
	wire RL12_;
	wire RL13_;
	wire RL14_;
	wire RL15_;
	wire RL16_;
	wire RLG_;
	wire RL_;
	wire RNRADM;
	wire RNRADP;
	wire ROR0;
	wire RPTAD3;
	wire RPTAD4;
	wire RPTAD5;
	wire RPTAD6;
	wire RPTSET;
	wire RQ;
	wire RQG_;
	wire RQ_;
	wire RRPA;
	wire RSCT;
	wire RSCT_;
	wire RSC_;
	wire RSM3;
	wire RSM3_;
	wire RSSB;
	wire RSTRT;
	wire RSTSTG;
	wire RT_;
	wire RUG_;
	wire RULOG_;
	wire RUPT0;
	wire RUPT1;
	wire RUPTOR_;
	wire RUSG_;
	wire RUS_;
	wire RU_;
	wire RXOR0;
	wire RXOR0_;
	wire RZG_;
	wire RZ_;
	wire S01;
	wire S01_;
	wire S02;
	wire S02_;
	wire S03;
	wire S03_;
	wire S04;
	wire S04_;
	wire S05;
	wire S05_;
	wire S06;
	wire S06_;
	wire S07;
	wire S07_;
	wire S08;
	wire S08_;
	wire S09;
	wire S09_;
	wire S10;
	wire S10_;
	wire S11;
	wire S11_;
	wire S12;
	wire S12_;
	wire SB0_;
	wire SB1_;
	wire SB2;
	wire SB2_;
	wire SB4;
	wire SBY;
	wire SBYREL_;
	wire SCAD;
	wire SCAD_;
	wire SHAFTD;
	wire SHANC_;
	wire SHIFT;
	wire SHIFT_;
	wire SHINC_;
	wire SQ0_;
	wire SQ1_;
	wire SQ2_;
	wire SQEXT;
	wire SQEXT_;
	wire SQR10;
	wire SQR10_;
	wire SQR12_;
	wire SR_;
	wire ST0_;
	wire ST1;
	wire ST1_;
	wire ST2;
	wire ST2_;
	wire ST3_;
	wire STBE;
	wire STBF;
	wire STD2;
	wire STFET1_;
	wire STNDBY_;
	wire STOP;
	wire STORE1_;
	wire STRGAT;
	wire STRTFC;
	wire SU0;
	wire SUMA01_;
	wire SUMA02_;
	wire SUMA03_;
	wire SUMA11_;
	wire SUMA12_;
	wire SUMA13_;
	wire SUMA14_;
	wire SUMA15_;
	wire SUMA16_;
	wire SUMB01_;
	wire SUMB02_;
	wire SUMB03_;
	wire SUMB11_;
	wire SUMB12_;
	wire SUMB13_;
	wire SUMB14_;
	wire SUMB15_;
	wire SUMB16_;
	wire SYNC14_;
	wire SYNC4_;
	wire T01;
	wire T01_;
	wire T02;
	wire T02_;
	wire T03;
	wire T03_;
	wire T04;
	wire T04_;
	wire T05;
	wire T05_;
	wire T06;
	wire T06_;
	wire T07;
	wire T07_;
	wire T08;
	wire T08_;
	wire T09;
	wire T09_;
	wire T10;
	wire T10_;
	wire T11;
	wire T11_;
	wire T12;
	wire T12A;
	wire T12USE_;
	wire T12_;
	wire T1P;
	wire T2P;
	wire T3P;
	wire T4P;
	wire T5P;
	wire T6ON_;
	wire T6P;
	wire T6RPT;
	wire T7PHS4_;
	wire TC0;
	wire TC0_;
	wire TCF0;
	wire TCSAJ3;
	wire TCSAJ3_;
	wire THRSTD;
	wire TIMR;
	wire TL15;
	wire TMPOUT;
	wire TMZ_;
	wire TOV_;
	wire TPARG_;
	wire TPOR_;
	wire TPZG_;
	wire TRSM;
	wire TRUND;
	wire TS0;
	wire TS0_;
	wire TSGN_;
	wire TSGU_;
	wire TSUDO_;
	wire TT_;
	wire TWOX;
	wire U2BBK;
	wire U2BBKG_;
	wire UNF_;
	wire UPRUPT;
	wire US2SG;
	wire WAG_;
	wire WALSG_;
	wire WAND0;
	wire WATCHP;
	wire WA_;
	wire WBBEG_;
	wire WBG_;
	wire WB_;
	wire WCH11_;
	wire WCH12_;
	wire WCH13_;
	wire WCH14_;
	wire WCH34_;
	wire WCH35_;
	wire WCHG_;
	wire WCH_;
	wire WEBG_;
	wire WEDOPG_;
	wire WFBG_;
	wire WG1G_;
	wire WG2G_;
	wire WG3G_;
	wire WG4G_;
	wire WG5G_;
	wire WG_;
	wire WHOMP;
	wire WHOMPA;
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
	wire WL13;
	wire WL13_;
	wire WL14;
	wire WL14_;
	wire WL15;
	wire WL15_;
	wire WL16;
	wire WL16_;
	wire WLG_;
	wire WL_;
	wire WOR0;
	wire WOVR;
	wire WOVR_;
	wire WQG_;
	wire WQ_;
	wire WSC_;
	wire WSG_;
	wire WS_;
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
	wire XB0;
	wire XB0_;
	wire XB1;
	wire XB1_;
	wire XB2;
	wire XB2_;
	wire XB3;
	wire XB3_;
	wire XB4;
	wire XB4_;
	wire XB5;
	wire XB5_;
	wire XB6;
	wire XB6_;
	wire XB7;
	wire XB7_;
	wire XT0_;
	wire XT1_;
	wire XT2_;
	wire XT3_;
	wire XT4_;
	wire XT5_;
	wire XT6_;
	wire XUY01_;
	wire XUY02_;
	wire XUY05_;
	wire XUY06_;
	wire XUY09_;
	wire XUY10_;
	wire XUY13_;
	wire XUY14_;
	wire YB0_;
	wire YT0_;
	wire Z15_;
	wire Z16_;
	wire ZAP_;
	wire ZOUT;
	wire ZOUT_;
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
	wire n6XP5;
	wire n6XP8;
	wire n7XP11;
	wire n7XP14;
	wire n7XP19;
	wire n7XP4;
	wire n7XP9;
	wire n8PP4;
	wire n8XP5;
	wire n8XP6;
	wire n9XP1;
	wire n9XP5;

	wire A05_1_A2X_;
	wire A05_2_A2X_;
	wire A06_1_A2X_;
	wire A16_1_CHOR01_;
	wire A16_2_CHOR01_;
	wire A17_1_CHOR01_;
	wire A17_2_CHOR01_;
	wire A23_1_CHOR01_;
	wire A16_1_CHOR02_;
	wire A16_2_CHOR02_;
	wire A17_1_CHOR02_;
	wire A17_2_CHOR02_;
	wire A23_1_CHOR02_;
	wire A16_1_CHOR03_;
	wire A16_2_CHOR03_;
	wire A17_1_CHOR03_;
	wire A17_2_CHOR03_;
	wire A23_1_CHOR03_;
	wire A16_1_CHOR04_;
	wire A16_2_CHOR04_;
	wire A17_1_CHOR04_;
	wire A17_2_CHOR04_;
	wire A23_1_CHOR04_;
	wire A16_1_CHOR05_;
	wire A16_2_CHOR05_;
	wire A17_1_CHOR05_;
	wire A17_2_CHOR05_;
	wire A23_1_CHOR05_;
	wire A23_2_CHOR05_;
	wire A16_1_CHOR06_;
	wire A16_2_CHOR06_;
	wire A17_1_CHOR06_;
	wire A17_2_CHOR06_;
	wire A23_1_CHOR06_;
	wire A16_1_CHOR07_;
	wire A16_2_CHOR07_;
	wire A17_1_CHOR07_;
	wire A17_2_CHOR07_;
	wire A23_1_CHOR07_;
	wire A16_1_CHOR08_;
	wire A17_1_CHOR08_;
	wire A17_2_CHOR08_;
	wire A23_1_CHOR08_;
	wire A23_2_CHOR08_;
	wire A17_1_CHOR09_;
	wire A17_2_CHOR09_;
	wire A23_1_CHOR09_;
	wire A23_2_CHOR09_;
	wire A17_1_CHOR10_;
	wire A17_2_CHOR10_;
	wire A23_1_CHOR10_;
	wire A23_2_CHOR10_;
	wire A17_1_CHOR11_;
	wire A17_2_CHOR11_;
	wire A18_1_CHOR11_;
	wire A18_2_CHOR11_;
	wire A17_1_CHOR12_;
	wire A17_2_CHOR12_;
	wire A18_1_CHOR12_;
	wire A18_2_CHOR12_;
	wire A17_1_CHOR13_;
	wire A17_2_CHOR13_;
	wire A17_3_CHOR13_;
	wire A18_1_CHOR13_;
	wire A17_1_CHOR14_;
	wire A17_2_CHOR14_;
	wire A18_1_CHOR14_;
	wire A18_2_CHOR14_;
	wire A17_1_CHOR16_;
	wire A17_2_CHOR16_;
	wire A18_1_CHOR16_;
	wire A04_1_CI_;
	wire A05_1_CI_;
	wire A05_2_CI_;
	wire A06_1_CI_;
	wire A22_10_DATA_;
	wire A22_1_DATA_;
	wire A22_2_DATA_;
	wire A22_3_DATA_;
	wire A22_4_DATA_;
	wire A22_5_DATA_;
	wire A22_6_DATA_;
	wire A22_7_DATA_;
	wire A22_8_DATA_;
	wire A22_9_DATA_;
	wire A23_1_DATA_;
	wire A04_1_L16_;
	wire A11_1_L16_;
	wire A05_1_MONEX_;
	wire A06_1_MONEX_;
	wire A04_1_RA_;
	wire A04_2_RA_;
	wire A05_1_RA_;
	wire A05_2_RA_;
	wire A05_3_RA_;
	wire A04_1_RB1_;
	wire A06_1_RB1_;
	wire A04_1_RB_;
	wire A04_2_RB_;
	wire A05_1_RB_;
	wire A05_2_RB_;
	wire A05_3_RB_;
	wire A05_4_RB_;
	wire A06_1_RB_;
	wire A06_2_RB_;
	wire A04_1_RC_;
	wire A04_2_RC_;
	wire A05_1_RC_;
	wire A05_2_RC_;
	wire A05_3_RC_;
	wire A05_4_RC_;
	wire A06_1_RC_;
	wire A06_2_RC_;
	wire A05_1_RG_;
	wire A05_2_RG_;
	wire A05_3_RG_;
	wire A05_4_RG_;
	wire A06_1_RG_;
	wire A06_2_RG_;
	wire A10_1_RL09_;
	wire A10_2_RL09_;
	wire A10_3_RL09_;
	wire A10_4_RL09_;
	wire A15_1_RL09_;
	wire A10_1_RL10_;
	wire A10_2_RL10_;
	wire A10_3_RL10_;
	wire A10_4_RL10_;
	wire A15_1_RL10_;
	wire A10_1_RL11_;
	wire A10_2_RL11_;
	wire A10_3_RL11_;
	wire A10_4_RL11_;
	wire A15_1_RL11_;
	wire A10_1_RL12_;
	wire A10_2_RL12_;
	wire A10_3_RL12_;
	wire A10_4_RL12_;
	wire A15_1_RL12_;
	wire A11_1_RL13_;
	wire A11_2_RL13_;
	wire A11_3_RL13_;
	wire A11_4_RL13_;
	wire A15_1_RL13_;
	wire A11_1_RL14_;
	wire A11_2_RL14_;
	wire A11_3_RL14_;
	wire A11_4_RL14_;
	wire A15_1_RL14_;
	wire A11_1_RL15_;
	wire A11_2_RL15_;
	wire A11_3_RL15_;
	wire A11_4_RL15_;
	wire A15_1_RL15_;
	wire A11_1_RL16_;
	wire A11_2_RL16_;
	wire A11_3_RL16_;
	wire A11_4_RL16_;
	wire A15_1_RL16_;
	wire A05_1_RL_;
	wire A05_2_RL_;
	wire A03_1_RPTSET;
	wire A03_2_RPTSET;
	wire A03_3_RPTSET;
	wire A06_1_RPTSET;
	wire A04_1_RSC_;
	wire A12_1_RSC_;
	wire A05_1_RU_;
	wire A05_2_RU_;
	wire A05_3_RU_;
	wire A06_1_RU_;
	wire A06_2_RU_;
	wire A06_3_RU_;
	wire A06_4_RU_;
	wire A05_1_RZ_;
	wire A05_2_RZ_;
	wire A05_3_RZ_;
	wire A06_1_RZ_;
	wire A05_1_ST2_;
	wire A06_1_ST2_;
	wire A06_2_ST2_;
	wire A04_1_TMZ_;
	wire A05_1_TMZ_;
	wire A05_2_TMZ_;
	wire A05_1_TOV_;
	wire A06_1_TOV_;
	wire A04_1_TSGN_;
	wire A04_2_TSGN_;
	wire A05_1_TSGN_;
	wire A05_2_TSGN_;
	wire A05_1_WA_;
	wire A05_2_WA_;
	wire A05_3_WA_;
	wire A06_1_WA_;
	wire A06_2_WA_;
	wire A05_1_WB_;
	wire A05_2_WB_;
	wire A05_3_WB_;
	wire A05_4_WB_;
	wire A06_1_WB_;
	wire A06_2_WB_;
	wire A04_1_WG_;
	wire A04_2_WG_;
	wire A04_3_WG_;
	wire A05_1_WG_;
	wire A06_1_WG_;
	wire A06_2_WG_;
	wire A12_1_WG_;
	wire A04_1_WL_;
	wire A05_1_WL_;
	wire A05_2_WL_;
	wire A06_1_WL_;
	wire A06_1_WSC_;
	wire A06_2_WSC_;
	wire A05_1_WS_;
	wire A06_1_WS_;
	wire A05_1_WY12_;
	wire A05_2_WY12_;
	wire A05_1_WYD_;
	wire A06_1_WYD_;
	wire A04_1_WY_;
	wire A04_2_WY_;
	wire A05_1_WY_;
	wire A05_2_WY_;
	wire A05_3_WY_;
	wire A06_1_WY_;
	wire A05_1_WZ_;
	wire A05_2_WZ_;
	wire A06_1_WZ_;
	wire A05_1_Z15_;
	wire A11_1_Z15_;
	wire A05_1_Z16_;
	wire A11_1_Z16_;
	wire A04_1_n8PP4;
	wire A06_1_n8PP4;
	wire A06_2_n8PP4;
	wire A06_3_n8PP4;

	a01_scaler a01(
		.FS01_(FS01_),
		.RCHAT_(RCHAT_),
		.RCHBT_(RCHBT_),
		.FS02(FS02),
		.F02B(F02B),
		.FS03(FS03),
		.F03B_(F03B_),
		.FS04(FS04),
		.F04A(F04A),
		.F04B(F04B),
		.FS05(FS05),
		.FS05_(FS05_),
		.F05A_(F05A_),
		.F05B_(F05B_),
		.F05D(F05D),
		.FS06(FS06),
		.FS06_(FS06_),
		.F06B_(F06B_),
		.FS07_(FS07_),
		.FS07A(FS07A),
		.F07A(F07A),
		.F07A_(F07A_),
		.F07B(F07B),
		.F07B_(F07B_),
		.F07C_(F07C_),
		.F07D_(F07D_),
		.FS08(FS08),
		.FS08_(FS08_),
		.F08B(F08B),
		.FS09(FS09),
		.FS09_(FS09_),
		.F09A_(F09A_),
		.F09B(F09B),
		.F09B_(F09B_),
		.F09D(F09D),
		.FS10(FS10),
		.F10A(F10A),
		.F10A_(F10A_),
		.F10B(F10B),
		.F10B_(F10B_),
		.F12B(F12B),
		.FS13(FS13),
		.FS14(FS14),
		.F14B(F14B),
		.FS16(FS16),
		.FS17(FS17),
		.F17A(F17A),
		.F17A_(F17A_),
		.F17B(F17B),
		.F17B_(F17B_),
		.F18B_(F18B_),
		.F18AX(F18AX),
		.CHAT01(CHAT01),
		.CHAT02(CHAT02),
		.CHAT03(CHAT03),
		.CHAT04(CHAT04),
		.CHAT05(CHAT05),
		.CHAT06(CHAT06),
		.CHAT07(CHAT07),
		.CHAT08(CHAT08),
		.CHAT09(CHAT09),
		.CHAT10(CHAT10),
		.CHAT11(CHAT11),
		.CHAT12(CHAT12),
		.CHAT13(CHAT13),
		.CHAT14(CHAT14),
		.CHBT01(CHBT01),
		.CHBT02(CHBT02),
		.CHBT03(CHBT03),
		.CHBT04(CHBT04),
		.CHBT05(CHBT05),
		.CHBT06(CHBT06),
		.CHBT07(CHBT07),
		.CHBT08(CHBT08),
		.CHBT09(CHBT09),
		.CHBT10(CHBT10),
		.CHBT11(CHBT11),
		.CHBT12(CHBT12),
		.CHBT13(CHBT13),
		.CHBT14(CHBT14),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a02_timer a02(
		.CLOCK(CLOCK),
		.SBY(SBY),
		.ALGA(ALGA),
		.MSTRTP(MSTRTP),
		.STRT1(STRT1),
		.STRT2(STRT2),
		.GOJ1(GOJ1),
		.MSTP(MSTP),
		.WL15(WL15),
		.WL15_(WL15_),
		.WL16(WL16),
		.WL16_(WL16_),
		.CLK(CLK),
		.PHS2_(PHS2_),
		.PHS3_(PHS3_),
		.PHS4(PHS4),
		.PHS4_(PHS4_),
		.CT(CT),
		.CT_(CT_),
		.RT_(RT_),
		.WT_(WT_),
		.TT_(TT_),
		.MONWT(MONWT),
		.Q2A(Q2A),
		.P02(P02),
		.P02_(P02_),
		.P03(P03),
		.P03_(P03_),
		.P04_(P04_),
		.F01A(F01A),
		.F01B(F01B),
		.FS01(FS01),
		.FS01_(FS01_),
		.SB0_(SB0_),
		.SB1_(SB1_),
		.SB2(SB2),
		.SB2_(SB2_),
		.SB4(SB4),
		.GOJAM(GOJAM),
		.STOP(STOP),
		.TIMR(TIMR),
		.MSTPIT_(MSTPIT_),
		.MGOJAM(MGOJAM),
		.T01(T01),
		.T01_(T01_),
		.T02(T02),
		.T02_(T02_),
		.T03(T03),
		.T03_(T03_),
		.T04(T04),
		.T04_(T04_),
		.T05(T05),
		.T05_(T05_),
		.T06(T06),
		.T06_(T06_),
		.T07(T07),
		.T07_(T07_),
		.T08(T08),
		.T08_(T08_),
		.T09(T09),
		.T09_(T09_),
		.T10(T10),
		.T10_(T10_),
		.T11(T11),
		.T11_(T11_),
		.T12(T12),
		.T12_(T12_),
		.T12A(T12A),
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
		.UNF_(UNF_),
		.OVF_(OVF_),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a03_sq_register a03(
		.NISQ(NISQ),
		.NISQ_(NISQ_),
		.PHS2_(PHS2_),
		.CT_(CT_),
		.WT_(WT_),
		.RT_(RT_),
		.T01_(T01_),
		.T02(T02),
		.T12_(T12_),
		.WL10_(WL10_),
		.WL11_(WL11_),
		.WL12_(WL12_),
		.WL13_(WL13_),
		.WL14_(WL14_),
		.WL16_(WL16_),
		.A15_(A15_),
		.A16_(A16_),
		.ST0_(ST0_),
		.ST1_(ST1_),
		.ST3_(ST3_),
		.BR2_(BR2_),
		.BR1B2B(BR1B2B),
		.INKL(INKL),
		.STD2(STD2),
		.GOJAM(GOJAM),
		.MTCSAI(MTCSAI),
		.INHPLS(INHPLS),
		.RELPLS(RELPLS),
		.KRPT(KRPT),
		.EXT(EXT),
		.EXTPLS(EXTPLS),
		.RUPTOR_(RUPTOR_),
		.MNHRPT(MNHRPT),
		.RXOR0(RXOR0),
		.n5XP4(n5XP4),
		.RPTSET(RPTSET),
		.NISQL_(NISQL_),
		.RBSQ(RBSQ),
		.SQR10(SQR10),
		.SQR10_(SQR10_),
		.SQR12_(SQR12_),
		.SQ0_(SQ0_),
		.SQ1_(SQ1_),
		.SQ2_(SQ2_),
		.SQEXT(SQEXT),
		.SQEXT_(SQEXT_),
		.QC0_(QC0_),
		.QC1_(QC1_),
		.QC2_(QC2_),
		.QC3_(QC3_),
		.FUTEXT(FUTEXT),
		.IIP(IIP),
		.IIP_(IIP_),
		.STRTFC(STRTFC),
		.MSQ10(MSQ10),
		.MSQ11(MSQ11),
		.MSQ12(MSQ12),
		.MSQ13(MSQ13),
		.MSQ14(MSQ14),
		.MSQ16(MSQ16),
		.MSQEXT(MSQEXT),
		.MINHL(MINHL),
		.MIIP(MIIP),
		.TC0(TC0),
		.TC0_(TC0_),
		.TCF0(TCF0),
		.TS0(TS0),
		.TS0_(TS0_),
		.DCS0(DCS0),
		.DCA0(DCA0),
		.QXCH0_(QXCH0_),
		.DXCH0(DXCH0),
		.DAS0(DAS0),
		.DAS0_(DAS0_),
		.INCR0(INCR0),
		.CCS0(CCS0),
		.CCS0_(CCS0_),
		.DAS1(DAS1),
		.DAS1_(DAS1_),
		.ADS0(ADS0),
		.AD0(AD0),
		.SU0(SU0),
		.AUG0_(AUG0_),
		.DIM0_(DIM0_),
		.MSU0(MSU0),
		.MSU0_(MSU0_),
		.MP0(MP0),
		.MP0_(MP0_),
		.MP1(MP1),
		.MP1_(MP1_),
		.MP3(MP3),
		.MP3_(MP3_),
		.MP3A(MP3A),
		.TCSAJ3(TCSAJ3),
		.TCSAJ3_(TCSAJ3_),
		.RSM3(RSM3),
		.RSM3_(RSM3_),
		.MASK0(MASK0),
		.MASK0_(MASK0_),
		.NDX0_(NDX0_),
		.NDXX1_(NDXX1_),
		.GOJ1(GOJ1),
		.GOJ1_(GOJ1_),
		.IC1(IC1),
		.IC2(IC2),
		.IC2_(IC2_),
		.IC3(IC3),
		.IC4(IC4),
		.IC5(IC5),
		.IC5_(IC5_),
		.IC6(IC6),
		.IC7(IC7),
		.IC8_(IC8_),
		.IC9(IC9),
		.IC10(IC10),
		.IC10_(IC10_),
		.IC11(IC11),
		.IC11_(IC11_),
		.IC12(IC12),
		.IC12_(IC12_),
		.IC13(IC13),
		.IC14(IC14),
		.IC15(IC15),
		.IC15_(IC15_),
		.IC16(IC16),
		.IC16_(IC16_),
		.IC17(IC17),
		.EXST0_(EXST0_),
		.EXST1_(EXST1_),
		.MTCSA_(MTCSA_),
		.A03_1_RPTSET(A03_1_RPTSET),
		.A03_2_RPTSET(A03_2_RPTSET),
		.A03_3_RPTSET(A03_3_RPTSET),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a04_stage_branch a04(
		.PHS2_(PHS2_),
		.PHS3_(PHS3_),
		.PHS4(PHS4),
		.PHS4_(PHS4_),
		.T01(T01),
		.T03_(T03_),
		.T12_(T12_),
		.SUMA16_(SUMA16_),
		.SUMB16_(SUMB16_),
		.WL01_(WL01_),
		.WL02_(WL02_),
		.WL03_(WL03_),
		.WL04_(WL04_),
		.WL05_(WL05_),
		.WL06_(WL06_),
		.WL07_(WL07_),
		.WL08_(WL08_),
		.WL09_(WL09_),
		.WL10_(WL10_),
		.WL11_(WL11_),
		.WL12_(WL12_),
		.WL13_(WL13_),
		.WL14_(WL14_),
		.WL15_(WL15_),
		.WL16_(WL16_),
		.QC0_(QC0_),
		.QC1_(QC1_),
		.QC2_(QC2_),
		.QC3_(QC3_),
		.SQ0_(SQ0_),
		.SQ1_(SQ1_),
		.SQ2_(SQ2_),
		.SQEXT(SQEXT),
		.SQEXT_(SQEXT_),
		.DVST(DVST),
		.ST1(ST1),
		.ST2(ST2),
		.INKL(INKL),
		.MTCSAI(MTCSAI),
		.GOJAM(GOJAM),
		.RSTSTG(RSTSTG),
		.STRTFC(STRTFC),
		.TRSM(TRSM),
		.XT1_(XT1_),
		.XB7_(XB7_),
		.NDR100_(NDR100_),
		.UNF_(UNF_),
		.L15_(L15_),
		.TSGU_(TSGU_),
		.TOV_(TOV_),
		.TSGN_(TSGN_),
		.GEQZRO_(GEQZRO_),
		.OVF_(OVF_),
		.TPZG_(TPZG_),
		.TMZ_(TMZ_),
		.T01_(T01_),
		.T02_(T02_),
		.T04_(T04_),
		.T05_(T05_),
		.T06_(T06_),
		.T07_(T07_),
		.T08_(T08_),
		.T09_(T09_),
		.T10_(T10_),
		.T11_(T11_),
		.SQR10(SQR10),
		.SQR10_(SQR10_),
		.SQR12_(SQR12_),
		.EXST0_(EXST0_),
		.EXST1_(EXST1_),
		.IC12(IC12),
		.IC13(IC13),
		.IC15(IC15),
		.IC15_(IC15_),
		.n7XP14(n7XP14),
		.RSM3(RSM3),
		.RSM3_(RSM3_),
		.STORE1_(STORE1_),
		.RSC_(RSC_),
		.MP0_(MP0_),
		.MP1(MP1),
		.MP3_(MP3_),
		.MP3A(MP3A),
		.TS0_(TS0_),
		.n7XP11(n7XP11),
		.T12USE_(T12USE_),
		.DIV_(DIV_),
		.DV1(DV1),
		.DV1_(DV1_),
		.DV4(DV4),
		.DV4_(DV4_),
		.DV376_(DV376_),
		.DV1376(DV1376),
		.DV1376_(DV1376_),
		.DV3764(DV3764),
		.ST0_(ST0_),
		.ST1_(ST1_),
		.STD2(STD2),
		.ST3_(ST3_),
		.MST1(MST1),
		.MST2(MST2),
		.MST3(MST3),
		.BR1(BR1),
		.BR1_(BR1_),
		.MBR1(MBR1),
		.BR2(BR2),
		.BR2_(BR2_),
		.MBR2(MBR2),
		.READ0(READ0),
		.RAND0(RAND0),
		.WAND0(WAND0),
		.INOUT(INOUT),
		.INOUT_(INOUT_),
		.ROR0(ROR0),
		.WOR0(WOR0),
		.RXOR0(RXOR0),
		.RXOR0_(RXOR0_),
		.RUPT0(RUPT0),
		.RUPT1(RUPT1),
		.PRINC(PRINC),
		.RRPA(RRPA),
		.n1XP10(n1XP10),
		.n2XP3(n2XP3),
		.n2XP5(n2XP5),
		.n3XP2(n3XP2),
		.n3XP7(n3XP7),
		.n4XP5(n4XP5),
		.n4XP11(n4XP11),
		.n5XP4(n5XP4),
		.n5XP11(n5XP11),
		.n5XP28(n5XP28),
		.n6XP5(n6XP5),
		.n7XP19(n7XP19),
		.n8XP5(n8XP5),
		.n8XP6(n8XP6),
		.n9XP1(n9XP1),
		.A04_1_RA_(A04_1_RA_),
		.A04_2_RA_(A04_2_RA_),
		.A04_1_RB_(A04_1_RB_),
		.A04_2_RB_(A04_2_RB_),
		.A04_1_RC_(A04_1_RC_),
		.A04_2_RC_(A04_2_RC_),
		.A04_1_RB1_(A04_1_RB1_),
		.A04_1_RSC_(A04_1_RSC_),
		.A12_1_RSC_(A12_1_RSC_),
		.A04_1_WG_(A04_1_WG_),
		.A04_2_WG_(A04_2_WG_),
		.A04_3_WG_(A04_3_WG_),
		.A12_1_WG_(A12_1_WG_),
		.A04_1_WL_(A04_1_WL_),
		.A04_1_WY_(A04_1_WY_),
		.A04_2_WY_(A04_2_WY_),
		.A04_1_CI_(A04_1_CI_),
		.A04_1_TMZ_(A04_1_TMZ_),
		.A04_1_TSGN_(A04_1_TSGN_),
		.A04_2_TSGN_(A04_2_TSGN_),
		.A04_1_L16_(A04_1_L16_),
		.A04_1_n8PP4(A04_1_n8PP4),
		.R1C(R1C),
		.R15(R15),
		.RB2(RB2),
		.WCH_(WCH_),
		.MRSC(MRSC),
		.MP0T10(MP0T10),
		.B15X(B15X),
		.BR1B2_(BR1B2_),
		.BR1B2B(BR1B2B),
		.BR12B_(BR12B_),
		.BRDIF_(BRDIF_),
		.BR1B2B_(BR1B2B_),
		.TL15(TL15),
		.KRPT(KRPT),
		.DIVSTG(DIVSTG),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a05_crosspoint_nqi a05(
		.T01_(T01_),
		.T02_(T02_),
		.T03_(T03_),
		.T04_(T04_),
		.T05_(T05_),
		.T06_(T06_),
		.T07_(T07_),
		.T08_(T08_),
		.T09_(T09_),
		.T10_(T10_),
		.T11_(T11_),
		.T12_(T12_),
		.BR1(BR1),
		.BR1_(BR1_),
		.BR2(BR2),
		.BR2_(BR2_),
		.BR12B_(BR12B_),
		.BR1B2_(BR1B2_),
		.BRDIF_(BRDIF_),
		.IC1(IC1),
		.IC2(IC2),
		.IC2_(IC2_),
		.IC3(IC3),
		.IC4(IC4),
		.IC5(IC5),
		.IC5_(IC5_),
		.IC8_(IC8_),
		.IC9(IC9),
		.IC10(IC10),
		.IC10_(IC10_),
		.IC11_(IC11_),
		.IC12(IC12),
		.IC12_(IC12_),
		.IC13(IC13),
		.IC14(IC14),
		.IC15_(IC15_),
		.IC16(IC16),
		.IC16_(IC16_),
		.STD2(STD2),
		.TC0(TC0),
		.TC0_(TC0_),
		.TCF0(TCF0),
		.RSM3(RSM3),
		.RSM3_(RSM3_),
		.DIV_(DIV_),
		.MP0(MP0),
		.MP3(MP3),
		.MP3_(MP3_),
		.DAS0(DAS0),
		.DAS0_(DAS0_),
		.DAS1(DAS1),
		.DAS1_(DAS1_),
		.MASK0(MASK0),
		.MASK0_(MASK0_),
		.INKL_(INKL_),
		.SHIFT(SHIFT),
		.SHIFT_(SHIFT_),
		.MONpCH(MONpCH),
		.PRINC(PRINC),
		.CCS0(CCS0),
		.CCS0_(CCS0_),
		.MSU0(MSU0),
		.MSU0_(MSU0_),
		.FETCH0(FETCH0),
		.FETCH0_(FETCH0_),
		.DXCH0(DXCH0),
		.GOJ1(GOJ1),
		.GOJ1_(GOJ1_),
		.TCSAJ3_(TCSAJ3_),
		.RUPT0(RUPT0),
		.INOUT(INOUT),
		.INOUT_(INOUT_),
		.CHINC_(CHINC_),
		.SHANC_(SHANC_),
		.TS0(TS0),
		.TS0_(TS0_),
		.QXCH0_(QXCH0_),
		.DV1(DV1),
		.DV1_(DV1_),
		.DV4(DV4),
		.DV4_(DV4_),
		.NDX0_(NDX0_),
		.RAND0(RAND0),
		.WAND0(WAND0),
		.ROR0(ROR0),
		.WOR0(WOR0),
		.READ0(READ0),
		.RXOR0(RXOR0),
		.RXOR0_(RXOR0_),
		.STFET1_(STFET1_),
		.MONWBK(MONWBK),
		.ADS0(ADS0),
		.T12USE_(T12USE_),
		.n4XP5(n4XP5),
		.n5XP11(n5XP11),
		.YT0_(YT0_),
		.YB0_(YB0_),
		.S11(S11),
		.S12(S12),
		.XT0_(XT0_),
		.XT2_(XT2_),
		.XT3_(XT3_),
		.XT4_(XT4_),
		.XT5_(XT5_),
		.XT6_(XT6_),
		.A05_1_MONEX_(A05_1_MONEX_),
		.A05_1_RZ_(A05_1_RZ_),
		.A05_2_RZ_(A05_2_RZ_),
		.A05_3_RZ_(A05_3_RZ_),
		.A05_1_RB_(A05_1_RB_),
		.A05_2_RB_(A05_2_RB_),
		.A05_3_RB_(A05_3_RB_),
		.A05_4_RB_(A05_4_RB_),
		.A05_1_RA_(A05_1_RA_),
		.A05_2_RA_(A05_2_RA_),
		.A05_3_RA_(A05_3_RA_),
		.A05_1_WA_(A05_1_WA_),
		.A05_2_WA_(A05_2_WA_),
		.A05_3_WA_(A05_3_WA_),
		.A05_1_RL_(A05_1_RL_),
		.A05_2_RL_(A05_2_RL_),
		.A05_1_TMZ_(A05_1_TMZ_),
		.A05_2_TMZ_(A05_2_TMZ_),
		.A05_1_TSGN_(A05_1_TSGN_),
		.A05_2_TSGN_(A05_2_TSGN_),
		.A05_1_WG_(A05_1_WG_),
		.A05_1_RG_(A05_1_RG_),
		.A05_2_RG_(A05_2_RG_),
		.A05_3_RG_(A05_3_RG_),
		.A05_4_RG_(A05_4_RG_),
		.A05_1_RC_(A05_1_RC_),
		.A05_2_RC_(A05_2_RC_),
		.A05_3_RC_(A05_3_RC_),
		.A05_4_RC_(A05_4_RC_),
		.A05_1_A2X_(A05_1_A2X_),
		.A05_2_A2X_(A05_2_A2X_),
		.A05_1_WY_(A05_1_WY_),
		.A05_2_WY_(A05_2_WY_),
		.A05_3_WY_(A05_3_WY_),
		.A05_1_CI_(A05_1_CI_),
		.A05_2_CI_(A05_2_CI_),
		.A05_1_WY12_(A05_1_WY12_),
		.A05_2_WY12_(A05_2_WY12_),
		.A05_1_WZ_(A05_1_WZ_),
		.A05_2_WZ_(A05_2_WZ_),
		.A05_1_WB_(A05_1_WB_),
		.A05_2_WB_(A05_2_WB_),
		.A05_3_WB_(A05_3_WB_),
		.A05_4_WB_(A05_4_WB_),
		.A05_1_RU_(A05_1_RU_),
		.A05_2_RU_(A05_2_RU_),
		.A05_3_RU_(A05_3_RU_),
		.A05_1_ST2_(A05_1_ST2_),
		.A05_1_WS_(A05_1_WS_),
		.A05_1_Z15_(A05_1_Z15_),
		.A05_1_Z16_(A05_1_Z16_),
		.A05_1_TOV_(A05_1_TOV_),
		.A05_1_WL_(A05_1_WL_),
		.A05_2_WL_(A05_2_WL_),
		.A05_1_WYD_(A05_1_WYD_),
		.NISQ_(NISQ_),
		.DVST(DVST),
		.TPZG_(TPZG_),
		.n2XP7(n2XP7),
		.n2XP8(n2XP8),
		.n3XP6(n3XP6),
		.n5XP12(n5XP12),
		.n5XP15(n5XP15),
		.n5XP21(n5XP21),
		.n6XP8(n6XP8),
		.n7XP4(n7XP4),
		.n7XP9(n7XP9),
		.n9XP5(n9XP5),
		.n10XP1(n10XP1),
		.n10XP8(n10XP8),
		.n11XP2(n11XP2),
		.PTWOX(PTWOX),
		.TSUDO_(TSUDO_),
		.RAD(RAD),
		.RSTRT(RSTRT),
		.RL10BB(RL10BB),
		.RSCT(RSCT),
		.R6(R6),
		.RQ(RQ),
		.TRSM(TRSM),
		.SCAD(SCAD),
		.SCAD_(SCAD_),
		.NDR100_(NDR100_),
		.OCTAD2(OCTAD2),
		.OCTAD3(OCTAD3),
		.OCTAD4(OCTAD4),
		.OCTAD5(OCTAD5),
		.OCTAD6(OCTAD6),
		.U2BBK(U2BBK),
		.RSTSTG(RSTSTG),
		.DV4B1B(DV4B1B),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a06_crosspoint_ii a06(
		.T01(T01),
		.T01_(T01_),
		.T02(T02),
		.T02_(T02_),
		.T03(T03),
		.T03_(T03_),
		.T04(T04),
		.T04_(T04_),
		.T05(T05),
		.T06(T06),
		.T06_(T06_),
		.T07(T07),
		.T07_(T07_),
		.T08(T08),
		.T08_(T08_),
		.T09(T09),
		.T10(T10),
		.T10_(T10_),
		.T11(T11),
		.T11_(T11_),
		.T12(T12),
		.DV4_(DV4_),
		.DV376_(DV376_),
		.DV1376_(DV1376_),
		.DIVSTG(DIVSTG),
		.DV4B1B(DV4B1B),
		.RBSQ(RBSQ),
		.MP1(MP1),
		.MP1_(MP1_),
		.MP3_(MP3_),
		.T12USE_(T12USE_),
		.RRPA(RRPA),
		.BR1(BR1),
		.BR1_(BR1_),
		.BR2_(BR2_),
		.BR12B_(BR12B_),
		.BR1B2B(BR1B2B),
		.BR1B2_(BR1B2_),
		.BR1B2B_(BR1B2B_),
		.PHS4_(PHS4_),
		.MONEX_(MONEX_),
		.PTWOX(PTWOX),
		.B15X(B15X),
		.AUG0_(AUG0_),
		.DIM0_(DIM0_),
		.INCR0(INCR0),
		.PRINC(PRINC),
		.DINC(DINC),
		.DINC_(DINC_),
		.PINC(PINC),
		.MINC(MINC),
		.MCDU(MCDU),
		.PCDU(PCDU),
		.CDUSTB_(CDUSTB_),
		.DAS0(DAS0),
		.DAS1(DAS1),
		.DAS1_(DAS1_),
		.MSU0(MSU0),
		.WAND0(WAND0),
		.RAND0(RAND0),
		.INOTLD(INOTLD),
		.SHIFT(SHIFT),
		.INKL(INKL),
		.MONpCH(MONpCH),
		.MON_(MON_),
		.FETCH1(FETCH1),
		.DXCH0(DXCH0),
		.RUPT0(RUPT0),
		.RUPT1(RUPT1),
		.MASK0(MASK0),
		.DV1376(DV1376),
		.CCS0(CCS0),
		.CCS0_(CCS0_),
		.ADS0(ADS0),
		.NDXX1_(NDXX1_),
		.AD0(AD0),
		.DCA0(DCA0),
		.DCS0(DCS0),
		.SU0(SU0),
		.RADRZ(RADRZ),
		.RADRG(RADRG),
		.IC6(IC6),
		.IC7(IC7),
		.IC9(IC9),
		.IC11(IC11),
		.IC17(IC17),
		.L01_(L01_),
		.L02_(L02_),
		.L15_(L15_),
		.R6(R6),
		.R15(R15),
		.STBE(STBE),
		.STBF(STBF),
		.STFET1_(STFET1_),
		.n1XP10(n1XP10),
		.n2XP3(n2XP3),
		.n2XP5(n2XP5),
		.n2XP7(n2XP7),
		.n2XP8(n2XP8),
		.n3XP2(n3XP2),
		.n3XP6(n3XP6),
		.n3XP7(n3XP7),
		.n4XP11(n4XP11),
		.n5XP4(n5XP4),
		.n5XP12(n5XP12),
		.n5XP15(n5XP15),
		.n5XP21(n5XP21),
		.n5XP28(n5XP28),
		.n6XP5(n6XP5),
		.n6XP8(n6XP8),
		.n7XP4(n7XP4),
		.n7XP9(n7XP9),
		.n7XP19(n7XP19),
		.n8XP6(n8XP6),
		.n9XP1(n9XP1),
		.n9XP5(n9XP5),
		.n10XP1(n10XP1),
		.n10XP8(n10XP8),
		.n11XP2(n11XP2),
		.n8PP4(n8PP4),
		.MP0T10(MP0T10),
		.TL15(TL15),
		.ST2_(ST2_),
		.GOJAM(GOJAM),
		.NISQ(NISQ),
		.RB1_(RB1_),
		.A06_1_A2X_(A06_1_A2X_),
		.A06_1_RB_(A06_1_RB_),
		.A06_2_RB_(A06_2_RB_),
		.A06_1_WYD_(A06_1_WYD_),
		.A06_1_WY_(A06_1_WY_),
		.A06_1_RC_(A06_1_RC_),
		.A06_2_RC_(A06_2_RC_),
		.A06_1_WL_(A06_1_WL_),
		.A06_1_RG_(A06_1_RG_),
		.A06_2_RG_(A06_2_RG_),
		.A06_1_WB_(A06_1_WB_),
		.A06_2_WB_(A06_2_WB_),
		.A06_1_RU_(A06_1_RU_),
		.A06_2_RU_(A06_2_RU_),
		.A06_3_RU_(A06_3_RU_),
		.A06_4_RU_(A06_4_RU_),
		.A06_1_WZ_(A06_1_WZ_),
		.A06_1_TOV_(A06_1_TOV_),
		.A06_1_WSC_(A06_1_WSC_),
		.A06_2_WSC_(A06_2_WSC_),
		.A06_1_WG_(A06_1_WG_),
		.A06_2_WG_(A06_2_WG_),
		.A06_1_MONEX_(A06_1_MONEX_),
		.A06_1_WA_(A06_1_WA_),
		.A06_2_WA_(A06_2_WA_),
		.A06_1_RZ_(A06_1_RZ_),
		.A06_1_WS_(A06_1_WS_),
		.A06_1_CI_(A06_1_CI_),
		.A06_1_RB1_(A06_1_RB1_),
		.A06_1_RPTSET(A06_1_RPTSET),
		.A06_1_ST2_(A06_1_ST2_),
		.A06_2_ST2_(A06_2_ST2_),
		.A06_1_n8PP4(A06_1_n8PP4),
		.A06_2_n8PP4(A06_2_n8PP4),
		.A06_3_n8PP4(A06_3_n8PP4),
		.WHOMP(WHOMP),
		.WHOMPA(WHOMPA),
		.RB1(RB1),
		.L2GD_(L2GD_),
		.ZAP_(ZAP_),
		.MCRO_(MCRO_),
		.RB1F(RB1F),
		.RCH_(RCH_),
		.TSGU_(TSGU_),
		.CLXC(CLXC),
		.WQ_(WQ_),
		.MONEX(MONEX),
		.TWOX(TWOX),
		.BXVX(BXVX),
		.PIFL_(PIFL_),
		.CGMC(CGMC),
		.POUT(POUT),
		.MOUT(MOUT),
		.ZOUT(ZOUT),
		.WOVR(WOVR),
		.EXT(EXT),
		.ST1(ST1),
		.ST2(ST2),
		.RUS_(RUS_),
		.NEAC(NEAC),
		.PONEX(PONEX),
		.PSEUDO(PSEUDO),
		.n7XP11(n7XP11),
		.n7XP14(n7XP14),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a07_service_gates a07(
		.WT_(WT_),
		.CT_(CT_),
		.RT_(RT_),
		.WY12_(WY12_),
		.WY_(WY_),
		.WYD_(WYD_),
		.WB_(WB_),
		.WZ_(WZ_),
		.WSC_(WSC_),
		.WL_(WL_),
		.WCHG_(WCHG_),
		.WA_(WA_),
		.WS_(WS_),
		.WQ_(WQ_),
		.WG_(WG_),
		.RC_(RC_),
		.RQ_(RQ_),
		.RSC_(RSC_),
		.RCHG_(RCHG_),
		.ZAP_(ZAP_),
		.SHIFT(SHIFT),
		.NEAC(NEAC),
		.GINH(GINH),
		.SR_(SR_),
		.CYR_(CYR_),
		.CYL_(CYL_),
		.EDOP_(EDOP_),
		.PIPPLS_(PIPPLS_),
		.SB2_(SB2_),
		.XB5_(XB5_),
		.XB1_(XB1_),
		.XT0_(XT0_),
		.XB0_(XB0_),
		.XB2_(XB2_),
		.P04_(P04_),
		.XB4_(XB4_),
		.XB6_(XB6_),
		.L15_(L15_),
		.PIFL_(PIFL_),
		.TT_(TT_),
		.L2GD_(L2GD_),
		.A2X_(A2X_),
		.CGMC(CGMC),
		.T10_(T10_),
		.STFET1_(STFET1_),
		.EAC_(EAC_),
		.MP3A(MP3A),
		.CI(CI),
		.XB3_(XB3_),
		.U2BBK(U2BBK),
		.RG_(RG_),
		.RA_(RA_),
		.RL_(RL_),
		.RZ_(RZ_),
		.RU_(RU_),
		.RUS_(RUS_),
		.RB_(RB_),
		.RL10BB(RL10BB),
		.SCAD_(SCAD_),
		.WALSG_(WALSG_),
		.WYLOG_(WYLOG_),
		.WYHIG_(WYHIG_),
		.CUG(CUG),
		.WYDG_(WYDG_),
		.WYDLOG_(WYDLOG_),
		.WBG_(WBG_),
		.CBG(CBG),
		.WG1G_(WG1G_),
		.WG2G_(WG2G_),
		.WG3G_(WG3G_),
		.WG4G_(WG4G_),
		.WG5G_(WG5G_),
		.WEDOPG_(WEDOPG_),
		.PIPSAM(PIPSAM),
		.WZG_(WZG_),
		.CZG(CZG),
		.WLG_(WLG_),
		.CLG2G(CLG2G),
		.CLG1G(CLG1G),
		.WAG_(WAG_),
		.CAG(CAG),
		.WSG_(WSG_),
		.CSG(CSG),
		.WQG_(WQG_),
		.CQG(CQG),
		.RCG_(RCG_),
		.RQG_(RQG_),
		.RFBG_(RFBG_),
		.RBBEG_(RBBEG_),
		.G2LSG_(G2LSG_),
		.L2GDG_(L2GDG_),
		.A2XG_(A2XG_),
		.CGG(CGG),
		.WEBG_(WEBG_),
		.CEBG(CEBG),
		.CFBG(CFBG),
		.WFBG_(WFBG_),
		.WBBEG_(WBBEG_),
		.RGG_(RGG_),
		.RAG_(RAG_),
		.RLG_(RLG_),
		.RZG_(RZG_),
		.REBG_(REBG_),
		.RUG_(RUG_),
		.RUSG_(RUSG_),
		.RULOG_(RULOG_),
		.RBHG_(RBHG_),
		.RBLG_(RBLG_),
		.CI01_(CI01_),
		.MWYG(MWYG),
		.MWBG(MWBG),
		.MWG(MWG),
		.MWZG(MWZG),
		.MWLG(MWLG),
		.MWAG(MWAG),
		.MWSG(MWSG),
		.MWQG(MWQG),
		.MWEBG(MWEBG),
		.MWFBG(MWFBG),
		.MWBBEG(MWBBEG),
		.MRGG(MRGG),
		.MRAG(MRAG),
		.MRLG(MRLG),
		.MRULOG(MRULOG),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a08_four_bit_1 a08(
		.A2XG_(A2XG_),
		.PONEX(PONEX),
		.MONEX(MONEX),
		.TWOX(TWOX),
		.CLXC(CLXC),
		.CUG(CUG),
		.WYLOG_(WYLOG_),
		.WYDLOG_(WYDLOG_),
		.WYDG_(WYDG_),
		.CI01_(CI01_),
		.RULOG_(RULOG_),
		.WAG_(WAG_),
		.CAG(CAG),
		.WALSG_(WALSG_),
		.RAG_(RAG_),
		.WLG_(WLG_),
		.G2LSG_(G2LSG_),
		.CLG1G(CLG1G),
		.RLG_(RLG_),
		.WQG_(WQG_),
		.CQG(CQG),
		.RQG_(RQG_),
		.WZG_(WZG_),
		.CZG(CZG),
		.RZG_(RZG_),
		.WBG_(WBG_),
		.CBG(CBG),
		.RBLG_(RBLG_),
		.RCG_(RCG_),
		.WG3G_(WG3G_),
		.WG4G_(WG4G_),
		.L2GDG_(L2GDG_),
		.MCRO_(MCRO_),
		.WG1G_(WG1G_),
		.CGG(CGG),
		.RGG_(RGG_),
		.WL05_(WL05_),
		.WL06_(WL06_),
		.WL16_(WL16_),
		.SA01(SA01),
		.SA02(SA02),
		.SA03(SA03),
		.SA04(SA04),
		.G01ED(G01ED),
		.G02ED(G02ED),
		.G03ED(G03ED),
		.G04ED(G04ED),
		.RB1(RB1),
		.R15(R15),
		.R1C(R1C),
		.RB2(RB2),
		.CH01(CH01),
		.CH02(CH02),
		.CH03(CH03),
		.CH04(CH04),
		.G05_(G05_),
		.G06_(G06_),
		.G07_(G07_),
		.MDT01(MDT01),
		.MDT02(MDT02),
		.MDT03(MDT03),
		.MDT04(MDT04),
		.XUY05_(XUY05_),
		.XUY06_(XUY06_),
		.WHOMP(WHOMP),
		.WHOMPA(WHOMPA),
		.CAD1(CAD1),
		.CAD2(CAD2),
		.CAD3(CAD3),
		.CAD4(CAD4),
		.BBK1(BBK1),
		.BBK2(BBK2),
		.BBK3(BBK3),
		.RB1F(RB1F),
		.R6(R6),
		.RPTAD3(RPTAD3),
		.RPTAD4(RPTAD4),
		.WL01(WL01),
		.WL01_(WL01_),
		.MWL01(MWL01),
		.WL02(WL02),
		.WL02_(WL02_),
		.MWL02(MWL02),
		.WL03(WL03),
		.WL03_(WL03_),
		.MWL03(MWL03),
		.WL04(WL04),
		.WL04_(WL04_),
		.MWL04(MWL04),
		.CO06(CO06),
		.CI05_(CI05_),
		.XUY01_(XUY01_),
		.XUY02_(XUY02_),
		.SUMA01_(SUMA01_),
		.SUMB01_(SUMB01_),
		.SUMA02_(SUMA02_),
		.SUMB02_(SUMB02_),
		.SUMA03_(SUMA03_),
		.SUMB03_(SUMB03_),
		.G01(G01),
		.G01_(G01_),
		.GEM01(GEM01),
		.G02(G02),
		.GEM02(GEM02),
		.G03(G03),
		.GEM03(GEM03),
		.G04(G04),
		.GEM04(GEM04),
		.L01_(L01_),
		.L02_(L02_),
		.L04_(L04_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a09_four_bit_2 a09(
		.A2XG_(A2XG_),
		.MONEX(MONEX),
		.CLXC(CLXC),
		.CUG(CUG),
		.WYLOG_(WYLOG_),
		.WYDG_(WYDG_),
		.CI05_(CI05_),
		.CO06(CO06),
		.RULOG_(RULOG_),
		.WAG_(WAG_),
		.CAG(CAG),
		.WALSG_(WALSG_),
		.RAG_(RAG_),
		.WLG_(WLG_),
		.G2LSG_(G2LSG_),
		.CLG1G(CLG1G),
		.RLG_(RLG_),
		.WQG_(WQG_),
		.CQG(CQG),
		.RQG_(RQG_),
		.WZG_(WZG_),
		.CZG(CZG),
		.RZG_(RZG_),
		.WBG_(WBG_),
		.CBG(CBG),
		.RBLG_(RBLG_),
		.RCG_(RCG_),
		.WG3G_(WG3G_),
		.WG4G_(WG4G_),
		.L2GDG_(L2GDG_),
		.WG1G_(WG1G_),
		.CGG(CGG),
		.RGG_(RGG_),
		.L04_(L04_),
		.WL04_(WL04_),
		.WL09_(WL09_),
		.WL10_(WL10_),
		.SA05(SA05),
		.SA06(SA06),
		.SA07(SA07),
		.SA08(SA08),
		.G05ED(G05ED),
		.G06ED(G06ED),
		.G07ED(G07ED),
		.R1C(R1C),
		.CH05(CH05),
		.CH06(CH06),
		.CH07(CH07),
		.CH08(CH08),
		.G09_(G09_),
		.G10_(G10_),
		.G11_(G11_),
		.MDT05(MDT05),
		.MDT06(MDT06),
		.MDT07(MDT07),
		.MDT08(MDT08),
		.XUY09_(XUY09_),
		.XUY10_(XUY10_),
		.WHOMP(WHOMP),
		.CAD5(CAD5),
		.CAD6(CAD6),
		.RPTAD5(RPTAD5),
		.RPTAD6(RPTAD6),
		.WL05(WL05),
		.WL05_(WL05_),
		.MWL05(MWL05),
		.WL06(WL06),
		.WL06_(WL06_),
		.MWL06(MWL06),
		.WL07(WL07),
		.WL07_(WL07_),
		.MWL07(MWL07),
		.WL08(WL08),
		.WL08_(WL08_),
		.MWL08(MWL08),
		.CI09_(CI09_),
		.CO10(CO10),
		.XUY05_(XUY05_),
		.XUY06_(XUY06_),
		.L08_(L08_),
		.G05(G05),
		.G05_(G05_),
		.GEM05(GEM05),
		.G06(G06),
		.G06_(G06_),
		.GEM06(GEM06),
		.G07(G07),
		.G07_(G07_),
		.GEM07(GEM07),
		.G08(G08),
		.GEM08(GEM08),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a10_four_bit_3 a10(
		.A2XG_(A2XG_),
		.MONEX(MONEX),
		.CLXC(CLXC),
		.CUG(CUG),
		.WYLOG_(WYLOG_),
		.WYDG_(WYDG_),
		.CI09_(CI09_),
		.CO10(CO10),
		.RULOG_(RULOG_),
		.WAG_(WAG_),
		.CAG(CAG),
		.WALSG_(WALSG_),
		.RAG_(RAG_),
		.WLG_(WLG_),
		.G2LSG_(G2LSG_),
		.CLG1G(CLG1G),
		.RLG_(RLG_),
		.WQG_(WQG_),
		.CQG(CQG),
		.RQG_(RQG_),
		.WZG_(WZG_),
		.CZG(CZG),
		.RZG_(RZG_),
		.WBG_(WBG_),
		.CBG(CBG),
		.RBLG_(RBLG_),
		.RBHG_(RBHG_),
		.RCG_(RCG_),
		.WG3G_(WG3G_),
		.WG4G_(WG4G_),
		.L2GDG_(L2GDG_),
		.WG1G_(WG1G_),
		.CGG(CGG),
		.RGG_(RGG_),
		.WL08_(WL08_),
		.WL13_(WL13_),
		.WL14_(WL14_),
		.SA09(SA09),
		.SA10(SA10),
		.SA11(SA11),
		.SA12(SA12),
		.R1C(R1C),
		.L08_(L08_),
		.CH09(CH09),
		.CH10(CH10),
		.CH11(CH11),
		.CH12(CH12),
		.G13_(G13_),
		.G14_(G14_),
		.G15_(G15_),
		.MDT09(MDT09),
		.MDT10(MDT10),
		.MDT11(MDT11),
		.MDT12(MDT12),
		.XUY13_(XUY13_),
		.XUY14_(XUY14_),
		.WHOMP(WHOMP),
		.WHOMPA(WHOMPA),
		.RL09_(RL09_),
		.RL10_(RL10_),
		.RL11_(RL11_),
		.RL12_(RL12_),
		.A10_1_RL09_(A10_1_RL09_),
		.A10_2_RL09_(A10_2_RL09_),
		.A10_3_RL09_(A10_3_RL09_),
		.A10_4_RL09_(A10_4_RL09_),
		.A10_1_RL10_(A10_1_RL10_),
		.A10_2_RL10_(A10_2_RL10_),
		.A10_3_RL10_(A10_3_RL10_),
		.A10_4_RL10_(A10_4_RL10_),
		.A10_1_RL11_(A10_1_RL11_),
		.A10_2_RL11_(A10_2_RL11_),
		.A10_3_RL11_(A10_3_RL11_),
		.A10_4_RL11_(A10_4_RL11_),
		.A10_1_RL12_(A10_1_RL12_),
		.A10_2_RL12_(A10_2_RL12_),
		.A10_3_RL12_(A10_3_RL12_),
		.A10_4_RL12_(A10_4_RL12_),
		.WL09(WL09),
		.WL09_(WL09_),
		.MWL09(MWL09),
		.WL10(WL10),
		.WL10_(WL10_),
		.MWL10(MWL10),
		.WL11(WL11),
		.WL11_(WL11_),
		.MWL11(MWL11),
		.WL12(WL12),
		.WL12_(WL12_),
		.MWL12(MWL12),
		.CI13_(CI13_),
		.CO14(CO14),
		.XUY09_(XUY09_),
		.XUY10_(XUY10_),
		.SUMA11_(SUMA11_),
		.SUMA12_(SUMA12_),
		.SUMB11_(SUMB11_),
		.SUMB12_(SUMB12_),
		.L12_(L12_),
		.G09(G09),
		.G09_(G09_),
		.GEM09(GEM09),
		.G10(G10),
		.G10_(G10_),
		.GEM10(GEM10),
		.G11(G11),
		.G11_(G11_),
		.GEM11(GEM11),
		.G12(G12),
		.GEM12(GEM12),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a11_four_bit_4 a11(
		.A2XG_(A2XG_),
		.MONEX(MONEX),
		.BXVX(BXVX),
		.CLXC(CLXC),
		.CUG(CUG),
		.WYHIG_(WYHIG_),
		.WYDG_(WYDG_),
		.CI13_(CI13_),
		.CO14(CO14),
		.RULOG_(RULOG_),
		.RUG_(RUG_),
		.WAG_(WAG_),
		.CAG(CAG),
		.WALSG_(WALSG_),
		.RAG_(RAG_),
		.WLG_(WLG_),
		.G2LSG_(G2LSG_),
		.G16SW_(G16SW_),
		.CLG1G(CLG1G),
		.CLG2G(CLG2G),
		.RLG_(RLG_),
		.WQG_(WQG_),
		.CQG(CQG),
		.RQG_(RQG_),
		.WZG_(WZG_),
		.CZG(CZG),
		.RZG_(RZG_),
		.WBG_(WBG_),
		.CBG(CBG),
		.RBHG_(RBHG_),
		.RCG_(RCG_),
		.WG2G_(WG2G_),
		.WG3G_(WG3G_),
		.WG4G_(WG4G_),
		.WG5G_(WG5G_),
		.L2GDG_(L2GDG_),
		.WG1G_(WG1G_),
		.ONE(ONE),
		.CGG(CGG),
		.RGG_(RGG_),
		.WL01_(WL01_),
		.WL02_(WL02_),
		.WL12_(WL12_),
		.SA13(SA13),
		.SA14(SA14),
		.SA16(SA16),
		.R1C(R1C),
		.CH13(CH13),
		.CH14(CH14),
		.CH16(CH16),
		.G01_(G01_),
		.L12_(L12_),
		.L16_(L16_),
		.US2SG(US2SG),
		.MDT13(MDT13),
		.MDT14(MDT14),
		.MDT15(MDT15),
		.MDT16(MDT16),
		.XUY01_(XUY01_),
		.XUY02_(XUY02_),
		.WHOMPA(WHOMPA),
		.RL13_(RL13_),
		.RL14_(RL14_),
		.RL15_(RL15_),
		.RL16_(RL16_),
		.Z15_(Z15_),
		.Z16_(Z16_),
		.A11_1_RL13_(A11_1_RL13_),
		.A11_2_RL13_(A11_2_RL13_),
		.A11_3_RL13_(A11_3_RL13_),
		.A11_4_RL13_(A11_4_RL13_),
		.A11_1_RL14_(A11_1_RL14_),
		.A11_2_RL14_(A11_2_RL14_),
		.A11_3_RL14_(A11_3_RL14_),
		.A11_4_RL14_(A11_4_RL14_),
		.A11_1_RL15_(A11_1_RL15_),
		.A11_2_RL15_(A11_2_RL15_),
		.A11_3_RL15_(A11_3_RL15_),
		.A11_4_RL15_(A11_4_RL15_),
		.A11_1_RL16_(A11_1_RL16_),
		.A11_2_RL16_(A11_2_RL16_),
		.A11_3_RL16_(A11_3_RL16_),
		.A11_4_RL16_(A11_4_RL16_),
		.A11_1_L16_(A11_1_L16_),
		.A11_1_Z15_(A11_1_Z15_),
		.A11_1_Z16_(A11_1_Z16_),
		.WL13(WL13),
		.WL13_(WL13_),
		.MWL13(MWL13),
		.WL14(WL14),
		.WL14_(WL14_),
		.MWL14(MWL14),
		.WL15(WL15),
		.WL15_(WL15_),
		.MWL15(MWL15),
		.WL16(WL16),
		.WL16_(WL16_),
		.MWL16(MWL16),
		.EAC_(EAC_),
		.XUY13_(XUY13_),
		.XUY14_(XUY14_),
		.SUMA13_(SUMA13_),
		.SUMA14_(SUMA14_),
		.SUMA15_(SUMA15_),
		.SUMA16_(SUMA16_),
		.SUMB13_(SUMB13_),
		.SUMB14_(SUMB14_),
		.SUMB15_(SUMB15_),
		.SUMB16_(SUMB16_),
		.L15_(L15_),
		.G13(G13),
		.G13_(G13_),
		.GEM13(GEM13),
		.G14(G14),
		.G14_(G14_),
		.GEM14(GEM14),
		.G15(G15),
		.G15_(G15_),
		.G16(G16),
		.GEM16(GEM16),
		.A15_(A15_),
		.A16_(A16_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a12_parity_s_register a12(
		.G01(G01),
		.G02(G02),
		.G03(G03),
		.G04(G04),
		.G05(G05),
		.G06(G06),
		.G07(G07),
		.G08(G08),
		.G09(G09),
		.G10(G10),
		.G11(G11),
		.G12(G12),
		.G13(G13),
		.G14(G14),
		.G15(G15),
		.G16(G16),
		.TSUDO_(TSUDO_),
		.T7PHS4_(T7PHS4_),
		.T12A(T12A),
		.RAD(RAD),
		.CGG(CGG),
		.MONPAR(MONPAR),
		.SAP(SAP),
		.SCAD(SCAD),
		.GOJAM(GOJAM),
		.TPARG_(TPARG_),
		.n8XP5(n8XP5),
		.EXTPLS(EXTPLS),
		.RELPLS(RELPLS),
		.INHPLS(INHPLS),
		.GEQZRO_(GEQZRO_),
		.RADRZ(RADRZ),
		.RADRG(RADRG),
		.PC15_(PC15_),
		.MGP_(MGP_),
		.GEMP(GEMP),
		.MSP(MSP),
		.PALE(PALE),
		.MPAL_(MPAL_),
		.WL01_(WL01_),
		.WL02_(WL02_),
		.WL03_(WL03_),
		.WL04_(WL04_),
		.WL05_(WL05_),
		.WL06_(WL06_),
		.WL07_(WL07_),
		.WL08_(WL08_),
		.WL09_(WL09_),
		.WL10_(WL10_),
		.WL11_(WL11_),
		.WL12_(WL12_),
		.WL13_(WL13_),
		.WL14_(WL14_),
		.WEDOPG_(WEDOPG_),
		.WSG_(WSG_),
		.CSG(CSG),
		.G01ED(G01ED),
		.G02ED(G02ED),
		.G03ED(G03ED),
		.G04ED(G04ED),
		.G05ED(G05ED),
		.G06ED(G06ED),
		.G07ED(G07ED),
		.S01(S01),
		.S01_(S01_),
		.S02(S02),
		.S02_(S02_),
		.S03(S03),
		.S03_(S03_),
		.S04(S04),
		.S04_(S04_),
		.S05(S05),
		.S05_(S05_),
		.S06(S06),
		.S06_(S06_),
		.S07(S07),
		.S07_(S07_),
		.S08(S08),
		.S08_(S08_),
		.S09(S09),
		.S09_(S09_),
		.S10(S10),
		.S10_(S10_),
		.S11(S11),
		.S11_(S11_),
		.S12(S12),
		.S12_(S12_),
		.OCTAD2(OCTAD2),
		.T02_(T02_),
		.XB0_(XB0_),
		.XB1_(XB1_),
		.XB2_(XB2_),
		.XB3_(XB3_),
		.CYR_(CYR_),
		.SR_(SR_),
		.CYL_(CYL_),
		.EDOP_(EDOP_),
		.GINH(GINH),
		.SUMA16_(SUMA16_),
		.SUMB16_(SUMB16_),
		.G16SW_(G16SW_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a13_alarms a13(
		.MSTRT(MSTRT),
		.F05A_(F05A_),
		.F05B_(F05B_),
		.F07A(F07A),
		.F07B_(F07B_),
		.F08B(F08B),
		.F10A_(F10A_),
		.F10B(F10B),
		.F12B(F12B),
		.F14B(F14B),
		.FS01(FS01),
		.FS09(FS09),
		.FS10(FS10),
		.FS13(FS13),
		.FS14(FS14),
		.PIPAFL(PIPAFL),
		.IIP(IIP),
		.IIP_(IIP_),
		.TC0(TC0),
		.TCF0(TCF0),
		.INKL(INKL),
		.T03_(T03_),
		.T04_(T04_),
		.T09_(T09_),
		.T10(T10),
		.T10_(T10_),
		.PALE(PALE),
		.WATCHP(WATCHP),
		.NHALGA(NHALGA),
		.T1P(T1P),
		.T2P(T2P),
		.T3P(T3P),
		.T4P(T4P),
		.T5P(T5P),
		.T6P(T6P),
		.CDUXP(CDUXP),
		.CDUXM(CDUXM),
		.CDUYP(CDUYP),
		.CDUYM(CDUYM),
		.CDUZP(CDUZP),
		.CDUZM(CDUZM),
		.TRNP(TRNP),
		.TRNM(TRNM),
		.SHAFTP(SHAFTP),
		.SHAFTM(SHAFTM),
		.PIPXP(PIPXP),
		.PIPXM(PIPXM),
		.PIPYP(PIPYP),
		.PIPYM(PIPYM),
		.PIPZP(PIPZP),
		.PIPZM(PIPZM),
		.BMAGXP(BMAGXP),
		.BMAGXM(BMAGXM),
		.BMAGYP(BMAGYP),
		.BMAGYM(BMAGYM),
		.BMAGZP(BMAGZP),
		.BMAGZM(BMAGZM),
		.INLNKP(INLNKP),
		.INLNKM(INLNKM),
		.RNRADP(RNRADP),
		.RNRADM(RNRADM),
		.GYROD(GYROD),
		.CDUXD(CDUXD),
		.CDUYD(CDUYD),
		.CDUZD(CDUZD),
		.TRUND(TRUND),
		.SHAFTD(SHAFTD),
		.THRSTD(THRSTD),
		.EMSD(EMSD),
		.OTLNKM(OTLNKM),
		.ALTM(ALTM),
		.PSEUDO(PSEUDO),
		.NISQL_(NISQL_),
		.CTROR(CTROR),
		.VFAIL(VFAIL),
		.NHVFAL(NHVFAL),
		.STNDBY_(STNDBY_),
		.DBLTST(DBLTST),
		.n2FSFAL(n2FSFAL),
		.SB0_(SB0_),
		.SB2_(SB2_),
		.ALTEST(ALTEST),
		.P02(P02),
		.P02_(P02_),
		.P03(P03),
		.P03_(P03_),
		.CT_(CT_),
		.SCAFAL(SCAFAL),
		.FLTOUT(FLTOUT),
		.CCH33(CCH33),
		.TEMPIN(TEMPIN),
		.TMPOUT(TMPOUT),
		.STRT2(STRT2),
		.SBY(SBY),
		.GOJAM(GOJAM),
		.ERRST(ERRST),
		.DLKRPT(DLKRPT),
		.DRPRST(DRPRST),
		.MSTRTP(MSTRTP),
		.MPIPAL_(MPIPAL_),
		.MRPTAL_(MRPTAL_),
		.MTCAL_(MTCAL_),
		.ALGA(ALGA),
		.MCTRAL_(MCTRAL_),
		.MVFAIL_(MVFAIL_),
		.SCAS10(SCAS10),
		.FILTIN(FILTIN),
		.SYNC4_(SYNC4_),
		.SYNC14_(SYNC14_),
		.MSCAFL_(MSCAFL_),
		.MSCDBL_(MSCDBL_),
		.MWARNF_(MWARNF_),
		.AGCWAR(AGCWAR),
		.CGCWAR(CGCWAR),
		.TMPCAU(TMPCAU),
		.MOSCAL_(MOSCAL_),
		.OSCALM(OSCALM),
		.RESTRT(RESTRT),
		.STRT1(STRT1),
		.DLKPLS(DLKPLS),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a14_memory_timing_addressing a14(
		.PHS2_(PHS2_),
		.PHS3_(PHS3_),
		.PHS4_(PHS4_),
		.T01(T01),
		.T01_(T01_),
		.T02_(T02_),
		.T03(T03),
		.T03_(T03_),
		.T04_(T04_),
		.T05(T05),
		.T05_(T05_),
		.T06(T06),
		.T06_(T06_),
		.T07(T07),
		.T07_(T07_),
		.T08(T08),
		.T08_(T08_),
		.T09(T09),
		.T10(T10),
		.T10_(T10_),
		.T11(T11),
		.T12_(T12_),
		.T12A(T12A),
		.S01(S01),
		.S01_(S01_),
		.S02(S02),
		.S02_(S02_),
		.S03(S03),
		.S03_(S03_),
		.S04(S04),
		.S04_(S04_),
		.S05(S05),
		.S05_(S05_),
		.S06(S06),
		.S06_(S06_),
		.S07(S07),
		.S07_(S07_),
		.S08(S08),
		.S08_(S08_),
		.S09(S09),
		.S09_(S09_),
		.S10_(S10_),
		.S11(S11),
		.S12(S12),
		.EB9(EB9),
		.EB10(EB10),
		.EB11_(EB11_),
		.TIMR(TIMR),
		.GOJAM(GOJAM),
		.GOJ1(GOJ1),
		.TCSAJ3(TCSAJ3),
		.DV3764(DV3764),
		.MP1(MP1),
		.MNHSBF(MNHSBF),
		.INOUT(INOUT),
		.CHINC(CHINC),
		.MAMU(MAMU),
		.MYCLMP(MYCLMP),
		.SCAD(SCAD),
		.IHENV(IHENV),
		.SETAB(SETAB),
		.SETCD(SETCD),
		.STBF(STBF),
		.SBF(SBF),
		.RESETA(RESETA),
		.RESETB(RESETB),
		.RESETC(RESETC),
		.RESETD(RESETD),
		.STRGAT(STRGAT),
		.CLROPE(CLROPE),
		.WEX(WEX),
		.WEY(WEY),
		.RSTKX_(RSTKX_),
		.RSTKY_(RSTKY_),
		.ZID(ZID),
		.SETEK(SETEK),
		.REX(REX),
		.REY(REY),
		.SBE(SBE),
		.STBE(STBE),
		.TPARG_(TPARG_),
		.XB0(XB0),
		.XB0_(XB0_),
		.XB0E(XB0E),
		.XB1(XB1),
		.XB1_(XB1_),
		.XB1E(XB1E),
		.XB2(XB2),
		.XB2_(XB2_),
		.XB2E(XB2E),
		.XB3(XB3),
		.XB3_(XB3_),
		.XB3E(XB3E),
		.XB4(XB4),
		.XB4_(XB4_),
		.XB4E(XB4E),
		.XB5(XB5),
		.XB5_(XB5_),
		.XB5E(XB5E),
		.XB6(XB6),
		.XB6_(XB6_),
		.XB6E(XB6E),
		.XB7(XB7),
		.XB7_(XB7_),
		.XB7E(XB7E),
		.YB0_(YB0_),
		.YB0E(YB0E),
		.YB1E(YB1E),
		.YB2E(YB2E),
		.YB3E(YB3E),
		.XT0_(XT0_),
		.XT0E(XT0E),
		.XT1_(XT1_),
		.XT1E(XT1E),
		.XT2_(XT2_),
		.XT2E(XT2E),
		.XT3_(XT3_),
		.XT3E(XT3E),
		.XT4_(XT4_),
		.XT4E(XT4E),
		.XT5_(XT5_),
		.XT5E(XT5E),
		.XT6_(XT6_),
		.XT6E(XT6E),
		.XT7E(XT7E),
		.YT0_(YT0_),
		.YT0E(YT0E),
		.YT1E(YT1E),
		.YT2E(YT2E),
		.YT3E(YT3E),
		.YT4E(YT4E),
		.YT5E(YT5E),
		.YT6E(YT6E),
		.YT7E(YT7E),
		.IL01(IL01),
		.IL01_(IL01_),
		.IL02(IL02),
		.IL02_(IL02_),
		.IL03(IL03),
		.IL03_(IL03_),
		.IL04(IL04),
		.IL04_(IL04_),
		.IL05(IL05),
		.IL05_(IL05_),
		.IL06(IL06),
		.IL06_(IL06_),
		.IL07(IL07),
		.IL07_(IL07_),
		.ILP(ILP),
		.ILP_(ILP_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a15_rupt_service a15(
		.WL01_(WL01_),
		.WL02_(WL02_),
		.WL03_(WL03_),
		.WL09_(WL09_),
		.WL10_(WL10_),
		.WL11_(WL11_),
		.WL12_(WL12_),
		.WL13_(WL13_),
		.WL14_(WL14_),
		.WL16_(WL16_),
		.SUMA01_(SUMA01_),
		.SUMB01_(SUMB01_),
		.SUMA02_(SUMA02_),
		.SUMB02_(SUMB02_),
		.SUMA03_(SUMA03_),
		.SUMB03_(SUMB03_),
		.SUMA11_(SUMA11_),
		.SUMB11_(SUMB11_),
		.SUMA12_(SUMA12_),
		.SUMB12_(SUMB12_),
		.SUMA13_(SUMA13_),
		.SUMB13_(SUMB13_),
		.SUMA14_(SUMA14_),
		.SUMB14_(SUMB14_),
		.SUMA16_(SUMA16_),
		.SUMB16_(SUMB16_),
		.WFBG_(WFBG_),
		.CFBG(CFBG),
		.RFBG_(RFBG_),
		.WEBG_(WEBG_),
		.CEBG(CEBG),
		.REBG_(REBG_),
		.WBBEG_(WBBEG_),
		.U2BBKG_(U2BBKG_),
		.RBBEG_(RBBEG_),
		.RSTRT(RSTRT),
		.S10(S10),
		.S10_(S10_),
		.S11_(S11_),
		.S12_(S12_),
		.E5(E5),
		.E6(E6),
		.E7_(E7_),
		.XB0_(XB0_),
		.XB1_(XB1_),
		.XB4_(XB4_),
		.XB6_(XB6_),
		.XB7_(XB7_),
		.XT0_(XT0_),
		.XT1_(XT1_),
		.XT2_(XT2_),
		.XT3_(XT3_),
		.XT4_(XT4_),
		.XT5_(XT5_),
		.T10(T10),
		.RADRPT(RADRPT),
		.GOJAM(GOJAM),
		.HNDRPT(HNDRPT),
		.WOVR(WOVR),
		.OVF_(OVF_),
		.KRPT(KRPT),
		.CA2_(CA2_),
		.CA3_(CA3_),
		.ZOUT_(ZOUT_),
		.KYRPT1(KYRPT1),
		.KYRPT2(KYRPT2),
		.MKRPT(MKRPT),
		.UPRUPT(UPRUPT),
		.DLKPLS(DLKPLS),
		.RRPA(RRPA),
		.STRGAT(STRGAT),
		.STRT2(STRT2),
		.A15_1_RL09_(A15_1_RL09_),
		.A15_1_RL10_(A15_1_RL10_),
		.A15_1_RL11_(A15_1_RL11_),
		.A15_1_RL12_(A15_1_RL12_),
		.A15_1_RL13_(A15_1_RL13_),
		.A15_1_RL14_(A15_1_RL14_),
		.A15_1_RL15_(A15_1_RL15_),
		.A15_1_RL16_(A15_1_RL16_),
		.EB9(EB9),
		.EB10(EB10),
		.EB11_(EB11_),
		.BBK1(BBK1),
		.BBK2(BBK2),
		.BBK3(BBK3),
		.RPTAD3(RPTAD3),
		.RPTAD4(RPTAD4),
		.RPTAD5(RPTAD5),
		.RPTAD6(RPTAD6),
		.RUPTOR_(RUPTOR_),
		.T6RPT(T6RPT),
		.WOVR_(WOVR_),
		.STR412(STR412),
		.STR311(STR311),
		.STR210(STR210),
		.STR19(STR19),
		.STR14(STR14),
		.STR58(STR58),
		.STR912(STR912),
		.LOMOD(LOMOD),
		.HIMOD(HIMOD),
		.ROPER(ROPER),
		.ROPES(ROPES),
		.ROPET(ROPET),
		.DRPRST(DRPRST),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a16_inout_i a16(
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL09_(CHWL09_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CHWL13_(CHWL13_),
		.CHWL14_(CHWL14_),
		.GOJAM(GOJAM),
		.XB2_(XB2_),
		.XB5_(XB5_),
		.XB6_(XB6_),
		.XT0_(XT0_),
		.XT1_(XT1_),
		.WCHG_(WCHG_),
		.CCHG_(CCHG_),
		.CH0705(CH0705),
		.CH0706(CH0706),
		.CH0707(CH0707),
		.CH1501(CH1501),
		.CH1502(CH1502),
		.CH1503(CH1503),
		.CH1504(CH1504),
		.CH3201(CH3201),
		.CH3202(CH3202),
		.CH3203(CH3203),
		.CH3204(CH3204),
		.CH3205(CH3205),
		.CH3206(CH3206),
		.CH3207(CH3207),
		.CH3208(CH3208),
		.WCH11_(WCH11_),
		.CCH11(CCH11),
		.RCH11_(RCH11_),
		.FLASH(FLASH),
		.FLASH_(FLASH_),
		.RCpXpP(RCpXpP),
		.RCmXmP(RCmXmP),
		.RCmXpP(RCmXpP),
		.RCpXmP(RCpXmP),
		.RCpXpY(RCpXpY),
		.RCmXmY(RCmXmY),
		.RCmXpY(RCmXpY),
		.RCpXmY(RCpXmY),
		.RCpZpR(RCpZpR),
		.RCmZmR(RCmZmR),
		.RCmZpR(RCmZpR),
		.RCpZmR(RCpZmR),
		.RCpYpR(RCpYpR),
		.RCmYmR(RCmYmR),
		.RCmYpR(RCmYpR),
		.RCpYmR(RCpYmR),
		.A16_1_CHOR01_(A16_1_CHOR01_),
		.A16_2_CHOR01_(A16_2_CHOR01_),
		.A16_1_CHOR02_(A16_1_CHOR02_),
		.A16_2_CHOR02_(A16_2_CHOR02_),
		.A16_1_CHOR03_(A16_1_CHOR03_),
		.A16_2_CHOR03_(A16_2_CHOR03_),
		.A16_1_CHOR04_(A16_1_CHOR04_),
		.A16_2_CHOR04_(A16_2_CHOR04_),
		.A16_1_CHOR05_(A16_1_CHOR05_),
		.A16_2_CHOR05_(A16_2_CHOR05_),
		.A16_1_CHOR06_(A16_1_CHOR06_),
		.A16_2_CHOR06_(A16_2_CHOR06_),
		.A16_1_CHOR07_(A16_1_CHOR07_),
		.A16_2_CHOR07_(A16_2_CHOR07_),
		.A16_1_CHOR08_(A16_1_CHOR08_),
		.ZOPCDU(ZOPCDU),
		.ENEROP(ENEROP),
		.STARON(STARON),
		.COARSE(COARSE),
		.ZIMCDU(ZIMCDU),
		.ENERIM(ENERIM),
		.S4BTAK(S4BTAK),
		.ZEROPT(ZEROPT),
		.DISDAC(DISDAC),
		.ISSWAR(ISSWAR),
		.COMACT(COMACT),
		.UPLACT(UPLACT),
		.TMPOUT(TMPOUT),
		.KYRLS(KYRLS),
		.VNFLSH(VNFLSH),
		.OPEROR(OPEROR),
		.WCH12_(WCH12_),
		.CCH12(CCH12),
		.RCH12_(RCH12_),
		.CH1208(CH1208),
		.CH1209(CH1209),
		.CH1210(CH1210),
		.CH1211(CH1211),
		.CH1212(CH1212),
		.CH1213(CH1213),
		.CH1214(CH1214),
		.OT1207(OT1207),
		.OT1207_(OT1207_),
		.TVCNAB(TVCNAB),
		.MROLGT(MROLGT),
		.S4BSEQ(S4BSEQ),
		.S4BOFF(S4BOFF),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a17_inout_ii a17(
		.F05A_(F05A_),
		.F05B_(F05B_),
		.F05D(F05D),
		.XT1_(XT1_),
		.XT3_(XT3_),
		.XB0_(XB0_),
		.XB1_(XB1_),
		.XB2_(XB2_),
		.XB3_(XB3_),
		.WCHG_(WCHG_),
		.CCHG_(CCHG_),
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL09_(CHWL09_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CHWL13_(CHWL13_),
		.CHWL14_(CHWL14_),
		.CHWL16_(CHWL16_),
		.WCH13_(WCH13_),
		.TPOR_(TPOR_),
		.GOJAM(GOJAM),
		.CH1113(CH1113),
		.CH1213(CH1213),
		.CH1214(CH1214),
		.CH1301(CH1301),
		.CH1302(CH1302),
		.CH1303(CH1303),
		.CH1304(CH1304),
		.CH1305(CH1305),
		.CH1306(CH1306),
		.CH1307(CH1307),
		.CH1308(CH1308),
		.CH1309(CH1309),
		.CH1310(CH1310),
		.CH1311(CH1311),
		.CH1316(CH1316),
		.CH1401(CH1401),
		.CH1402(CH1402),
		.CH1403(CH1403),
		.CH1404(CH1404),
		.CH1405(CH1405),
		.CH1406(CH1406),
		.CH1407(CH1407),
		.CH1408(CH1408),
		.CH1409(CH1409),
		.CH1410(CH1410),
		.CH1411(CH1411),
		.CH1412(CH1412),
		.CH1413(CH1413),
		.CH1414(CH1414),
		.CH1416(CH1416),
		.ULLTHR(ULLTHR),
		.SMSEPR(SMSEPR),
		.SPSRDY(SPSRDY),
		.S4BSAB(S4BSAB),
		.LFTOFF(LFTOFF),
		.GUIREL(GUIREL),
		.OPCDFL(OPCDFL),
		.IN3008(IN3008),
		.IMUOPR(IMUOPR),
		.CTLSAT(CTLSAT),
		.IMUCAG(IMUCAG),
		.CDUFAL(CDUFAL),
		.IMUFAL(IMUFAL),
		.ISSTOR(ISSTOR),
		.TEMPIN(TEMPIN),
		.IN3301(IN3301),
		.RRPONA(RRPONA),
		.RRRLSC(RRRLSC),
		.ZEROP(ZEROP),
		.OPMSW2(OPMSW2),
		.OPMSW3(OPMSW3),
		.STRPRS(STRPRS),
		.LVDAGD(LVDAGD),
		.LRRLSC(LRRLSC),
		.CH3310(CH3310),
		.CH3312(CH3312),
		.PIPAFL(PIPAFL),
		.AGCWAR(AGCWAR),
		.OSCALM(OSCALM),
		.MANRpP(MANRpP),
		.MANRmP(MANRmP),
		.MANRpY(MANRpY),
		.MANRmY(MANRmY),
		.MANRpR(MANRpR),
		.MANRmR(MANRmR),
		.TRANpX(TRANpX),
		.TRANmX(TRANmX),
		.TRANpY(TRANpY),
		.TRANmY(TRANmY),
		.TRANpZ(TRANpZ),
		.TRANmZ(TRANmZ),
		.HOLFUN(HOLFUN),
		.FREFUN(FREFUN),
		.GCAPCL(GCAPCL),
		.MNIMpP(MNIMpP),
		.MNIMmP(MNIMmP),
		.MNIMpY(MNIMpY),
		.MNIMmY(MNIMmY),
		.MNIMpR(MNIMpR),
		.MNIMmR(MNIMmR),
		.TRST9(TRST9),
		.TRST10(TRST10),
		.PCHGOF(PCHGOF),
		.ROLGOF(ROLGOF),
		.LEMATT(LEMATT),
		.IN3212(IN3212),
		.IN3213(IN3213),
		.IN3214(IN3214),
		.IN3216(IN3216),
		.A17_1_CHOR01_(A17_1_CHOR01_),
		.A17_2_CHOR01_(A17_2_CHOR01_),
		.A17_1_CHOR02_(A17_1_CHOR02_),
		.A17_2_CHOR02_(A17_2_CHOR02_),
		.A17_1_CHOR03_(A17_1_CHOR03_),
		.A17_2_CHOR03_(A17_2_CHOR03_),
		.A17_1_CHOR04_(A17_1_CHOR04_),
		.A17_2_CHOR04_(A17_2_CHOR04_),
		.A17_1_CHOR05_(A17_1_CHOR05_),
		.A17_2_CHOR05_(A17_2_CHOR05_),
		.A17_1_CHOR06_(A17_1_CHOR06_),
		.A17_2_CHOR06_(A17_2_CHOR06_),
		.A17_1_CHOR07_(A17_1_CHOR07_),
		.A17_2_CHOR07_(A17_2_CHOR07_),
		.A17_1_CHOR08_(A17_1_CHOR08_),
		.A17_2_CHOR08_(A17_2_CHOR08_),
		.A17_1_CHOR09_(A17_1_CHOR09_),
		.A17_2_CHOR09_(A17_2_CHOR09_),
		.A17_1_CHOR10_(A17_1_CHOR10_),
		.A17_2_CHOR10_(A17_2_CHOR10_),
		.A17_1_CHOR11_(A17_1_CHOR11_),
		.A17_2_CHOR11_(A17_2_CHOR11_),
		.A17_1_CHOR12_(A17_1_CHOR12_),
		.A17_2_CHOR12_(A17_2_CHOR12_),
		.A17_1_CHOR13_(A17_1_CHOR13_),
		.A17_2_CHOR13_(A17_2_CHOR13_),
		.A17_3_CHOR13_(A17_3_CHOR13_),
		.A17_1_CHOR14_(A17_1_CHOR14_),
		.A17_2_CHOR14_(A17_2_CHOR14_),
		.A17_1_CHOR16_(A17_1_CHOR16_),
		.A17_2_CHOR16_(A17_2_CHOR16_),
		.CH3201(CH3201),
		.CH3202(CH3202),
		.CH3203(CH3203),
		.CH3204(CH3204),
		.CH3205(CH3205),
		.CH3206(CH3206),
		.CH3207(CH3207),
		.CH3208(CH3208),
		.CH3209(CH3209),
		.CH3210(CH3210),
		.RCH33_(RCH33_),
		.CH3313(CH3313),
		.CH3314(CH3314),
		.CH3316(CH3316),
		.HNDRPT(HNDRPT),
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
		.WCH11_(WCH11_),
		.CCH11(CCH11),
		.RCH11_(RCH11_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a18_inout_iii a18(
		.T05(T05),
		.T11(T11),
		.F09A_(F09A_),
		.F09B(F09B),
		.F09B_(F09B_),
		.F09D(F09D),
		.F10A(F10A),
		.F10A_(F10A_),
		.F17A_(F17A_),
		.F17B_(F17B_),
		.SB0_(SB0_),
		.SB2_(SB2_),
		.GOJAM(GOJAM),
		.XT1_(XT1_),
		.XB5_(XB5_),
		.XB6_(XB6_),
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL11_(CHWL11_),
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
		.SBYBUT(SBYBUT),
		.STOP(STOP),
		.ALTEST(ALTEST),
		.WCH13_(WCH13_),
		.CCH13(CCH13),
		.RCH13_(RCH13_),
		.F5ASB2_(F5ASB2_),
		.F5BSB2_(F5BSB2_),
		.GTSET_(GTSET_),
		.GTRST_(GTRST_),
		.RRIN0(RRIN0),
		.RRIN1(RRIN1),
		.LRIN0(LRIN0),
		.LRIN1(LRIN1),
		.CHAT11(CHAT11),
		.CHBT11(CHBT11),
		.CHAT12(CHAT12),
		.CHBT12(CHBT12),
		.CHAT13(CHAT13),
		.CHBT13(CHBT13),
		.CHAT14(CHAT14),
		.CHBT14(CHBT14),
		.CH1111(CH1111),
		.CH1112(CH1112),
		.CH1114(CH1114),
		.CH1116(CH1116),
		.CH1211(CH1211),
		.CH1212(CH1212),
		.CH1216(CH1216),
		.CH3311(CH3311),
		.CH3313(CH3313),
		.CH3314(CH3314),
		.CH3316(CH3316),
		.RCHG_(RCHG_),
		.CHOR11_(CHOR11_),
		.CHOR12_(CHOR12_),
		.CHOR13_(CHOR13_),
		.CHOR14_(CHOR14_),
		.CHOR16_(CHOR16_),
		.DKEND(DKEND),
		.CCH33(CCH33),
		.RCH33_(RCH33_),
		.CH1301(CH1301),
		.CH1302(CH1302),
		.CH1303(CH1303),
		.CH1304(CH1304),
		.CH1311(CH1311),
		.CH1501(CH1501),
		.CH1502(CH1502),
		.CH1503(CH1503),
		.CH1504(CH1504),
		.CH1505(CH1505),
		.CH1601(CH1601),
		.CH1602(CH1602),
		.CH1603(CH1603),
		.CH1604(CH1604),
		.CH1605(CH1605),
		.CH1606(CH1606),
		.CH1607(CH1607),
		.TPOR_(TPOR_),
		.KYRPT1(KYRPT1),
		.KYRPT2(KYRPT2),
		.MKRPT(MKRPT),
		.STNDBY(STNDBY),
		.STNDBY_(STNDBY_),
		.SBY(SBY),
		.SBYLIT(SBYLIT),
		.SBYREL_(SBYREL_),
		.RADRPT(RADRPT),
		.RRRANG(RRRANG),
		.RRRARA(RRRARA),
		.LRXVEL(LRXVEL),
		.LRYVEL(LRYVEL),
		.LRZVEL(LRZVEL),
		.LRRANG(LRRANG),
		.RRSYNC(RRSYNC),
		.LRSYNC(LRSYNC),
		.RNRADP(RNRADP),
		.RNRADM(RNRADM),
		.A18_1_CHOR11_(A18_1_CHOR11_),
		.A18_2_CHOR11_(A18_2_CHOR11_),
		.A18_1_CHOR12_(A18_1_CHOR12_),
		.A18_2_CHOR12_(A18_2_CHOR12_),
		.A18_1_CHOR13_(A18_1_CHOR13_),
		.A18_1_CHOR14_(A18_1_CHOR14_),
		.A18_2_CHOR14_(A18_2_CHOR14_),
		.A18_1_CHOR16_(A18_1_CHOR16_),
		.CH11(CH11),
		.CH12(CH12),
		.CH13(CH13),
		.CH14(CH14),
		.CH16(CH16),
		.END(END),
		.DLKRPT(DLKRPT),
		.CH3312(CH3312),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a19_inout_iv a19(
		.T06_(T06_),
		.F04A(F04A),
		.F05A_(F05A_),
		.F05B_(F05B_),
		.F06B_(F06B_),
		.F07B(F07B),
		.F07C_(F07C_),
		.F07D_(F07D_),
		.F09B_(F09B_),
		.F10A_(F10A_),
		.F10B_(F10B_),
		.FS10(FS10),
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL09_(CHWL09_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CCHG_(CCHG_),
		.WCH11_(WCH11_),
		.CCH11(CCH11),
		.RCH11_(RCH11_),
		.WCH13_(WCH13_),
		.CCH13(CCH13),
		.RCH13_(RCH13_),
		.WCH14_(WCH14_),
		.CCH14(CCH14),
		.RCH14_(RCH14_),
		.RCH33_(RCH33_),
		.SHINC_(SHINC_),
		.CSG(CSG),
		.CA2_(CA2_),
		.CA4_(CA4_),
		.CA5_(CA5_),
		.CA6_(CA6_),
		.CXB0_(CXB0_),
		.CXB7_(CXB7_),
		.XT3_(XT3_),
		.XB3_(XB3_),
		.XB5_(XB5_),
		.XB6_(XB6_),
		.XB7_(XB7_),
		.BR1(BR1),
		.BR1_(BR1_),
		.GTSET(GTSET),
		.GTSET_(GTSET_),
		.GOJAM(GOJAM),
		.GTONE(GTONE),
		.SB0_(SB0_),
		.SB1_(SB1_),
		.SB2(SB2),
		.SB2_(SB2_),
		.WOVR_(WOVR_),
		.OVF_(OVF_),
		.UPL0(UPL0),
		.UPL1(UPL1),
		.BLKUPL_(BLKUPL_),
		.XLNK0(XLNK0),
		.XLNK1(XLNK1),
		.C45R(C45R),
		.POUT_(POUT_),
		.MOUT_(MOUT_),
		.ZOUT_(ZOUT_),
		.CAURST(CAURST),
		.T6ON_(T6ON_),
		.SIGNX(SIGNX),
		.SIGNY(SIGNY),
		.SIGNZ(SIGNZ),
		.GATEX_(GATEX_),
		.GATEY_(GATEY_),
		.GATEZ_(GATEZ_),
		.BMGXP(BMGXP),
		.BMGXM(BMGXM),
		.BMGYP(BMGYP),
		.BMGYM(BMGYM),
		.BMGZP(BMGZP),
		.BMGZM(BMGZM),
		.ALT0(ALT0),
		.ALT1(ALT1),
		.ALRT0(ALRT0),
		.ALRT1(ALRT1),
		.ALTM(ALTM),
		.ALTSNC(ALTSNC),
		.F5ASB0_(F5ASB0_),
		.F5ASB2(F5ASB2),
		.F5ASB2_(F5ASB2_),
		.F5BSB2_(F5BSB2_),
		.OTLNKM(OTLNKM),
		.OTLNK0(OTLNK0),
		.OTLNK1(OTLNK1),
		.T1P(T1P),
		.T2P(T2P),
		.T3P(T3P),
		.T4P(T4P),
		.T5P(T5P),
		.T6P(T6P),
		.INLNKM(INLNKM),
		.INLNKP(INLNKP),
		.CCH33(CCH33),
		.CH3310(CH3310),
		.CH3311(CH3311),
		.CH1305(CH1305),
		.CH1306(CH1306),
		.CH1308(CH1308),
		.CH1309(CH1309),
		.CH1401(CH1401),
		.CH1402(CH1402),
		.CH1403(CH1403),
		.CH1404(CH1404),
		.CH1405(CH1405),
		.CH1406(CH1406),
		.CH1407(CH1407),
		.CH1408(CH1408),
		.CH1409(CH1409),
		.CH1410(CH1410),
		.THRSTD(THRSTD),
		.EMSD(EMSD),
		.THRSTp(THRSTp),
		.THRSTm(THRSTm),
		.EMSp(EMSp),
		.EMSm(EMSm),
		.GYROD(GYROD),
		.GYXP(GYXP),
		.GYXM(GYXM),
		.GYYP(GYYP),
		.GYYM(GYYM),
		.GYZP(GYZP),
		.GYZM(GYZM),
		.GYENAB(GYENAB),
		.GYRSET(GYRSET),
		.GYRRST(GYRRST),
		.FF1109_(FF1109_),
		.FF1110_(FF1110_),
		.FF1111_(FF1111_),
		.FF1112_(FF1112_),
		.CH1109(CH1109),
		.CH1110(CH1110),
		.CH1111(CH1111),
		.CH1112(CH1112),
		.ERRST(ERRST),
		.UPRUPT(UPRUPT),
		.RHCGO(RHCGO),
		.BMAGXP(BMAGXP),
		.BMAGXM(BMAGXM),
		.BMAGYP(BMAGYP),
		.BMAGYM(BMAGYM),
		.BMAGZP(BMAGZP),
		.BMAGZM(BMAGZM),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a20_counter_cell_i a20(
		.BKTF_(BKTF_),
		.RSSB(RSSB),
		.CDUXD(CDUXD),
		.CDUXP(CDUXP),
		.CDUXM(CDUXM),
		.CDUYD(CDUYD),
		.CDUYP(CDUYP),
		.CDUYM(CDUYM),
		.CDUZD(CDUZD),
		.CDUZP(CDUZP),
		.CDUZM(CDUZM),
		.TRUND(TRUND),
		.TRNP(TRNP),
		.TRNM(TRNM),
		.SHAFTD(SHAFTD),
		.SHAFTP(SHAFTP),
		.SHAFTM(SHAFTM),
		.THRSTD(THRSTD),
		.PIPXP(PIPXP),
		.PIPXM(PIPXM),
		.PIPYP(PIPYP),
		.PIPYM(PIPYM),
		.PIPZP(PIPZP),
		.PIPZM(PIPZM),
		.T1P(T1P),
		.T2P(T2P),
		.T3P(T3P),
		.T4P(T4P),
		.T5P(T5P),
		.T6P(T6P),
		.CG26(CG26),
		.XB1(XB1),
		.XB2(XB2),
		.XB3(XB3),
		.XB4(XB4),
		.XB7(XB7),
		.OCTAD2(OCTAD2),
		.OCTAD3(OCTAD3),
		.OCTAD4(OCTAD4),
		.OCTAD6(OCTAD6),
		.CA5_(CA5_),
		.CXB0_(CXB0_),
		.CXB5_(CXB5_),
		.CXB6_(CXB6_),
		.CA2_(CA2_),
		.CA3_(CA3_),
		.CA4_(CA4_),
		.CA6_(CA6_),
		.CXB2_(CXB2_),
		.CXB3_(CXB3_),
		.CXB4_(CXB4_),
		.CXB7_(CXB7_),
		.CG13(CG13),
		.CG23(CG23),
		.C24A(C24A),
		.C25A(C25A),
		.C26A(C26A),
		.C27A(C27A),
		.C30A(C30A),
		.C31A(C31A),
		.C32A(C32A),
		.C32P(C32P),
		.C32M(C32M),
		.C33A(C33A),
		.C33P(C33P),
		.C33M(C33M),
		.C34A(C34A),
		.C34P(C34P),
		.C34M(C34M),
		.C35A(C35A),
		.C35P(C35P),
		.C35M(C35M),
		.C36A(C36A),
		.C36P(C36P),
		.C36M(C36M),
		.C37A(C37A),
		.C37P(C37P),
		.C37M(C37M),
		.C40A(C40A),
		.C40P(C40P),
		.C40M(C40M),
		.C41A(C41A),
		.C41P(C41P),
		.C41M(C41M),
		.C50A(C50A),
		.C51A(C51A),
		.C52A(C52A),
		.C53A(C53A),
		.C54A(C54A),
		.C55A(C55A),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a21_counter_cell_ii a21(
		.C24A(C24A),
		.C25A(C25A),
		.C26A(C26A),
		.C27A(C27A),
		.C30A(C30A),
		.C31A(C31A),
		.C32A(C32A),
		.C33A(C33A),
		.C34A(C34A),
		.C35A(C35A),
		.C36A(C36A),
		.C37A(C37A),
		.C40A(C40A),
		.C41A(C41A),
		.C50A(C50A),
		.C51A(C51A),
		.C52A(C52A),
		.C53A(C53A),
		.C54A(C54A),
		.C55A(C55A),
		.C32P(C32P),
		.C32M(C32M),
		.C33P(C33P),
		.C33M(C33M),
		.C34P(C34P),
		.C34M(C34M),
		.C35P(C35P),
		.C35M(C35M),
		.C36P(C36P),
		.C36M(C36M),
		.C37P(C37P),
		.C37M(C37M),
		.C40P(C40P),
		.C40M(C40M),
		.C41P(C41P),
		.C41M(C41M),
		.RSCT_(RSCT_),
		.T01(T01),
		.T02_(T02_),
		.T07_(T07_),
		.T10_(T10_),
		.T11_(T11_),
		.T12(T12),
		.T12_(T12_),
		.T12A(T12A),
		.FS17(FS17),
		.GOJAM(GOJAM),
		.PSEUDO(PSEUDO),
		.CT(CT),
		.PHS2_(PHS2_),
		.PHS3_(PHS3_),
		.PHS4_(PHS4_),
		.NISQL_(NISQL_),
		.ST0_(ST0_),
		.ST1_(ST1_),
		.MLOAD(MLOAD),
		.MREAD(MREAD),
		.MLDCH(MLDCH),
		.MRDCH(MRDCH),
		.MNHNC(MNHNC),
		.DOSCAL(DOSCAL),
		.OCTAD5(OCTAD5),
		.XB0(XB0),
		.XB5(XB5),
		.XB6(XB6),
		.CA4_(CA4_),
		.CA6_(CA6_),
		.CXB2_(CXB2_),
		.CXB3_(CXB3_),
		.CXB4_(CXB4_),
		.CXB7_(CXB7_),
		.CG13(CG13),
		.CG23(CG23),
		.BMAGXP(BMAGXP),
		.BMAGXM(BMAGXM),
		.BMAGYP(BMAGYP),
		.BMAGYM(BMAGYM),
		.BMAGZP(BMAGZP),
		.BMAGZM(BMAGZM),
		.EMSD(EMSD),
		.OTLNKM(OTLNKM),
		.ALTM(ALTM),
		.INLNKP(INLNKP),
		.INLNKM(INLNKM),
		.RNRADP(RNRADP),
		.RNRADM(RNRADM),
		.GYROD(GYROD),
		.RQ(RQ),
		.CAD1(CAD1),
		.CAD2(CAD2),
		.CAD3(CAD3),
		.CAD4(CAD4),
		.CAD5(CAD5),
		.CAD6(CAD6),
		.SHINC_(SHINC_),
		.SHANC_(SHANC_),
		.DINC(DINC),
		.DINC_(DINC_),
		.SHIFT(SHIFT),
		.SHIFT_(SHIFT_),
		.PINC(PINC),
		.MINC(MINC),
		.PCDU(PCDU),
		.MCDU(MCDU),
		.FETCH0(FETCH0),
		.FETCH0_(FETCH0_),
		.FETCH1(FETCH1),
		.STORE1_(STORE1_),
		.STFET1_(STFET1_),
		.MON_(MON_),
		.CHINC(CHINC),
		.CHINC_(CHINC_),
		.INOTLD(INOTLD),
		.MREQIN(MREQIN),
		.MONpCH(MONpCH),
		.INKL(INKL),
		.INKL_(INKL_),
		.MINKL(MINKL),
		.SCAS17(SCAS17),
		.RSSB(RSSB),
		.BKTF_(BKTF_),
		.CTROR(CTROR),
		.CA5_(CA5_),
		.CXB0_(CXB0_),
		.CXB5_(CXB5_),
		.CXB6_(CXB6_),
		.CG26(CG26),
		.C45R(C45R),
		.RQ_(RQ_),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a22_inout_v a22(
		.DKSTRT(DKSTRT),
		.END(END),
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL09_(CHWL09_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CHWL13_(CHWL13_),
		.CHWL14_(CHWL14_),
		.CHWL16_(CHWL16_),
		.GOJAM(GOJAM),
		.XB3_(XB3_),
		.XB4_(XB4_),
		.XT1_(XT1_),
		.WCHG_(WCHG_),
		.CCHG_(CCHG_),
		.WCH34_(WCH34_),
		.CCH34(CCH34),
		.WCH35_(WCH35_),
		.CCH35(CCH35),
		.DATA_(DATA_),
		.HIGH0_(HIGH0_),
		.HIGH1_(HIGH1_),
		.HIGH2_(HIGH2_),
		.HIGH3_(HIGH3_),
		.DKBSNC(DKBSNC),
		.PC15_(PC15_),
		.WCH13_(WCH13_),
		.CCH13(CCH13),
		.RCH13_(RCH13_),
		.WCH14_(WCH14_),
		.CCH14(CCH14),
		.RCH14_(RCH14_),
		.CH1307(CH1307),
		.LOW6_(LOW6_),
		.LOW7_(LOW7_),
		.A22_1_DATA_(A22_1_DATA_),
		.A22_2_DATA_(A22_2_DATA_),
		.A22_3_DATA_(A22_3_DATA_),
		.A22_4_DATA_(A22_4_DATA_),
		.A22_5_DATA_(A22_5_DATA_),
		.A22_6_DATA_(A22_6_DATA_),
		.A22_7_DATA_(A22_7_DATA_),
		.A22_8_DATA_(A22_8_DATA_),
		.A22_9_DATA_(A22_9_DATA_),
		.A22_10_DATA_(A22_10_DATA_),
		.DKDATA(DKDATA),
		.DKDATB(DKDATB),
		.DKCTR4(DKCTR4),
		.DKCTR4_(DKCTR4_),
		.DKCTR5(DKCTR5),
		.DKCTR5_(DKCTR5_),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a23_inout_vi a23(
		.GOJAM(GOJAM),
		.T07_(T07_),
		.PHS4_(PHS4_),
		.F18B_(F18B_),
		.F5ASB0_(F5ASB0_),
		.F5ASB2(F5ASB2),
		.F5ASB2_(F5ASB2_),
		.XB0_(XB0_),
		.XB1_(XB1_),
		.XB2_(XB2_),
		.XB3_(XB3_),
		.XB4_(XB4_),
		.XB5_(XB5_),
		.XB7_(XB7_),
		.XT0_(XT0_),
		.XT3_(XT3_),
		.OCTAD5(OCTAD5),
		.CHWL01_(CHWL01_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CHWL13_(CHWL13_),
		.CHWL14_(CHWL14_),
		.CHWL16_(CHWL16_),
		.PC15_(PC15_),
		.CCHG_(CCHG_),
		.WCHG_(WCHG_),
		.RCHG_(RCHG_),
		.WCH11_(WCH11_),
		.CCH11(CCH11),
		.RCH11_(RCH11_),
		.WCH12_(WCH12_),
		.CCH12(CCH12),
		.RCH12_(RCH12_),
		.WCH13_(WCH13_),
		.CCH13(CCH13),
		.RCH13_(RCH13_),
		.WCH14_(WCH14_),
		.CCH14(CCH14),
		.RCH14_(RCH14_),
		.CCH33(CCH33),
		.LOW6_(LOW6_),
		.LOW7_(LOW7_),
		.HIGH3_(HIGH3_),
		.PIPSAM(PIPSAM),
		.F18AX(F18AX),
		.PIPAXp(PIPAXp),
		.PIPAXm(PIPAXm),
		.PIPAYp(PIPAYp),
		.PIPAYm(PIPAYm),
		.CHAT01(CHAT01),
		.CHAT02(CHAT02),
		.CHAT03(CHAT03),
		.CHAT04(CHAT04),
		.CHAT05(CHAT05),
		.CHAT06(CHAT06),
		.CHAT07(CHAT07),
		.CHAT08(CHAT08),
		.CHAT09(CHAT09),
		.CHAT10(CHAT10),
		.CHBT01(CHBT01),
		.CHBT02(CHBT02),
		.CHBT03(CHBT03),
		.CHBT04(CHBT04),
		.CHBT05(CHBT05),
		.CHBT06(CHBT06),
		.CHBT07(CHBT07),
		.CHBT08(CHBT08),
		.CHBT09(CHBT09),
		.CHBT10(CHBT10),
		.CHOR01_(CHOR01_),
		.CHOR02_(CHOR02_),
		.CHOR03_(CHOR03_),
		.CHOR04_(CHOR04_),
		.CHOR05_(CHOR05_),
		.CHOR06_(CHOR06_),
		.CHOR07_(CHOR07_),
		.CHOR08_(CHOR08_),
		.CHOR09_(CHOR09_),
		.CHOR10_(CHOR10_),
		.CH1109(CH1109),
		.CH1110(CH1110),
		.CH1208(CH1208),
		.CH1209(CH1209),
		.CH1210(CH1210),
		.CH1505(CH1505),
		.CH1601(CH1601),
		.CH1602(CH1602),
		.CH1603(CH1603),
		.CH1604(CH1604),
		.CH1605(CH1605),
		.CH1606(CH1606),
		.CH1607(CH1607),
		.CH3209(CH3209),
		.CH3210(CH3210),
		.POUT(POUT),
		.MOUT(MOUT),
		.ZOUT(ZOUT),
		.FUTEXT(FUTEXT),
		.T6RPT(T6RPT),
		.NOZP(NOZP),
		.NOZM(NOZM),
		.MISSZ(MISSZ),
		.BOTHZ(BOTHZ),
		.PIPAFL(PIPAFL),
		.A23_1_DATA_(A23_1_DATA_),
		.PIPSAM_(PIPSAM_),
		.PIPXP(PIPXP),
		.PIPXM(PIPXM),
		.PIPYP(PIPYP),
		.PIPYM(PIPYM),
		.A23_1_CHOR01_(A23_1_CHOR01_),
		.A23_1_CHOR02_(A23_1_CHOR02_),
		.A23_1_CHOR03_(A23_1_CHOR03_),
		.A23_1_CHOR04_(A23_1_CHOR04_),
		.A23_1_CHOR05_(A23_1_CHOR05_),
		.A23_2_CHOR05_(A23_2_CHOR05_),
		.A23_1_CHOR06_(A23_1_CHOR06_),
		.A23_1_CHOR07_(A23_1_CHOR07_),
		.A23_1_CHOR08_(A23_1_CHOR08_),
		.A23_2_CHOR08_(A23_2_CHOR08_),
		.A23_1_CHOR09_(A23_1_CHOR09_),
		.A23_2_CHOR09_(A23_2_CHOR09_),
		.A23_1_CHOR10_(A23_1_CHOR10_),
		.A23_2_CHOR10_(A23_2_CHOR10_),
		.CH01(CH01),
		.CH02(CH02),
		.CH03(CH03),
		.CH04(CH04),
		.CH05(CH05),
		.CH06(CH06),
		.CH07(CH07),
		.CH08(CH08),
		.CH09(CH09),
		.CH10(CH10),
		.WCH34_(WCH34_),
		.CCH34(CCH34),
		.WCH35_(WCH35_),
		.CCH35(CCH35),
		.CH0705(CH0705),
		.CH0706(CH0706),
		.CH0707(CH0707),
		.CH1113(CH1113),
		.CH1114(CH1114),
		.CH1116(CH1116),
		.OT1108(OT1108),
		.OT1113(OT1113),
		.OT1114(OT1114),
		.OT1116(OT1116),
		.CH1216(CH1216),
		.CH1310(CH1310),
		.CH1316(CH1316),
		.CH1411(CH1411),
		.CH1412(CH1412),
		.CH1413(CH1413),
		.CH1414(CH1414),
		.CH1416(CH1416),
		.CDUXD(CDUXD),
		.CDUXDP(CDUXDP),
		.CDUXDM(CDUXDM),
		.CDUYD(CDUYD),
		.CDUYDP(CDUYDP),
		.CDUYDM(CDUYDM),
		.CDUZD(CDUZD),
		.CDUZDP(CDUZDP),
		.CDUZDM(CDUZDM),
		.TRUND(TRUND),
		.TRNDP(TRNDP),
		.TRNDM(TRNDM),
		.SHAFTD(SHAFTD),
		.SHFTDP(SHFTDP),
		.SHFTDM(SHFTDM),
		.POUT_(POUT_),
		.MOUT_(MOUT_),
		.ZOUT_(ZOUT_),
		.T7PHS4_(T7PHS4_),
		.E5(E5),
		.E6(E6),
		.E7_(E7_),
		.ISSTDC(ISSTDC),
		.T6ON_(T6ON_),
		.ALTEST(ALTEST),
		.n0VDCA(n0VDCA),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a24_inout_vii a24(
		.SB0_(SB0_),
		.SB1_(SB1_),
		.SB2_(SB2_),
		.SB4(SB4),
		.WT_(WT_),
		.CT_(CT_),
		.RT_(RT_),
		.T02_(T02_),
		.T06(T06),
		.T08(T08),
		.F01A(F01A),
		.F01B(F01B),
		.FS02(FS02),
		.F02B(F02B),
		.FS03(FS03),
		.F03B_(F03B_),
		.FS04(FS04),
		.F04B(F04B),
		.FS05(FS05),
		.FS05_(FS05_),
		.F05A_(F05A_),
		.F05B_(F05B_),
		.FS06(FS06),
		.FS06_(FS06_),
		.FS07_(FS07_),
		.FS07A(FS07A),
		.F07A_(F07A_),
		.F07B_(F07B_),
		.FS08(FS08),
		.FS08_(FS08_),
		.FS09(FS09),
		.FS09_(FS09_),
		.FS16(FS16),
		.FS17(FS17),
		.F17A(F17A),
		.F17B(F17B),
		.F18AX(F18AX),
		.F5ASB2(F5ASB2),
		.CA6_(CA6_),
		.XB3_(XB3_),
		.XB4_(XB4_),
		.XB7_(XB7_),
		.XT0_(XT0_),
		.DKCTR4(DKCTR4),
		.DKCTR4_(DKCTR4_),
		.DKCTR5(DKCTR5),
		.DKCTR5_(DKCTR5_),
		.WCH_(WCH_),
		.RCH_(RCH_),
		.WL01(WL01),
		.WL02(WL02),
		.WL03(WL03),
		.WL04(WL04),
		.WL05(WL05),
		.WL06(WL06),
		.WL07(WL07),
		.WL08(WL08),
		.WL09(WL09),
		.WL10(WL10),
		.WL11(WL11),
		.WL12(WL12),
		.WL13(WL13),
		.WL14(WL14),
		.WL16(WL16),
		.NISQ_(NISQ_),
		.FF1109_(FF1109_),
		.FF1110_(FF1110_),
		.FF1111_(FF1111_),
		.FF1112_(FF1112_),
		.PIPSAM_(PIPSAM_),
		.PIPAZp(PIPAZp),
		.PIPAZm(PIPAZm),
		.RSCT(RSCT),
		.RUSG_(RUSG_),
		.SUMA15_(SUMA15_),
		.SUMB15_(SUMB15_),
		.U2BBK(U2BBK),
		.CI_(CI_),
		.WATCHP(WATCHP),
		.MWATCH_(MWATCH_),
		.HIGH0_(HIGH0_),
		.HIGH1_(HIGH1_),
		.HIGH2_(HIGH2_),
		.HIGH3_(HIGH3_),
		.WCHG_(WCHG_),
		.CCHG_(CCHG_),
		.RCHG_(RCHG_),
		.CHWL01_(CHWL01_),
		.CHWL02_(CHWL02_),
		.CHWL03_(CHWL03_),
		.CHWL04_(CHWL04_),
		.CHWL05_(CHWL05_),
		.CHWL06_(CHWL06_),
		.CHWL07_(CHWL07_),
		.CHWL08_(CHWL08_),
		.CHWL09_(CHWL09_),
		.CHWL10_(CHWL10_),
		.CHWL11_(CHWL11_),
		.CHWL12_(CHWL12_),
		.CHWL13_(CHWL13_),
		.CHWL14_(CHWL14_),
		.CHWL16_(CHWL16_),
		.PIPPLS_(PIPPLS_),
		.PIPASW(PIPASW),
		.PIPDAT(PIPDAT),
		.PIPINT(PIPINT),
		.n800SET(n800SET),
		.n800RST(n800RST),
		.n3200A(n3200A),
		.n3200B(n3200B),
		.n3200C(n3200C),
		.n3200D(n3200D),
		.n12KPPS(n12KPPS),
		.n25KPPS(n25KPPS),
		.RRRST(RRRST),
		.LRRST(LRRST),
		.CDUCLK(CDUCLK),
		.NISQ(NISQ),
		.MNISQ(MNISQ),
		.MON800(MON800),
		.RCHAT_(RCHAT_),
		.RCHBT_(RCHBT_),
		.ELSNCN(ELSNCN),
		.ELSNCM(ELSNCM),
		.OT1110(OT1110),
		.OT1111(OT1111),
		.OT1112(OT1112),
		.NOZP(NOZP),
		.NOZM(NOZM),
		.MISSZ(MISSZ),
		.BOTHZ(BOTHZ),
		.PIPZP(PIPZP),
		.PIPZM(PIPZM),
		.RSCT_(RSCT_),
		.MWCH(MWCH),
		.MRCH(MRCH),
		.US2SG(US2SG),
		.U2BBKG_(U2BBKG_),
		.OUTCOM(OUTCOM),
		.GTSET(GTSET),
		.GTSET_(GTSET_),
		.GTRST_(GTRST_),
		.GTONE(GTONE),
		.CI(CI),
		.FLASH(FLASH),
		.FLASH_(FLASH_),
		.ONE(ONE),
		.CDUSTB_(CDUSTB_),
		.n0VDCA(n0VDCA),
		.p4VDC(p4VDC),
		.p4SW(p4SW),
		.reset(reset),
		.prop_clk(prop_clk)
	);

	a30_power_supply a30(
		.WD168(WD168),
		.CNTRL1(CNTRL1),
		.SBYREL_(SBYREL_),
		.prop_clk_locked(prop_clk_locked),
		.p28COM(p28COM),
		.p4VDC(p4VDC),
		.p4SW(p4SW)
	);

	a31_power_supply a31(
		.WD167(WD167),
		.CNTRL2(CNTRL2),
		.SBYREL_(SBYREL_),
		.BPLUS(BPLUS),
		.BPLSSW(BPLSSW)
	);

	assign A2X_ = A05_1_A2X_ & A05_2_A2X_ & A06_1_A2X_;
	assign CHOR01_ = A16_1_CHOR01_ & A16_2_CHOR01_ & A17_1_CHOR01_ & A17_2_CHOR01_ & A23_1_CHOR01_;
	assign CHOR02_ = A16_1_CHOR02_ & A16_2_CHOR02_ & A17_1_CHOR02_ & A17_2_CHOR02_ & A23_1_CHOR02_;
	assign CHOR03_ = A16_1_CHOR03_ & A16_2_CHOR03_ & A17_1_CHOR03_ & A17_2_CHOR03_ & A23_1_CHOR03_;
	assign CHOR04_ = A16_1_CHOR04_ & A16_2_CHOR04_ & A17_1_CHOR04_ & A17_2_CHOR04_ & A23_1_CHOR04_;
	assign CHOR05_ = A16_1_CHOR05_ & A16_2_CHOR05_ & A17_1_CHOR05_ & A17_2_CHOR05_ & A23_1_CHOR05_ & A23_2_CHOR05_;
	assign CHOR06_ = A16_1_CHOR06_ & A16_2_CHOR06_ & A17_1_CHOR06_ & A17_2_CHOR06_ & A23_1_CHOR06_;
	assign CHOR07_ = A16_1_CHOR07_ & A16_2_CHOR07_ & A17_1_CHOR07_ & A17_2_CHOR07_ & A23_1_CHOR07_;
	assign CHOR08_ = A16_1_CHOR08_ & A17_1_CHOR08_ & A17_2_CHOR08_ & A23_1_CHOR08_ & A23_2_CHOR08_;
	assign CHOR09_ = A17_1_CHOR09_ & A17_2_CHOR09_ & A23_1_CHOR09_ & A23_2_CHOR09_;
	assign CHOR10_ = A17_1_CHOR10_ & A17_2_CHOR10_ & A23_1_CHOR10_ & A23_2_CHOR10_;
	assign CHOR11_ = A17_1_CHOR11_ & A17_2_CHOR11_ & A18_1_CHOR11_ & A18_2_CHOR11_;
	assign CHOR12_ = A17_1_CHOR12_ & A17_2_CHOR12_ & A18_1_CHOR12_ & A18_2_CHOR12_;
	assign CHOR13_ = A17_1_CHOR13_ & A17_2_CHOR13_ & A17_3_CHOR13_ & A18_1_CHOR13_;
	assign CHOR14_ = A17_1_CHOR14_ & A17_2_CHOR14_ & A18_1_CHOR14_ & A18_2_CHOR14_;
	assign CHOR16_ = A17_1_CHOR16_ & A17_2_CHOR16_ & A18_1_CHOR16_;
	assign CI_ = A04_1_CI_ & A05_1_CI_ & A05_2_CI_ & A06_1_CI_;
	assign DATA_ = A22_10_DATA_ & A22_1_DATA_ & A22_2_DATA_ & A22_3_DATA_ & A22_4_DATA_ & A22_5_DATA_ & A22_6_DATA_ & A22_7_DATA_ & A22_8_DATA_ & A22_9_DATA_ & A23_1_DATA_;
	assign L16_ = A04_1_L16_ & A11_1_L16_;
	assign MONEX_ = A05_1_MONEX_ & A06_1_MONEX_;
	assign RA_ = A04_1_RA_ & A04_2_RA_ & A05_1_RA_ & A05_2_RA_ & A05_3_RA_;
	assign RB1_ = A04_1_RB1_ & A06_1_RB1_;
	assign RB_ = A04_1_RB_ & A04_2_RB_ & A05_1_RB_ & A05_2_RB_ & A05_3_RB_ & A05_4_RB_ & A06_1_RB_ & A06_2_RB_;
	assign RC_ = A04_1_RC_ & A04_2_RC_ & A05_1_RC_ & A05_2_RC_ & A05_3_RC_ & A05_4_RC_ & A06_1_RC_ & A06_2_RC_;
	assign RG_ = A05_1_RG_ & A05_2_RG_ & A05_3_RG_ & A05_4_RG_ & A06_1_RG_ & A06_2_RG_;
	assign RL09_ = A10_1_RL09_ & A10_2_RL09_ & A10_3_RL09_ & A10_4_RL09_ & A15_1_RL09_;
	assign RL10_ = A10_1_RL10_ & A10_2_RL10_ & A10_3_RL10_ & A10_4_RL10_ & A15_1_RL10_;
	assign RL11_ = A10_1_RL11_ & A10_2_RL11_ & A10_3_RL11_ & A10_4_RL11_ & A15_1_RL11_;
	assign RL12_ = A10_1_RL12_ & A10_2_RL12_ & A10_3_RL12_ & A10_4_RL12_ & A15_1_RL12_;
	assign RL13_ = A11_1_RL13_ & A11_2_RL13_ & A11_3_RL13_ & A11_4_RL13_ & A15_1_RL13_;
	assign RL14_ = A11_1_RL14_ & A11_2_RL14_ & A11_3_RL14_ & A11_4_RL14_ & A15_1_RL14_;
	assign RL15_ = A11_1_RL15_ & A11_2_RL15_ & A11_3_RL15_ & A11_4_RL15_ & A15_1_RL15_;
	assign RL16_ = A11_1_RL16_ & A11_2_RL16_ & A11_3_RL16_ & A11_4_RL16_ & A15_1_RL16_;
	assign RL_ = A05_1_RL_ & A05_2_RL_;
	assign RPTSET = A03_1_RPTSET & A03_2_RPTSET & A03_3_RPTSET & A06_1_RPTSET;
	assign RSC_ = A04_1_RSC_ & A12_1_RSC_;
	assign RU_ = A05_1_RU_ & A05_2_RU_ & A05_3_RU_ & A06_1_RU_ & A06_2_RU_ & A06_3_RU_ & A06_4_RU_;
	assign RZ_ = A05_1_RZ_ & A05_2_RZ_ & A05_3_RZ_ & A06_1_RZ_;
	assign ST2_ = A05_1_ST2_ & A06_1_ST2_ & A06_2_ST2_;
	assign TMZ_ = A04_1_TMZ_ & A05_1_TMZ_ & A05_2_TMZ_;
	assign TOV_ = A05_1_TOV_ & A06_1_TOV_;
	assign TSGN_ = A04_1_TSGN_ & A04_2_TSGN_ & A05_1_TSGN_ & A05_2_TSGN_;
	assign WA_ = A05_1_WA_ & A05_2_WA_ & A05_3_WA_ & A06_1_WA_ & A06_2_WA_;
	assign WB_ = A05_1_WB_ & A05_2_WB_ & A05_3_WB_ & A05_4_WB_ & A06_1_WB_ & A06_2_WB_;
	assign WG_ = A04_1_WG_ & A04_2_WG_ & A04_3_WG_ & A05_1_WG_ & A06_1_WG_ & A06_2_WG_ & A12_1_WG_;
	assign WL_ = A04_1_WL_ & A05_1_WL_ & A05_2_WL_ & A06_1_WL_;
	assign WSC_ = A06_1_WSC_ & A06_2_WSC_;
	assign WS_ = A05_1_WS_ & A06_1_WS_;
	assign WY12_ = A05_1_WY12_ & A05_2_WY12_;
	assign WYD_ = A05_1_WYD_ & A06_1_WYD_;
	assign WY_ = A04_1_WY_ & A04_2_WY_ & A05_1_WY_ & A05_2_WY_ & A05_3_WY_ & A06_1_WY_;
	assign WZ_ = A05_1_WZ_ & A05_2_WZ_ & A06_1_WZ_;
	assign Z15_ = A05_1_Z15_ & A11_1_Z15_;
	assign Z16_ = A05_1_Z16_ & A11_1_Z16_;
	assign n8PP4 = A04_1_n8PP4 & A06_1_n8PP4 & A06_2_n8PP4 & A06_3_n8PP4;

endmodule
