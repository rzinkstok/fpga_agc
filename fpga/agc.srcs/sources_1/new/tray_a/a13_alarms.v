`timescale 1ns / 1ps

module a13_alarms(
    input wire MSTRT,
    input wire F05A_,
    input wire F05B_,
    input wire F07A,
    input wire F07B_,
    input wire F08B,
    input wire F10A,
    input wire F10B,
    input wire F12B,
    input wire F14B,
    input wire FS01,
    input wire FS09,
    input wire FS10,
    input wire FS13,
    input wire FS14,
    input wire PIPAFL,
    input wire IIP,
    input wire IIP_,
    input wire TC0,
    input wire TCF0,
    input wire INKL,
    input wire T03_,
    input wire T04_,
    input wire T09_,
    input wire T10,
    input wire T10_,
    input wire PALE,
    input wire WATCHP,
    input wire NHALGA,
    
    input wire T1P,
    input wire T2P,
    input wire T3P,
    input wire T4P,
    input wire T5P,
    input wire T6P,
    input wire CDUXP,
    input wire CDUXM,
    input wire CDUYP,
    input wire CDUYM,
    input wire CDUZP,
    input wire CDUZM,
    input wire TRNP,
    input wire TRNM,
    input wire SHAFTP,
    input wire SHAFTM,
    input wire PIPXP,
    input wire PIPXM,
    input wire PIPYP,
    input wire PIPYM,
    input wire PIPZP,
    input wire PIPZM,
    input wire BMAGXP,
    input wire BMAGXM,
    input wire BMAGYP,
    input wire BMAGYM,
    input wire BMAGZP,    
    input wire BMAGZM,
    input wire INLNKP,
    input wire INLNKM,
    input wire RNRADP,
    input wire RNRADM,
    input wire GYROD,
    input wire CDUXD,
    input wire CDUYD,
    input wire CDUZD,
    input wire TRUND,
    input wire SHAFTD,
    input wire THRSTD,
    input wire EMSD,
    input wire OTLNKM,
    input wire ALTM,
    input wire PSEUDO,
    input wire NISQL_,
    input wire CTROR,
    input wire VFAIL,
    input wire NHVFAL,
    input wire STNDBY_,
    input wire DBLTST,
    input wire n2FSFAL,
    input wire SB0_,
    input wire SB2_,
    input wire ALTEST,
    input wire P02,
    input wire P02_,
    input wire P03,
    input wire P03_,
    input wire CT_,
    input wire SCAFAL,
    input wire FLTOUT,
    input wire CCH33,
    input wire TEMPIN,
    input wire TMPOUT,
    input wire STRT2,
    input wire SBY,
    input wire GOJAM,
    input wire ERRST,
    
    input wire DLKRPT,
    input wire DRPRST,
    
    output wire MSTRTP,
    output wire MPIPAL_,
    output wire MRPTAL_,
    output wire MTCAL_,
    output wire ALGA,
    output wire MCTRAL_,
    output wire MVFAIL_,
    output wire SCAS10,
    output wire FILTIN,
    output wire SYNC4_,
    output wire SYNC14_,
    output wire MSCAFL_,
    output wire MSCDBL_,
    output wire MWARNF_,
    output wire AGCWAR,
    output wire CGCWAR,
    output wire TMPCAU,
    output wire MOSCAL_,
    output wire OSCALM,
    output wire RESTRT,
    output wire STRT1,
    output wire DLKPLS,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A13 sheet 1
    *  Sheet number 2005269/1
    *
    **************************/

    wire NOR41101_out;
    wire NOR41102_out;
    wire NOR41103_out;
    wire NOR41104_out;
    wire NOR41106_out;
    wire NOR41107_out;
    wire NOR41108_out;
    wire NOR41109_out;
    wire NOR41110_out;
    wire NOR41111_out;
    wire NOR41112_out;
    wire NOR41113_out;
    wire NOR41114_out;
    wire NOR41116_out;
    wire NOR41117_out;
    wire NOR41119_out;
    wire NOR41120_out;
    wire NOR41121_out;
    wire NOR41122_out;
    wire NOR41123_out;
    wire NOR41124_out;
    wire NOR41125_out;
    wire NOR41126_out;
    wire NOR41127_out;
    wire NOR41132_out;
    wire NOR41133_out;
    wire NOR41134_out;
    wire NOR41135_out;
    wire NOR41136_out;
    wire NOR41137_out;
    wire NOR41138_out;
    wire NOR41139_out;
    wire NOR41140_out;
    wire NOR41141_out;
    wire NOR41142_out;
    wire NOR41143_out;
    wire NOR41144_out;
    wire NOR41146_out;
    wire NOR41148_out;
    wire NOR41149_out;
    wire NOR41150_out;
    wire NOR41151_out;
    wire NOR41152_out;
    wire NOR41153_out;
    
    wire NOR49435_out;
    wire NOR49436_out;
    wire NOR49437_out;
    wire NOR49438_out;
    wire NOR49439_out;
    wire NOR49440_out;
    wire NOR49441_out;
    wire NOR49442_out;
    wire NOR49443_out;
    
    wire NOR41201_out;
    wire NOR41202_out;
    wire NOR41203_out;
    wire NOR41204_out;
    wire NOR41205_out;
    wire NOR41206_out;
    wire NOR41207_out;
    wire NOR41208_out;
    wire NOR41209_out;
    wire NOR41210_out;
    wire NOR41211_out;
    wire NOR41212_out;
    wire NOR41213_out;
    wire NOR41214_out;
    wire NOR41215_out;
    wire NOR41216_out;
    wire NOR41217_out;
    wire NOR41218_out;
    wire NOR41220_out;
    wire NOR41222_out;
    wire NOR41223_out;
    wire NOR41224_out;
    wire NOR41225_out;
    wire NOR41229_out;
    wire NOR41231_out;
    wire NOR41232_out;
    wire NOR41234_out;
    wire NOR41235_out;
    wire NOR41237_out;
    wire NOR41238_out;
    wire NOR41239_out;
    wire NOR41245_out;
    wire NOR41247_out;
    
    wire NOR41123_in;
    wire NOR41219_in;
    
    wire F12B_;
    wire FS13_;
    wire F14H;
    wire CKTAL_;
    wire CTPLS_;
    wire NOTEST;
    wire NOTEST_;
    wire DOFILT;
    wire CON1;
    wire CON2;
    wire CON3;
    wire SCADBL;
    wire WRNFLTFF;
    wire WARN;
    wire TEMPIN_;
    wire SBYEXT;
    
    // MSTRTP
    nor_3 #(1'b0)  NOR41101(NOR41101_out,   MSTRT,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41102(NOR41102_out,   F05B_,          NOR41101_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41103(NOR41103_out,   NOR41102_out,   NOR41104_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41104(NOR41104_out,   NOR41103_out,   NOR41101_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41105(MSTRTP,         F05A_,          NOR41103_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // MPIPAL_
    nor_3 #(1'b0)  NOR41106(NOR41106_out,   PIPAFL,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MPIPAL_ = NOR41106_out;
    
    // Interrupt flip-flops
    nor_3 #(1'b1)  NOR41107(NOR41107_out,   IIP,            NOR41108_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41108(NOR41108_out,   NOR41107_out,   F14B,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41109(NOR41109_out,   IIP_,           NOR41110_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41110(NOR41110_out,   NOR41109_out,   F14B,           n0VDCA,         p4SW, reset, prop_clk);
    
    // F14H
    // Moved here from A22 sheet 1
    nor_3 #(1'b0)  NOR47161(F12B_,          F12B,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47262(FS13_,          FS13,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47162(F14H,           F12B_,          FS14,           FS13_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41111(NOR41111_out,   F14H,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41112(NOR41112_out,   NOR41108_out,   NOR41111_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41113(NOR41113_out,   NOR41111_out,   NOR41110_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41114(NOR41114_out,   NOR41112_out,   NOR41113_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR41115 removed (fan-out expansion)
    assign MRPTAL_ = NOR41114_out;
    
    
    // Transfer control flip-flops
    nor_3 #(1'b0)  NOR41119(NOR41119_out,   TCF0,           TC0,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41120(NOR41120_out,   INKL,           T04_,           n0VDCA,         p4SW, reset, prop_clk);
    assign NOR41123_in = NOR41119_out & NOR41120_out;
     
    nor_3 #(1'b1)  NOR41121(NOR41121_out,   TC0,            TCF0,           NOR41122_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41122(NOR41122_out,   NOR41121_out,   F10B,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41123(NOR41123_out,   NOR41123_in,    NOR41124_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41124(NOR41124_out,   NOR41123_out,   F10B,           n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41125(NOR41125_out,   F10A,           NOR41122_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41126(NOR41126_out,   F10A,           NOR41124_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41127(NOR41127_out,   NOR41125_out,   NOR41126_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR41128 removed (fan-out expansion)
    assign MTCAL_ = NOR41127_out;
    
    // CKTAL_
    nor_3 #(1'b0)  NOR41116(NOR41116_out,   PALE,           NOR41112_out,   NOR41113_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41117(NOR41117_out,   NOR41125_out,   NOR41126_out,   WATCHP,         p4SW, reset, prop_clk);
    assign CKTAL_ = NOR41116_out & NOR41117_out;
    
    // ALGA
    nor_3 #(1'b0)  NOR41118(ALGA,           NHALGA,         CKTAL_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // CTPLS_
    // First 9 gates of CTPLS_ moved here from A24 sheet 2
    nor_3 #(1'b1)  NOR49435(NOR49435_out,   T1P,            T2P,            T3P,            p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49436(NOR49436_out,   T4P,            T5P,            T6P,            p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49437(NOR49437_out,   CDUXP,          CDUXM,          CDUYP,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49438(NOR49438_out,   CDUYM,          CDUZP,          CDUZM,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49439(NOR49439_out,   TRNP,           TRNM,           SHAFTP,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49440(NOR49440_out,   SHAFTM,         PIPXP,          PIPXM,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49441(NOR49441_out,   PIPYP,          PIPYM,          PIPZP,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49442(NOR49442_out,   PIPZM,          BMAGXP,         BMAGXM,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49443(NOR49443_out,   BMAGYP,         BMAGYM,         BMAGZP,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41132(NOR41132_out,   BMAGZM,         INLNKP,         INLNKM,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41133(NOR41133_out,   RNRADP,         RNRADM,         GYROD,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41134(NOR41134_out,   CDUXD,          CDUYD,          CDUZD,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41135(NOR41135_out,   TRUND,          SHAFTD,         THRSTD,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41136(NOR41136_out,   EMSD,           OTLNKM,         ALTM,           p4SW, reset, prop_clk);
    assign CTPLS_ = 
        NOR49435_out & NOR49436_out & NOR49437_out & NOR49438_out & NOR49439_out & 
        NOR49440_out & NOR49441_out & NOR49442_out & NOR49443_out &
        NOR41132_out & NOR41133_out & NOR41134_out & NOR41135_out & NOR41136_out;
    
    nor_3 #(1'b0)  NOR41137(NOR41137_out,   CTPLS_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41138(NOR41138_out,   NOR41137_out,   NOR41139_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41139(NOR41139_out,   NOR41138_out,   INKL,           n0VDCA,         p4SW, reset, prop_clk);
    
    // NOTEST_ moved here from A14 sheet 1
    nor_3 #(1'b0)  NOR42257(NOTEST_,        PSEUDO,         NISQL_,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOTEST moved here from A14 sheet 2
    nor_3 #(1'b0)  NOR42459(NOTEST,         NOTEST_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41140(NOR41140_out,   NOTEST,         NOR41138_out,   T09_,           p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41141(NOR41141_out,   NOR41140_out,   NOR41142_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41142(NOR41142_out,   NOR41141_out,   INKL,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41143(NOR41143_out,   T03_,           NOR41142_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41148(NOR41148_out,   T03_,           INKL,           CTROR,          p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR41149(NOR41149_out,   NOR41148_out,   NOR41150_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41150(NOR41150_out,   NOR41149_out,   F07A,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41151(NOR41151_out,   NOR41150_out,   F07B_,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41144(NOR41144_out,   NOR41143_out,   NOR41151_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR41145 removed (fan-out expansion)
    // Single monitor fan-in output, no cross-module fan-in
    assign MCTRAL_ = NOR41144_out;
    
    nor_3 #(1'b0)  NOR41146(NOR41146_out,   NOR41143_out,   NOR41151_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41147(DOFILT,         NOR41146_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41152(NOR41152_out,   DLKRPT,         NOR41153_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41153(NOR41153_out,   NOR41152_out,   DRPRST,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR41154(DLKPLS,         T10_,           NOR41152_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR41155 removed (fan-out expansion for gate on A14 sheet 2)
    // NOR41156 removed (fan-out expansion for gate on A14 sheet 2)
    // NOR41157 removed (fan-out expansion for gate on A14 sheet 2)
    // NOR41158 removed (fan-out expansion for gate on A14 sheet 2)
    
    
    nor_3 #(1'b0)  NOR41201(NOR41201_out,   VFAIL,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41202(NOR41202_out,   F05B_,          NOR41201_out,   n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41203(NOR41203_out,   NOR41202_out,   NOR41204_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41204(NOR41204_out,   NOR41203_out,   NOR41201_out,   NHVFAL,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41205(NOR41205_out,   F05A_,          NOR41203_out,   NHVFAL,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41206(NOR41206_out,   F05A_,          NOR41203_out,   STNDBY_,        p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41207(NOR41207_out,   NOR41205_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MVFAIL_ = NOR41207_out;
    
    // Next three gates moved here from A3 sheet 1
    nor_3 #(1'b0)  NOR30057(CON1,           DBLTST,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30058(CON2,           CON1,           FS09,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR30059(SCAS10,         CON2,           FS10,           n0VDCA,         p4SW, reset, prop_clk);

    nor_3 #(1'b0)  NOR41242(CON3,           CON2,           FS10,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41243(SCADBL,         CON3,           n2FSFAL,        n0VDCA,         p4VDC, reset, prop_clk);
    
    // Moved here from A12 sheet 1
    nor_3 #(1'b0) NOR34254(MSCDBL_,         SCADBL,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41209(NOR41209_out,   F14B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41210(NOR41210_out,   NOR41209_out,   SB2_,           n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41208(NOR41208_out,   NOR41206_out,   DOFILT,         SCADBL,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR41211(NOR41211_out,   ALTEST,         NOR41212_out,   n0VDCA,         p4VDC, reset, prop_clk);
    assign WRNFLTFF = NOR41208_out & NOR41211_out;
    nor_3 #(1'b0)  NOR41212(NOR41212_out,   NOR41211_out,   NOR41210_out,   n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41213(NOR41213_out,   NOR41209_out,   WRNFLTFF,       SB0_,           p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41214(NOR41214_out,   NOR41213_out,   NOR41215_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41215(NOR41215_out,   NOR41214_out,   F08B,           n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41216(NOR41216_out,   NOR41214_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    assign FILTIN = NOR41216_out;
    
    
    nor_3 #(1'b0)  NOR41217(NOR41217_out,   FS01,           P02,            n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41218(NOR41218_out,   P03_,           CT_,            n0VDCA,         p4VDC, reset, prop_clk);
    assign NOR41219_in = NOR41217_out & NOR41218_out;
    
    nor_3 #(1'b0)  NOR41219(SYNC4_,         NOR41219_in,    n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41220(NOR41220_out,   CT_,            P02_,           P03,            p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41221(SYNC14_,        NOR41220_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41222(NOR41222_out,   SCAFAL,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    assign MSCAFL_ = NOR41222_out;
    nor_3 #(1'b0)  NOR41223(NOR41223_out,   FLTOUT,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    assign MWARNF_ = NOR41223_out;
    
    nor_3 #(1'b0)  NOR41224(NOR41224_out,   FLTOUT,         SCAFAL,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR41225(NOR41225_out,   FLTOUT,         SCAFAL,         AGCWAR,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41226(AGCWAR,         NOR41225_out,   CCH33,          n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41227(WARN,           NOR41224_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41228(CGCWAR,         WARN,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Moved here from A18 sheet 1
    nor_3 #(1'b0)  NOR45262(TEMPIN_,        TEMPIN,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41229(NOR41229_out,   TEMPIN_,        TMPOUT,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41230(TMPCAU,         NOR41229_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41231(NOR41231_out,   STRT2,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    assign MOSCAL_ = NOR41231_out;
    
    nor_3 #(1'b1)  NOR41232(NOR41232_out,   STRT2,          OSCALM,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41233(OSCALM,         NOR41232_out,   CCH33,          n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR41234(NOR41234_out,   SBY,            NOR41235_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41235(NOR41235_out,   NOR41234_out,   T10,            n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41236(SBYEXT,         NOR41234_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR41237(NOR41237_out,   GOJAM,          NOR41238_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR41238(NOR41238_out,   NOR41237_out,   ERRST,          SBYEXT,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41239(NOR41239_out,   ALTEST,         NOR41238_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41240(RESTRT,         NOR41239_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // NOR41241 moved to A18 sheet 1
    // NOR41244 removed (not connected)
    
    nor_3 #(1'b0)  NOR41245(NOR41245_out,   NOR41204_out,   F05A_,          n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR41246(STRT1,          NOR41247_out,   NOR41245_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1)  NOR41247(NOR41247_out,   NOR41205_out,   STRT1,          n0VDCA,         p4VDC, reset, prop_clk);
    
endmodule
