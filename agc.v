module agc(y, SIM_RST, SIM_CLK);
    input wire SIM_RST, SIM_CLK;
    output wire y;
    reg a = 0;
    reg b = 0;
    
    nor_2 NOR(y, a, b, SIM_RST, SIM_CLK);
endmodule