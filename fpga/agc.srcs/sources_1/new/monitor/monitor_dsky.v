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
    input wire RESTRT,
    
    input wire RLYB01,
    input wire RLYB02,
    input wire RLYB03,
    input wire RLYB04,
    input wire RLYB05,
    input wire RLYB06,
    input wire RLYB07,
    input wire RLYB08,
    input wire RLYB09,
    input wire RLYB10,
    input wire RLYB11,
    
    input wire RYWD12,
    input wire RYWD13,
    input wire RYWD14,
    input wire RYWD16,
    
    input wire COMACT,
    input wire UPLACT,
    input wire TMPCAU,
    input wire KYRLS,
    input wire VNFLSH,
    input wire OPEROR,
    input wire SBYLIT,
    
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
    
    output reg IN3214,
    output reg SBYBUT,
    
    output reg CAURST
);
    
    // Logic to decode channel 10 (OUT0) data
    `define RYWD_5MS_COUNT 19'd500000
    
    wire [15:12] rywd;
    assign rywd = {RYWD16, RYWD14, RYWD13, RYWD12};
    reg [15:12] rywd_p;
    
    reg [18:0] rywd_timer;
    
    wire [11:1] ryb;
    assign ryb = {RLYB11, RLYB10, RLYB09, RLYB08, RLYB07, RLYB06, RLYB05, RLYB04, RLYB03, RLYB02, RLYB01};
    
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
    
    // Channel 10 multiplexes the DSKY data coming from the AGC, holding each digit at least 20 ms.
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
    
    // Handling of button presses
    // Should put keycode on MKEY1 - MKEY5, which are linked to input channel 15 
    // When a key is released, MAINRS/NAVRST must be sent. The AGC generates KYRUPT1 only when
    // F09A/ goes low, so the key must be pressed for at least half the period of F09. F09
    // has a 5 ms period, so 2.5 ms should do it.
    // MAINRS/NAVRST is always high if no key is pressed.
    //
    // PROCEED is special: it has no keycode, and is also the STBY button. The proceed signal is
    // communicated through channel 32 bit 14 (signal IN3214). STBY is initiated when holding PROCEED
    // for about 2 seconds; this is communicated via the SBYBUT signal.
    //
    // RSET is another special signal, which is always sent together with the RSET key code. The AGC signal
    // involved is CAURST.
    // This should extinguish OPR ERR, TEMP, GIMBAL LOCK, PROG, RESTART, TRACKER.
    
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
            SBYBUT <= 1'b0;
            MAINRS <= 1'b1;
            NAVRST <= 1'b1;
            MRKRST <= 1'b1;
            CAURST <= 1'b0;
            
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
                    `DSKY_REG_KEYRST: begin
                        // Main keys
                        MKEY1 <= 1'b0;
                        MKEY2 <= 1'b0;
                        MKEY3 <= 1'b0;
                        MKEY4 <= 1'b0;
                        MKEY5 <= 1'b0;
                        
                        // Nav keys
                        NKEY1 <= 1'b0;
                        NKEY2 <= 1'b0;
                        NKEY3 <= 1'b0;
                        NKEY4 <= 1'b0;
                        NKEY5 <= 1'b0;
                        
                        // Mark keys
                        MARK <= 1'b0;
                        MRKREJ <= 1'b0;
                        
                        // Proceed key
                        IN3214 <= 1'b0;
                        SBYBUT <= 1'b0;
                        
                        // Resets
                        MAINRS <= 1'b1;
                        NAVRST <= 1'b1;
                        MRKRST <= 1'b1;
                        
                        // RSET
                        CAURST <= 1'b0;
                    end
                    `DSKY_REG_PROCEED: begin
                        IN3214 <= 1'b1;
                        SBYBUT <= 1'b1;
                    end
                    `DSKY_REG_RSET: begin
                        CAURST <= 1'b1;
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
                `DSKY_REG_STATUS: read_data <= {VNFLSH, COMACT, UPLACT, no_att, SBYLIT, KYRLS, OPEROR, no_dap, prio_disp, TMPCAU, gimbal_lock, prog_alarm, RESTRT, tracker, alt, vel};
            endcase
        end else begin
            read_done <= 1'b0;
        end
    end

endmodule
`default_nettype wire