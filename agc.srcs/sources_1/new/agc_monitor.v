`timescale 1ns / 1ps

module agc_monitor(
    input wire clk,
    input wire rst_n,
    
    // FT232 FIFO interface
    input wire clkout,
    inout wire [7:0]data,
    input wire rxf_n,
    input wire txe_n,
    output wire rd_n,
    output wire wr_n,
    output wire oe_n,
    output wire siwu,
    
    output wire NHALGA,
    
    output wire [6:1]leds,
    output wire [6:1]dbg
);


/*******************************************************************************.
* USB Interface                                                                 *
'*******************************************************************************/
// Incoming command from USB, associated validity flag, and read signal
wire [39:0] cmd;
wire cmd_ready;
wire cmd_read_en;
assign dbg[1] = cmd_read_en;
assign dbg[2] = cmd_ready;
assign dbg[3] = rxf_n;
assign dbg[4] = oe_n;

// Read response message for sending back over USB, and its validity flag
wire [39:0] read_msg;
wire read_msg_ready;


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
    .cmd_read_en(cmd_read_en),
    .read_msg(read_msg),
    .read_msg_ready(read_msg_ready)
);


/*******************************************************************************.
* Command Controller                                                            *
'*******************************************************************************/
// Address and (if applicable) data associated with the command currently
// being processed
wire [15:0] cmd_addr;
wire [15:0] cmd_data;


// Control Registers control signals
wire ctrl_read_en;
wire ctrl_write_en;
wire ctrl_write_done;
wire [15:0] ctrl_data;

wire [15:0] read_data;
assign read_data = ctrl_data;


cmd_controller cmd_ctrl(
    .clk(clk),
    .rst_n(rst_n),
    .cmd(cmd),
    .cmd_ready(cmd_ready),
    .cmd_read_en(cmd_read_en),
    .cmd_addr(cmd_addr),
    .cmd_data(cmd_data),
    .read_data(read_data),
    .read_msg(read_msg),
    .read_msg_ready(read_msg_ready),
    .ctrl_read_en(ctrl_read_en),
    .ctrl_write_en(ctrl_write_en),
    .ctrl_write_done(ctrl_write_done)
);


/*******************************************************************************.
* Control Registers                                                             *
'*******************************************************************************/

control_regs ctrl_regs(
    .clk(clk),
    .rst_n(rst_n),
    
    .addr(cmd_addr),
    .data_in(cmd_data),
    .read_en(ctrl_read_en),
    .write_en(ctrl_write_en),
    .write_done(ctrl_write_done),
    .data_out(ctrl_data),
    
    .nhalga(NHALGA)
);


endmodule
