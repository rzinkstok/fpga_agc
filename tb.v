`timescale 1ns/1ps

module tb;
	reg CLOCK = 0;
	reg SIM_RST = 1;
   reg SIM_CLK = 1;
	
	//wire F01A, F01B, F01C, F01D;
	//wire FS01, FS01_;
	wire PHS2, PHS4, CT, U37101_out;

	always 
		#244.140625 CLOCK = !CLOCK;
	always
		#10 SIM_CLK = !SIM_CLK;


	a2_timer timer(CLOCK, PHS2, PHS4, CT, U37101_out, SIM_RST, SIM_CLK);

	
	initial
	begin
		#10000 $stop;
		
	end
	
	
	
endmodule