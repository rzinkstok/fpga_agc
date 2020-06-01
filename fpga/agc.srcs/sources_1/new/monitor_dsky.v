`timescale 1ns / 1ps
`default_nettype none

`include "monitor_defs.v"

module monitor_dsky(
    input wire clk,
    input wire rst_n,
    input wire read_en,
    input wire write_en,
    input wire [15:0] addr,
    input wire [15:0] data_in,
    output wire [15:0] data_out,

    input wire MGOJAM,
    input wire [12:1] mt,
    input wire MSQEXT,
    input wire [15:10] sq,
    input wire mrchg,
    input wire [9:1] ch,

    input wire [15:1] out0,
    input wire [15:1] dsalmout,
    input wire [15:1] chan13,
    
    output reg MKEY1,
    output reg MKEY2,
    output reg MKEY3,
    output reg MKEY4,
    output reg MKEY5,
    output reg MAINRS,
    
    output reg NKEY1,
    output reg NKEY2,
    output reg NKEY3,
    output reg NKEY4,
    output reg NKEY5,
    output reg MARK,
    output reg MRKREJ,
    output reg NAVRST,
    output reg MRKRST,
    
    output reg IN3214
);
    
    // Logic to decode channel 10 (OUT0) data
    `define RYWD_5MS_COUNT 19'd500000
    
    wire [15:12] rywd;
    assign rywd = out0[15:12];
    reg [15:12] rywd_p;
    
    reg [18:0] rywd_timer;
    
    wire [11:1] ryb;
    assign ryb = out0[11:1];
    
    reg [9:0] prog;
    reg [9:0] verb;
    reg [9:0] noun;
    reg [26:0] reg1;
    reg [26:0] reg2;
    reg [26:0] reg3;
    reg prio_disp;
    reg no_dap;
    reg vel;
    reg no_att;
    reg alt;
    reg gimbal_lock;
    reg tracker;
    reg prog_alarm;
    
    // Channel 10 (OUT0) multiplexes the DSKY data coming from the AGC, holding each digit at least 20 ms.
    // This loop checks the 4 bit digit address code in channel 10 (bits 12-15, called RYWD):
    // if it changes, it waits for 5 ms and then puts the digit data (bits 1-11, called RYB)
    // into the proper register
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            prog <= 10'b0;
            verb <= 10'b0;
            noun <= 10'b0;
            reg1 <= 27'b0;
            reg2 <= 27'b0;
            reg3 <= 27'b0;
            prio_disp <= 1'b0;
            no_dap <= 1'b0;
            vel <= 1'b0;
            no_att <= 1'b0;
            alt <= 1'b0;
            gimbal_lock <= 1'b0;
            tracker <= 1'b0;
            prog_alarm <= 1'b0;
            rywd_p <= 4'b0;
            rywd_timer <= `RYWD_5MS_COUNT;
        end else begin
            if (rywd == rywd_p) begin
                if (rywd_timer > 19'b0) begin
                    rywd_timer <= rywd_timer - 19'b1;
                end else begin
                    case (rywd)
                        4'o01: begin
                            reg3[9:0] <= ryb[10:1];
                            reg3[25] <= ryb[11];
                        end
        
                        4'o02: begin
                            reg3[19:10] <= ryb[10:1];
                            reg3[26] <= ryb[11];
                        end
        
                        4'o03: begin
                            reg3[24:20] <= ryb[5:1];
                            reg2[4:0] <= ryb[10:6];
                        end
        
                        4'o04: begin
                            reg2[14:5] <= ryb[10:1];
                            reg2[25] <= ryb[11];
                        end
        
                        4'o05: begin
                            reg2[24:15] <= ryb[10:1];
                            reg2[26] <= ryb[11];
                        end
        
                        4'o06: begin
                            reg1[9:0] <= ryb[10:1];
                            reg1[25] <= ryb[11];
                        end
        
                        4'o07: begin
                            reg1[19:10] <= ryb[10:1];
                            reg1[26] <= ryb[11];
                        end
        
                        4'o10: begin
                            reg1[24:20] <= ryb[5:1];
                        end
        
                        4'o11: begin
                            noun[9:0] <= ryb[10:1];
                        end
        
                        4'o12: begin
                            verb[9:0] <= ryb[10:1];
                        end
        
                        4'o13: begin
                            prog[9:0] <= ryb[10:1];
                        end
        
                        4'o14: begin
                            prio_disp   <= ryb[1];
                            no_dap      <= ryb[2];
                            vel         <= ryb[3];
                            no_att      <= ryb[4];
                            alt         <= ryb[5];
                            gimbal_lock <= ryb[6];
                            tracker     <= ryb[8];
                            prog_alarm  <= ryb[9];
                        end
                    endcase
                end
            end else begin
                rywd_timer <= `RYWD_5MS_COUNT;
            end
            rywd_p <= rywd;
        end
    end
    
    // Flip-flop for the restart lamp
    reg restart_ff;
    //reg [4:0] main_keycode;
   // reg [6:0] nav_keycode;
    
