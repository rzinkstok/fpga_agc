`timescale 1ns / 1ps
`default_nettype none

`include "monitor_defs.v"

module control_regs(
    input wire clk,
    input wire rst_n,
    input wire [15:0] addr,
    input wire [15:0] data_in,

    input wire read_en,
    input wire write_en,
    output reg write_done,
    output wire [15:0] data_out,
    
    output reg MNHRPT,
    output reg NHALGA
);
    
    reg [15:0] read_data;
    reg read_done;
    
    assign data_out = read_done ? read_data : 16'b0;

    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            write_done <= 1'b0;
            MNHRPT <= 1'b0;
            NHALGA <= 1'b0;
        end else begin
            write_done <= 1'b0;
            if (write_en) begin
                if (addr < `CTRL_REG_LOAD_S) begin
                    write_done <= 1'b1;
                    case (addr)
                        `CTRL_REG_MNHRPT:   MNHRPT <= data_in[0];
                        `CTRL_REG_NHALGA:   NHALGA <= data_in[0];   
                    endcase
                end
            end    
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            read_data <= 16'b0;
            read_done <= 1'b0;
        end else if (read_en) begin
            read_done <= 1'b1;
            case (addr)
                `CTRL_REG_MNHRPT:       read_data <= {15'b0, MNHRPT};
                `CTRL_REG_NHALGA:       read_data <= {15'b0, NHALGA};
            endcase
        end else begin
            read_done <= 1'b0;
        end
    end
    
endmodule

`default_nettype wire
