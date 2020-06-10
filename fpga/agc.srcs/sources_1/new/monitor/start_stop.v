`timescale 1ns / 1ps
`default_nettype none


module start_stop(
    input wire clk,
    input wire rst_n,
    input wire start_req,
    input wire proceed_req,
    input wire [10:0] stop_conds,
    input wire stop_s1_s2,
    output reg [10:0] stop_cause,
    input wire MT01,
    input wire MT02,
    input wire MT03,
    input wire MT04,
    input wire MT05,
    input wire MT06,
    input wire MT07,
    input wire MT08,
    input wire MT09,
    input wire MT10,
    input wire MT11,
    input wire MT12,
    input wire MGOJAM,
    input wire MNISQ,
    input wire MPAL_,
    input wire mrchg,
    input wire mwchg,

    input wire s1_match,
    input wire s2_match,
    input wire w_match,
    input wire i_match,
    
    input wire [15:0] n_nisq_steps,

    output reg MSTRT,
    output wire mstp
);
    
    `define STOP_T12       0
    `define STOP_NISQ      1
    `define STOP_S1        2
    `define STOP_S2        3
    `define STOP_W         4
    `define STOP_S_W       5
    `define STOP_S_I       6
    `define STOP_CHAN      7
    `define STOP_PAR       8
    `define STOP_I         9
    `define STOP_PROG_STEP 10
    
    assign mstp = (stop_cause != 11'b0);
    
    wire s_match;
    assign s_match = stop_s1_s2 ? s2_match : s1_match;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            MSTRT <= 1'b0;
        end else begin
            if (start_req) begin
                MSTRT <= 1'b1;
            end else if (MSTRT & MGOJAM) begin
                MSTRT <= 1'b0;
            end
        end
    end
    
    reg proceeding;
    reg prog_step_match;
    reg evenstop;
    reg [15:0] nisq_counter;
    reg nisq_counted;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            stop_cause <= 11'b0;
            proceeding <= 1'b0;
            prog_step_match <= 1'b0;
            nisq_counter <= 16'b0;
            nisq_counted <= 1'b0;
        end else begin
            if(MT01 & ~MNISQ) begin
                nisq_counted <= 1'b0;
            end
            if (proceed_req) begin
                stop_cause <= 11'b0;
                proceeding <= 1'b1;
            end else if (proceeding) begin
                if (MT01) begin
                    proceeding <= 1'b0;
                end
            end else begin
                if (stop_conds[`STOP_T12] & MT12) begin
                    stop_cause[`STOP_T12] <= 1'b1;
                end
    
                if (stop_conds[`STOP_NISQ] & MNISQ) begin
                    if(~nisq_counted) begin
                        nisq_counter <= nisq_counter + 1'b1;
                        nisq_counted = 1'b1;
                    end
                    if(nisq_counter == n_nisq_steps) begin
                        stop_cause[`STOP_NISQ] <= 1'b1;
                        nisq_counter <= 16'b0;
                    end
                end
    
                if (stop_conds[`STOP_S1] & s1_match) begin
                    stop_cause[`STOP_S1] <= 1'b1;
                end
    
                if (stop_conds[`STOP_S2] & s2_match) begin
                    stop_cause[`STOP_S2] <= 1'b1;
                end
    
                if (stop_conds[`STOP_W] & w_match) begin
                    stop_cause[`STOP_W] <= 1'b1;
                end
    
                if (stop_conds[`STOP_S_W] & s_match & w_match) begin
                    stop_cause[`STOP_S_W] <= 1'b1;
                end
    
                if (stop_conds[`STOP_S_I] & s_match & i_match) begin
                    stop_cause[`STOP_S_I] <= 1'b1;
                end
    
                if (stop_conds[`STOP_CHAN] & s_match & (mrchg | mwchg)) begin
                    stop_cause[`STOP_CHAN] <= 1'b1;
                end
    
                if (stop_conds[`STOP_PAR] & ~MPAL_) begin
                    stop_cause[`STOP_PAR] <= 1'b1;
                end
    
                if (stop_conds[`STOP_I] & i_match) begin
                    stop_cause[`STOP_I] <= 1'b1;
                end
    
                if (stop_conds[`STOP_PROG_STEP] & s1_match) begin
                    prog_step_match <= 1'b1;
                end
    
                if (prog_step_match & MNISQ) begin
                    stop_cause[`STOP_PROG_STEP] <= 1'b1;
                    prog_step_match <= 1'b0;
                end
            end
        end
    end

endmodule
`default_nettype wire