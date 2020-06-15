`timescale 1ns / 1ps

module version(
    input wire clk,
    input wire rst_n,

    input wire read_en,
    output wire [15:0] data_out
    );
    
    localparam VERSION = 16'd4;
    
    reg [15:0] read_data;
    reg read_done;
    
    assign data_out = read_done ? read_data : 16'b0;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            read_data <= 16'b0;
            read_done <= 1'b0;
        end else if (read_en) begin
            read_done <= 1'b1;
            read_data = VERSION;
        end else begin
            read_done <= 1'b0;
        end
    end
endmodule
