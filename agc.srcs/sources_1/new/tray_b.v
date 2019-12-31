`timescale 1ns / 1ps

module tray_b(
	input wire BPLSSW,
	input wire BPLUS,
	input wire Q2A,
	input wire SCAS10,
	input wire SCAS17,
	input wire clk,
	input wire p28COM,

	output wire CLOCK,
	output wire MYCLMP,
	output wire STRT2,
	output wire VFAIL,
	output wire n2FSFAL,
	output wire prop_clk,
	output wire prop_clk_locked,

	input wire reset,
	input wire n0VDCA,
	input wire p4VDC,
	input wire p4SW
);





	b7_oscillator b7oscillator(
		reset,
		clk,
		prop_clk,
		prop_clk_locked,
		CLOCK
	);

	b8_alarm b8alarm(
		p28COM,
		BPLUS,
		p4VDC,
		n0VDCA,
		prop_clk,
		prop_clk_locked,
		reset,
		Q2A,
		BPLSSW,
		p4SW,
		SCAS10,
		SCAS17,
		VFAIL,
		STRT2,
		n2FSFAL,
		MYCLMP
	);


endmodule
