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
    input wire SCAS10,
    input wire SCAS17,
    
    output wire VFAIL,
    output wire STRT2,
    output wire n2FSFAL,
    output wire MYCLMP
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
    
    // Scaler alarm
    // Turns on when SCAS17 (FS17) is not pulsing anymore. SCAS17 (FS17) has a period
    // of 1.3 seconds, so it is rather slow...
    
    // Double frequency scalar alarm
    // Converts SCAS10 (25% duty cycle version of FS10) into 2FSFAL, a signal
    // that is compared with CON3 in A13. CON3 is equal to SCAS10.
    // The processing to get from SCAS10 to 2FSFAL is not clear to me...
    assign n2FSFAL = SCAS10;

    // MYCLMP
    assign MYCLMP = ~p4SW;
    
    
endmodule
