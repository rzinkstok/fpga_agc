module a2_timer(CLOCK, PHS2, PHS4, CT, U37101_out, SIM_RST, SIM_CLK);

	input wire CLOCK, SIM_RST, SIM_CLK;
	output wire PHS2, PHS4, CT;
	
	output wire U37101_out;
	wire U37102_out;
	wire U37103_out;
	wire U37105_out;
	wire U37106_out;
	wire U37107_out;
	wire U37139_out;
	
	nor_2 #(1'b0) U37101(U37101_out, U37105_out, U37102_out, 				SIM_RST, SIM_CLK);
	nor_3 #(1'b0) U37102(U37102_out, U37101_out, CLOCK, 		U37103_out, SIM_RST, SIM_CLK);
	nor_3 #(1'b0) U37103(U37103_out, U37102_out, CLOCK, 		PHS2, 		SIM_RST, SIM_CLK);
	nor_2 #(1'b1) U37104(PHS2, 		U37103_out, U37106_out,		      	SIM_RST, SIM_CLK);
	
	nor_2 #(1'b1) U37105(U37105_out, U37102_out, U37106_out, 				SIM_RST, SIM_CLK);
	nor_2 #(1'b0) U37106(U37106_out, U37105_out, U37103_out, 				SIM_RST, SIM_CLK);
	
	nor_1 #(1'b1) U37107(U37107_out, U37101_out, 								SIM_RST, SIM_CLK);
	nor_2 #(1'b0) U37108(PHS4, 		U37107_out, U37103_out, 				SIM_RST, SIM_CLK);
	
	nor_1 #(1'b1) U37139(U37139_out, U37102_out,									SIM_RST, SIM_CLK);
	nor_1 #(1'b0) U37140(CT,			U37139_out,									SIM_RST, SIM_CLK);
	nor_1 #(1'b0) U37141(CT,			U37139_out,									SIM_RST, SIM_CLK);
endmodule