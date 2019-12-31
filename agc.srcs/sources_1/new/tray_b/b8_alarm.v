`timescale 1ns / 1ps

module b8_alarm(
    input wire p28COM,
    input wire BPLUS,
    input wire p4VDC,
    input wire n0VDCA,
    
    input wire prop_clk,
    input wire prop_clk_locked,
    input wire reset,
    
    input wire Q2A,
    input wire BPLSSW,
    input wire p4SW,
    
    output wire VFAIL,
    output wire STRT2
    );
    
    
    // Voltage alarm
    assign VFAIL = ~(p28COM && BPLUS && p4VDC);
    
    
    // Oscillator alarm
    // Delay circuit to hold the alarm slightly longer after the clock is locked
    // Counts for 255 prop_clk cycles (i.e. about 5 us) before asserting STRT2
    reg [8:0] counter;
    assign STRT2 = counter < 8'd255;

    always @(posedge prop_clk or posedge reset) begin
        if (~prop_clk_locked) begin
            counter <= 8'b0;
        end else begin
            if (counter >= 8'd255) begin
                counter <= 8'd255;
            end else begin
                counter <= counter + 1;
            end
        end
    end

    
endmodule
