`timescale 1ns / 1ps


module fpga_agc_tb();
    reg clk=0;
    reg clk_reset = 0;
    wire reset;
    
    wire prop_clk;
    wire prop_clk_locked;
    wire agc_clk;
    
    reg NHALGA = 0;

    assign reset = ~prop_clk_locked;

    always
		#5 clk = !clk;
    //#always 
        
    tray_a trayA(NHALGA, prop_clk, agc_clk, reset);
    tray_b trayB(clk, clk_reset, reset, prop_clk, prop_clk_locked, agc_clk);
    
    initial
	begin
	    #5 NHALGA = 1;
		#10000 $stop;
	end
    
endmodule
