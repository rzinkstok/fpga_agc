module nor_2(y, a, b, SIM_RST, SIM_CLK);
	parameter iv = 1'b0;
	input wire a, b, SIM_RST, SIM_CLK;
	output reg y = iv;
	reg next_val = iv;
	reg prev_val = iv;
	wire result;
	
	assign result = ~(a|b);
	
	always @(posedge SIM_CLK)
	begin
		prev_val = y;
		y = next_val;
	end
	
	always @(negedge SIM_CLK)
	begin
		next_val = ((result == prev_val) && (y == iv)) ? iv : result;
	end
	
endmodule