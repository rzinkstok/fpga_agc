`timescale 1ns / 1ps

module a08_four_bit_1_tb();

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
	reg reset = 0;

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
	wire L03_;
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
		SIM_CLK
	);


	initial
	begin
        #1000
        
        // Register A write test
        begin
            reset = 0;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            force WL04 = 1;
            WAG_ = 0;
        end
        #100
        begin
            release WL01;
            release WL02;
            release WL03;
            release WL04;
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
        #900 CLG1G = 1;
        #100 CLG1G = 0;
        #100
        begin
            SA04 = 1;
            force G05_ = 0;
            force G06_ = 0;
            force G07_ = 0;
            G2LSG_ = 0;
        end
        #100
        begin
            SA04 = 0;
            release G05_;
            release G06_;
            release G07_;
            G2LSG_ = 1;
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
        #100 CLG1G = 1;
        #100 CLG1G = 0;
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
        #100 RBLG_ = 0;
        #900 WG1G_ = 0;
        #100
        begin
            RBLG_ = 1;
            WG1G_ = 1;
        end
        
        // Register B clear test
        #100 CBG = 1;
        #100 CBG = 0;
        
        // Register G write test 2
        #900 CGG = 1;
        #100 CGG = 0;
        #100
        begin
            force WL16_ = 0;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            WG3G_ = 0;
        end
        #100
        begin
            release WL16_;
            release WL01;
            release WL02;
            release WL03;
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
            force WL05_ = 0;
            WG4G_ = 0;
        end
        #100
        begin
            release WL02;
            release WL03;
            release WL04;
            release WL05_;
            WG4G_ = 1;
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
            WL16_ = 0;
            force WL01 = 1;
            force WL02 = 1;
            force WL03 = 1;
            WYDLOG_ = 0;
            WYDG_ = 0;
        end
        #100
        begin
            WL16_ = 1;
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
