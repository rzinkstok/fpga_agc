`timescale 1ns / 1ps

`include "monitor_defs.v"

module monitor_regs(
    input wire clk,
    input wire rst_n,

    input wire [12:1] mt,
    input wire MONWT,
    input wire ct,

    input wire [16:1] mwl,

    input wire MWAG,
    input wire MWLG,
    input wire MWQG,
    input wire MWZG,
    input wire MWBG,
    input wire MWYG,
    input wire MRULOG,

    //output reg [15:10] sq,
    output wire [16:1] l,
    output wire [16:1] q,
    output wire [16:1] z,
    //output wire [12:1] s,
    //output wire [11:9] eb,
    //output wire [15:11] fb,
    //output wire [16:1] g,
    output wire [16:1] b,
    output wire [16:1] y,
    output wire [16:1] u,

    input wire read_en,
    input wire [15:0] addr,
    output reg [15:0] data_out
);

    // Register A
    wire [16:1] a;
    register reg_a(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWAG),
        .mwl(mwl),
        .val(a)
    );

    // Register L
    register reg_l(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWLG),
        .mwl(mwl),
        .val(l)
    );

    // Register Q
    register reg_q(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWQG),
        .mwl(mwl),
        .val(q)
    );


    // Register Z
    register reg_z(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWZG),
        .mwl(mwl),
        .val(z)
    );

    // Register B
    register reg_b(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWBG),
        .mwl(mwl),
        .val(b)
    );


    // Register Y
    register reg_y(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MWYG),
        .mwl(mwl),
        .val(y)
    );

    // Register U
    register reg_u(
        .clk(clk),
        .rst_n(rst_n),
        .ct(ct),
        .mwg(MRULOG),
        .mwl(mwl),
        .val(u)
    );

    reg read_en_q;

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            read_en_q <= 1'b0;
        end else begin
            read_en_q <= read_en;
        end
    end

    always @(*) begin
        if (read_en_q) begin
            case (addr)
                `MON_REG_A:      data_out = a;
                `MON_REG_L:      data_out = l;
                `MON_REG_Q:      data_out = q;
                `MON_REG_Z:      data_out = z;
                //`MON_REG_BB:     data_out = {1'b0, fb, 7'b0, eb};
                `MON_REG_B:      data_out = b;
                //`MON_REG_S:      data_out = {4'b0, s};
                //`MON_REG_G:      data_out = g;
                `MON_REG_Y:      data_out = y;
                //`MON_REG_W:      data_out = w;
                //`MON_REG_I:      data_out = {4'b0, i};
                //`MON_REG_STATUS: data_out = {11'b0, minkl, minhl, miip, mstpit_n, mgojam}; // FIXME: add OUTCOM
                //`MON_REG_PAR:    data_out = {12'b0, wp, gp};
                default:         data_out = 16'b0;
            endcase
        end else begin
            data_out = 16'b0;
        end
    end

endmodule