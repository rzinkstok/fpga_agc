`timescale 1ns / 1ps

module agc_clock_divider(
    input wire prop_clk,
    input wire prop_clk_locked,
    input wire reset,
    output wire agc_clk
    );
    
    // Normal: divide 51.2 MHz by 25 to 1.024 MHz
    // Low speed: divide by 250 to 102.4 kHz
    
    reg [6:0] counter;

    //assign agc_clk = counter >= 8'd125;
    assign agc_clk = counter >= 6'd12;

    always @(posedge prop_clk or posedge reset) begin
        if (reset) begin
            counter <= 6'b0;
        end else begin
            //if (!prop_clk_locked | (counter >= 8'd249)) begin
            if (!prop_clk_locked | (counter >= 6'd24)) begin
                counter <= 6'b0;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
