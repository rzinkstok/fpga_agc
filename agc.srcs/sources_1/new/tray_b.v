`timescale 1ns / 1ps

module tray_b(
	input wire BPLUS,
	input wire CLROPE,
	input wire FILTIN,
	input wire GEM01,
	input wire GEM02,
	input wire GEM03,
	input wire GEM04,
	input wire GEM05,
	input wire GEM06,
	input wire GEM07,
	input wire GEM08,
	input wire GEM09,
	input wire GEM10,
	input wire GEM11,
	input wire GEM12,
	input wire GEM13,
	input wire GEM14,
	input wire GEM16,
	input wire GEMP,
	input wire HIMOD,
	input wire IL01,
	input wire IL02,
	input wire IL03,
	input wire IL04,
	input wire IL05,
	input wire IL06,
	input wire IL07,
	input wire LOMOD,
	input wire RESETA,
	input wire RESETB,
	input wire RESETC,
	input wire RESETD,
	input wire REX,
	input wire REY,
	input wire ROPER,
	input wire ROPES,
	input wire ROPET,
	input wire RSTKX_,
	input wire RSTKY_,
	input wire SBE,
	input wire SBF,
	input wire SCAS10,
	input wire SCAS17,
	input wire SETAB,
	input wire SETCD,
	input wire SETEK,
	input wire STR14,
	input wire STR19,
	input wire STR210,
	input wire STR311,
	input wire STR412,
	input wire STR58,
	input wire STR912,
	input wire WEX,
	input wire WEY,
	input wire XB0E,
	input wire XB1E,
	input wire XB2E,
	input wire XB3E,
	input wire XB4E,
	input wire XB5E,
	input wire XB6E,
	input wire XB7E,
	input wire XT0E,
	input wire XT1E,
	input wire XT2E,
	input wire XT3E,
	input wire XT4E,
	input wire XT5E,
	input wire XT6E,
	input wire XT7E,
	input wire YB0E,
	input wire YB1E,
	input wire YB2E,
	input wire YB3E,
	input wire YT0E,
	input wire YT1E,
	input wire YT2E,
	input wire YT3E,
	input wire YT4E,
	input wire YT5E,
	input wire YT6E,
	input wire YT7E,
	input wire ZID,
	input wire clk,
	input wire p28COM,

	output wire CLOCK,
	output wire FLTOUT,
	output wire MYCLMP,
	output wire SA01,
	output wire SA02,
	output wire SA03,
	output wire SA04,
	output wire SA05,
	output wire SA06,
	output wire SA07,
	output wire SA08,
	output wire SA09,
	output wire SA10,
	output wire SA11,
	output wire SA12,
	output wire SA13,
	output wire SA14,
	output wire SA16,
	output wire SAP,
	output wire SCAFAL,
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




	wire B01_1_SA01;
	wire B12_1_SA01;
	wire B01_1_SA02;
	wire B12_1_SA02;
	wire B01_1_SA03;
	wire B12_1_SA03;
	wire B01_1_SA04;
	wire B12_1_SA04;
	wire B01_1_SA05;
	wire B12_1_SA05;
	wire B01_1_SA06;
	wire B12_1_SA06;
	wire B01_1_SA07;
	wire B12_1_SA07;
	wire B01_1_SA08;
	wire B12_1_SA08;
	wire B01_1_SA09;
	wire B12_1_SA09;
	wire B01_1_SA10;
	wire B12_1_SA10;
	wire B01_1_SA11;
	wire B12_1_SA11;
	wire B01_1_SA12;
	wire B12_1_SA12;
	wire B01_1_SA13;
	wire B12_1_SA13;
	wire B01_1_SA14;
	wire B12_1_SA14;
	wire B01_1_SA16;
	wire B12_1_SA16;
	wire B01_1_SAP;
	wire B12_1_SAP;

	b01_fixed_memory b01fixedmemory(
		ROPER,
		ROPES,
		ROPET,
		LOMOD,
		HIMOD,
		STR14,
		STR58,
		STR912,
		STR19,
		STR210,
		STR311,
		STR412,
		SETAB,
		SETCD,
		RESETA,
		RESETB,
		RESETC,
		RESETD,
		IL01,
		IL02,
		IL03,
		IL04,
		IL05,
		IL06,
		IL07,
		SBF,
		CLROPE,
		B01_1_SA01,
		B01_1_SA02,
		B01_1_SA03,
		B01_1_SA04,
		B01_1_SA05,
		B01_1_SA06,
		B01_1_SA07,
		B01_1_SA08,
		B01_1_SA09,
		B01_1_SA10,
		B01_1_SA11,
		B01_1_SA12,
		B01_1_SA13,
		B01_1_SA14,
		B01_1_SAP,
		B01_1_SA16,
		clk,
		prop_clk,
		n0VDCA,
		p4VDC,
		reset
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

	b12_erasable_memory b12erasablememory(
		XB0E,
		XB1E,
		XB2E,
		XB3E,
		XB4E,
		XB5E,
		XB6E,
		XB7E,
		XT0E,
		XT1E,
		XT2E,
		XT3E,
		XT4E,
		XT5E,
		XT6E,
		XT7E,
		YB0E,
		YB1E,
		YB2E,
		YB3E,
		YT0E,
		YT1E,
		YT2E,
		YT3E,
		YT4E,
		YT5E,
		YT6E,
		YT7E,
		SETEK,
		RSTKX_,
		RSTKY_,
		ZID,
		SBE,
		REX,
		REY,
		WEX,
		WEY,
		GEM01,
		GEM02,
		GEM03,
		GEM04,
		GEM05,
		GEM06,
		GEM07,
		GEM08,
		GEM09,
		GEM10,
		GEM11,
		GEM12,
		GEM13,
		GEM14,
		GEMP,
		GEM16,
		B12_1_SA01,
		B12_1_SA02,
		B12_1_SA03,
		B12_1_SA04,
		B12_1_SA05,
		B12_1_SA06,
		B12_1_SA07,
		B12_1_SA08,
		B12_1_SA09,
		B12_1_SA10,
		B12_1_SA11,
		B12_1_SA12,
		B12_1_SA13,
		B12_1_SA14,
		B12_1_SAP,
		B12_1_SA16,
		n0VDCA,
		p4VDC,
		reset,
		prop_clk,
		clk
	);

	assign SA01 = B01_1_SA01 | B12_1_SA01;
	assign SA02 = B01_1_SA02 | B12_1_SA02;
	assign SA03 = B01_1_SA03 | B12_1_SA03;
	assign SA04 = B01_1_SA04 | B12_1_SA04;
	assign SA05 = B01_1_SA05 | B12_1_SA05;
	assign SA06 = B01_1_SA06 | B12_1_SA06;
	assign SA07 = B01_1_SA07 | B12_1_SA07;
	assign SA08 = B01_1_SA08 | B12_1_SA08;
	assign SA09 = B01_1_SA09 | B12_1_SA09;
	assign SA10 = B01_1_SA10 | B12_1_SA10;
	assign SA11 = B01_1_SA11 | B12_1_SA11;
	assign SA12 = B01_1_SA12 | B12_1_SA12;
	assign SA13 = B01_1_SA13 | B12_1_SA13;
	assign SA14 = B01_1_SA14 | B12_1_SA14;
	assign SA16 = B01_1_SA16 | B12_1_SA16;
	assign SAP = B01_1_SAP | B12_1_SAP;

endmodule
