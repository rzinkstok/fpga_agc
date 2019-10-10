`timescale 1ns / 1ps

module nor_2(y, a, b, reset, prop_clk);
	parameter iv = 1'b0;
	input wire a, b, reset, prop_clk;
	
	output reg y = iv;
	reg next_val = iv;
	reg prev_val = iv;
	wire result;
	
	assign result = ~(a|b);
	
	always @(posedge prop_clk or posedge reset)
	begin
	    if(reset) begin
            prev_val = iv;
            y = iv;
        end else begin
		    prev_val = y;
		    y = next_val;
		end
	end
	
	always @(negedge prop_clk or posedge reset)
	begin
	    if(reset) begin
	        next_val = iv;
	    end else begin
		    next_val = ((result == prev_val) && (y == iv)) ? iv : result;
		end
	end
	
endmodule
