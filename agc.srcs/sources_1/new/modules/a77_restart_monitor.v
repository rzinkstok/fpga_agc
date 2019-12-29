`timescale 1ns / 1ps

module a77_restart_monitor(
    input wire MT01,
    input wire MT05,
    input wire MT12,
    
    input wire MWL01,
    input wire MWL02,
    input wire MWL03,
    input wire MWL04,
    input wire MWL05,
    input wire MWL06,
    
    input wire MWSG,
    input wire MWCH,
    input wire MRCH,
    
    input wire MPAL_,
    input wire MTCAL_,
    input wire MRPTAL_,
    input wire MWATCH_,
    input wire MVFAIL_,
    input wire MCTRAL_,
    input wire MSCAFL_,
    input wire MSCDBL_,

    output wire A77_1_MDT01,
    output wire A77_1_MDT02,
    output wire A77_1_MDT03,
    output wire A77_1_MDT04,
    output wire A77_1_MDT05,
    output wire A77_1_MDT06,
    output wire A77_1_MDT07,
    output wire A77_1_MDT08,
    output wire A77_1_MDT09,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    wire NOR0001A_out;
    wire NOR0001B_out;
    wire NOR0002A_out;
    wire NOR0002B_out;
    wire NOR0003A_out;
    wire NOR0003B_out;
    wire NOR0004A_out;
    wire NOR0004B_out;
    wire NOR0005A_out;
    wire NOR0006A_out;
    wire NOR0006B_out;
    wire NOR0007A_out;
    wire NOR0008A_out;
    wire NOR0008B_out;
    wire NOR0010A_out;
    wire NOR0010B_out;
    wire NOR0011A_out;
    wire NOR0011B_out;
    wire NOR0012A_out;
    wire NOR0013A_out;
    wire NOR0013B_out;
    wire NOR0014A_out;
    wire NOR0014B_out;
    wire NOR0015A_out;
    wire NOR0015B_out;
    wire NOR0016A_out;
    wire NOR0016B_out;
    wire NOR0017A_out;
    wire NOR0017B_out;
    wire NOR0018A_out;
    wire NOR0018B_out;
    wire NOR0019A_out;
    wire NOR0019B_out;
    wire NOR0020A_out;
    wire NOR0020B_out;
    wire NOR0021A_out;
    wire NOR0021B_out;
    wire NOR0022A_out;
    wire NOR0022B_out;
    wire NOR0023A_out;
    wire NOR0023B_out;
    wire NOR0024A_out;
    wire NOR0024B_out;
    wire NOR0025A_out;
    wire NOR0025B_out;
    wire NOR0026A_out;
    wire NOR0026B_out;
    wire NOR0027A_out;
    wire NOR0027B_out;
    wire NOR0028A_out;
    wire NOR0028B_out;
    wire NOR0029A_out;
    wire NOR0029B_out;
    
    
    wire NOR0006B_in;
    wire CCH77;
    wire RCH77_;
    wire NHCH77;
    
    // Inhibit channel 77 is tied low
    assign NHCH77 = n0VDCA;
    
    nor_3 #(1'b0) NOR0001A(NOR0001A_out,    MWL01,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0002A(NOR0002A_out,    MWL02,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0002B(NOR0002B_out,    MWL03,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0001B(NOR0001B_out,    NOR0001A_out,   NOR0002A_out,   NOR0002B_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0003A(NOR0003A_out,    MWL04,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0003B(NOR0003B_out,    MWL05,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0004A(NOR0004A_out,    MWL06,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0010A(NOR0010A_out,    NOR0003A_out,   NOR0003B_out,   NOR0004A_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0004B(NOR0004B_out,    MT01,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0005A(NOR0005A_out,    MWSG,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0010B(NOR0010B_out,    NOR0004B_out,   NOR0005A_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    assign NOR0006B_in = NOR0001B_out & NOR0010A_out & NOR0010B_out;
    
    nor_3 #(1'b0) NOR0006A(NOR0006A_out,    MT12,           NOR0006B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0006B(NOR0006B_out,    NOR0006A_out,   NOR0006B_in,    n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0007A(NOR0007A_out,    MWCH,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0005B(CCH77,           NOR0006B_out,   NOR0007A_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR0007B removed (fan-out expansion)
    
    nor_3 #(1'b0) NOR0008A(NOR0008A_out,    MRCH,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0008B(NOR0008B_out,    NOR0006B_out,   NOR0008A_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0009A(RCH77_,          NOR0008B_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR0009B removed (fan-out expansion)
    
    nor_3 #(1'b0) NOR0011A(NOR0011A_out,    MPAL_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0011B(NOR0011B_out,    NOR0011A_out,   NOR0021B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0021B(NOR0021B_out,    NOR0011B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0021A(A77_1_MDT01,     NHCH77,         NOR0011B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0012A(NOR0012A_out,    MT05,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0013A(NOR0013A_out,    MPAL_,          NOR0012A_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0013B(NOR0013B_out,    NOR0013A_out,   NOR0022B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0022B(NOR0022B_out,    NOR0013B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0022A(A77_1_MDT02,     NHCH77,         NOR0013B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0014A(NOR0014A_out,    MTCAL_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0014B(NOR0014B_out,    NOR0014A_out,   NOR0023B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0023B(NOR0023B_out,    NOR0014B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0023A(A77_1_MDT03,     NHCH77,         NOR0014B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0015A(NOR0015A_out,    MRPTAL_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0015B(NOR0015B_out,    NOR0015A_out,   NOR0024B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0024B(NOR0024B_out,    NOR0015B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0024A(A77_1_MDT04,     NHCH77,         NOR0015B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0016A(NOR0016A_out,    MWATCH_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0016B(NOR0016B_out,    NOR0016A_out,   NOR0025B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0025B(NOR0025B_out,    NOR0016B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0025A(A77_1_MDT05,     NHCH77,         NOR0016B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0017A(NOR0017A_out,    MVFAIL_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0017B(NOR0017B_out,    NOR0017A_out,   NOR0026B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0026B(NOR0026B_out,    NOR0017B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0026A(A77_1_MDT06,     NHCH77,         NOR0017B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0018A(NOR0018A_out,    MCTRAL_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0018B(NOR0018B_out,    NOR0018A_out,   NOR0027B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0027B(NOR0027B_out,    NOR0018B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0027A(A77_1_MDT07,     NHCH77,         NOR0018B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0019A(NOR0019A_out,    MSCAFL_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0019B(NOR0019B_out,    NOR0019A_out,   NOR0028B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0028B(NOR0028B_out,    NOR0019B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0028A(A77_1_MDT08,     NHCH77,         NOR0019B_out,   RCH77_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0) NOR0020A(NOR0020A_out,    MSCDBL_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1) NOR0020B(NOR0020B_out,    NOR0020A_out,   NOR0029B_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0029B(NOR0029B_out,    NOR0020B_out,   CCH77,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0) NOR0029A(A77_1_MDT09,     NHCH77,         NOR0020B_out,   RCH77_,         p4SW, reset, prop_clk);
    
endmodule
