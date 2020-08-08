`timescale 1ns / 1ps
`default_nettype none

module io_circuits(
    input wire clk,
    input wire rst_n,

    // Debounced inputs
    input wire MSTPIT_,
    input wire MONWT,
    input wire [12:1] MT,
    input wire [16:1] MWL,
    input wire MIIP,
    input wire MINHL,
    input wire MINKL,
    input wire MSQEXT,
    input wire [15:10] MSQ,
    input wire [3:1] MST,
    input wire [2:1] MBR,
    input wire MRSC,
    input wire MWAG,
    input wire MWLG,
    input wire MWQG,
    input wire MWEBG,
    input wire MWFBG,
    input wire MWBBEG,
    input wire MWZG,
    input wire MWBG,
    input wire MWSG,
    input wire MWG,
    input wire MWYG,
    input wire MRULOG,
    input wire MRGG,
    input wire MRCH,
    input wire MWCH,
    input wire MNISQ,
    input wire MSP,
    input wire MGP_,
    input wire MREQIN,
    input wire MTCSA_,
    
    input wire RESTRT,
    
    input wire RLYB01,
    input wire RLYB02,
    input wire RLYB03,
    input wire RLYB04,
    input wire RLYB05,
    input wire RLYB06,
    input wire RLYB07,
    input wire RLYB08,
    input wire RLYB09,
    input wire RLYB10,
    input wire RLYB11,
    
    input wire RYWD12,
    input wire RYWD13,
    input wire RYWD14,
    input wire RYWD16,
    
    input wire COMACT,
    input wire UPLACT,
    input wire TMPCAU,
    input wire KYRLS,
    input wire VNFLSH,
    input wire OPEROR,
    input wire SBYLIT,

    output wire dbMSTPIT_,
    output wire dbMONWT,
    output wire [12:1] dbMT,
    output wire [16:1] dbMWL,
    output wire dbMIIP,
    output wire dbMINHL,
    output wire dbMINKL,
    output wire dbMSQEXT,
    output wire [15:10] dbMSQ,
    output wire [3:1] dbMST,
    output wire [2:1] dbMBR,
    output wire dbMRSC,
    output wire dbMWAG,
    output wire dbMWLG,
    output wire dbMWQG,
    output wire dbMWEBG,
    output wire dbMWFBG,
    output wire dbMWBBEG,
    output wire dbMWZG,
    output wire dbMWBG,
    output wire dbMWSG,
    output wire dbMWG,
    output wire dbMWYG,
    output wire dbMRULOG,
    output wire dbMRGG,
    output wire dbMRCH,
    output wire dbMWCH,
    output wire dbMNISQ,
    output wire dbMSP,
    output wire dbMGP_,
    output wire dbMREQIN,
    output wire dbMTCSA_,
    
    output wire dbRESTRT,
    
    output wire dbRLYB01,
    output wire dbRLYB02,
    output wire dbRLYB03,
    output wire dbRLYB04,
    output wire dbRLYB05,
    output wire dbRLYB06,
    output wire dbRLYB07,
    output wire dbRLYB08,
    output wire dbRLYB09,
    output wire dbRLYB10,
    output wire dbRLYB11,
    
    output wire dbRYWD12,
    output wire dbRYWD13,
    output wire dbRYWD14,
    output wire dbRYWD16,
    
    output wire dbCOMACT,
    output wire dbUPLACT,
    output wire dbTMPCAU,
    output wire dbKYRLS,
    output wire dbVNFLSH,
    output wire dbOPEROR,
    output wire dbSBYLIT
);

    // Debounce AGC outputs before feeding them into the monitor
    debounce #(1,3)  db1(clk, rst_n, MSTPIT_, dbMSTPIT_);
    debounce #(1,3)  db2(clk, rst_n, MONWT, dbMONWT);
    debounce #(12,3) db3(clk, rst_n, MT, dbMT);
    debounce #(16,3) db4(clk, rst_n, MWL, dbMWL);
    debounce #(1,3)  db5(clk, rst_n, MIIP, dbMIIP);
    debounce #(1,3)  db6(clk, rst_n, MINHL, dbMINHL);
    debounce #(1,3)  db7(clk, rst_n, MINKL, dbMINKL);
    debounce #(1,3)  db8(clk, rst_n, MSQEXT, dbMSQEXT);
    debounce #(6,3)  db9(clk, rst_n, MSQ, dbMSQ);
    debounce #(3,3) db10(clk, rst_n, MST, dbMST);
    debounce #(2,3) db11(clk, rst_n, MBR, dbMBR);
    debounce #(1,3) db12(clk, rst_n, MRSC, dbMRSC);
    debounce #(1,3) db13(clk, rst_n, MWAG, dbMWAG);
    debounce #(1,3) db14(clk, rst_n, MWLG, dbMWLG);
    debounce #(1,3) db15(clk, rst_n, MWQG, dbMWQG);
    debounce #(1,3) db16(clk, rst_n, MWEBG, dbMWEBG);
    debounce #(1,3) db17(clk, rst_n, MWFBG, dbMWFBG);
    debounce #(1,3) db18(clk, rst_n, MWBBEG, dbMWBBEG);
    debounce #(1,3) db19(clk, rst_n, MWZG, dbMWZG);
    debounce #(1,3) db20(clk, rst_n, MWBG, dbMWBG);
    debounce #(1,3) db21(clk, rst_n, MWSG, dbMWSG);
    debounce #(1,3) db22(clk, rst_n, MWG, dbMWG);
    debounce #(1,3) db23(clk, rst_n, MWYG, dbMWYG);
    debounce #(1,3) db24(clk, rst_n, MRULOG, dbMRULOG);
    debounce #(1,3) db25(clk, rst_n, MRGG, dbMRGG);
    debounce #(1,3) db26(clk, rst_n, MRCH, dbMRCH);
    debounce #(1,3) db27(clk, rst_n, MWCH, dbMWCH);
    debounce #(1,3) db28(clk, rst_n, MNISQ, dbMNISQ);
    debounce #(1,3) db29(clk, rst_n, MSP, dbMSP);
    debounce #(1,3) db30(clk, rst_n, MGP_, dbMGP_);
    debounce #(1,3) db31(clk, rst_n, MREQIN, dbMREQIN);
    debounce #(1,3) db32(clk, rst_n, MTCSA_, dbMTCSA_);
    debounce #(1,3) db33(clk, rst_n, RESTRT, dbRESTRT);
    debounce #(1,3) db34(clk, rst_n, RLYB01, dbRLYB01);
    debounce #(1,3) db35(clk, rst_n, RLYB02, dbRLYB02);
    debounce #(1,3) db36(clk, rst_n, RLYB03, dbRLYB03);
    debounce #(1,3) db37(clk, rst_n, RLYB04, dbRLYB04);
    debounce #(1,3) db38(clk, rst_n, RLYB05, dbRLYB05);
    debounce #(1,3) db39(clk, rst_n, RLYB06, dbRLYB06);
    debounce #(1,3) db40(clk, rst_n, RLYB07, dbRLYB07);
    debounce #(1,3) db41(clk, rst_n, RLYB08, dbRLYB08);
    debounce #(1,3) db42(clk, rst_n, RLYB09, dbRLYB09);
    debounce #(1,3) db43(clk, rst_n, RLYB10, dbRLYB10);
    debounce #(1,3) db44(clk, rst_n, RLYB11, dbRLYB11);
    debounce #(1,3) db45(clk, rst_n, RYWD12, dbRYWD12);
    debounce #(1,3) db46(clk, rst_n, RYWD13, dbRYWD13);
    debounce #(1,3) db47(clk, rst_n, RYWD14, dbRYWD14);
    debounce #(1,3) db48(clk, rst_n, RYWD16, dbRYWD16);
    debounce #(1,3) db49(clk, rst_n, COMACT, dbCOMACT);
    debounce #(1,3) db50(clk, rst_n, UPLACT, dbUPLACT);
    debounce #(1,3) db51(clk, rst_n, TMPCAU, dbTMPCAU);
    debounce #(1,3) db52(clk, rst_n, KYRLS, dbKYRLS);
    debounce #(1,3) db53(clk, rst_n, VNFLSH, dbVNFLSH);
    debounce #(1,3) db54(clk, rst_n, OPEROR, dbOPEROR);
    debounce #(1,3) db55(clk, rst_n, SBYLIT, dbSBYLIT);

endmodule
`default_nettype wire