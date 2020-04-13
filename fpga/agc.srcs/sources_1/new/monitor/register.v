`timescale 1ns / 1ps

module register(
    clk,
    rst_n,
    ct,
    mwg,
    mwl,
    val
);

parameter WIDTH = 16;
input wire clk;
input wire rst_n;
input wire ct;
input wire mwg;
input wire [WIDTH:1] mwl;
output reg [WIDTH:1] val;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        val <= {WIDTH{1'b0}};
    end else if (mwg) begin
        val <= mwl | (ct ? {WIDTH{1'b0}} : val);
    end
end

endmodule