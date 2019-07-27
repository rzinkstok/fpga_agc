module timertest(P01, F01A, F01B, F01C, F01D, FS01, FS01_, SIM_RST, SIM_CLK);
	input wire SIM_CLK;
	input wire SIM_RST;
	input wire P01;
	
	output wire F01A;
	output wire F01B;
	output wire F01C;
	output wire F01D;
	output wire FS01;
	output wire FS01_;
	
	nor_2 #(1'b0) U37221(F01D, FS01_, F01B,      SIM_RST, SIM_CLK);
	nor_3 #(1'b0) U37222(F01B, F01D,  P01, F01A, SIM_RST, SIM_CLK);
	nor_3 #(1'b0) U37223(F01A, F01B,  P01, F01C, SIM_RST, SIM_CLK);
	nor_2 #(1'b1) U37224(F01C, F01A,  FS01,      SIM_RST, SIM_CLK);
	
	nor_2 #(1'b1) U37225(FS01_, F01B, FS01, SIM_RST, SIM_CLK);
	nor_2 #(1'b0) U37226(FS01, FS01_, F01A, SIM_RST, SIM_CLK);
endmodule