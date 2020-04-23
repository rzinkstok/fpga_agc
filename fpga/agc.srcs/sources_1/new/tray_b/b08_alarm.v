`timescale 1ns / 1ps

module b08_alarm(
    input wire p28COM,
    input wire BPLUS,
    input wire p4VDC,
    
    input wire prop_clk,
    input wire prop_clk_locked,
    
    input wire p4SW,
    input wire SCAS10,
    input wire SCAS17,
    input wire FILTIN,
    
    output wire VFAIL,
    output wire STRT2,
    output wire SCAFAL,
    output wire n2FSFAL,
    output wire MYCLMP,
    output wire FLTOUT
    );
    
//    // Define a 1.024 MHz reference signal
//    wire refclk;
//    reg [6:0] refclk_counter;
//    assign refclk = refclk_counter < 6'd25;
    
//    always @(posedge prop_clk) begin
//        if (!prop_clk_locked) begin
//            refclk_counter <= 6'b0;
//        end else begin
//            refclk_counter <= refclk_counter + 1;
//            if(refclk_counter >= 6'd50) begin
//                refclk_counter <= 6'b0;
//            end
//        end
//    end
    
    
    // Voltage alarm
    assign VFAIL = !(p28COM && BPLUS && p4VDC);
    
    
    // Oscillator alarm
    // Delay circuit to hold the alarm slightly longer after the clock is locked
    // Counts for 255 prop_clk cycles (i.e. about 5 us) before deasserting STRT2
    reg [8:0] delay_counter;
    assign STRT2 = (delay_counter < 8'd255);

    always @(posedge prop_clk) begin
        if (!prop_clk_locked) begin
            // Zero the counter, so STRT2 is asserted
            delay_counter <= 8'b0;
        end else begin
            // After the oscillator is locked, wait a while before STRT2 is deasserted 
            if (delay_counter >= 8'd255) begin
                delay_counter <= 8'd255;
            end else begin
                delay_counter <= delay_counter + 1;
            end
        end
    end
    
    
    // Scaler alarm
    // Turns on when SCAS17 (FS17) is not pulsing anymore. 
    // FS01 is CLK divided by 20
    // FS17 is FS01 halved 16 times, so FS01 divided by 65536
    // Therefore FS17 is CLK divided by 1310720
//    reg [20:0] scafal_counter;
//    assign SCAFAL = scafal_counter > 21'd1310720;
//    always @(posedge refclk) begin
//        if (!prop_clk_locked || SCAS17) begin
//            scafal_counter <= 21'b0;
//        end else begin
//            scafal_counter <= scafal_counter + 1;
//        end
//    end
    assign SCAFAL = 1'b0;
    
    
    // Double frequency scalar alarm
    // Converts SCAS10 (25% duty cycle version of FS10) into 2FSFAL, a signal
    // that is compared with CON3 in A13. CON3 is equal to SCAS10.
    // The processing to get from SCAS10 to 2FSFAL is not clear to me... so this is just passing it
    // along. This will never actually raise an alarm.
    assign n2FSFAL = 1'b1;

    
    // MYCLMP
    // Protects memory access in case of power failure or standby
    assign MYCLMP = !p4SW;
    
    
    // Warning integrator
    // FILTIN is integrated such that if 5 successive pulses occur, a FLTOUT pulse of about 5 seconds is emitted.
    // Any pulses occurring after the first 5 pulses but within these 5 seconds, the pulse is lengthened.
    // Inputs to FILTIN are VFAIL during standby, counter alarm (DOFILT), double frequenct scaler alarm
    // (SCADBL) or alarm test (ALTEST).
    // FILTIN pulses are 1.25 ms long (determined by F08B) and occur each 160 ms (determined by F14B).
    
//    reg [2:0] npulses; // = 1'b0;
//    reg [22:0] ref_counter = 23'b0;
//    assign FLTOUT = (npulses >= 3'd5);
    
//    always @(posedge FILTIN) begin
//        ref_counter <= 1'b0;
//        if (npulses < 3'd5) begin
//            npulses <= npulses + 1;
//        end
//    end
    
//    always @(posedge refclk) begin
//        if (npulses == 5) begin
//            // 5 seconds after the last pulse occurred, reset the number of pulses to 0
//            if (ref_counter > 23'd5120000) begin
//                npulses <= 3'b0;
//            end
//        end else if (npulses > 1) begin
//            ref_counter <= ref_counter + 1;
//            // If no new pulse occurs within a single period of F14 (160 ms), reset the number of pulses
//            if (ref_counter > 23'd8192) begin
//                ref_counter <= 23'b0;
//                npulses <= 3'b0;
//            end
//        end
//    end

// Perhaps 5 bit shift register that is shifted each tick of F14B
// Data in is determined by a flip-flop that is set by FILTIN and cleared after shifting
    
    // Generate f14 clock
    // FS01 is CLK divided by 20
    // FS14 is FS01 halved 13 times, so FS01 divided by 8192
    // Therefore FS17 is CLK divided by 163840
//    wire ref_f14;
//    reg [17:0] ref_f14_counter;
//    assign ref_f14 = ref_f14_counter < 18'd81920;
    
//    always @(posedge refclk) begin
//        if (!prop_clk_locked) begin
//            ref_f14_counter <= 18'b0;
//        end else begin
//            ref_f14_counter <= ref_f14_counter + 1;
//            if(ref_f14_counter >= 18'd163840) begin
//                ref_f14_counter <= 18'b0;
//            end
//        end
//    end
    
//    wire filtin_reset;
//    wire filtin_latch;
//    wire filtin_latch_;
    
//    nor(filtin_latch_, FILTIN, filtin_latch);
//    nor(filtin_latch, filtin_latch_, filtin_reset);
    
//    reg[4:0] filt_shift;
//    always @(posedge ref_f14) begin
//        if(!prop_clk_locked) begin
//            filt_shift <= 5'b0;
//        end else begin
//            filt_shift <= {filt_shift[3:0], filtin_latch};
//        end
//    end
    
//    assign FLTOUT = filt_shift >= 5'b11111;

    
    assign FLTOUT = 1'b0;
endmodule
