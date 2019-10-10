`timescale 1ns / 1ps

module nor_1(y, a, reset, SIM_CLK);
	parameter iv = 1'b0;
	input wire a, reset, SIM_CLK;
	
	output reg y = iv;
	reg next_val = iv;
	
	always @(posedge SIM_CLK or posedge reset)
	begin
	    if(reset) begin
	        y = iv;
	    end else begin
		    y = next_val;
		end
	end
	
	always @(negedge SIM_CLK or posedge reset)
	begin
	    if(reset) begin
	        next_val = iv;
	    end else begin   
		    next_val = ~a;
		end
	end
	
endmodule