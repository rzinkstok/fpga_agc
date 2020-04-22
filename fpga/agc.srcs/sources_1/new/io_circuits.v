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
    output wire dbMTCSA_

    // Open-drain outputs
//    input wire mnhsbf_pp,
//    input wire mamu_pp,
//    input wire [16:1] mdt_pp,
//    input wire monpar_pp,
//    input wire mstrt_pp,
//    input wire mstp_pp,
//    input wire mnhrpt_pp,
//    input wire mnhnc_pp,
//    input wire nhalga_pp,
//    input wire doscal_pp,
//    input wire dbltst_pp,
//    input wire mread_pp,
//    input wire mload_pp,
//    input wire mrdch_pp,
//    input wire mldch_pp,
//    input wire mtcsai_pp,
//    input wire monwbk_pp,

//    output wire mnhsbf,
//    output wire mamu,
//    output wire [16:1] mdt,
//    output wire monpar,
//    output wire mstrt,
//    output wire mstp,
//    output wire mnhrpt,
//    output wire mnhnc,
//    output wire nhalga,
//    output wire doscal,
//    output wire dbltst,
//    output wire mread,
//    output wire mload,
//    output wire mrdch,
//    output wire mldch,
//    output wire mtcsai,
//    output wire monwbk
);

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
    
//    od_buf #(1)  od1(mnhsbf_pp, mnhsbf);
//    od_buf #(1)  od2(mamu_pp, mamu);
//    od_buf #(16) od3(mdt_pp, mdt);
//    od_buf #(1)  od4(monpar_pp, monpar);
//    od_buf #(1)  od5(mstrt_pp, mstrt);
//    od_buf #(1)  od6(mstp_pp, mstp);
//    od_buf #(1)  od7(mnhrpt_pp, mnhrpt);
//    od_buf #(1)  od8(mnhnc_pp, mnhnc);
//    od_buf #(1)  od9(nhalga_pp, nhalga);
//    od_buf #(1) od10(doscal_pp, doscal);
//    od_buf #(1) od11(dbltst_pp, dbltst);
//    od_buf #(1) od12(mread_pp, mread);
//    od_buf #(1) od13(mload_pp, mload);
//    od_buf #(1) od14(mrdch_pp, mrdch);
//    od_buf #(1) od15(mldch_pp, mldch);
//    od_buf #(1) od16(mtcsai_pp, mtcsai);
//    od_buf #(1) od17(monwbk_pp, monwbk);

endmodule
`default_nettype wire