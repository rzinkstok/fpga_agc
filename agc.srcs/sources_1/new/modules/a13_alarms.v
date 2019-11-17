`timescale 1ns / 1ps

module a13_alarms(
    input wire MSTRT,
    input wire F05A_,
    input wire F05B_,
    input wire F07A,
    input wire F07B_,
    input wire F10A,
    input wire F10B,
    input wire F12B,
    input wire FS13,
    input wire F14B,
    input wire FS09,
    input wire FS10,
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
    input wire SB2_,
    input wire ALTEST,
    
    output wire MSTRTP,
    output wire MPIPAL_,
    output wire MRPTAL_,
    output wire MTCAL_,
    output wire ALGA,
    output wire MCTRAL_,
    output wire MVFAIL_,
    output wire SCAS10,
    
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
    
    // MSTRTP
    nor_1 #(1'b0) NOR41101(NOR41101_out,    MSTRT,                                                          reset, prop_clk);
    nor_2 #(1'b0) NOR41102(NOR41102_out,    F05B_,          NOR41101_out,                                   reset, prop_clk);
    nor_2 #(1'b1) NOR41103(NOR41103_out,    NOR41102_out,   NOR41104_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41104(NOR41104_out,    NOR41103_out,   NOR41101_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41105(MSTRTP,          F05A_,          NOR41103_out,                                   reset, prop_clk);
    
    // MPIPAL_
    nor_1 #(1'b0) NOR41106(NOR41106_out,    PIPAFL,                                                         reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MPIPAL_ = NOR41106_out;
    
    // Interrupt flip-flops
    nor_2 #(1'b1) NOR41107(NOR41107_out,    IIP,            NOR41108_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41108(NOR41108_out,    NOR41107_out,   F14B,                                           reset, prop_clk);
    
    nor_2 #(1'b1) NOR41109(NOR41109_out,    IIP_,           NOR41110_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41110(NOR41110_out,    NOR41109_out,   F14B,                                           reset, prop_clk);
    
    // F14H
    // Moved here from A22 sheet 1
    nor_1 #(1'b0) NOR47161(F12B_,           F12B,                                                           reset, prop_clk);
    nor_1 #(1'b0) NOR47262(FS13_,           FS13,                                                           reset, prop_clk);
    nor_3 #(1'b0) NOR47162(F14H,            F12B_,          FS14,           FS13_,                          reset, prop_clk);
    
    nor_1 #(1'b0) NOR41111(NOR41111_out,    F14H,                                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41112(NOR41112_out,    NOR41108_out,   F14H,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41113(NOR41113_out,    F14H,           NOR41110_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR41114(NOR41114_out,    NOR41112_out,   NOR41113_out,                                   reset, prop_clk);
    // NOR41115 omitted (fan-out expansion)
    assign MRPTAL_ = NOR41114_out;
    
    
    // Transfer control flip-flops
    nor_4 #(1'b0) NOR41119(NOR41119_out,    TCF0,           TC0,            INKL,           T04_,           reset, prop_clk);
    // NOR41120 merged into NOR41119
    
    nor_3 #(1'b1) NOR41121(NOR41121_out,    TC0,            TCF0,           NOR41122_out,                   reset, prop_clk);
    nor_2 #(1'b0) NOR41122(NOR41122_out,    NOR41121_out,   F10B,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR41123(NOR41123_out,    NOR41119_out,   NOR41124_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41124(NOR41124_out,    NOR41123_out,   F10B,                                           reset, prop_clk);
    
    nor_2 #(1'b0) NOR41125(NOR41125_out,    F10A,           NOR41122_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41126(NOR41126_out,    F10A,           NOR41124_out,                                   reset, prop_clk);
    
    nor_2 #(1'b0) NOR41127(NOR41127_out,    NOR41125_out,   NOR41126_out,                                   reset, prop_clk);
    // NOR41128 omitted (fan-out expansion)
    assign MTCAL_ = NOR41127_out;
    
    // CKTAL_
    nor_3 #(1'b0) NOR41116(NOR41116_out,    PALE,           NOR41112_out,   NOR41113_out,                   reset, prop_clk);
    nor_3 #(1'b0) NOR41117(NOR41117_out,    NOR41125_out,   NOR41126_out,   WATCHP,                         reset, prop_clk);
    assign CKTAL_ = NOR41116_out & NOR41117_out;
    
    // ALGA
    nor_2 #(1'b0) NOR41118(ALGA,            NHALGA,         CKTAL_,                                         reset, prop_clk);
    
    // CTPLS_
    // First 9 gates of CTPLS_ moved here from A24 sheet 2
    nor_3 #(1'b1) NOR49435(NOR49435_out,    T1P,            T2P,            T3P,                            reset, prop_clk);
    nor_3 #(1'b1) NOR49436(NOR49436_out,    T4P,            T5P,            T6P,                            reset, prop_clk);
    nor_3 #(1'b1) NOR49437(NOR49437_out,    CDUXP,          CDUXM,          CDUYP,                          reset, prop_clk);
    nor_3 #(1'b1) NOR49438(NOR49438_out,    CDUYM,          CDUZP,          CDUZM,                          reset, prop_clk);
    nor_3 #(1'b1) NOR49439(NOR49439_out,    TRNP,           TRNM,           SHAFTP,                         reset, prop_clk);
    nor_3 #(1'b1) NOR49440(NOR49440_out,    SHAFTM,         PIPXP,          PIPXM,                          reset, prop_clk);
    nor_3 #(1'b1) NOR49441(NOR49441_out,    PIPYP,          PIPYM,          PIPZP,                          reset, prop_clk);
    nor_3 #(1'b1) NOR49442(NOR49442_out,    PIPZM,          BMAGXP,         BMAGXM,                         reset, prop_clk);
    nor_3 #(1'b1) NOR49443(NOR49443_out,    BMAGYP,         BMAGYM,         BMAGZP,                         reset, prop_clk);
    nor_3 #(1'b1) NOR41132(NOR41132_out,    BMAGZM,         INLNKP,         INLNKM,                         reset, prop_clk);
    nor_3 #(1'b1) NOR41133(NOR41133_out,    RNRADP,         RNRADM,         GYROD,                          reset, prop_clk);
    nor_3 #(1'b1) NOR41134(NOR41134_out,    CDUXD,          CDUYD,          CDUZD,                          reset, prop_clk);
    nor_3 #(1'b1) NOR41135(NOR41135_out,    TRUND,          SHAFTD,         THRSTD,                         reset, prop_clk);
    nor_3 #(1'b1) NOR41136(NOR41136_out,    EMSD,           OTLNKM,         ALTM,                           reset, prop_clk);
    assign CTPLS_ = 
        NOR49435_out & NOR49436_out & NOR49437_out & NOR49438_out & NOR49439_out & 
        NOR49440_out & NOR49441_out & NOR49442_out & NOR49443_out &
        NOR41132_out & NOR41133_out & NOR41134_out & NOR41135_out & NOR41136_out;
    
    nor_1 #(1'b0) NOR41137(NOR41137_out,    CTPLS_,                                                         reset, prop_clk);
    nor_2 #(1'b1) NOR41138(NOR41138_out,    NOR41137_out,   NOR41139_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41139(NOR41139_out,    NOR41138_out,   INKL,                                           reset, prop_clk);
    
    // NOTEST_ moved here from A14 sheet 1
    nor_2 #(1'b0) NOR42257(NOTEST_,         PSEUDO,         NISQL_,                                         reset, prop_clk);
    
    // NOTEST moved here from A14 sheet 2
    nor_1 #(1'b0) NOR42459(NOTEST,          NOTEST_,                                                        reset, prop_clk);
    
    nor_3 #(1'b0) NOR41140(NOR41140_out,    NOTEST,         NOR41138_out,   T09_,                           reset, prop_clk);
    nor_2 #(1'b1) NOR41141(NOR41141_out,    NOR41140_out,   NOR41142_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41142(NOR41142_out,    NOR41141_out,   INKL,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41143(NOR41143_out,    T03_,           NOR41142_out,                                   reset, prop_clk);
    
    nor_3 #(1'b0) NOR41148(NOR41148_out,    T03_,           INKL,           CTROR,                          reset, prop_clk);
    nor_2 #(1'b1) NOR41149(NOR41149_out,    NOR41148_out,   NOR41150_out,                                   reset, prop_clk);
    nor_2 #(1'b0) NOR41150(NOR41150_out,    NOR41149_out,   F07A,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41151(NOR41151_out,    NOR41150_out,   F07B_,                                          reset, prop_clk);
    
    nor_2 #(1'b0) NOR41144(NOR41144_out,    NOR41143_out,   NOR41151_out,                                   reset, prop_clk);
    // NOR41145 omitted (fan-out expansion)
    // Single monitor fan-in output, no cross-module fan-in
    assign MCTRAL_ = NOR41144_out;
    
    nor_2 #(1'b0) NOR41146(NOR41146_out,    NOR41143_out,   NOR41151_out,                                   reset, prop_clk);
    nor_1 #(1'b0) NOR41147(DOFILT,          NOR41146_out,                                                   reset, prop_clk);
    
    // NOR41152 omitted (not used)
    // NOR41153 omitted (not used)
    // NOR41154 omitted (not used)
    // NOR41155 omitted (fan-out expansion for gate on A14 sheet 2)
    // NOR41156 omitted (fan-out expansion for gate on A14 sheet 2)
    // NOR41157 omitted (fan-out expansion for gate on A14 sheet 2)
    // NOR41158 omitted (fan-out expansion for gate on A14 sheet 2)
    
    
    nor_1 #(1'b0) NOR41201(NOR41201_out,    VFAIL,                                                          reset, prop_clk);
    nor_2 #(1'b0) NOR41202(NOR41202_out,    F05B_,          NOR41201_out,                                   reset, prop_clk);
    
    nor_2 #(1'b1) NOR41203(NOR41203_out,    NOR41202_out,   NOR41204_out,                                   reset, prop_clk);
    nor_3 #(1'b0) NOR41204(NOR41204_out,    NOR41203_out,   NOR41201_out,   NHVFAL,                         reset, prop_clk);
    
    nor_3 #(1'b0) NOR41205(NOR41205_out,    F05A_,          NOR41203_out,   NHVFAL,                         reset, prop_clk);
    nor_3 #(1'b0) NOR41206(NOR41206_out,    F05A_,          NOR41203_out,   STNDBY_,                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR41207(NOR41207_out,    NOR41205_out,                                                   reset, prop_clk);
    // Single monitor fan-in output, no cross-module fan-in
    assign MVFAIL_ = NOR41207_out;
    
    // Next three gates moved here from A3 sheet 1
    nor_1 #(1'b0) NOR30057(CON1,            DBLTST,                                                         reset, prop_clk);
    nor_2 #(1'b0) NOR30058(CON2,            CON1,           FS09,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR30059(SCAS10,          CON2,           FS10,                                           reset, prop_clk);

    nor_2 #(1'b0) NOR41242(CON3,            CON2,           FS10,                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41243(SCADBL,          CON3,           n2FSFAL,                                        reset, prop_clk);
    
    nor_1 #(1'b0) NOR41209(NOR41209_out,    F14B,                                                           reset, prop_clk);
    nor_2 #(1'b0) NOR41210(NOR41210_out,    NOR41209_out,   SB2_,                                           reset, prop_clk);
    
    nor_3 #(1'b1) NOR41208(NOR41208_out,    NOR41206_out,   DOFILT,         SCADBL,                         reset, prop_clk);
    nor_2 #(1'b1) NOR41211(NOR41211_out,    ALTEST,         NOR41212_out,                                   reset, prop_clk);
    assign WRNFLTFF = NOR41208_out & NOR41211_out;
    nor_2 #(1'b0) NOR41212(NOR41212_out,    NOR41211_out,   NOR41210_out,                                   reset, prop_clk);
    
    
    // NOR41241 moved to A18 sheet 1
    
endmodule
