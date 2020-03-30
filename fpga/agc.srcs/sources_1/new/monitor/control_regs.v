`timescale 1ns / 1ps

`include "monitor_defs.v"

module control_regs(
    input wire clk,
    input wire rst_n,
    input wire [15:0]addr,
    input wire [15:0]data_in,
    
    input wire read_en,
    input wire write_en,
    output reg write_done,
    output wire [15:0]data_out,

    output reg MNHRPT,
    output reg MNHNC,
    output reg NHALGA,
    output reg nhstrt1,
    output reg nhstrt2,

    input wire [12:1]i,

    output reg [2:0]w_mode,
    output reg w_s1_s2,
    output reg [12:1]w_times,
    output reg [11:0]w_pulses,

    output reg s_only
);

reg [15:0]read_data;
reg read_done;

assign data_out = read_done ? read_data : 16'b0;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        write_done <= 1'b0;
        MNHRPT <= 1'b0;
        MNHNC <= 1'b0;
        NHALGA <= 1'b0;
        nhstrt1 <= 1'b0;
        nhstrt2 <= 1'b0;

        w_mode <= `W_MODE_ALL;
        w_s1_s2 <= 1'b0;
        w_times <= 12'b0;
        w_pulses <= 12'b0;

        s_only <= 1'b0;
    end else begin
        write_done <= 1'b0;

        if (write_en) begin
            if (addr < `CTRL_REG_LOAD_S) begin
                write_done <= 1'b1;
                case (addr)
                    `CTRL_REG_MNHRPT: begin
                        MNHRPT <= data_in[0];
                    end
                    `CTRL_REG_MNHNC: begin
                        MNHNC <= data_in[0];
                    end
                    `CTRL_REG_WRITE_W: begin
                        w_mode <= data_in[2:0];
                        w_s1_s2 <= data_in[3];
                    end
                    `CTRL_REG_W_TIMES:  begin
                        w_times <= data_in[11:0];
                    end
                    `CTRL_REG_W_PULSES: begin
                        w_pulses <= data_in[11:0];
                    end
                    `CTRL_REG_NHALGA: begin
                        NHALGA <= data_in[0];
                    end
                    `CTRL_REG_NHSTRT1: begin
                        nhstrt1 <= data_in[0];
                    end
                    `CTRL_REG_NHSTRT2: begin
                        nhstrt2 <= data_in[0];
                    end
                    `CTRL_REG_BANK_S: begin
                        s_only <= data_in[0];
                    end
                endcase
            end
        end
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        read_data <= 16'b0;
        read_done <= 1'b0;
    end else if (read_en) begin
        read_done <= 1'b1;
        case (addr)
            `CTRL_REG_MNHRPT: begin
                read_data <= {15'b0, MNHRPT};
            end
            `CTRL_REG_MNHNC: begin
                read_data <= {15'b0, MNHNC};
            end
            `CTRL_REG_WRITE_W: begin
                read_data <= {12'b0, w_s1_s2, w_mode};
            end
            `CTRL_REG_W_TIMES: begin
                read_data <= {4'b0, w_times};
            end
            `CTRL_REG_W_PULSES: begin
                read_data <= {4'b0, w_pulses};
            end
            `CTRL_REG_NHALGA: begin
                read_data <= {15'b0, NHALGA};
            end
            `CTRL_REG_NHSTRT1: begin
                read_data <= {15'b0, nhstrt1};
            end
            `CTRL_REG_NHSTRT2: begin
                read_data <= {15'b0, nhstrt2};
            end
            `CTRL_REG_BANK_S: begin
                read_data <= {15'b0, s_only};
            end
        endcase
    end else begin
        read_done <= 1'b0;
    end
end

endmodule
