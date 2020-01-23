`timescale 1ns / 1ps

module agc_monitor_tb(
);

	reg [12:1] mt = 0;
	reg [16:1] mwl = 0;
	reg MONWT = 0;
	reg MRULOG = 0;
	reg MWAG = 0;
	reg MWBG = 0;
	reg MWLG = 0;
	reg MWQG = 0;
	reg MWYG = 0;
	reg MWZG = 0;
	reg clk = 0;
	reg clkout = 0;
	reg reset = 0;
	reg rxf_n = 0;
	reg txe_n = 0;

	wire MNHRPT;
	wire NHALGA;
	wire [6:1]dbg;
	wire [6:1]leds;
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
		 mt,
		 mwl,
		MWAG,
		MWLG,
		MWQG,
		MWZG,
		MWBG,
		MWYG,
		MRULOG,
		MNHRPT,
		NHALGA,
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

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'h80;
		@(posedge clkout) data_in = 8'h12;
		@(posedge clkout) data_in = 8'h34;
		@(posedge clkout) data_in = 8'h56;
		@(posedge clkout) data_in = 8'h78;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'h02;
		@(posedge clkout) data_in = 8'hDB;
		@(posedge clkout) data_in = 8'hDC;
		@(posedge clkout) data_in = 8'hDB;
		@(posedge clkout) data_in = 8'hDD;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'h05;
		@(posedge clkout) data_in = 8'hDB;
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'hDB;
		@(posedge clkout) data_in = 8'hDD;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'h06;
		@(posedge clkout) data_in = 8'h2A;
		@(posedge clkout) data_in = 8'h3B;
		@(posedge clkout) data_in = 8'h4C;
		@(posedge clkout) data_in = 8'h5D;
		@(posedge clkout) data_in = 8'h6E;
		@(posedge clkout) data_in = 8'h7F;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h40;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h40;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h04;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h01;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		#100 rxf_n = 1'b0;
		@(negedge oe_n) data_in = 8'hC0;
		@(negedge rd_n);
		@(posedge clkout) data_in = 8'hA0;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h04;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'h00;
		@(posedge clkout) data_in = 8'hC0;
		rxf_n = 1'b1;

		# 1000 $finish;
	end

endmodule
