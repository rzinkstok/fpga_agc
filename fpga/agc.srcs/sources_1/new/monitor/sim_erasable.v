`timescale 1ns / 1ps
`default_nettype none

`include "monitor_defs.v"

module sim_erasable(
    input wire clk,
    input wire rst_n,

    input wire read_en,
    input wire write_en,
    input wire [15:0] addr,
    input wire [15:0] data_in,
    output wire [15:0] data_out,

    input wire [7:0] bank_en,

    input wire MINKL,
    input wire [12:1] mt,
    input wire MSQEXT,
    input wire [15:10] msq,
    input wire [3:1] mst,
    input wire [11:9] eb,
    input wire [12:1] s,
    input wire [16:1] g,
    input wire MGP_,
    input wire MRSC,
    input wire MRGG,
    input wire MWG,
    output wire MAMU,
    output wire [16:1] mdt
);

    localparam IDLE = 2'o0,
               ACTIVE = 2'o1,
               COMPLETE = 2'o2;
    
    // MAMU signal inhibiting ERAS in AGC
    reg [1:0] state;
    assign MAMU = (state != IDLE);
    
    // Decode erasable address coming from AGC in s and eb 
    wire[11:1] eaddr;
    erasable_addr_decoder(
        .eb(eb),
        .s(s),
        .eaddr(eaddr)
    );
    
    // Signal to enable memory channel for monitor
    wire erasable_mem_en;
    assign erasable_mem_en = read_en | write_en;
    
    wire [15:0] erasable_mem_data;
    
    // AGC signal to write data
    wire agc_write_en;
    assign agc_write_en = MAMU & mt[11];
    
    // The memory address as requested by the AGC
    wire [11:1] agc_addr;
    reg [11:1] writeback_eaddr;
    assign agc_addr = MAMU ? writeback_eaddr : eaddr;
    
    // Data from AGC to be written
    wire [16:1] agc_data_in;
    assign agc_data_in = {g[16], g[14:1], ~MGP_};
    
    // Data read requested by AGC
    wire [16:1] agc_data_out;
    
    // Memory channel A enables writing and reading data (data input/output to monitor)
    // Memory channel B enables writing and reading data (data input/output to AGC)
    sim_erasable_memory(
        .clka(clk),
        .ena(erasable_mem_en),
        .wea(write_en),
        .addra(addr[10:0]),
        .dina(data_in),
        .douta(erasable_mem_data),
    
        .clkb(clk),
        .web(agc_write_en),
        .addrb(agc_addr),
        .dinb(agc_data_in),
        .doutb(agc_data_out)
    );
    
    // Capture data coming from simulated memory destined for AGC
    wire [16:1] e_data;
    reg [16:1] read_word;
    assign e_data = {read_word[16], read_word[16], read_word[15:2]};
    
    // Undo editing (for erasable memory locations 20-23)
    wire [16:1] unedited;
    unedit(
        .s(s),
        .mwl(e_data),
        .unedited(unedited)
    );
    
    // MDT assignments using data from memory
    wire [16:1] mdt_wg;
    wire [16:1] mdt_rg;
    assign mdt_wg = ((state == ACTIVE) & MRSC & MWG) ? unedited : 16'o0;
    assign mdt_rg = ((state == ACTIVE) & MRGG) ? e_data : 16'o0;
    assign mdt = mdt_wg | mdt_rg;
    
    reg mrgg_p;
    
    // The requested bank
    wire [2:0] bank;
    assign bank = eaddr[11:9];
    
    // State machine:
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            state <= IDLE;
            read_word <= 16'o0;
            writeback_eaddr <= 11'o0;
            mrgg_p <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    if (bank_en[bank]) begin
                        writeback_eaddr <= eaddr;
                        read_word <= agc_data_out;
                        state <= ACTIVE;
                    end
                end
        
                ACTIVE: begin
                    if (mrgg_p & (~MRGG)) begin
                        state <= COMPLETE;
                    end else if (mt[12]) begin
                        state <= IDLE;
                    end
                end
        
                COMPLETE: begin
                    if (mt[12]) begin
                        state <= IDLE;
                    end
                end
            endcase
    
            mrgg_p <= MRGG;
        end
    end
    
    // Assing data for monitor
    reg read_done;
    assign data_out = read_done ? erasable_mem_data : 16'b0;
    
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            read_done <= 1'b0;
        end else begin
            read_done <= read_en;
        end
    end

endmodule
`default_nettype wire