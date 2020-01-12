`timescale 1ns / 1ps

module agc_monitor(
    input wire clk,
    input wire rst_n,
    output wire led,
    output wire led2,

    // FT232 FIFO interface
    input wire clkout,
    inout wire [7:0]data,
    input wire rxf_n,
    input wire txe_n,
    output wire rd_n,
    output wire wr_n,
    output wire oe_n,
    output wire siwu
);

wire [39:0] cmd;
wire cmd_ready;
wire cmd_read_en;

// USB interface
usb_interface usb_if(
    .clk(clk),
    .rst_n(rst_n),
    .clkout(clkout),
    .data(data),
    .rxf_n(rxf_n),
    .txe_n(txe_n),
    .rd_n(rd_n),
    .wr_n(wr_n),
    .oe_n(oe_n),
    .siwu(siwu),
    .cmd(cmd),
    .cmd_ready(cmd_ready),
    .cmd_read_en(cmd_read_en)
);

wire [15:0] cmd_addr;
wire [15:0] cmd_data;

cmd_controller cmd_ctrl(
    .clk(clk),
    .rst_n(rst_n),
    .cmd(cmd),
    .cmd_ready(cmd_ready),
    .cmd_read_en(cmd_read_en),
    .cmd_addr(cmd_addr),
    .cmd_data(cmd_data),
    .ctrl_read_en(ctrl_read_en),
    .ctrl_write_en(ctrl_write_en)
);

control_regs ctrl_regs(
    .clk(clk),
    .rst_n(rst_n),
    .addr(cmd_addr),
    .data_in(cmd_data),
    .read_en(ctrl_read_en),
    .write_en(ctrl_write_en),
    .data_out(),
    .nhalga(led2)
);



reg [31:0] counter;
assign led = counter[26];

always @(posedge clk) begin
    if (~rst_n) begin
        counter <= 32'b0;
    end else begin
        counter <= counter + 1;
    end
end

endmodule
