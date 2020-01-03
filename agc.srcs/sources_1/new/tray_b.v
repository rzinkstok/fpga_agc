`timescale 1ns / 1ps

module tray_b(
	input wire BPLUS,
	input wire FILTIN,
	input wire SCAS10,
	input wire SCAS17,
	input wire clk,
	input wire p28COM,

	output wire CLOCK,
	output wire FLTOUT,
	output wire MYCLMP,
	output wire SCAFAL,
	output wire STRT2,
	output wire VFAIL,
	output wire n2FSFAL,
	output wire prop_clk,
	output wire prop_clk_locked,

	input wire reset,
	input wire p4VDC,
	input wire p4SW
);





	b07_oscillator b07oscillator(
		reset,
		clk,
		prop_clk,
		prop_clk_locked,
		CLOCK
	);

	b08_alarm b08alarm(
		p28COM,
		BPLUS,
		p4VDC,
		prop_clk,
		prop_clk_locked,
		p4SW,
		SCAS10,
		SCAS17,
		FILTIN,
		VFAIL,
		STRT2,
		SCAFAL,
		n2FSFAL,
		MYCLMP,
		FLTOUT
	);


endmodule
