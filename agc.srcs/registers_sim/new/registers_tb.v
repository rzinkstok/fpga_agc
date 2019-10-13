`timescale 1ns / 1ps

module registers_tb();

	reg A2XG_ = 1;
	reg BBK1 = 0;
	reg BBK2 = 0;
	reg BBK3 = 0;
	reg BXVX = 0;
	reg CAD1 = 0;
	reg CAD2 = 0;
	reg CAD3 = 0;
	reg CAD4 = 0;
	reg CAD5 = 0;
	reg CAD6 = 0;
	reg CAG = 0;
	reg CBG = 0;
	reg CGG = 0;
	reg CH01 = 0;
	reg CH02 = 0;
	reg CH03 = 0;
	reg CH04 = 0;
	reg CH05 = 0;
	reg CH06 = 0;
	reg CH07 = 0;
	reg CH08 = 0;
	reg CH09 = 0;
	reg CH10 = 0;
	reg CH11 = 0;
	reg CH12 = 0;
	reg CH13 = 0;
	reg CH14 = 0;
	reg CH16 = 0;
	reg CI01_ = 1;
	reg CLG1G = 0;
	reg CLG2G = 0;
	reg CLXC = 0;
	reg CQG = 0;
	reg CUG = 0;
	reg CZG = 0;
	reg G01ED = 0;
	reg G02ED = 0;
	reg G03ED = 0;
	reg G04ED = 0;
	reg G05ED = 0;
	reg G06ED = 0;
	reg G07ED = 0;
	reg G16SW_ = 1;
	reg G2LSG_ = 1;
	reg L2GDG_ = 1;
	reg MCRO_ = 1;
	reg MDT01 = 0;
	reg MDT02 = 0;
	reg MDT03 = 0;
	reg MDT04 = 0;
	reg MDT05 = 0;
	reg MDT06 = 0;
	reg MDT07 = 0;
	reg MDT08 = 0;
	reg MDT09 = 0;
	reg MDT10 = 0;
	reg MDT11 = 0;
	reg MDT12 = 0;
	reg MDT13 = 0;
	reg MDT14 = 0;
	reg MDT15 = 0;
	reg MDT16 = 0;
	reg MONEX = 0;
	reg ONE = 1;
	reg PONEX = 0;
	reg R15 = 0;
	reg R1C = 0;
	reg R6 = 0;
	reg RAG_ = 1;
	reg RB1 = 0;
	reg RB1F = 0;
	reg RB2 = 0;
	reg RBHG_ = 1;
	reg RBLG_ = 1;
	reg RCG_ = 1;
	reg RGG_ = 1;
	reg RLG_ = 1;
	reg RPTAD3 = 0;
	reg RPTAD4 = 0;
	reg RPTAD5 = 0;
	reg RPTAD6 = 0;
	reg RQG_ = 1;
	reg RUG_ = 1;
	reg RULOG_ = 1;
	reg RZG_ = 1;
	reg S08 = 0;
	reg S08_ = 1;
	reg SA01 = 0;
	reg SA02 = 0;
	reg SA03 = 0;
	reg SA04 = 0;
	reg SA05 = 0;
	reg SA06 = 0;
	reg SA07 = 0;
	reg SA08 = 0;
	reg SA09 = 0;
	reg SA10 = 0;
	reg SA11 = 0;
	reg SA12 = 0;
	reg SA13 = 0;
	reg SA14 = 0;
	reg SA16 = 0;
	reg SETAB_ = 1;
	reg SETCD_ = 1;
	reg TWOX = 0;
	reg US2SG = 0;
	reg WAG_ = 1;
	reg WALSG_ = 1;
	reg WBG_ = 1;
	reg WG1G_ = 1;
	reg WG2G_ = 1;
	reg WG3G_ = 1;
	reg WG4G_ = 1;
	reg WG5G_ = 1;
	reg WHOMP = 0;
	reg WHOMPA = 0;
	reg WLG_ = 1;
	reg WQG_ = 1;
	reg WYDG_ = 1;
	reg WYDLOG_ = 1;
	reg WYHIG_ = 1;
	reg WYLOG_ = 1;
	reg WZG_ = 1;
	reg prop_clk = 1;
	reg reset = 0;

	wire A10_1_RL09_;
	wire A10_1_RL10_;
	wire A10_1_RL11_;
	wire A10_1_RL12_;
	wire A10_2_RL09_;
	wire A10_2_RL10_;
	wire A10_2_RL11_;
	wire A10_2_RL12_;
	wire A10_3_RL09_;
	wire A10_3_RL10_;
	wire A10_3_RL11_;
	wire A10_3_RL12_;
	wire A10_4_RL09_;
	wire A10_4_RL10_;
	wire A10_4_RL11_;
	wire A10_4_RL12_;
	wire A11_1_L16_;
	wire A11_1_RL13_;
	wire A11_1_RL14_;
	wire A11_1_RL15_;
	wire A11_1_RL16_;
	wire A11_2_RL13_;
	wire A11_2_RL14_;
	wire A11_2_RL15_;
	wire A11_2_RL16_;
	wire A11_3_RL13_;
	wire A11_3_RL14_;
	wire A11_3_RL15_;
	wire A11_3_RL16_;
	wire A11_4_RL13_;
	wire A11_4_RL14_;
	wire A11_4_RL15_;
	wire A11_4_RL16_;
	wire CI05_;
	wire CI09_;
	wire CI13_;
	wire CLEARA;
	wire CLEARB;
	wire CLEARC;
	wire CLEARD;
	wire CO02;
	wire CO06;
	wire CO10;
	wire CO14;
	wire CO16;
	wire EAC_;
	wire G01;
	wire G01_;
	wire G02;
	wire G03;
	wire G04;
	wire G04_;
	wire G05;
	wire G05_;
	wire G06;
	wire G06_;
	wire G07;
	wire G07_;
	wire G08;
	wire G08_;
	wire G09;
	wire G09_;
	wire G10;
	wire G10_;
	wire G11;
	wire G11_;
	wire G12;
	wire G12_;
	wire G13;
	wire G13_;
	wire G14;
	wire G14_;
	wire G15;
	wire G15_;
	wire G16;
	wire G16_;
	wire GEM01;
	wire GEM02;
	wire GEM03;
	wire GEM04;
	wire GEM05;
	wire GEM06;
	wire GEM07;
	wire GEM08;
	wire GEM09;
	wire GEM10;
	wire GEM11;
	wire GEM12;
	wire GEM13;
	wire GEM14;
	wire GEM15;
	wire GEM16;
	wire L01_;
	wire L02_;
	wire L03_;
	wire L04_;
	wire L08_;
	wire L12_;
	wire L16_;
	wire MWL01;
	wire MWL02;
	wire MWL03;
	wire MWL04;
	wire MWL05;
	wire MWL06;
	wire MWL07;
	wire MWL08;
	wire MWL09;
	wire MWL10;
	wire MWL11;
	wire MWL12;
	wire MWL13;
	wire MWL14;
	wire MWL15;
	wire MWL16;
	wire RL09_;
	wire RL10_;
	wire RL11_;
	wire RL12_;
	wire RL13_;
	wire RL14_;
	wire RL15_;
	wire RL16_;
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
	wire WL05;
	wire WL05_;
	wire WL06;
	wire WL06_;
	wire WL07;
	wire WL07_;
	wire WL08;
	wire WL08_;
	wire WL09;
	wire WL09_;
	wire WL10;
	wire WL10_;
	wire WL11;
	wire WL11_;
	wire WL12;
	wire WL12_;
	wire WL13;
	wire WL13_;
	wire WL14;
	wire WL14_;
	wire WL15;
	wire WL15_;
	wire WL16;
	wire WL16_;
	wire XUY01_;
	wire XUY02_;
	wire XUY05_;
	wire XUY06_;
	wire XUY09_;
	wire XUY10_;
	wire XUY12_;
	wire XUY13_;
	wire XUY14_;

	always
		#10 prop_clk = !prop_clk; // 20 ns gate delay

	a08_four_bit_1 a08(
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
		G04_,
		GEM04,
		L01_,
		L02_,
		L03_,
		L04_,
		CLEARA,
		CLEARB,
		CLEARC,
		CLEARD,
		reset,
		prop_clk
	);

	a09_four_bit_2 a09(
		A2XG_,
		MONEX,
		CLXC,
		CUG,
		WYLOG_,
		WYDG_,
		CI05_,
		CO06,
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
		WG1G_,
		CGG,
		RGG_,
		L04_,
		WL04_,
		WL09_,
		WL10_,
		SA05,
		SA06,
		SA07,
		SA08,
		G05ED,
		G06ED,
		G07ED,
		R1C,
		CH05,
		CH06,
		CH07,
		CH08,
		G09_,
		G10_,
		G11_,
		MDT05,
		MDT06,
		MDT07,
		MDT08,
		XUY09_,
		XUY10_,
		WHOMP,
		CAD5,
		CAD6,
		RPTAD5,
		RPTAD6,
		WL05,
		WL05_,
		MWL05,
		WL06,
		WL06_,
		MWL06,
		WL07,
		WL07_,
		MWL07,
		WL08,
		WL08_,
		MWL08,
		CI09_,
		CO10,
		XUY05_,
		XUY06_,
		L08_,
		G05,
		G05_,
		GEM05,
		G06,
		G06_,
		GEM06,
		G07,
		G07_,
		GEM07,
		G08,
		G08_,
		GEM08,
		reset,
		prop_clk
	);

	a10_four_bit_3 a10(
		A2XG_,
		MONEX,
		CLXC,
		CUG,
		WYLOG_,
		WYDG_,
		CI09_,
		CO10,
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
		WG1G_,
		CGG,
		RGG_,
		WL08_,
		WL13_,
		WL14_,
		SA09,
		SA10,
		SA11,
		SA12,
		R1C,
		L08_,
		CH09,
		CH10,
		CH11,
		CH12,
		G13_,
		G14_,
		G15_,
		MDT09,
		MDT10,
		MDT11,
		MDT12,
		XUY13_,
		XUY14_,
		WHOMP,
		WHOMPA,
		RL09_,
		RL10_,
		RL11_,
		RL12_,
		A10_1_RL09_,
		A10_2_RL09_,
		A10_3_RL09_,
		A10_4_RL09_,
		A10_1_RL10_,
		A10_2_RL10_,
		A10_3_RL10_,
		A10_4_RL10_,
		A10_1_RL11_,
		A10_2_RL11_,
		A10_3_RL11_,
		A10_4_RL11_,
		A10_1_RL12_,
		A10_2_RL12_,
		A10_3_RL12_,
		A10_4_RL12_,
		WL09,
		WL09_,
		MWL09,
		WL10,
		WL10_,
		MWL10,
		WL11,
		WL11_,
		MWL11,
		WL12,
		WL12_,
		MWL12,
		CI13_,
		CO14,
		XUY09_,
		XUY10_,
		XUY12_,
		L12_,
		G09,
		G09_,
		GEM09,
		G10,
		G10_,
		GEM10,
		G11,
		G11_,
		GEM11,
		G12,
		G12_,
		GEM12,
		reset,
		prop_clk
	);

	a11_four_bit_4 a11(
		A2XG_,
		MONEX,
		BXVX,
		CLXC,
		CUG,
		WYHIG_,
		WYDG_,
		CI13_,
		CO14,
		RULOG_,
		RUG_,
		WAG_,
		CAG,
		WALSG_,
		RAG_,
		WLG_,
		G2LSG_,
		G16SW_,
		CLG1G,
		CLG2G,
		RLG_,
		WQG_,
		CQG,
		RQG_,
		WZG_,
		CZG,
		RZG_,
		WBG_,
		CBG,
		RBHG_,
		RCG_,
		WG2G_,
		WG3G_,
		WG4G_,
		WG5G_,
		L2GDG_,
		WG1G_,
		ONE,
		CGG,
		RGG_,
		WL01_,
		WL02_,
		WL12_,
		SA13,
		SA14,
		SA16,
		R1C,
		CH13,
		CH14,
		CH16,
		G01_,
		L12_,
		L16_,
		US2SG,
		MDT13,
		MDT14,
		MDT15,
		MDT16,
		XUY01_,
		XUY02_,
		WHOMPA,
		RL13_,
		RL14_,
		RL15_,
		RL16_,
		A11_1_RL13_,
		A11_2_RL13_,
		A11_3_RL13_,
		A11_4_RL13_,
		A11_1_RL14_,
		A11_2_RL14_,
		A11_3_RL14_,
		A11_4_RL14_,
		A11_1_RL15_,
		A11_2_RL15_,
		A11_3_RL15_,
		A11_4_RL15_,
		A11_1_RL16_,
		A11_2_RL16_,
		A11_3_RL16_,
		A11_4_RL16_,
		A11_1_L16_,
		WL13,
		WL13_,
		MWL13,
		WL14,
		WL14_,
		MWL14,
		WL15,
		WL15_,
		MWL15,
		WL16,
		WL16_,
		MWL16,
		EAC_,
		CO02,
		CO16,
		XUY13_,
		XUY14_,
		G13,
		G13_,
		GEM13,
		G14,
		G14_,
		GEM14,
		G15,
		G15_,
		GEM15,
		G16,
		G16_,
		GEM16,
		reset,
		prop_clk
	);

	assign L16_ = A11_1_L16_;
	assign RL09_ = A10_1_RL09_ & A10_2_RL09_ & A10_3_RL09_ & A10_4_RL09_;
	assign RL10_ = A10_1_RL10_ & A10_2_RL10_ & A10_3_RL10_ & A10_4_RL10_;
	assign RL11_ = A10_1_RL11_ & A10_2_RL11_ & A10_3_RL11_ & A10_4_RL11_;
	assign RL12_ = A10_1_RL12_ & A10_2_RL12_ & A10_3_RL12_ & A10_4_RL12_;
	assign RL13_ = A11_1_RL13_ & A11_2_RL13_ & A11_3_RL13_ & A11_4_RL13_;
	assign RL14_ = A11_1_RL14_ & A11_2_RL14_ & A11_3_RL14_ & A11_4_RL14_;
	assign RL15_ = A11_1_RL15_ & A11_2_RL15_ & A11_3_RL15_ & A11_4_RL15_;
	assign RL16_ = A11_1_RL16_ & A11_2_RL16_ & A11_3_RL16_ & A11_4_RL16_;

	initial
	begin
        #1000
        
        // Register A write test
        begin
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            force WL05 = 1;
            force WL06 = 1;
            force WL07 = 1;
            force WL08 = 1;
            force WL09 = 1;
            force WL10 = 1;
            force WL11 = 1;
            force WL12 = 1;
            force WL13 = 1;
            force WL14 = 1;
            force WL15 = 1;
            force WL16 = 1;
            WAG_ = 0;
        end
        #100
        begin
            release WL01;
            release WL02;
            release WL03;
            release WL04;
            release WL05;
            release WL06;
            release WL07;
            release WL08;
            release WL09;
            release WL10;
            release WL11;
            release WL12;
            release WL13;
            release WL14;
            release WL15;
            release WL16;
            WAG_ = 1;
        end
        #900
        
        // Register A read test / register L write test
        #100 RAG_ = 0;
        #900 WLG_ = 0;
        #100
        begin
            RAG_ = 1;
            WLG_ = 1;
        end
        
        // Register A clear test
        #100 CAG = 1;
        #100 CAG = 0;
        
        // Register L write test 2
        #900 
        begin
            CLG1G = 1;
            CLG2G = 1;
        end
        #100
        begin
            CLG1G = 0;
            CLG2G = 0;
        end
        #100
        begin
            force G04_ = 0;
            force G05_ = 0;
            force G06_ = 0;
            force G07_ = 0;
            force G08_ = 0;
            force G09_ = 0;
            force G10_ = 0;
            force G11_ = 0;
            force G12_ = 0;
            force G13_ = 0;
            force G14_ = 0;
            force G15_ = 0;
            force WL01_ = 0;
            force WL02_ = 0;
            force G01_ = 0;
            force G16_ = 0;   
            G2LSG_ = 0;
            WALSG_ = 0;
        end
        #100
        begin
            release G04_;
            release G05_;
            release G06_;
            release G07_;
            release G08_;
            release G09_;
            release G10_;
            release G11_;
            release G12_;
            release G13_;
            release G14_;
            release G15_;
            release WL01_;
            release WL02_;
            release G01_;
            release G16_;
            G2LSG_ = 1;
            WALSG_ = 1;
        end
        #100 CGG = 1; 
        #100 CGG = 0;
        #700
        
        // Register L read test / register Q write test
        #100 RLG_ = 0;
        #900 WQG_ = 0;
        #100
        begin
            RLG_ = 1;
            WQG_ = 1;
        end
           
        // Register L clear test
        #100 
        begin
            CLG1G = 1;
            CLG2G = 1;
        end
        #100 
        begin
            CLG1G = 0;
            CLG2G = 0;
        end
        #900
        
        // Register Q read test / register Z write test
        #100 RQG_ = 0;
        #900 WZG_ = 0;
        #100 
        begin
            RQG_ = 1;
            WZG_ = 1;
        end
        
        // Register Q clear test
        #100 CQG = 1;
        #100 CQG = 0;
        #900 
        
        // Register Z read test / register B write test
        #100 RZG_ = 0;
        #900 WBG_ = 0;
        #100
        begin
            RZG_ = 1;
            WBG_ = 1;
        end
        
        // Register Z clear test
        #100 CZG = 1;
        #100 CZG = 0;
        #900
        
        // Register B read test / register G write test
        #100 
        begin
            RBLG_ = 0;
            RBHG_ = 0;
        end
        #900 
        begin
            WG1G_ = 0;
            WG2G_ = 0;
        end
        #100
        begin
            RBLG_ = 1;
            RBHG_ = 1;
            WG1G_ = 1;
            WG2G_ = 1;
        end
        
        // Register B clear test
        #100 CBG = 1;
        #100 CBG = 0;
        
        // Register G write test 2
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            force WL16 = 1;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            force WL05 = 1;
            force WL06 = 1;
            force WL07 = 1;
            force WL08 = 1;
            force WL09 = 1;
            force WL10 = 1;
            force WL11 = 1;
            force WL12 = 1;
            force WL13 = 1;
            force WL14 = 1;
            WG3G_ = 0;
        end
        #100
        begin
            release WL16;
            release WL01;
            release WL02;
            release WL03;
            release WL04;
            release WL05;
            release WL06;
            release WL07;
            release WL08;
            release WL09;
            release WL10;
            release WL11;
            release WL12;
            release WL13;
            release WL14;
            WG3G_ = 1;
        end
        
        // Register G write test 3
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            force WL05 = 1;
            force WL06 = 1;
            force WL07 = 1;
            force WL08 = 1;
            force WL09 = 1;
            force WL10 = 1;
            force WL11 = 1;
            force WL12 = 1;
            force WL13 = 1;
            force WL14 = 1;
            force WL16 = 1;
            force WL01 = 1;
            WG4G_ = 0;
            WG5G_ = 0;
        end
        #100
        begin
            release WL02;
            release WL03;
            release WL04;
            release WL05;
            release WL06;
            release WL07;
            release WL08;
            release WL09;
            release WL10;
            release WL11;
            release WL12;
            release WL13;
            release WL14;
            release WL16;
            release WL01;
            WG4G_ = 1;
            WG5G_ = 1;
        end
        
        // Register G write test 4
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            MCRO_ = 0;
            force L01_ = 0;
            force L02_ = 0;
            force L03_ = 0;
            L2GDG_ = 0;
        end
        #100
        begin
            MCRO_ = 1;
            release L01_;
            release L02_;
            release L03_;
            L2GDG_ = 1;
        end
        #900
        
        // Register G read test / register Y write test
        #100 RGG_ = 0;
        #900 WYLOG_ = 0;
        #100 
        begin
            RGG_ = 1;
            WYLOG_ = 1;
        end
        
        // Register G clear test
        #100 CGG = 1;
        #100 CGG = 0;
        #900 
        
        // Register Y write test 2
        #100 CUG = 1;
        #100 CUG = 0;
        #100
        begin
            force WL16 = 1;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            WYDLOG_ = 0;
            WYDG_ = 0;
        end
        #100
        begin
            release WL16_ ;
            release WL01;
            release WL02;
            release WL03;
            WYDLOG_ = 1;
            WYDG_ = 1;
        end
        
        // Register Y clear test
        #900 CUG = 1;
        #100 CUG = 0;
           
        // X register write test
        #100
        begin
            force WL01_ = 0;
            force WL02_ = 0;
            force WL03_ = 0;
            force WL04_ = 0;
            WAG_ = 0;
        end
        #100
        begin
            release WL01_;
            release WL02_;
            release WL03_;
            release WL04_;
            WAG_ = 1;
        end
        #100 A2XG_ = 0;
        #100 
        begin
            A2XG_ = 1;
            CAG = 1;
        end
        #100 CAG = 0;
        
        // X register write test 2
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            PONEX = 1;
        end
        #100 PONEX = 0;
        
        // register write test 3
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            TWOX = 1;
        end
        #100 TWOX = 0;
        
        // X register write test 4
        #900 CLXC = 1;
        #100 
        begin
            CLXC = 0;
            MONEX = 1;
        end
        #100 MONEX = 0;
        
        // Sum test
        #900 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            force WL02_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            release WL02_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
        
        // Sum test 2
        #100 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            force WL01_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            release WL01_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
        
        // Sum test 2
        #100 CUG = 1;
        #100 
        begin
            CUG = 0;
            PONEX = 1;
            TWOX = 1;
            force WL01_ = 0;
            WYLOG_ = 0;
        end
        #100
        begin
            PONEX = 0;
            TWOX = 0;
            release WL01_;
            WYLOG_ = 1;
        end
        #100 RULOG_ = 0;
        #900 RULOG_ = 1;
		$stop;
	end

endmodule
