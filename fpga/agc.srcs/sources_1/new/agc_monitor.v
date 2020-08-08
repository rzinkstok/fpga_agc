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
    
    output wire MSTP,
    output wire MSTRT,
    
    output wire MNHRPT,
    output wire MNHNC,
    output wire NHALGA,
    output wire nhstrt1,
    output wire nhstrt2,
    output wire DOSCAL,
    output wire DBLTST,
    
    input wire MVFAIL_,
    input wire MOSCAL_,
    input wire MSCAFL_,
    input wire MSCDBL_,
    input wire MCTRAL_,
    input wire MTCAL_,
    input wire MRPTAL_,
    input wire MPAL_,
    input wire MWATCH_,
    input wire MPIPAL_,
    input wire MWARNF_,
    
    output wire MNHSBF,
    output wire MAMU,
    output wire MLOAD,
    output wire MLDCH,
    output wire MREAD,
    output wire MRDCH,
    output wire MONWBK,
    
    input wire MRCH,
    input wire MWCH,
    input wire MREQIN,
    input wire MTCSA_,
    output wire MTCSAI,
    
    output wire MKEY1,
    output wire MKEY2,
    output wire MKEY3,
    output wire MKEY4,
    output wire MKEY5,
    output wire MAINRS,
    
    output wire NKEY1,
    output wire NKEY2,
    output wire NKEY3,
    output wire NKEY4,
    output wire NKEY5,
    output wire NAVRST,
    
    output wire MARK,
    output wire MRKREJ,
    output wire MRKRST,
    
    output wire IN3214,
    output wire SBYBUT,
    output wire CAURST,
    input wire RESTRT,
    
    input wire RLYB01,
    input wire RLYB02,
    input wire RLYB03,
    input wire RLYB04,
    input wire RLYB05,
    input wire RLYB06,
    input wire RLYB07,
    input wire RLYB08,
    input wire RLYB09,
    input wire RLYB10,
    input wire RLYB11,
    
    input wire RYWD12,
    input wire RYWD13,
    input wire RYWD14,
    input wire RYWD16,
    
    input wire COMACT,
    input wire UPLACT,
    input wire TMPCAU,
    input wire KYRLS,
    input wire VNFLSH,
    input wire OPEROR,
    input wire SBYLIT,
    
    output wire MDT01,
    output wire MDT02,
    output wire MDT03,
    output wire MDT04,
    output wire MDT05,
    output wire MDT06,
    output wire MDT07,
    output wire MDT08,
    output wire MDT09,
    output wire MDT10,
    output wire MDT11,
    output wire MDT12,
    output wire MDT13,
    output wire MDT14,
    output wire MDT15,
    output wire MDT16,
    
    output wire MONPAR,
    
    // Power
    input wire n0VDCA,
    //input wire BPLUS,
    input wire BPLSSW,
    //input wire p4VDC,
    input wire p4SW,
    
    // Power supply failure test signals
    output wire CNTRL1,
    output wire CNTRL2,
    
    output wire [6:1]leds,
    output wire [6:1]dbg
);

    // Monitor signals not yet incorporated (TODO)
    assign MAMU = 0;
    assign MNHSBF = 0;
    assign MONPAR = 0;
    
    // Signal conversion
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
    
    // MDT assingments
    // assign mdt = mdt_chan77 | mdt_periph | mdt_crs | mdt_ems | mdt_rupts | mdt_dsky | mdt_nassp;
    wire [16:1] mdt_periph;
    assign MDT01 = mdt_periph[1];
    assign MDT02 = mdt_periph[2];
    assign MDT03 = mdt_periph[3];
    assign MDT04 = mdt_periph[4];
    assign MDT05 = mdt_periph[5];
    assign MDT06 = mdt_periph[6];
    assign MDT07 = mdt_periph[7];
    assign MDT08 = mdt_periph[8];
    assign MDT09 = mdt_periph[9];
    assign MDT10 = mdt_periph[10];
    assign MDT11 = mdt_periph[11];
    assign MDT12 = mdt_periph[12];
    assign MDT13 = mdt_periph[13];
    assign MDT14 = mdt_periph[14];
    assign MDT15 = mdt_periph[15];
    assign MDT16 = mdt_periph[16];
    
    // Power supply failure test signals: tie low
    assign CNTRL1 = 1'b0;
    assign CNTRL2 = 1'b0;
    

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
    
    wire version_read_en;
    wire [15:0] version_data;

    // Resulting data from the active read command
    wire [15:0] read_data;
    assign read_data = ctrl_data | status_data | mon_reg_data | mon_chan_data | mon_dsky_data | version_data;
    //assign read_data =   agc_fixed_data | agc_erasable_data |
    //                    agc_channels_data | crs_data | ems_data | trace_data | nassp_data;

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
        .nassp_write_done(nassp_write_done),
        .version_read_en(version_read_en)
    );

    // Version logic
    version ver(
        .clk(clk),
        .rst_n(rst_n),
        .read_en(version_read_en),
        .data_out(version_data)
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
    assign handrupt_nassp = 1'b0;
    assign handrupt = handrupt_ctrl | handrupt_nassp;
    
    wire [15:0] n_nisq_steps;
    
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
        .ems_bank_en(ems_bank_en),
        
        .n_nisq_steps(n_nisq_steps)
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
    
        .bplssw_p(n0VDCA), // Should be BPLSSW divided down to about 0.8 V
        .bplssw_n(n0VDCA),
        .p4sw_p(n0VDCA),   // Should be p4SW divided down to about 0.8 V
        .p4sw_n(n0VDCA),
        .p3v3io_p(n0VDCA), // Should be p3v3io ??
        .p3v3io_n(n0VDCA),
        .mtemp_p(n0VDCA),   // Should be mtemp ??
        .mtemp_n(n0VDCA),
    
        .MT05(MT05),
        .MT08(MT08),
    
        .MVFAIL_(MVFAIL_),
        .MOSCAL_(MOSCAL_),
        .MSCAFL_(MSCAFL_),
        .MSCDBL_(MSCDBL_),
        .MCTRAL_(MCTRAL_),
        .MTCAL_(MTCAL_),
        .MRPTAL_(MRPTAL_),
        .MPAL_(MPAL_),
        .MWATCH_(MWATCH_),
        .MPIPAL_(MPIPAL_),
        .MWARNF_(MWARNF_),
    
        .MNHSBF(MNHSBF),
        .MAMU(MAMU),
        .MLOAD(MLOAD),
        .MLDCH(MLDCH),
        .MREAD(MREAD),
        .MRDCH(MRDCH),
    
        .mismatch_faddr(mismatch_faddr),
        .mismatch_data(mismatch_data)
    );
    
    
    /*******************************************************************************.
    * Start/Stop Logic                                                              *
    '*******************************************************************************/
    wire mrchg;
    wire mwchg;
    wire ss_mstp;
    wire inhibit_mstp;
    assign MSTP = ss_mstp & ~inhibit_mstp;
    
    start_stop strt_stp(
        .clk(clk),
        .rst_n(rst_n),
        
        .start_req(start_req),
        .proceed_req(proceed_req),
        .stop_conds(stop_conds),
        .stop_s1_s2(stop_s1_s2),
        .stop_cause(stop_cause),
        .MT01(MT01),
        .MT02(MT02),
        .MT03(MT03),
        .MT04(MT04),
        .MT05(MT05),
        .MT06(MT06),
        .MT07(MT07),
        .MT08(MT08),
        .MT09(MT09),
        .MT10(MT10),
        .MT11(MT11),
        .MT12(MT12),
        .MGOJAM(MGOJAM),
        .MNISQ(MNISQ),
        .MPAL_(MPAL_),
        .mrchg(mrchg),
        .mwchg(mwchg),
    
        .s1_match(s1_match),
        .s2_match(s2_match),
        .w_match(w_match),
        .i_match(i_match),
    
        .n_nisq_steps(n_nisq_steps),
        
        .MSTRT(MSTRT),
        .mstp(ss_mstp)
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
    wire rbbk;
    
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
    

    /*******************************************************************************.
    * Monitor AGC Channel Mirrors                                                   *
    '*******************************************************************************/
    wire [9:1] chan77;
    wire [15:1] out0;
    wire [15:1] dsalmout;
    wire [15:1] chan13;
    
    monitor_channels mon_chans(
        .clk(clk),
        .rst_n(rst_n),
    
        .MONWT(MONWT),
        .ct(ct),
    
        .MRCH(MRCH),
        .MWCH(MWCH),
        .ch(s[9:1]),
        .mwl({mwl[16], mwl[14:1]}),
        .l({l[16], l[14:1]}),
        .q({q[16], q[14:1]}),
        .chan77(chan77),
    
        .mrchg(mrchg),
        .mwchg(mwchg),
        .fext(fext),
        .out0(out0),
        .dsalmout(dsalmout),
        .chan13(chan13),
    
        .read_en(mon_chan_read_en),
        .addr(cmd_addr),
        .data_out(mon_chan_data)
    );
    
    /*******************************************************************************.
    * Peripheral Instructions                                                       *
    '*******************************************************************************/
    
    wire periph_load;
    wire periph_read;
    wire periph_loadch;
    wire periph_readch;
    wire periph_tcsaj;
    wire [15:1] periph_bb;
    wire [12:1] periph_s;
    wire [16:1] periph_data;
    wire [16:1] periph_read_data;
    wire periph_read_parity;
    
    assign periph_load = ctrl_periph_load; // | agc_erasable_periph_load | nassp_periph_load;
    assign periph_read = ctrl_periph_read; // | agc_fixed_periph_read | agc_erasable_periph_read;
    assign periph_loadch = ctrl_periph_loadch; //| agc_fixed_periph_loadch | agc_channels_periph_loadch;
    assign periph_readch = ctrl_periph_readch; // | agc_channels_periph_readch;
    assign periph_tcsaj = ctrl_periph_tcsaj;
    assign periph_bb = ctrl_periph_bb; // | agc_fixed_periph_bb | agc_erasable_periph_bb | nassp_periph_bb;
    assign periph_s = ctrl_periph_s; // | agc_fixed_periph_s | agc_erasable_periph_s | agc_channels_periph_s | nassp_periph_s;
    assign periph_data = ctrl_periph_data; // | agc_fixed_periph_data | agc_erasable_periph_data | agc_channels_periph_data | nassp_periph_data;
    
    peripheral_instructions periph_insts(
        .clk(clk),
        .rst_n(rst_n),
    
        .MONWT(MONWT),
        .mt(mt),
        .mst(mst),
        .mwl(mwl),
        .MSP(MSP),
    
        .inhibit_mstp(inhibit_mstp),
        .inhibit_ws(inhibit_ws),
        .rbbk(rbbk),
    
        .MREQIN(MREQIN),
        .MTCSA_(MTCSA_),
    
        .load(periph_load),
        .read(periph_read),
        .loadch(periph_loadch),
        .readch(periph_readch),
        .tcsaj(periph_tcsaj),
    
        .bb(periph_bb),
        .s(periph_s),
        .data(periph_data),
    
        .read_data(periph_read_data),
        .read_parity(periph_read_parity),
        .complete(periph_complete),
    
        .MTCSAI(MTCSAI),
        .MREAD(MREAD),
        .MLOAD(MLOAD),
        .MRDCH(MRDCH),
        .MLDCH(MLDCH),
        .MONWBK(MONWBK),
    
        .mdt(mdt_periph)
    );

    
    
    /*******************************************************************************.
    * Core Rope Simulation                                                          *
    '*******************************************************************************/
    
    

    /*******************************************************************************.
    * DSKY                                                                          *
    '*******************************************************************************/
    
    monitor_dsky mon_dsky(
        .clk(clk),
        .rst_n(rst_n),
    
        .read_en(mon_dsky_read_en),
        .write_en(mon_dsky_write_en),
        .addr(cmd_addr),
        .data_in(cmd_data),
        .data_out(mon_dsky_data),
    
        .MGOJAM(MGOJAM),
        .RESTRT(RESTRT),
        
        .RLYB01(RLYB01),
        .RLYB02(RLYB02),
        .RLYB03(RLYB03),
        .RLYB04(RLYB04),
        .RLYB05(RLYB05),
        .RLYB06(RLYB06),
        .RLYB07(RLYB07),
        .RLYB08(RLYB08),
        .RLYB09(RLYB09),
        .RLYB10(RLYB10),
        .RLYB11(RLYB11),
    
        .RYWD12(RYWD12),
        .RYWD13(RYWD13),
        .RYWD14(RYWD14),
        .RYWD16(RYWD16),
    
        .COMACT(COMACT),
        .UPLACT(UPLACT),
        .TMPCAU(TMPCAU),
        .KYRLS(KYRLS),
        .VNFLSH(VNFLSH),
        .OPEROR(OPEROR),
        .SBYLIT(SBYLIT),
        
        .MKEY1(MKEY1),
        .MKEY2(MKEY2),
        .MKEY3(MKEY3),
        .MKEY4(MKEY4),
        .MKEY5(MKEY5),
        .MAINRS(MAINRS),
        
        .NKEY1(NKEY1),
        .NKEY2(NKEY2),
        .NKEY3(NKEY3),
        .NKEY4(NKEY4),
        .NKEY5(NKEY5),
        .MARK(MARK),
        .MRKREJ(MRKREJ),
        .NAVRST(NAVRST),
        .MRKRST(MRKRST),
        
        .IN3214(IN3214),
        .SBYBUT(SBYBUT),
        .CAURST(CAURST)
    );

endmodule
