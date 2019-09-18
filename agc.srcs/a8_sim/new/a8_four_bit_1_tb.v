`timescale 1ns / 1ps

module a8_four_bit_1_tb();

	reg A2XG_ = 1;
	reg BBK1 = 0;
	reg BBK2 = 0;
	reg BBK3 = 0;
	reg CAD1 = 0;
	reg CAD2 = 0;
	reg CAD3 = 0;
	reg CAD4 = 0;
	reg CAG = 0;
	reg CBG = 0;
	reg CGG = 0;
	reg CH01 = 0;
	reg CH02 = 0;
	reg CH03 = 0;
	reg CH04 = 0;
	reg CI01_ = 1;
	reg CLG1G = 0;
	reg CLXC = 0;
	reg CQG = 0;
	reg CUG = 0;
	reg CZG = 0;
	reg G01ED = 0;
	reg G02ED = 0;
	reg G03ED = 0;
	reg G04ED = 0;
	reg G05_ = 1;
	reg G06_ = 1;
	reg G07_ = 1;
	reg G2LSG_ = 1;
	reg L2GDG_ = 1;
	reg MCRO_ = 1;
	reg MDT01 = 0;
	reg MDT02 = 0;
	reg MDT03 = 0;
	reg MDT04 = 0;
	reg MONEX = 0;
	reg PONEX = 0;
	reg R15 = 0;
	reg R1C = 0;
	reg R6 = 0;
	reg RAG_ = 1;
	reg RB1 = 0;
	reg RB1F = 0;
	reg RB2 = 0;
	reg RBLG_ = 1;
	reg RCG_ = 1;
	reg RGG_ = 1;
	reg RLG_ = 1;
	reg RPTAD3 = 0;
	reg RPTAD4 = 0;
	reg RQG_ = 1;
	reg RULOG_ = 1;
	reg RZG_ = 1;
	reg S08 = 0;
	reg S08_ = 1;
	reg SA01 = 0;
	reg SA02 = 0;
	reg SA03 = 0;
	reg SA04 = 0;
	reg SETAB_ = 1;
	reg SETCD_ = 1;
	reg SIM_CLK = 1;
	reg TWOX = 0;
	reg WAG_ = 1;
	reg WALSG_ = 1;
	reg WBG_ = 1;
	reg WG1G_ = 1;
	reg WG3G_ = 1;
	reg WG4G_ = 1;
	reg WHOMP = 0;
	reg WHOMPA = 0;
	reg WL05_ = 1;
	reg WL06_ = 1;
	reg WL16_ = 1;
	reg WLG_ = 1;
	reg WQG_ = 1;
	reg WYDG_ = 1;
	reg WYDLOG_ = 1;
	reg WYLOG_ = 1;
	reg WZG_ = 1;
	reg XUY05_ = 1;
	reg XUY06_ = 1;

	wire CI05_;
	wire CLEARA;
	wire CLEARB;
	wire CLEARC;
	wire CLEARD;
	wire CO06;
	wire G01;
	wire G01_;
	wire G02;
	wire G03;
	wire G04;
	wire GEM01;
	wire GEM02;
	wire GEM03;
	wire GEM04;
	wire L01_;
	wire L02_;
	wire L04_;
	wire MWL01;
	wire MWL02;
	wire MWL03;
	wire MWL04;
	wire SUMA01_;
	wire SUMA02_;
	wire SUMA03_;
	wire SUMA04_;
	wire SUMB01_;
	wire SUMB02_;
	wire SUMB03_;
	wire SUMB04_;
	wire WL01;
	wire WL01_;
	wire WL02;
	wire WL02_;
	wire WL03;
	wire WL03_;
	wire WL04;
	wire WL04_;
	wire XUY01_;
	wire XUY02_;

	always
		#10 SIM_CLK = !SIM_CLK; // 20 ns gate delay

	a8_four_bit_1 a8(
		A2XG_,
		PONEX,
		MONEX,
		TWOX,
		CLXC,
		CUG,
		WYLOG_,
		WYDLOG_,
		WYDG_,
		CI01_,
		RULOG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		CLG1G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBLG_,
		RCG_,
		WG3G_,
		WG4G_,
		L2GDG_,
		MCRO_,
		WG1G_,
		CGG,
		RGG_,
		WL05_,
		WL06_,
		WL16_,
		SA01,
		SA02,
		SA03,
		SA04,
		G01ED,
		G02ED,
		G03ED,
		G04ED,
		RB1,
		R15,
		R1C,
		RB2,
		CH01,
		CH02,
		CH03,
		CH04,
		G05_,
		G06_,
		G07_,
		MDT01,
		MDT02,
		MDT03,
		MDT04,
		SETAB_,
		SETCD_,
		S08,
		S08_,
		XUY05_,
		XUY06_,
		WHOMP,
		WHOMPA,
		CAD1,
		CAD2,
		CAD3,
		CAD4,
		BBK1,
		BBK2,
		BBK3,
		RB1F,
		R6,
		RPTAD3,
		RPTAD4,
		WL01,
		WL01_,
		MWL01,
		WL02,
		WL02_,
		MWL02,
		WL03,
		WL03_,
		MWL03,
		WL04,
		WL04_,
		MWL04,
		CO06,
		CI05_,
		XUY01_,
		XUY02_,
		SUMA01_,
		SUMB01_,
		SUMA02_,
		SUMB02_,
		SUMA03_,
		SUMB03_,
		SUMA04_,
		SUMB04_,
		G01,
		G01_,
		GEM01,
		G02,
		GEM02,
		G03,
		GEM03,
		G04,
		GEM04,
		L01_,
		L02_,
		L04_,
		CLEARA,
		CLEARB,
		CLEARC,
		CLEARD,
		SIM_CLK
	);


	initial
	begin
	   #100
	   begin
	       force WL01 = 1;
	       WAG_ = 0;
	   end
	   #100
	   begin
	       release WL01;
	       WAG_ = 1;
	   end
	   
	   #10000 $stop;
	end

endmodule
