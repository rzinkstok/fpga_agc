`timescale 1ns / 1ps

module agc_tb();

	reg ALTEST = 0;
	reg BKTF_ = 1;
	reg BLKUPL_ = 1;
	reg BMGXM = 0;
	reg BMGXP = 0;
	reg BMGYM = 0;
	reg BMGYP = 0;
	reg BMGZM = 0;
	reg BMGZP = 0;
	reg C37P = 0;
	reg C40P = 0;
	reg C41P = 0;
	reg C42P = 0;
	reg C43P = 0;
	reg C44P = 0;
	reg C45R = 0;
	reg CA2_ = 1;
	reg CA3_ = 1;
	reg CA4_ = 1;
	reg CA5_ = 1;
	reg CA6_ = 1;
	reg CAD1 = 0;
	reg CAD2 = 0;
	reg CAD3 = 0;
	reg CAD4 = 0;
	reg CAD5 = 0;
	reg CAD6 = 0;
	reg CAURST = 0;
	reg CCH12 = 0;
	reg CCH13 = 0;
	reg CCH14 = 0;
	reg CCHG_ = 1;
	reg CDUFAL = 0;
	reg CDUSTB_ = 1;
	reg CDUXD = 0;
	reg CDUXM = 0;
	reg CDUXP = 0;
	reg CDUYD = 0;
	reg CDUYM = 0;
	reg CDUYP = 0;
	reg CDUZD = 0;
	reg CDUZM = 0;
	reg CDUZP = 0;
	reg CH01 = 0;
	reg CH02 = 0;
	reg CH03 = 0;
	reg CH04 = 0;
	reg CH05 = 0;
	reg CH06 = 0;
	reg CH07 = 0;
	reg CH0705 = 0;
	reg CH0706 = 0;
	reg CH0707 = 0;
	reg CH08 = 0;
	reg CH09 = 0;
	reg CH10 = 0;
	reg CH1113 = 0;
	reg CH1114 = 0;
	reg CH1116 = 0;
	reg CH1211 = 0;
	reg CH1216 = 0;
	reg CH1307 = 0;
	reg CH1310 = 0;
	reg CH1312 = 0;
	reg CH1313 = 0;
	reg CH1314 = 0;
	reg CH1316 = 0;
	reg CH1411 = 0;
	reg CH1412 = 0;
	reg CH1413 = 0;
	reg CH1414 = 0;
	reg CH1416 = 0;
	reg CHINC = 0;
	reg CHINC_ = 1;
	reg CHWL01_ = 1;
	reg CHWL02_ = 1;
	reg CHWL03_ = 1;
	reg CHWL04_ = 1;
	reg CHWL05_ = 1;
	reg CHWL06_ = 1;
	reg CHWL07_ = 1;
	reg CHWL08_ = 1;
	reg CHWL09_ = 1;
	reg CHWL10_ = 1;
	reg CHWL11_ = 1;
	reg CHWL12_ = 1;
	reg CHWL13_ = 1;
	reg CHWL14_ = 1;
	reg CHWL16_ = 1;
	reg CI = 0;
	reg CLOCK = 0;
	reg CTLSAT = 0;
	reg CTROR = 0;
	reg CXB0_ = 1;
	reg CXB1_ = 1;
	reg CXB5_ = 1;
	reg CXB6_ = 1;
	reg CXB7_ = 1;
	reg DBLTST = 0;
	reg DINC = 0;
	reg DINC_ = 1;
	reg DIVSTG = 0;
	reg DKEND = 0;
	reg DLKPLS = 0;
	reg DNRPTA = 0;
	reg E5 = 0;
	reg E6 = 0;
	reg E7_ = 1;
	reg F09D = 0;
	reg FETCH0 = 0;
	reg FETCH0_ = 1;
	reg FETCH1 = 0;
	reg FLASH_ = 1;
	reg FLTOUT = 0;
	reg FREFUN = 0;
	reg GATEX_ = 1;
	reg GATEY_ = 1;
	reg GATEZ_ = 1;
	reg GCAPCL = 0;
	reg GTONE = 0;
	reg GTRST_ = 1;
	reg GTSET = 0;
	reg GTSET_ = 1;
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
	reg INCSET_ = 1;
	reg INKL = 0;
	reg INKL_ = 1;
	reg INOTLD = 0;
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
	reg MDT13 = 0;
	reg MDT14 = 0;
	reg MDT15 = 0;
	reg MDT16 = 0;
	reg MINC = 0;
	reg MKEY1 = 0;
	reg MKEY2 = 0;
	reg MKEY3 = 0;
	reg MKEY4 = 0;
	reg MKEY5 = 0;
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
	reg MON_ = 1;
	reg MONpCH = 0;
	reg MOUT_ = 1;
	reg MRKREJ = 0;
	reg MRKRST = 0;
	reg MSTP = 0;
	reg MSTRT = 0;
	reg MTCSAI = 0;
	reg NAVRST = 0;
	reg NHALGA = 0;
	reg NHVFAL = 0;
	reg NISQ = 0;
	reg NKEY1 = 0;
	reg NKEY2 = 0;
	reg NKEY3 = 0;
	reg NKEY4 = 0;
	reg NKEY5 = 0;
	reg ONE = 1;
	reg OPCDFL = 0;
	reg OPMSW2 = 0;
	reg OPMSW3 = 0;
	reg PCDU = 0;
	reg PCHGOF = 0;
	reg PIPAFL = 0;
	reg PIPPLS_ = 1;
	reg PIPXM = 0;
	reg PIPXP = 0;
	reg PIPYM = 0;
	reg PIPYP = 0;
	reg PIPZM = 0;
	reg PIPZP = 0;
	reg POUT_ = 1;
	reg RCH12_ = 1;
	reg RCH13_ = 1;
	reg RCH14_ = 1;
	reg RCH33_ = 1;
	reg RCHAT_ = 1;
	reg RCHBT_ = 1;
	reg RCHG_ = 1;
	reg ROLGOF = 0;
	reg RQ_ = 1;
	reg RRIN0 = 0;
	reg RRIN1 = 0;
	reg RRPONA = 0;
	reg RRRLSC = 0;
	reg RSSB = 0;
	reg S4BSAB = 0;
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
	reg SA13 = 0;
	reg SA14 = 0;
	reg SA16 = 0;
	reg SAP = 0;
	reg SBYBUT = 0;
	reg SCAFAL = 0;
	reg SHAFTD = 0;
	reg SHAFTM = 0;
	reg SHAFTP = 0;
	reg SHANC_ = 1;
	reg SHIFT = 0;
	reg SHIFT_ = 1;
	reg SHINC_ = 1;
	reg SIGNX = 0;
	reg SIGNY = 0;
	reg SIGNZ = 0;
	reg SMSEPR = 0;
	reg SPSRDY = 0;
	reg STFET1_ = 1;
	reg STFETI_ = 1;
	reg STORE1_ = 1;
	reg STRPRS = 0;
	reg STRT2 = 0;
	reg T6ON_ = 1;
	reg T7PHS4_ = 1;
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
	reg TRUND = 0;
	reg U2BBKG_ = 1;
	reg ULLTHR = 0;
	reg UPL0 = 0;
	reg UPL1 = 0;
	reg US2SG = 0;
	reg VFAIL = 0;
	reg WATCHP = 0;
	reg WCH12_ = 1;
	reg WCH13_ = 1;
	reg WCH14_ = 1;
	reg WCHG_ = 1;
	reg XLNK0 = 0;
	reg XLNK1 = 0;
	reg ZEROP = 0;
	reg ZOUT_ = 1;
	reg n2FSFAL = 0;
	reg prop_clk = 1;
	reg reset = 0;

	wire A03_1_RPTSET;
	wire A03_2_RPTSET;
	wire A03_3_RPTSET;
	wire A04_1_CI_;
	wire A04_1_L16_;
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
	wire A11_1_L16_;
	wire A11_1_RL13_;
	wire A11_1_RL14_;
	wire A11_1_RL15_;
	wire A11_1_RL16_;
	wire A11_2_RL13_;
	wire A11_2_RL14_;
	wire A11_2_RL15_;
	wire A11_2_RL16_;
	wire A11_3_RL13_;
	wire A11_3_RL14_;
	wire A11_3_RL15_;
	wire A11_3_RL16_;
	wire A11_4_RL13_;
	wire A11_4_RL14_;
	wire A11_4_RL15_;
	wire A11_4_RL16_;
	wire A15_;
	wire A15_1_RL09_;
	wire A15_1_RL10_;
	wire A15_1_RL11_;
	wire A15_1_RL12_;
	wire A15_1_RL13_;
	wire A15_1_RL14_;
	wire A15_1_RL15_;
	wire A15_1_RL16_;
	wire A16_;
	wire A16_1_CHOR01_;
	wire A16_1_CHOR02_;
	wire A16_1_CHOR03_;
	wire A16_1_CHOR04_;
	wire A16_1_CHOR05_;
	wire A16_1_CHOR06_;
	wire A16_1_CHOR07_;
	wire A16_1_CHOR08_;
	wire A16_2_CHOR01_;
	wire A16_2_CHOR02_;
	wire A16_2_CHOR03_;
	wire A16_2_CHOR04_;
	wire A16_2_CHOR05_;
	wire A16_2_CHOR06_;
	wire A16_2_CHOR07_;
	wire A17_1_CHOR01_;
	wire A17_1_CHOR02_;
	wire A17_1_CHOR03_;
	wire A17_1_CHOR04_;
	wire A17_1_CHOR05_;
	wire A17_1_CHOR06_;
	wire A17_1_CHOR07_;
	wire A17_1_CHOR08_;
	wire A17_1_CHOR09_;
	wire A17_1_CHOR10_;
	wire A17_1_CHOR11_;
	wire A17_1_CHOR12_;
	wire A17_1_CHOR13_;
	wire A17_1_CHOR14_;
	wire A17_1_CHOR16_;
	wire A17_2_CHOR01_;
	wire A17_2_CHOR02_;
	wire A17_2_CHOR03_;
	wire A17_2_CHOR04_;
	wire A17_2_CHOR05_;
	wire A17_2_CHOR06_;
	wire A17_2_CHOR07_;
	wire A17_2_CHOR08_;
	wire A17_2_CHOR09_;
	wire A17_2_CHOR10_;
	wire A17_2_CHOR11_;
	wire A17_2_CHOR12_;
	wire A17_2_CHOR13_;
	wire A17_2_CHOR14_;
	wire A17_2_CHOR16_;
	wire A18_1_CHOR11_;
	wire A18_1_CHOR12_;
	wire A18_1_CHOR13_;
	wire A18_1_CHOR14_;
	wire A18_1_CHOR16_;
	wire A18_2_CHOR11_;
	wire A18_2_CHOR12_;
	wire A18_2_CHOR14_;
	wire A2XG_;
	wire A2X_;
	wire AD0;
	wire ADS0;
	wire AGCWAR;
	wire ALGA;
	wire ALRT0;
	wire ALRT1;
	wire ALT0;
	wire ALT1;
	wire ALTM;
	wire ALTSNC;
	wire AUG0_;
	wire B15X;
	wire BBK1;
	wire BBK2;
	wire BBK3;
	wire BMAGXM;
	wire BMAGXP;
	wire BMAGYM;
	wire BMAGYP;
	wire BMAGZM;
	wire BMAGZP;
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
	wire CAG;
	wire CBG;
	wire CCH11;
	wire CCH33;
	wire CCS0;
	wire CCS0_;
	wire CEBG;
	wire CFBG;
	wire CGCWAR;
	wire CGG;
	wire CGMC;
	wire CH11;
	wire CH1109;
	wire CH1110;
	wire CH1111;
	wire CH1112;
	wire CH12;
	wire CH1207;
	wire CH1208;
	wire CH1212;
	wire CH1213;
	wire CH1214;
	wire CH13;
	wire CH1301;
	wire CH1302;
	wire CH1303;
	wire CH1304;
	wire CH1305;
	wire CH1306;
	wire CH1308;
	wire CH1309;
	wire CH1311;
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
	wire CLROPE;
	wire CLXC;
	wire CO02;
	wire CO06;
	wire CO10;
	wire CO14;
	wire CO16;
	wire COARSE;
	wire COMACT;
	wire CQG;
	wire CSG;
	wire CT;
	wire CT_;
	wire CUG;
	wire CYL_;
	wire CYR_;
	wire CZG;
	wire DAS0;
	wire DAS0_;
	wire DAS1;
	wire DAS1_;
	wire DCA0;
	wire DCS0;
	wire DIM0_;
	wire DISDAC;
	wire DIV_;
	wire DLKRPT;
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
	wire EAC_;
	wire EAD09;
	wire EAD09_;
	wire EAD10;
	wire EAD10_;
	wire EAD11;
	wire EAD11_;
	wire EB10;
	wire EB10_;
	wire EB11;
	wire EB11_;
	wire EB9;
	wire EB9_;
	wire EDOP_;
	wire EDSET;
	wire EMSD;
	wire EMSm;
	wire EMSp;
	wire END;
	wire ENERIM;
	wire ENEROP;
	wire ERAS;
	wire ERAS_;
	wire ERRST;
	wire EVNSET;
	wire EVNSET_;
	wire EXST0_;
	wire EXST1_;
	wire EXT;
	wire EXTPLS;
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
	wire F11;
	wire F11A;
	wire F11B;
	wire F11_;
	wire F12;
	wire F12A;
	wire F12B;
	wire F12_;
	wire F13;
	wire F13A;
	wire F13B;
	wire F13_;
	wire F14;
	wire F14A;
	wire F14B;
	wire F14_;
	wire F15;
	wire F15A;
	wire F15B;
	wire F15_;
	wire F16;
	wire F16A;
	wire F16B;
	wire F16_;
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
	wire F5ASB0_;
	wire F5ASB2;
	wire F5ASB2_;
	wire F5BSB2;
	wire F5BSB2_;
	wire FB11;
	wire FB11_;
	wire FB12;
	wire FB12_;
	wire FB13;
	wire FB13_;
	wire FB14;
	wire FB14_;
	wire FB16;
	wire FB16_;
	wire FF1109_;
	wire FF1110_;
	wire FF1111_;
	wire FF1112_;
	wire FILTIN;
	wire FNERAS_;
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
	wire G01ED;
	wire G01_;
	wire G02;
	wire G02ED;
	wire G03;
	wire G03ED;
	wire G04;
	wire G04ED;
	wire G04_;
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
	wire G08_;
	wire G09;
	wire G09_;
	wire G10;
	wire G10_;
	wire G11;
	wire G11_;
	wire G12;
	wire G12_;
	wire G13;
	wire G13_;
	wire G14;
	wire G14_;
	wire G15;
	wire G15_;
	wire G16;
	wire G16SW_;
	wire G16_;
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
	wire GEM13;
	wire GEM14;
	wire GEM15;
	wire GEM16;
	wire GEMP;
	wire GEQZRO_;
	wire GINH;
	wire GNHNC;
	wire GOJ1;
	wire GOJ1_;
	wire GOJAM;
	wire GOJAM_;
	wire GYENAB;
	wire GYROD;
	wire GYRRST;
	wire GYRSET;
	wire GYXM;
	wire GYXP;
	wire GYYM;
	wire GYYP;
	wire GYZM;
	wire GYZP;
	wire HIMOD;
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
	wire IHENV;
	wire IIP;
	wire IIP_;
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
	wire INCR0;
	wire INHPLS;
	wire INLNKM;
	wire INLNKP;
	wire INOUT;
	wire INOUT_;
	wire ISSWAR;
	wire KRPT;
	wire KYRLS;
	wire KYRPT1;
	wire KYRPT2;
	wire L01_;
	wire L02_;
	wire L03_;
	wire L04_;
	wire L05_;
	wire L06_;
	wire L07_;
	wire L08_;
	wire L09_;
	wire L10_;
	wire L11_;
	wire L12_;
	wire L13_;
	wire L14_;
	wire L15_;
	wire L16_;
	wire L2GDG_;
	wire L2GD_;
	wire LOMOD;
	wire LRRANG;
	wire LRSYNC;
	wire LRXVEL;
	wire LRYVEL;
	wire LRZVEL;
	wire MASK0;
	wire MASK0_;
	wire MBR1;
	wire MBR2;
	wire MCRO_;
	wire MCTRAL_;
	wire MGOJAM;
	wire MGP_;
	wire MIIP;
	wire MINHL;
	wire MKRPT;
	wire MONEX;
	wire MONEX_;
	wire MONWT;
	wire MOSCAL_;
	wire MOUT;
	wire MP0;
	wire MP0T10;
	wire MP0_;
	wire MP1;
	wire MP1_;
	wire MP3;
	wire MP3A;
	wire MP3_;
	wire MPAL;
	wire MPIPAL_;
	wire MRAG;
	wire MRGG;
	wire MRLG;
	wire MROLGT;
	wire MRPTAL_;
	wire MRSC_;
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
	wire MSTPIT_;
	wire MSTRTP;
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
	wire MTCAL_;
	wire MTCSA_;
	wire MVFAIL_;
	wire MWAG;
	wire MWARNF_;
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
	wire MWL13;
	wire MWL14;
	wire MWL15;
	wire MWL16;
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
	wire OPEROR;
	wire OSCALM;
	wire OT1207;
	wire OT1207_;
	wire OTLNK0;
	wire OTLNK1;
	wire OTLNKM;
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
	wire PALE;
	wire PC15_;
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
	wire RCH_;
	wire RC_;
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
	wire RDBANK;
	wire READ0;
	wire READ0_;
	wire REBG_;
	wire RELPLS;
	wire RESETA;
	wire RESETB;
	wire RESETC;
	wire RESETD;
	wire RESTRT;
	wire REX;
	wire REY;
	wire RFBG_;
	wire RGG_;
	wire RG_;
	wire RHCGO;
	wire RINGA_;
	wire RINGB_;
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
	wire RL_;
	wire RNRADM;
	wire RNRADP;
	wire ROPER;
	wire ROPES;
	wire ROPET;
	wire ROP_;
	wire ROR0;
	wire RPTAD3;
	wire RPTAD4;
	wire RPTAD5;
	wire RPTAD6;
	wire RPTSET;
	wire RQ;
	wire RQG_;
	wire RRPA;
	wire RRRANG;
	wire RRRARA;
	wire RRSYNC;
	wire RSCT;
	wire RSC_;
	wire RSM3;
	wire RSM3_;
	wire RSTKX_;
	wire RSTKY_;
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
	wire RUPTOR_;
	wire RUSG_;
	wire RUS_;
	wire RU_;
	wire RXOR0;
	wire RXOR0_;
	wire RYWD12;
	wire RYWD13;
	wire RYWD14;
	wire RYWD16;
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
	wire S4BOFF;
	wire S4BSEQ;
	wire S4BTAK;
	wire SB0;
	wire SB0_;
	wire SB1;
	wire SB1_;
	wire SB2;
	wire SB2_;
	wire SB4;
	wire SBE;
	wire SBF;
	wire SBY;
	wire SBYLIT;
	wire SBYREL_;
	wire SCAD;
	wire SCAD_;
	wire SCAS10;
	wire SETAB;
	wire SETAB_;
	wire SETCD;
	wire SETCD_;
	wire SETEK;
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
	wire SR_;
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
	wire STARON;
	wire STBE;
	wire STBF;
	wire STD2;
	wire STG1;
	wire STG2;
	wire STG3;
	wire STNDBY;
	wire STNDBY_;
	wire STOP;
	wire STOPA;
	wire STOP_;
	wire STR14;
	wire STR19;
	wire STR210;
	wire STR311;
	wire STR412;
	wire STR58;
	wire STR912;
	wire STRGAT;
	wire STRT1;
	wire STRTFC;
	wire SU0;
	wire SUMA01_;
	wire SUMA02_;
	wire SUMA03_;
	wire SUMA04_;
	wire SUMA11_;
	wire SUMA12_;
	wire SUMA13_;
	wire SUMA14_;
	wire SUMA16_;
	wire SUMB01_;
	wire SUMB02_;
	wire SUMB03_;
	wire SUMB04_;
	wire SUMB11_;
	wire SUMB12_;
	wire SUMB13_;
	wire SUMB14_;
	wire SUMB16_;
	wire SYNC14_;
	wire SYNC4_;
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
	wire T12A;
	wire T12DC_;
	wire T12SET;
	wire T12USE_;
	wire T12_;
	wire T1P;
	wire T2P;
	wire T3P;
	wire T4P;
	wire T5P;
	wire T6P;
	wire T6RPT;
	wire TC0;
	wire TC0_;
	wire TCF0;
	wire TCSAJ3;
	wire TCSAJ3_;
	wire THRSTD;
	wire THRSTm;
	wire THRSTp;
	wire TIMR;
	wire TL15;
	wire TMPCAU;
	wire TMPOUT;
	wire TMZ_;
	wire TOV_;
	wire TPARG_;
	wire TPOR_;
	wire TPZG_;
	wire TRP31A;
	wire TRP31B;
	wire TRP32;
	wire TRSM;
	wire TS0;
	wire TS0_;
	wire TSGN_;
	wire TSGU_;
	wire TSUDO_;
	wire TT_;
	wire TVCNAB;
	wire TWOX;
	wire U2BBK;
	wire UNF;
	wire UNF_;
	wire UPLACT;
	wire UPRUPT;
	wire VNFLSH;
	wire WAG_;
	wire WALSG;
	wire WALSG_;
	wire WAND0;
	wire WA_;
	wire WBBEG_;
	wire WBG_;
	wire WB_;
	wire WCH11_;
	wire WCH_;
	wire WEBG_;
	wire WEDOPG_;
	wire WEX;
	wire WEY;
	wire WFBG_;
	wire WG1G_;
	wire WG2G_;
	wire WG3G_;
	wire WG4G_;
	wire WG5G_;
	wire WGNORM;
	wire WG_;
	wire WHOMP;
	wire WHOMPA;
	wire WHOMP_;
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
	wire WOR0_;
	wire WOVR;
	wire WOVR_;
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
	wire XB0;
	wire XB0E;
	wire XB0_;
	wire XB1;
	wire XB1E;
	wire XB1_;
	wire XB2;
	wire XB2E;
	wire XB2_;
	wire XB3;
	wire XB3E;
	wire XB3_;
	wire XB4;
	wire XB4E;
	wire XB4_;
	wire XB5;
	wire XB5E;
	wire XB5_;
	wire XB6;
	wire XB6E;
	wire XB6_;
	wire XB7;
	wire XB7E;
	wire XB7_;
	wire XT0;
	wire XT0E;
	wire XT0_;
	wire XT1;
	wire XT1E;
	wire XT1_;
	wire XT2;
	wire XT2E;
	wire XT2_;
	wire XT3;
	wire XT3E;
	wire XT3_;
	wire XT4;
	wire XT4E;
	wire XT4_;
	wire XT5;
	wire XT5E;
	wire XT5_;
	wire XT6;
	wire XT6E;
	wire XT6_;
	wire XT7;
	wire XT7E;
	wire XT7_;
	wire XUY01_;
	wire XUY02_;
	wire XUY05_;
	wire XUY06_;
	wire XUY09_;
	wire XUY10_;
	wire XUY12_;
	wire XUY13_;
	wire XUY14_;
	wire YB0;
	wire YB0E;
	wire YB0_;
	wire YB1;
	wire YB1E;
	wire YB1_;
	wire YB2;
	wire YB2E;
	wire YB2_;
	wire YB3;
	wire YB3E;
	wire YB3_;
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
	wire ZEROPT;
	wire ZID;
	wire ZIMCDU;
	wire ZIP;
	wire ZIPCI;
	wire ZOPCDU;
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
	wire n7XP11;
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
		#10 prop_clk = !prop_clk; // 20 ns gate delay

	always
		#244.140625 CLOCK = !CLOCK;  // 2.048 MHz clock

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
		prop_clk
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
		T12A,
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
		prop_clk
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
		MP3,
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
		prop_clk
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
		IC15_,
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
		n7XP11,
		T12USE_,
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
		R1C,
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
		prop_clk
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
		prop_clk
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
		L02_,
		L15_,
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
		NISQ,
		RB1_,
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
		A06_1_RB1_,
		A06_1_RPTSET,
		A06_1_ST2_,
		A06_1_n8PP4,
		A06_2_n8PP4,
		A06_3_n8PP4,
		WHOMP,
		WHOMP_,
		WHOMPA,
		RB1,
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
		n7XP11,
		n7XP14,
		n8XP4,
		n8XP10,
		reset,
		prop_clk
	);

	a07_service_gates a07(
		WT_,
		CT_,
		RT_,
		WY12_,
		WY_,
		WYD_,
		WB_,
		WZ_,
		WSC_,
		WL_,
		WCHG_,
		WA_,
		WS_,
		WQ_,
		WG_,
		RC_,
		RQ_,
		RSC_,
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
		SCAD_,
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
		prop_clk
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
		G04_,
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
		prop_clk
	);

	a09_four_bit_2 a09(
		A2XG_,
		MONEX,
		CLXC,
		CUG,
		WYLOG_,
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
		WG1G_,
		CGG,
		RGG_,
		L04_,
		WL04_,
		WL09_,
		WL10_,
		SA05,
		SA06,
		SA07,
		SA08,
		G05ED,
		G06ED,
		G07ED,
		R1C,
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
		XUY09_,
		XUY10_,
		WHOMP,
		CAD5,
		CAD6,
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
		L05_,
		L06_,
		L07_,
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
		G08_,
		GEM08,
		reset,
		prop_clk
	);

	a10_four_bit_3 a10(
		A2XG_,
		MONEX,
		CLXC,
		CUG,
		WYLOG_,
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
		WG1G_,
		CGG,
		RGG_,
		WL08_,
		WL13_,
		WL14_,
		SA09,
		SA10,
		SA11,
		SA12,
		R1C,
		L08_,
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
		XUY13_,
		XUY14_,
		WHOMP,
		WHOMPA,
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
		XUY09_,
		XUY10_,
		XUY12_,
		SUMA11_,
		SUMA12_,
		SUMB11_,
		SUMB12_,
		L09_,
		L10_,
		L11_,
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
		G12_,
		GEM12,
		reset,
		prop_clk
	);

	a11_four_bit_4 a11(
		A2XG_,
		MONEX,
		BXVX,
		CLXC,
		CUG,
		WYHIG_,
		WYDG_,
		CI13_,
		CO14,
		RULOG_,
		RUG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		G16SW_,
		CLG1G,
		CLG2G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBHG_,
		RCG_,
		WG2G_,
		WG3G_,
		WG4G_,
		WG5G_,
		L2GDG_,
		WG1G_,
		ONE,
		CGG,
		RGG_,
		WL01_,
		WL02_,
		WL12_,
		SA13,
		SA14,
		SA16,
		R1C,
		CH13,
		CH14,
		CH16,
		G01_,
		L12_,
		L16_,
		US2SG,
		MDT13,
		MDT14,
		MDT15,
		MDT16,
		XUY01_,
		XUY02_,
		WHOMPA,
		RL13_,
		RL14_,
		RL15_,
		RL16_,
		A11_1_RL13_,
		A11_2_RL13_,
		A11_3_RL13_,
		A11_4_RL13_,
		A11_1_RL14_,
		A11_2_RL14_,
		A11_3_RL14_,
		A11_4_RL14_,
		A11_1_RL15_,
		A11_2_RL15_,
		A11_3_RL15_,
		A11_4_RL15_,
		A11_1_RL16_,
		A11_2_RL16_,
		A11_3_RL16_,
		A11_4_RL16_,
		A11_1_L16_,
		WL13,
		WL13_,
		MWL13,
		WL14,
		WL14_,
		MWL14,
		WL15,
		WL15_,
		MWL15,
		WL16,
		WL16_,
		MWL16,
		EAC_,
		CO02,
		CO16,
		XUY13_,
		XUY14_,
		SUMA13_,
		SUMA14_,
		SUMA16_,
		SUMB13_,
		SUMB14_,
		SUMB16_,
		L13_,
		L14_,
		L15_,
		G13,
		G13_,
		GEM13,
		G14,
		G14_,
		GEM14,
		G15,
		G15_,
		GEM15,
		G16,
		G16_,
		GEM16,
		A15_,
		A16_,
		reset,
		prop_clk
	);

	a12_parity_s_register a12(
		G01,
		G02,
		G03,
		G04,
		G05,
		G06,
		G07,
		G08,
		G09,
		G10,
		G11,
		G12,
		G13,
		G14,
		G15,
		G16,
		TSUDO_,
		T7PHS4_,
		T12A,
		RAD,
		CGG,
		MONPAR,
		SAP,
		SCAD,
		GOJAM,
		TPARG_,
		n8XP5,
		EXTPLS,
		RELPLS,
		INHPLS,
		GEQZRO_,
		RADRZ,
		RADRG,
		PC15_,
		MGP_,
		GEMP,
		MSP,
		PALE,
		MPAL,
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
		WEDOPG_,
		WSG_,
		CSG,
		G01ED,
		G02ED,
		G03ED,
		G04ED,
		G05ED,
		G06ED,
		G07ED,
		S01,
		S01_,
		S02,
		S02_,
		S03,
		S03_,
		S04,
		S04_,
		S05,
		S05_,
		S06,
		S06_,
		S07,
		S07_,
		S08,
		S08_,
		S09,
		S09_,
		S10,
		S10_,
		S11,
		S11_,
		S12,
		S12_,
		OCTAD2,
		T02_,
		XB0_,
		XB1_,
		XB2_,
		XB3_,
		CYR_,
		SR_,
		CYL_,
		EDOP_,
		GINH,
		SUMA16_,
		SUMB16_,
		G16SW_,
		reset,
		prop_clk
	);

	a13_alarms a13(
		MSTRT,
		F05A_,
		F05B_,
		F07A,
		F07B_,
		F08B,
		F10A,
		F10B,
		F12B,
		F14B,
		FS01,
		FS09,
		FS10,
		FS13,
		FS14,
		PIPAFL,
		IIP,
		IIP_,
		TC0,
		TCF0,
		INKL,
		T03_,
		T04_,
		T09_,
		T10,
		PALE,
		WATCHP,
		NHALGA,
		T1P,
		T2P,
		T3P,
		T4P,
		T5P,
		T6P,
		CDUXP,
		CDUXM,
		CDUYP,
		CDUYM,
		CDUZP,
		CDUZM,
		TRNP,
		TRNM,
		SHAFTP,
		SHAFTM,
		PIPXP,
		PIPXM,
		PIPYP,
		PIPYM,
		PIPZP,
		PIPZM,
		BMAGXP,
		BMAGXM,
		BMAGYP,
		BMAGYM,
		BMAGZP,
		BMAGZM,
		INLNKP,
		INLNKM,
		RNRADP,
		RNRADM,
		GYROD,
		CDUXD,
		CDUYD,
		CDUZD,
		TRUND,
		SHAFTD,
		THRSTD,
		EMSD,
		OTLNKM,
		ALTM,
		PSEUDO,
		NISQL_,
		CTROR,
		VFAIL,
		NHVFAL,
		STNDBY_,
		DBLTST,
		n2FSFAL,
		SB0_,
		SB2_,
		ALTEST,
		P02,
		P02_,
		P03,
		P03_,
		CT_,
		SCAFAL,
		FLTOUT,
		CCH33,
		TEMPIN,
		TMPOUT,
		STRT2,
		SBY,
		GOJAM,
		ERRST,
		MSTRTP,
		MPIPAL_,
		MRPTAL_,
		MTCAL_,
		ALGA,
		MCTRAL_,
		MVFAIL_,
		SCAS10,
		FILTIN,
		SYNC4_,
		SYNC14_,
		MSCAFL_,
		MWARNF_,
		AGCWAR,
		CGCWAR,
		TMPCAU,
		MOSCAL_,
		OSCALM,
		RESTRT,
		STRT1,
		reset,
		prop_clk
	);

	a14_memory_timing_addressing a14(
		PHS2_,
		PHS3_,
		PHS4_,
		T01,
		T01_,
		T02_,
		T03,
		T03_,
		T04_,
		T05,
		T05_,
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
		T12_,
		T12A,
		S01,
		S01_,
		S02,
		S02_,
		S03,
		S03_,
		S04,
		S04_,
		S05,
		S05_,
		S06,
		S06_,
		S07,
		S07_,
		S08,
		S08_,
		S09,
		S09_,
		S10_,
		S11,
		S12,
		EB9,
		EB10,
		EB11_,
		TIMR,
		GOJAM,
		GOJ1,
		TCSAJ3,
		DV3764,
		MP1,
		MNHSBF,
		INOUT,
		CHINC,
		MAMU,
		STRT2,
		SCAD,
		ROP_,
		IHENV,
		SETAB,
		SETAB_,
		SETCD,
		SETCD_,
		STBF,
		SBF,
		RESETA,
		RESETB,
		RESETC,
		RESETD,
		STRGAT,
		CLROPE,
		ERAS,
		ERAS_,
		FNERAS_,
		WEX,
		WEY,
		RSTKX_,
		RSTKY_,
		ZID,
		SETEK,
		REX,
		REY,
		SBE,
		STBE,
		TPARG_,
		XB0,
		XB0_,
		XB0E,
		XB1,
		XB1_,
		XB1E,
		XB2,
		XB2_,
		XB2E,
		XB3,
		XB3_,
		XB3E,
		XB4,
		XB4_,
		XB4E,
		XB5,
		XB5_,
		XB5E,
		XB6,
		XB6_,
		XB6E,
		XB7,
		XB7_,
		XB7E,
		YB0,
		YB0_,
		YB0E,
		YB1,
		YB1_,
		YB1E,
		YB2,
		YB2_,
		YB2E,
		YB3,
		YB3_,
		YB3E,
		XT0,
		XT0_,
		XT0E,
		XT1,
		XT1_,
		XT1E,
		XT2,
		XT2_,
		XT2E,
		XT3,
		XT3_,
		XT3E,
		XT4,
		XT4_,
		XT4E,
		XT5,
		XT5_,
		XT5E,
		XT6,
		XT6_,
		XT6E,
		XT7,
		XT7_,
		XT7E,
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
		EAD09,
		EAD09_,
		EAD10,
		EAD10_,
		EAD11,
		EAD11_,
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
		reset,
		prop_clk
	);

	a15_rupt_service a15(
		WL01_,
		WL02_,
		WL03_,
		WL09_,
		WL10_,
		WL11_,
		WL12_,
		WL13_,
		WL14_,
		WL16_,
		SUMA01_,
		SUMB01_,
		SUMA02_,
		SUMB02_,
		SUMA03_,
		SUMB03_,
		SUMA11_,
		SUMB11_,
		SUMA12_,
		SUMB12_,
		SUMA13_,
		SUMB13_,
		SUMA14_,
		SUMB14_,
		SUMA16_,
		SUMB16_,
		WFBG_,
		CFBG,
		RFBG_,
		WEBG_,
		CEBG,
		REBG_,
		WBBEG_,
		U2BBKG_,
		RBBEG_,
		RSTRT,
		S10,
		S10_,
		S11_,
		S12_,
		E5,
		E6,
		E7_,
		XB0_,
		XB1_,
		XB4_,
		XB6_,
		XB7_,
		XT0_,
		XT1_,
		XT2_,
		XT3_,
		XT4_,
		XT5_,
		T10,
		RADRPT,
		GOJAM,
		HNDRPT,
		DNRPTA,
		WOVR,
		OVF_,
		KRPT,
		CA2_,
		CA3_,
		ZOUT_,
		KYRPT1,
		KYRPT2,
		MKRPT,
		UPRUPT,
		DLKPLS,
		RRPA,
		STRGAT,
		A15_1_RL09_,
		A15_1_RL10_,
		A15_1_RL11_,
		A15_1_RL12_,
		A15_1_RL13_,
		A15_1_RL14_,
		A15_1_RL15_,
		A15_1_RL16_,
		FB11,
		FB11_,
		FB12,
		FB12_,
		FB13,
		FB13_,
		FB14,
		FB14_,
		FB16,
		FB16_,
		EB9,
		EB9_,
		EB10,
		EB10_,
		EB11,
		EB11_,
		BBK1,
		BBK2,
		BBK3,
		F11,
		F11_,
		F12,
		F12_,
		F13,
		F13_,
		F14,
		F14_,
		F15,
		F15_,
		F16,
		F16_,
		RPTAD3,
		RPTAD4,
		RPTAD5,
		RPTAD6,
		RUPTOR_,
		T6RPT,
		WOVR_,
		STR412,
		STR311,
		STR210,
		STR19,
		STR14,
		STR58,
		STR912,
		LOMOD,
		HIMOD,
		ROPER,
		ROPES,
		ROPET,
		reset,
		prop_clk
	);

	a16_inout_i a16(
		CHWL01_,
		CHWL02_,
		CHWL03_,
		CHWL04_,
		CHWL05_,
		CHWL06_,
		CHWL07_,
		CHWL08_,
		CHWL09_,
		CHWL10_,
		CHWL11_,
		CHWL12_,
		CHWL13_,
		CHWL14_,
		GOJAM,
		XB2_,
		XB5_,
		XB6_,
		XT0_,
		XT1_,
		WCHG_,
		CCHG_,
		CH0705,
		CH0706,
		CH0707,
		CH1501,
		CH1502,
		CH1503,
		CH1504,
		CH3201,
		CH3202,
		CH3203,
		CH3204,
		CH3205,
		CH3206,
		CH3207,
		CH3208,
		WCH12_,
		CCH12,
		RCH12_,
		FLASH_,
		RCpXpP,
		RCmXmP,
		RCmXpP,
		RCpXmP,
		RCpXpY,
		RCmXmY,
		RCmXpY,
		RCpXmY,
		RCpZpR,
		RCmZmR,
		RCmZpR,
		RCpZmR,
		RCpYpR,
		RCmYmR,
		RCmYpR,
		RCpYmR,
		A16_1_CHOR01_,
		A16_2_CHOR01_,
		A16_1_CHOR02_,
		A16_2_CHOR02_,
		A16_1_CHOR03_,
		A16_2_CHOR03_,
		A16_1_CHOR04_,
		A16_2_CHOR04_,
		A16_1_CHOR05_,
		A16_2_CHOR05_,
		A16_1_CHOR06_,
		A16_2_CHOR06_,
		A16_1_CHOR07_,
		A16_2_CHOR07_,
		A16_1_CHOR08_,
		ZOPCDU,
		ENEROP,
		STARON,
		COARSE,
		ZIMCDU,
		ENERIM,
		S4BTAK,
		ZEROPT,
		DISDAC,
		ISSWAR,
		COMACT,
		UPLACT,
		TMPOUT,
		KYRLS,
		VNFLSH,
		OPEROR,
		CH1207,
		CH1208,
		CH1212,
		CH1213,
		CH1214,
		OT1207,
		OT1207_,
		TVCNAB,
		MROLGT,
		S4BSEQ,
		S4BOFF,
		reset,
		prop_clk
	);

	a17_inout_ii a17(
		F05A_,
		F05B_,
		F05D,
		XT1_,
		XT3_,
		XB0_,
		XB1_,
		XB2_,
		XB3_,
		WCHG_,
		CCHG_,
		CHWL01_,
		CHWL02_,
		CHWL03_,
		CHWL04_,
		CHWL05_,
		CHWL06_,
		CHWL07_,
		CHWL08_,
		CHWL09_,
		CHWL10_,
		CHWL11_,
		CHWL12_,
		CHWL13_,
		CHWL14_,
		CHWL16_,
		WCH13_,
		TPOR_,
		GOJAM,
		CH1113,
		CH1213,
		CH1214,
		CH1301,
		CH1302,
		CH1303,
		CH1304,
		CH1305,
		CH1306,
		CH1307,
		CH1308,
		CH1309,
		CH1310,
		CH1311,
		CH1312,
		CH1313,
		CH1314,
		CH1316,
		CH1401,
		CH1402,
		CH1403,
		CH1404,
		CH1405,
		CH1406,
		CH1407,
		CH1408,
		CH1409,
		CH1410,
		CH1411,
		CH1412,
		CH1413,
		CH1414,
		CH1416,
		ULLTHR,
		SMSEPR,
		SPSRDY,
		S4BSAB,
		LFTOFF,
		GUIREL,
		OPCDFL,
		IN3008,
		IMUOPR,
		CTLSAT,
		IMUCAG,
		CDUFAL,
		IMUFAL,
		ISSTOR,
		TEMPIN,
		IN3301,
		RRPONA,
		RRRLSC,
		ZEROP,
		OPMSW2,
		OPMSW3,
		STRPRS,
		LVDAGD,
		LRRLSC,
		CH3310,
		CH3312,
		PIPAFL,
		AGCWAR,
		OSCALM,
		MANRpP,
		MANRmP,
		MANRpY,
		MANRmY,
		MANRpR,
		MANRmR,
		TRANpX,
		TRANmX,
		TRANpY,
		TRANmY,
		TRANpZ,
		TRANmZ,
		HOLFUN,
		FREFUN,
		GCAPCL,
		MNIMpP,
		MNIMmP,
		MNIMpY,
		MNIMmY,
		MNIMpR,
		MNIMmR,
		TRST9,
		TRST10,
		PCHGOF,
		ROLGOF,
		LEMATT,
		IN3212,
		IN3213,
		IN3214,
		IN3216,
		A17_1_CHOR01_,
		A17_2_CHOR01_,
		A17_1_CHOR02_,
		A17_2_CHOR02_,
		A17_1_CHOR03_,
		A17_2_CHOR03_,
		A17_1_CHOR04_,
		A17_2_CHOR04_,
		A17_1_CHOR05_,
		A17_2_CHOR05_,
		A17_1_CHOR06_,
		A17_2_CHOR06_,
		A17_1_CHOR07_,
		A17_2_CHOR07_,
		A17_1_CHOR08_,
		A17_2_CHOR08_,
		A17_1_CHOR09_,
		A17_2_CHOR09_,
		A17_1_CHOR10_,
		A17_2_CHOR10_,
		A17_1_CHOR11_,
		A17_2_CHOR11_,
		A17_1_CHOR12_,
		A17_2_CHOR12_,
		A17_1_CHOR13_,
		A17_2_CHOR13_,
		A17_1_CHOR14_,
		A17_2_CHOR14_,
		A17_1_CHOR16_,
		A17_2_CHOR16_,
		CH3201,
		CH3202,
		CH3203,
		CH3204,
		CH3205,
		CH3206,
		CH3207,
		CH3208,
		CH3209,
		CH3210,
		CH3313,
		CH3314,
		CH3316,
		TRP31A,
		TRP31B,
		TRP32,
		HNDRPT,
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
		RYWD12,
		RYWD13,
		RYWD14,
		RYWD16,
		WCH11_,
		CCH11,
		RCH11_,
		reset,
		prop_clk
	);

	a18_inout_iii a18(
		T05,
		T11,
		F09A_,
		F09B,
		F09B_,
		F09D,
		F10A,
		F10A_,
		F17A_,
		F17B_,
		SB0_,
		SB2_,
		GOJAM,
		XT1_,
		XB5_,
		XB6_,
		CHWL01_,
		CHWL02_,
		CHWL03_,
		CHWL04_,
		CHWL11_,
		MKEY1,
		MKEY2,
		MKEY3,
		MKEY4,
		MKEY5,
		MAINRS,
		NKEY1,
		NKEY2,
		NKEY3,
		NKEY4,
		NKEY5,
		NAVRST,
		MARK,
		MRKREJ,
		MRKRST,
		SBYBUT,
		STOP,
		ALTEST,
		WCH13_,
		CCH13,
		RCH13_,
		F5ASB2_,
		F5BSB2_,
		GTSET_,
		GTRST_,
		RRIN0,
		RRIN1,
		LRIN0,
		LRIN1,
		CHAT11,
		CHBT11,
		CHAT12,
		CHBT12,
		CHAT13,
		CHBT13,
		CHAT14,
		CHBT14,
		CH1111,
		CH1112,
		CH1114,
		CH1116,
		CH1211,
		CH1212,
		CH1216,
		CH3311,
		CH3313,
		CH3314,
		CH3316,
		RCHG_,
		CHOR11_,
		CHOR12_,
		CHOR13_,
		CHOR14_,
		CHOR16_,
		DKEND,
		CCH33,
		RCH33_,
		CH1301,
		CH1302,
		CH1303,
		CH1304,
		CH1311,
		CH1501,
		CH1502,
		CH1503,
		CH1504,
		CH1505,
		CH1601,
		CH1602,
		CH1603,
		CH1604,
		CH1605,
		CH1606,
		CH1607,
		TPOR_,
		KYRPT1,
		KYRPT2,
		MKRPT,
		STNDBY,
		STNDBY_,
		SBY,
		SBYLIT,
		SBYREL_,
		ERRST,
		RADRPT,
		RRRANG,
		RRRARA,
		LRXVEL,
		LRYVEL,
		LRZVEL,
		LRRANG,
		RRSYNC,
		LRSYNC,
		RNRADP,
		RNRADM,
		A18_1_CHOR11_,
		A18_2_CHOR11_,
		A18_1_CHOR12_,
		A18_2_CHOR12_,
		A18_1_CHOR13_,
		A18_1_CHOR14_,
		A18_2_CHOR14_,
		A18_1_CHOR16_,
		CH11,
		CH12,
		CH13,
		CH14,
		CH16,
		END,
		DLKRPT,
		CH3312,
		reset,
		prop_clk
	);

	a19_inout_iv a19(
		T06_,
		F04A,
		F05A_,
		F05B_,
		F06B_,
		F07B,
		F07C_,
		F07D_,
		F09B_,
		F10A_,
		F10B_,
		FS10,
		CHWL01_,
		CHWL02_,
		CHWL03_,
		CHWL04_,
		CHWL05_,
		CHWL06_,
		CHWL07_,
		CHWL08_,
		CHWL09_,
		CHWL10_,
		CHWL11_,
		CHWL12_,
		CCHG_,
		WCH11_,
		CCH11,
		RCH11_,
		WCH13_,
		CCH13,
		RCH13_,
		WCH14_,
		CCH14,
		RCH14_,
		RCH33_,
		SHINC_,
		CSG,
		CA2_,
		CA4_,
		CA5_,
		CA6_,
		CXB0_,
		CXB7_,
		XT3_,
		XB3_,
		XB5_,
		XB6_,
		XB7_,
		BR1,
		BR1_,
		GTSET,
		GTSET_,
		GOJAM,
		GTONE,
		SB0_,
		SB1_,
		SB2,
		SB2_,
		WOVR_,
		OVF_,
		UPL0,
		UPL1,
		BLKUPL_,
		XLNK0,
		XLNK1,
		C45R,
		POUT_,
		MOUT_,
		ZOUT_,
		CAURST,
		T6ON_,
		SIGNX,
		SIGNY,
		SIGNZ,
		GATEX_,
		GATEY_,
		GATEZ_,
		BMGXP,
		BMGXM,
		BMGYP,
		BMGYM,
		BMGZP,
		BMGZM,
		ALT0,
		ALT1,
		ALRT0,
		ALRT1,
		ALTM,
		ALTSNC,
		F5ASB0_,
		F5ASB2,
		F5ASB2_,
		F5BSB2,
		F5BSB2_,
		OTLNKM,
		OTLNK0,
		OTLNK1,
		T1P,
		T2P,
		T3P,
		T4P,
		T5P,
		T6P,
		INLNKM,
		INLNKP,
		CCH33,
		CH3310,
		CH3311,
		CH1305,
		CH1306,
		CH1308,
		CH1309,
		CH1401,
		CH1402,
		CH1403,
		CH1404,
		CH1405,
		CH1406,
		CH1407,
		CH1408,
		CH1409,
		CH1410,
		THRSTD,
		EMSD,
		THRSTp,
		THRSTm,
		EMSp,
		EMSm,
		GYROD,
		GYXP,
		GYXM,
		GYYP,
		GYYM,
		GYZP,
		GYZM,
		GYENAB,
		GYRSET,
		GYRRST,
		FF1109_,
		FF1110_,
		FF1111_,
		FF1112_,
		CH1109,
		CH1110,
		CH1111,
		CH1112,
		ERRST,
		UPRUPT,
		RHCGO,
		BMAGXP,
		BMAGXM,
		BMAGYP,
		BMAGYM,
		BMAGZP,
		BMAGZM,
		reset,
		prop_clk
	);

	a20_counter_cell_i a20(
		BKTF_,
		RSSB,
		CDUXP,
		CDUXM,
		CDUYP,
		CDUYM,
		CDUZP,
		CDUZM,
		TRNP,
		TRNM,
		T1P,
		T2P,
		T3P,
		T4P,
		T5P,
		T6P,
		OCTAD3,
		CXB0_,
		CXB1_,
		XB2,
		CXB5_,
		CXB6_,
		XB7,
		C24A,
		C25A,
		C26A,
		C27A,
		C30A,
		C31A,
		C32A,
		C32P,
		C32M,
		C33A,
		C33P,
		C33M,
		C34A,
		C34P,
		C34M,
		C35A,
		C35P,
		C35M,
		reset,
		prop_clk
	);

	assign A2X_ = A05_1_A2X_ & A05_2_A2X_ & A06_1_A2X_;
	assign CHOR01_ = A16_1_CHOR01_ & A16_2_CHOR01_ & A17_1_CHOR01_ & A17_2_CHOR01_;
	assign CHOR02_ = A16_1_CHOR02_ & A16_2_CHOR02_ & A17_1_CHOR02_ & A17_2_CHOR02_;
	assign CHOR03_ = A16_1_CHOR03_ & A16_2_CHOR03_ & A17_1_CHOR03_ & A17_2_CHOR03_;
	assign CHOR04_ = A16_1_CHOR04_ & A16_2_CHOR04_ & A17_1_CHOR04_ & A17_2_CHOR04_;
	assign CHOR05_ = A16_1_CHOR05_ & A16_2_CHOR05_ & A17_1_CHOR05_ & A17_2_CHOR05_;
	assign CHOR06_ = A16_1_CHOR06_ & A16_2_CHOR06_ & A17_1_CHOR06_ & A17_2_CHOR06_;
	assign CHOR07_ = A16_1_CHOR07_ & A16_2_CHOR07_ & A17_1_CHOR07_ & A17_2_CHOR07_;
	assign CHOR08_ = A16_1_CHOR08_ & A17_1_CHOR08_ & A17_2_CHOR08_;
	assign CHOR09_ = A17_1_CHOR09_ & A17_2_CHOR09_;
	assign CHOR10_ = A17_1_CHOR10_ & A17_2_CHOR10_;
	assign CHOR11_ = A17_1_CHOR11_ & A17_2_CHOR11_ & A18_1_CHOR11_ & A18_2_CHOR11_;
	assign CHOR12_ = A17_1_CHOR12_ & A17_2_CHOR12_ & A18_1_CHOR12_ & A18_2_CHOR12_;
	assign CHOR13_ = A17_1_CHOR13_ & A17_2_CHOR13_ & A18_1_CHOR13_;
	assign CHOR14_ = A17_1_CHOR14_ & A17_2_CHOR14_ & A18_1_CHOR14_ & A18_2_CHOR14_;
	assign CHOR16_ = A17_1_CHOR16_ & A17_2_CHOR16_ & A18_1_CHOR16_;
	assign CI_ = A04_1_CI_ & A05_1_CI_ & A05_2_CI_ & A06_1_CI_;
	assign L16_ = A04_1_L16_ & A11_1_L16_;
	assign MONEX_ = A05_1_MONEX_ & A06_1_MONEX_;
	assign RA_ = A04_1_RA_ & A04_2_RA_ & A05_1_RA_ & A05_2_RA_ & A05_3_RA_;
	assign RB1_ = A04_1_RB1_ & A06_1_RB1_;
	assign RB_ = A04_1_RB_ & A04_2_RB_ & A05_1_RB_ & A05_2_RB_ & A05_3_RB_ & A05_4_RB_ & A06_1_RB_ & A06_2_RB_;
	assign RC_ = A04_1_RC_ & A04_2_RC_ & A05_1_RC_ & A05_2_RC_ & A05_3_RC_ & A06_1_RC_ & A06_2_RC_;
	assign RG_ = A05_1_RG_ & A05_2_RG_ & A05_3_RG_ & A05_4_RG_ & A06_1_RG_;
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
		#100000 $stop;
	end

endmodule
