`timescale 1ns / 1ps

module nor_3(y, a, b, c, power, reset, prop_clk);
	parameter iv = 1'b0;
	input wire a;
	input wire b;
	input wire c;
	input wire power;
	input wire reset;
	input wire prop_clk;
	
	output reg y = iv;
	
	reg next_val = iv;
	reg prev_val = iv;
	wire result;
	
	// Treat loss of power as reset hold
	wire vrst;
	assign vrst = (reset || !power);
	
	assign result = ~(a|b|c);
	
	always @(posedge prop_clk or posedge vrst)
	begin
	    if(vrst) begin
	        prev_val = iv;
	        y = iv;
	    end else begin
		    prev_val = y;
		    y = next_val;
		end
	end
	
	always @(negedge prop_clk or posedge vrst)
	begin
	    if(vrst) begin
	        next_val = iv;
	    end else begin
		    next_val = ((result == prev_val) && (y == iv)) ? iv : result;
	    end
	end
	
endmodule
