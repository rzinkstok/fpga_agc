`timescale 1ns / 1ps

module agc_monitor_tb(
);

	reg MBR1 = 0;
	reg MBR2 = 0;
	reg MGOJAM = 0;
	reg MGP_ = 1;
	reg MIIP = 0;
	reg MINHL = 0;
	reg MINKL = 0;
	reg MNISQ = 0;
	reg MONWT = 0;
	reg MRGG = 0;
	reg MRULOG = 0;
	reg MSP = 0;
	reg MSQ10 = 0;
	reg MSQ11 = 0;
	reg MSQ12 = 0;
	reg MSQ13 = 0;
	reg MSQ14 = 0;
	reg MSQ16 = 0;
	reg MSQEXT = 0;
	reg MST1 = 0;
	reg MST2 = 0;
	reg MST3 = 0;
	reg MSTP = 0;
	reg MSTPIT_ = 1;
	reg MT01 = 0;
	reg MT02 = 0;
	reg MT03 = 0;
	reg MT04 = 0;
	reg MT05 = 0;
	reg MT06 = 0;
	reg MT07 = 0;
	reg MT08 = 0;
	reg MT09 = 0;
	reg MT10 = 0;
	reg MT11 = 0;
	reg MT12 = 0;
	reg MWAG = 0;
	reg MWBBEG = 0;
	reg MWBG = 0;
	reg MWEBG = 0;
	reg MWFBG = 0;
	reg MWG = 0;
	reg MWL01 = 0;
	reg MWL02 = 0;
	reg MWL03 = 0;
	reg MWL04 = 0;
	reg MWL05 = 0;
	reg MWL06 = 0;
	reg MWL07 = 0;
	reg MWL08 = 0;
	reg MWL09 = 0;
	reg MWL10 = 0;
	reg MWL11 = 0;
	reg MWL12 = 0;
	reg MWL13 = 0;
	reg MWL14 = 0;
	reg MWL15 = 0;
	reg MWL16 = 0;
	reg MWLG = 0;
	reg MWQG = 0;
	reg MWSG = 0;
	reg MWYG = 0;
	reg MWZG = 0;
	reg clk = 0;
	reg clkout = 0;
	reg reset = 0;
	reg rxf_n = 0;
	reg txe_n = 0;

	wire DBLTST;
	wire DOSCAL;
	wire MNHNC;
	wire MNHRPT;
	wire NHALGA;
	wire [6:1]dbg;
	wire [6:1]leds;
	wire nhstrt1;
	wire nhstrt2;
	wire oe_n;
	wire rd_n;
	wire siwu;
	wire wr_n;

	wire [7:0]data;

	reg [7:0]data_in;

	always
		# 5 clk = !clk;
	always
		#16.667 clkout = !clkout;

	assign data = (!rd_n) ? data_in : 8'bZ;

	agc_monitor agcmonitor(
		clk,
		reset,
		clkout,
		data,
		rxf_n,
		txe_n,
		rd_n,
		wr_n,
		oe_n,
		siwu,
		MONWT,
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
		MWL01,
		MWL02,
		MWL03,
		MWL04,
		MWL05,
		MWL06,
		MWL07,
		MWL08,
		MWL09,
		MWL10,
		MWL11,
		MWL12,
		MWL13,
		MWL14,
		MWL15,
		MWL16,
		MSQ10,
		MSQ11,
		MSQ12,
		MSQ13,
		MSQ14,
		MSQ16,
		MST1,
		MST2,
		MST3,
		MBR1,
		MBR2,
		MSQEXT,
		MNISQ,
		MSTP,
		MWAG,
		MWLG,
		MWQG,
		MWEBG,
		MWFBG,
		MWBBEG,
		MWZG,
		MWBG,
		MWSG,
		MWG,
		MWYG,
		MRULOG,
		MRGG,
		MGOJAM,
		MIIP,
		MSTPIT_,
		MINHL,
		MINKL,
		MSP,
		MGP_,
		MNHRPT,
		MNHNC,
		NHALGA,
		nhstrt1,
		nhstrt2,
		DOSCAL,
		DBLTST,
		leds,
		dbg
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
		#100;

		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h40;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h40;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h04;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h04;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#500 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'h21;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h0B;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		# 1000 $finish;
	end

endmodule
