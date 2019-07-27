`timescale 1ns/1ps

module tb;
	reg CLOCK = 0;
	reg SIM_RST = 1;
   reg SIM_CLK = 1;
	
	wire F01A, F01B, F01C, F01D;
	wire FS01, FS01_;
	

	always 
		#244.140625 CLOCK = !CLOCK;
	always
		#10 SIM_CLK = !SIM_CLK;


	timertest tt(CLOCK, F01A, F01B, F01C, F01D, FS01, FS01_, SIM_RST, SIM_CLK);

	
	initial
	begin
		#10000 $stop;
		
	end
	
	
	
endmodule