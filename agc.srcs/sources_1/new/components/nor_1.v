`timescale 1ns / 1ps

module nor_1(y, a, reset, prop_clk);
	parameter iv = 1'b0;
	input wire a, reset, prop_clk;
	
	output reg y = iv;
	reg next_val = iv;
	
	always @(posedge prop_clk or posedge reset)
	begin
	    if(reset) begin
	        y = iv;
	    end else begin
		    y = next_val;
		end
	end
	
	always @(negedge prop_clk or posedge reset)
	begin
	    if(reset) begin
	        next_val = iv;
	    end else begin   
		    next_val = ~a;
		end
	end
	
endmodule