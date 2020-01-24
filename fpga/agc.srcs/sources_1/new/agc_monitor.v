`timescale 1ns / 1ps

module agc_monitor(
    input wire clk,
    input wire reset,
    
    // FT232 FIFO interface
    input wire clkout,
    inout wire [7:0]data,
    input wire rxf_n,
    input wire txe_n,
    output wire rd_n,
    output wire wr_n,
    output wire oe_n,
    output wire siwu,

    // AGC signals
    input wire MONWT,
    input wire MT01,
    input wire MT02,
    input wire MT03,
    input wire MT04,
    input wire MT05,
    input wire MT06,
    input wire MT07,
    input wire MT08,
    input wire MT09,
    input wire MT10,
    input wire MT11,
    input wire MT12,
    input wire MWL01,
    input wire MWL02,
    input wire MWL03,
    input wire MWL04,
    input wire MWL05,
    input wire MWL06,
    input wire MWL07,
    input wire MWL08,
    input wire MWL09,
    input wire MWL10,
    input wire MWL11,
    input wire MWL12,
    input wire MWL13,
    input wire MWL14,
    input wire MWL15,
    input wire MWL16,

    input wire MWAG,
    input wire MWLG,
    input wire MWQG,
    //input wire mwebg,
    //input wire mwfbg,
    //input wire mwbbeg,
    input wire MWZG,
    input wire MWBG,
    //input wire mwsg,
    //input wire mwg,
    input wire MWYG,
    input wire MRULOG,

    output wire MNHRPT,
    output wire NHALGA,
    
    output wire [6:1]leds,
    output wire [6:1]dbg
);

    // Signal conversion
    wire rst_n = !reset;
    wire [12:1]mt;
    assign mt = { MT12, MT11, MT10, MT09, MT08, MT07, MT06, MT05, MT04, MT03, MT02, MT01 };
    wire [16:1]mwl;
	assign mwl = { MWL16, MWL15, MWL14, MWL13, MWL12, MWL11, MWL10, MWL09, MWL08, MWL07, MWL06, MWL05, MWL04, MWL03, MWL02, MWL01};

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

    wire mon_reg_read_en;
    wire [15:0] mon_reg_data;

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
        .ctrl_write_done(ctrl_write_done),
        .mon_reg_read_en(mon_reg_read_en)
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

        .MNHRPT(MNHRPT),
        .NHALGA(NHALGA)
    );


    /*******************************************************************************.
    * Clear Timer                                                                   *
    '*******************************************************************************/
    wire ct;
    clear_timer ctmr(
        .clk(clk),
        .rst_n(rst_n),
        .MONWT(MONWT),
        .ct(ct)
    );

    /*******************************************************************************.
    * Monitor Registers                                                             *
    '*******************************************************************************/
    //wire [15:10] sq;
    wire [16:1] l;
    wire [16:1] q;
    wire [16:1] z;
    //wire [16:1] g;
    wire [16:1] b;
    wire [16:1] y;
    wire [16:1] u;
    //wire [11:9] true_eb;
    //wire [15:11] true_fb;
    //wire [12:1] true_s;
    //wire inhibit_ws;
    //wire rbbk;

    monitor_regs mon_regs(
        .clk(clk),
        .rst_n(rst_n),

        .mt(mt),
        .MONWT(MONWT),
        .ct(ct),
        .mwl(mwl),
        .MWAG(MWAG),
        .MWLG(MWLG),
        .MWQG(MWQG),
        //.mwebg(mwebg),
        //.mwfbg(mwfbg),
        //.mwbbeg(mwbbeg),
        .MWZG(MWZG),
        .MWBG(MWBG),
        //.mwsg(mwsg),
        //.mwg(mwg),
        .MWYG(MWYG),
        .MRULOG(MRULOG),
        //.mrgg(mrgg),
        //.mwchg(mwchg),
        //.mrchg(mrchg),

        //.inhibit_ws(inhibit_ws),
        //.rbbk(rbbk),
        //.s_only(s_only),
        //.adv_s(adv_s),

        //.msqext(msqext),
        //.msq(msq),
        //.mst(mst),
        //.mbr(mbr),

        //.mgojam(mgojam),
        //.mstpit_n(mstpit_n),
        //.miip(miip),
        //.minhl(minhl),
        //.minkl(minkl),
        //.mnisq(mnisq),
        //.msp(msp),
        //.mgp_n(mgp_n),

        //.mstp(mstp),

        //.s1_match(s1_match),
        //.s2_match(s2_match),
        //.i_match(i_match),

        //.w_mode(w_mode),
        //.w_s1_s2(w_s1_s2),
        //.w_times(w_times),
        //.w_pulses(w_pulses),

        //.sq(sq),
        .l(l),
        .q(q),
        .z(z),
        //.s(s),
        //.eb(eb),
        //.fb(fb),
        //.g(g),
        .b(b),
        .y(y),
        .u(u),

        //.w(w),
        //.wp(wp),
        //.i(i),

        //.true_eb(true_eb),
        //.true_fb(true_fb),
        //.true_s(true_s),

        .read_en(mon_reg_read_en),
        .addr(cmd_addr),
        .data_out(mon_reg_data)
    );

endmodule