//    always @(posedge clk or negedge rst_n) begin
//        if (~rst_n) begin
//            restart_ff <= 1'b0;
//        end else begin
//            if (MGOJAM) begin
//                restart_ff <= 1'b1;
//            end else if ((keyrupt1 & (main_keycode == 5'b10010)) | (keyrupt2 & (nav_keycode == 5'b10010))) begin
//                restart_ff <= 1'b0;
//            end
//        end
//    end
    
    // Other lamps are controlled by channels 13 and channel 15 (DSALMOUT) 
    wire restart;
    assign restart = restart_ff | chan13[10];
    
    wire upl_act;
    assign upl_act = dsalmout[3];
    
    wire stby;
    assign stby = chan13[10];
    
    wire key_rel;
    assign key_rel = dsalmout[5];
    
    wire opr_err;
    assign opr_err = dsalmout[7];
    
    wire temp;
    assign temp = dsalmout[4];
    
    wire com_act;
    assign com_act = dsalmout[2];
    
    wire vnflash;
    assign vnflash = dsalmout[6];
    
    // Handling of button presses
    // Should put keycode on MKEY1 - MKEY5, which are linked to input channel 15 
    // When a key is released, MAINRS must be sent. The AGC generates KYRUPT1 only when
    // F09A/ goes low, so the key must be pressed for at least half the period of F09. F09
    // has a 5 ms period, so 2.5 ms should do it.
    // MAINRS is always high if no key is pressed.
    //
    // PROCEED is special: it has no keycode, and is also the STBY button. The proceed signal is
    // communicated through channel 32 bit 14 (signal IN3214). STBY is initiated when holding PROCEED
    // for about 2 seconds.
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            MKEY1 <= 1'b0;
            MKEY2 <= 1'b0;
            MKEY3 <= 1'b0;
            MKEY4 <= 1'b0;
            MKEY5 <= 1'b0;
            NKEY1 <= 1'b0;
            NKEY2 <= 1'b0;
            NKEY3 <= 1'b0;
            NKEY4 <= 1'b0;
            NKEY5 <= 1'b0;
            MARK <= 1'b0;
            MRKREJ <= 1'b0;
            IN3214 <= 1'b0;
            MAINRS <= 1'b1;
            NAVRST <= 1'b1;
            MRKRST <= 1'b1;
            
        end else begin
            if (write_en) begin
                case (addr)
                    `DSKY_REG_MAIN_BUTTON: begin
                        MKEY1 <= data_in[0];
                        MKEY2 <= data_in[1];
                        MKEY3 <= data_in[2];
                        MKEY4 <= data_in[3];
                        MKEY5 <= data_in[4];
                        MAINRS <= 1'b0;
                    end
                    `DSKY_REG_NAV_BUTTON: begin
                        NKEY1 <= data_in[0];
                        NKEY2 <= data_in[1];
                        NKEY3 <= data_in[2];
                        NKEY4 <= data_in[3];
                        NKEY5 <= data_in[4];
                        MARK <= data_in[5];
                        MRKREJ <= data_in[6];
                        NAVRST <= 1'b0;
                        MRKRST <= 1'b0;
                    end
                    `DSKY_REG_PROCEED: begin
                        IN3214 <= 1'b1;
                    end
                    `DSKY_REG_BUTTON_REL: begin
                        MKEY1 <= 1'b0;
                        MKEY2 <= 1'b0;
                        MKEY3 <= 1'b0;
                        MKEY4 <= 1'b0;
                        MKEY5 <= 1'b0;
                        NKEY1 <= 1'b0;
                        NKEY2 <= 1'b0;
                        NKEY3 <= 1'b0;
                        NKEY4 <= 1'b0;
                        NKEY5 <= 1'b0;
                        MARK <= 1'b0;
                        MRKREJ <= 1'b0;
                        IN3214 <= 1'b0;
                        
                        MAINRS <= 1'b1;
                        NAVRST <= 1'b1;
                        MRKRST <= 1'b1;
                        
                        IN3214 <= 1'b0;
                    end
                endcase
            end
        end
    end
    
    // Logic to send display data to client
    reg [15:0] read_data;
    reg read_done;
    
    assign data_out = read_done ? read_data : 16'b0;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            read_data <= 16'b0;
            read_done <= 1'b0;
        end else if (read_en) begin
            read_done <= 1'b1;
            case (addr)
                `DSKY_REG_PROG:   read_data <= {6'b0, prog};
                `DSKY_REG_VERB:   read_data <= {4'b0, verb};
                `DSKY_REG_NOUN:   read_data <= {1'b0, noun};
                `DSKY_REG_REG1_L: read_data <= {1'b0, reg1[14:0]};
                `DSKY_REG_REG1_H: read_data <= {4'b0, reg1[26:15]};
                `DSKY_REG_REG2_L: read_data <= {1'b0, reg2[14:0]};
                `DSKY_REG_REG2_H: read_data <= {4'b0, reg2[26:15]};
                `DSKY_REG_REG3_L: read_data <= {1'b0, reg3[14:0]};
                `DSKY_REG_REG3_H: read_data <= {4'b0, reg3[26:15]};
                `DSKY_REG_STATUS: read_data <= {vnflash, com_act, upl_act, no_att, stby, key_rel, opr_err, no_dap, prio_disp,
                                                temp, gimbal_lock, prog_alarm, restart, tracker, alt, vel};
            endcase
        end else begin
            read_done <= 1'b0;
        end
    end

endmodule
`default_nettype wire