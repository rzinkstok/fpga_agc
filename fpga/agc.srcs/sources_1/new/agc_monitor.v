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
    input wire MSQ10,
    input wire MSQ11,
    input wire MSQ12,
    input wire MSQ13,
    input wire MSQ14,
    input wire MSQ16,
    input wire MST1,
    input wire MST2,
    input wire MST3,
    input wire MBR1,
    input wire MBR2,
    input wire MSQEXT,
    input wire MNISQ,
    input wire MSTP,

    input wire MWAG,
    input wire MWLG,
    input wire MWQG,
    input wire MWEBG,
    input wire MWFBG,
    input wire MWBBEG,
    input wire MWZG,
    input wire MWBG,
    input wire MWSG,
    input wire MWG,
    input wire MWYG,
    input wire MRULOG,
    input wire MRGG,

    input wire MGOJAM,
    input wire MIIP,
    input wire MSTPIT_,
    input wire MINHL,
    input wire MINKL,
    input wire MSP,
    input wire MGP_,
    
    output wire MNHRPT,
    output wire MNHNC,
    output wire NHALGA,
    output wire nhstrt1,
    output wire nhstrt2,
    output wire DOSCAL,
    output wire DBLTST,
    
    output wire [6:1]leds,
    output wire [6:1]dbg
);

    // Signal conversion
    wire rst_n = !reset;
    wire [12:1]mt;
    assign mt = { MT12, MT11, MT10, MT09, MT08, MT07, MT06, MT05, MT04, MT03, MT02, MT01 };
    wire [16:1]mwl;
	assign mwl = { MWL16, MWL15, MWL14, MWL13, MWL12, MWL11, MWL10, MWL09, MWL08, MWL07, MWL06, MWL05, MWL04, MWL03, MWL02, MWL01};
    wire [15:10]msq;
    assign msq = { MSQ16, MSQ14, MSQ13, MSQ12, MSQ11, MSQ10 };
    wire [3:1]mst;
    assign mst = { MST3, MST2, MST1 };
    wire [2:1]mbr;
    assign mbr = { MBR2, MBR1 };

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

    wire status_read_en;
    wire status_write_en;
    wire [15:0] status_data;
    
    wire mon_reg_read_en;
    wire [15:0] mon_reg_data;
    
    wire mon_chan_read_en;
    wire [15:0] mon_chan_data;
    
    wire mon_dsky_read_en;
    wire mon_dsky_write_en;
    wire [15:0] mon_dsky_data;
    
    wire agc_fixed_read_en;
    wire agc_fixed_read_done;
    wire [15:0] agc_fixed_data;
    
    wire agc_erasable_read_en;
    wire agc_erasable_read_done;
    wire agc_erasable_write_en;
    wire agc_erasable_write_done;
    wire [15:0] agc_erasable_data;
    
    wire agc_channels_read_en;
    wire agc_channels_read_done;
    wire agc_channels_write_en;
    wire agc_channels_write_done;
    wire [15:0] agc_channels_data;
    
    wire crs_read_en;
    wire crs_write_en;
    wire [15:0] crs_data;
    
    wire ems_read_en;
    wire ems_write_en;
    wire [15:0] ems_data;
    
    wire trace_read_en;
    wire [15:0] trace_data;
    
    wire nassp_read_en;
    wire nassp_write_en;
    wire nassp_write_done;
    wire [15:0] nassp_data;

    // Resulting data from the active read command
    wire [15:0] read_data;
    assign read_data = ctrl_data | mon_reg_data;
    //assign read_data =  ctrl_data | status_data | mon_reg_data | mon_chan_data | agc_fixed_data | agc_erasable_data |
    //                    agc_channels_data | crs_data | ems_data | mon_dsky_data | trace_data | nassp_data;

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
        .status_read_en(status_read_en),
        .status_write_en(status_write_en),
        .mon_reg_read_en(mon_reg_read_en),
        .mon_chan_read_en(mon_chan_read_en),
        .agc_fixed_read_en(agc_fixed_read_en),
        .agc_fixed_read_done(agc_fixed_read_done),
        .agc_erasable_read_en(agc_erasable_read_en),
        .agc_erasable_read_done(agc_erasable_read_done),
        .agc_erasable_write_en(agc_erasable_write_en),
        .agc_erasable_write_done(agc_erasable_write_done),
        .agc_channels_read_en(agc_channels_read_en),
        .agc_channels_read_done(agc_channels_read_done),
        .agc_channels_write_en(agc_channels_write_en),
        .agc_channels_write_done(agc_channels_write_done),
        .crs_read_en(crs_read_en),
        .crs_write_en(crs_write_en),
        .ems_read_en(ems_read_en),
        .ems_write_en(ems_write_en),
        .mon_dsky_read_en(mon_dsky_read_en),
        .mon_dsky_write_en(mon_dsky_write_en),
        .trace_read_en(trace_read_en),
        .nassp_read_en(nassp_read_en),
        .nassp_write_en(nassp_write_en),
        .nassp_write_done(nassp_write_done)
    );


    /*******************************************************************************.
    * Control Registers                                                             *
    '*******************************************************************************/
    
    wire start_req;
    wire proceed_req;
    wire [10:0] stop_conds;
    wire stop_s1_s2;
    wire [10:0] stop_cause;
    
    wire [12:1] s;
    wire [11:9] eb;
    wire [15:11] fb;
    wire [7:5] fext;
    
    wire s1_match;
    wire s2_match;
    wire w_match;
    wire i_match;
    
    assign s1_match = 1'b0; // FIXME: remove when start/stop logic is done
    assign s2_match = 1'b0; // FIXME: remove when start/stop logic is done
    assign w_match = 1'b0;  // FIXME: remove when start/stop logic is done
    assign i_match = 1'b0;  // FIXME: remove when start/stop logic is done

    wire [2:0] w_mode;
    wire w_s1_s2;
    wire [12:1] w_times;
    wire [11:0] w_pulses;

    wire [16:1] w;
    wire [1:0] wp;

    wire [12:1] i;

    wire s_only;
    wire adv_s;
    wire ctrl_periph_load;
    wire ctrl_periph_read;
    wire ctrl_periph_loadch;
    wire ctrl_periph_readch;
    wire ctrl_periph_tcsaj;
    wire [12:1] ctrl_periph_s;
    wire [15:1] ctrl_periph_bb;
    wire [16:1] ctrl_periph_data;
    wire periph_complete;
    
    wire [63:0] crs_bank_en;
    wire [7:0] ems_bank_en;
    
    wire downrupt;
    wire handrupt;
    wire handrupt_ctrl;
    wire handrupt_nassp;
    assign handrupt = handrupt_ctrl | handrupt_nassp;
    
    control_regs ctrl_regs(
        .clk(clk),
        .rst_n(rst_n),
        
        .addr(cmd_addr),
        .data_in(cmd_data),

        .read_en(ctrl_read_en),
        .write_en(ctrl_write_en),
        .write_done(ctrl_write_done),
        .data_out(ctrl_data),
        
        .start_req(start_req),
        .proceed_req(proceed_req),
        .stop_conds(stop_conds),
        .stop_s1_s2(stop_s1_s2),
        .stop_cause(stop_cause),
        
        .MNHRPT(MNHRPT),
        .MNHNC(MNHNC),
        .NHALGA(NHALGA),
        
        .nhstrt1(nhstrt1),
        .nhstrt2(nhstrt2),
        
        .DOSCAL(DOSCAL),
        .DBLTST(DBLTST),
        
        .downrupt(downrupt),
        .handrupt(handrupt_ctrl),
        
        .s(s),
        .eb(eb),
        .fb(fb),
        .fext(fext),
        .MINKL(MINKL),
        .MINHL(MINHL),
        .MIIP(MIIP),
        
        .w(w),
        .wp(wp),
        .i(i),
        
        .s1_match(s1_match),
        .s2_match(s2_match),
        .w_match(w_match),
        .i_match(i_match),

        .w_mode(w_mode),
        .w_s1_s2(w_s1_s2),
        .w_times(w_times),
        .w_pulses(w_pulses),

        .s_only(s_only),
        .adv_s(adv_s),
        .periph_load(ctrl_periph_load),
        .periph_read(ctrl_periph_read),
        .periph_loadch(ctrl_periph_loadch),
        .periph_readch(ctrl_periph_readch),
        .periph_tcsaj(ctrl_periph_tcsaj),
        .periph_s(ctrl_periph_s),
        .periph_bb(ctrl_periph_bb),
        .periph_data(ctrl_periph_data),
        .periph_complete(periph_complete),
    
        .crs_bank_en(crs_bank_en),
        .ems_bank_en(ems_bank_en)
    );

    /*******************************************************************************.
    * Status Registers                                                              *
    '*******************************************************************************/
    wire [16:1] mismatch_faddr;
    wire [16:1] mismatch_data;
    status_regs stat_regs(
        .clk(clk),
        .rst_n(rst_n),
    
        .addr(cmd_addr),
        .data_in(cmd_data),
        .read_en(status_read_en),
        .write_en(status_write_en),
        .data_out(status_data),
    
        .bplssw_p(bplssw_p),
        .bplssw_n(bplssw_n),
        .p4sw_p(p4sw_p),
        .p4sw_n(p4sw_n),
        .p3v3io_p(p3v3io_p),
        .p3v3io_n(p3v3io_n),
        .mtemp_p(mtemp_p),
        .mtemp_n(mtemp_n),
    
        .mt05(mt[5]),
        .mt08(mt[8]),
    
        .mvfail_n(mvfail_n),
        .moscal_n(moscal_n),
        .mscafl_n(mscafl_n),
        .mscdbl_n(mscdbl_n),
        .mctral_n(mctral_n),
        .mtcal_n(mtcal_n),
        .mrptal_n(mrptal_n),
        .mpal_n(mpal_n),
        .mwatch_n(mwatch_n),
        .mpipal_n(mpipal_n),
        .mwarnf_n(mwarnf_n),
    
        .mnhsbf(mnhsbf),
        .mamu(mamu),
        .mload(mload),
        .mldch(mldch),
        .mread(mread),
        .mrdch(mrdch),
    
        .mismatch_faddr(mismatch_faddr),
        .mismatch_data(mismatch_data)
    );
    
    /*******************************************************************************.
    * Start/Stop Logic                                                              *
    '*******************************************************************************/
    wire mrchg;
    wire mwchg;
    assign mrchg = 1'b0;    // FIXME: remove when start/stop logic is done
    assign mwchg = 1'b0;    // FIXME: remove when start/stop logic is done

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
    wire [15:10]sq;
    wire [16:1]l;
    wire [16:1]q;
    wire [16:1]z;
    wire [16:1]g;
    wire [16:1]b;
    wire [16:1]y;
    wire [16:1]u;
    wire [11:9]true_eb;
    wire [15:11]true_fb;
    wire [12:1]true_s;
    wire inhibit_ws;
    assign inhibit_ws = 1'b0;   // FIXME: remove when peripheral instructions are done
    wire rbbk;
    assign rbbk = 1'b0;         // FIXME: remove when peripheral instructions are done

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
        .MWEBG(MWEBG),
        .MWFBG(MWFBG),
        .MWBBEG(MWBBEG),
        .MWZG(MWZG),
        .MWBG(MWBG),
        .MWSG(MWSG),
        .MWG(MWG),
        .MWYG(MWYG),
        .MRULOG(MRULOG),
        .MRGG(MRGG),
        .mwchg(mwchg),
        .mrchg(mrchg),

        .inhibit_ws(inhibit_ws),
        .rbbk(rbbk),
        .s_only(s_only),
        .adv_s(adv_s),

        .MSQEXT(MSQEXT),
        .msq(msq),
        .mst(mst),
        .mbr(mbr),

        .MGOJAM(MGOJAM),
        .MSTPIT_(MSTPIT_),
        .MIIP(MIIP),
        .MINHL(MINHL),
        .MINKL(MINKL),
        .MNISQ(MNISQ),
        .MSP(MSP),
        .MGP_(MGP_),

        .MSTP(MSTP),

        .s1_match(s1_match),
        .s2_match(s2_match),
        .i_match(i_match),

        .w_mode(w_mode),
        .w_s1_s2(w_s1_s2),
        .w_times(w_times),
        .w_pulses(w_pulses),

        .sq(sq),
        .l(l),
        .q(q),
        .z(z),
        .s(s),
        .eb(eb),
        .fb(fb),
        .g(g),
        .b(b),
        .y(y),
        .u(u),

        .w(w),
        .wp(wp),
        .i(i),

        .true_eb(true_eb),
        .true_fb(true_fb),
        .true_s(true_s),

        .read_en(mon_reg_read_en),
        .addr(cmd_addr),
        .data_out(mon_reg_data)
    );

endmodule
