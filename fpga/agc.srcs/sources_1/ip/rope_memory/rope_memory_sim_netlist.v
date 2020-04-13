// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Apr  8 23:45:02 2020
// Host        : fpgadev running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top rope_memory -prefix
//               rope_memory_ rope_memory_sim_netlist.v
// Design      : rope_memory
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rope_memory,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module rope_memory
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "3" *) 
  (* C_COUNT_36K_BRAM = "16" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "1" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     16.523845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rope_memory.mem" *) 
  (* C_INIT_FILE_NAME = "rope_memory.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "36864" *) 
  (* C_READ_DEPTH_B = "36864" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "36864" *) 
  (* C_WRITE_DEPTH_B = "36864" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  rope_memory_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module rope_memory_bindec
   (ena_array,
    addra);
  output [7:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [7:0]ena_array;

  LUT4 #(
    .INIT(16'h0001)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__0
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__1
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__2
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT__3
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT__4
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[5]));
  LUT4 #(
    .INIT(16'h4000)) 
    ENOUT__5
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[6]));
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT__6
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[7]));
endmodule

module rope_memory_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [8:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_3_out;
  wire [3:0]p_51_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire ram_ena__0_n_0;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_0 ;

  rope_memory_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[8:4],ena_array[2:0]}));
  rope_memory_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO(p_51_out),
        .addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .\douta[0] (\ramloop[1].ram.r_n_0 ),
        .\douta[0]_0 (ram_douta),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\douta[2]_0 (\ramloop[4].ram.r_n_0 ),
        .\douta[3] (\ramloop[5].ram.r_n_0 ),
        .\douta[4] (\ramloop[7].ram.r_n_0 ),
        .\douta[5] (\ramloop[8].ram.r_n_0 ),
        .\douta[6] (\ramloop[9].ram.r_n_0 ),
        .p_11_out(p_11_out),
        .p_15_out(p_15_out),
        .p_19_out(p_19_out),
        .p_23_out(p_23_out),
        .p_27_out(p_27_out),
        .p_31_out(p_31_out),
        .p_35_out(p_35_out),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[15]),
        .O(ram_ena_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    ram_ena__0
       (.I0(addra[14]),
        .I1(addra[15]),
        .O(ram_ena__0_n_0));
  rope_memory_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]),
        .p_35_out(p_35_out));
  rope_memory_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]),
        .p_31_out(p_31_out));
  rope_memory_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]),
        .p_27_out(p_27_out));
  rope_memory_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra),
        .clka(clka),
        .p_23_out(p_23_out));
  rope_memory_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]),
        .p_19_out(p_19_out));
  rope_memory_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[5]),
        .p_15_out(p_15_out));
  rope_memory_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]),
        .p_11_out(p_11_out));
  rope_memory_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[7]),
        .p_7_out(p_7_out));
  rope_memory_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]),
        .p_3_out(p_3_out));
  rope_memory_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram (\ramloop[1].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (ram_ena__0_n_0),
        .addra(addra[13:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .addra(addra),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[4].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[5].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO(p_51_out),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[8]));
  rope_memory_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[7].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[8].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
  rope_memory_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (\ramloop[9].ram.r_n_0 ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (ram_ena_n_0),
        .addra(addra[14:0]),
        .clka(clka));
endmodule

module rope_memory_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    p_3_out,
    p_31_out,
    p_23_out,
    p_35_out,
    p_27_out,
    p_15_out,
    p_7_out,
    p_19_out,
    p_11_out,
    DOADO,
    \douta[3] ,
    \douta[4] ,
    \douta[5] ,
    \douta[6] ,
    \douta[0] ,
    \douta[0]_0 ,
    \douta[2] ,
    \douta[1] ,
    \douta[2]_0 );
  output [15:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]p_3_out;
  input [8:0]p_31_out;
  input [8:0]p_23_out;
  input [8:0]p_35_out;
  input [8:0]p_27_out;
  input [8:0]p_15_out;
  input [8:0]p_7_out;
  input [8:0]p_19_out;
  input [8:0]p_11_out;
  input [3:0]DOADO;
  input [0:0]\douta[3] ;
  input [0:0]\douta[4] ;
  input [0:0]\douta[5] ;
  input [0:0]\douta[6] ;
  input [0:0]\douta[0] ;
  input [0:0]\douta[0]_0 ;
  input [1:0]\douta[2] ;
  input [0:0]\douta[1] ;
  input [0:0]\douta[2]_0 ;

  wire [3:0]DOADO;
  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [0:0]\douta[0] ;
  wire [0:0]\douta[0]_0 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_3_n_0 ;
  wire [0:0]\douta[1] ;
  wire [1:0]\douta[2] ;
  wire [0:0]\douta[2]_0 ;
  wire [0:0]\douta[3] ;
  wire [0:0]\douta[4] ;
  wire [0:0]\douta[5] ;
  wire [0:0]\douta[6] ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [3:0]sel_pipe;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(\douta[0] ),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[3]),
        .I3(\douta[0]_0 ),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[3]),
        .I3(\douta[10]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[10]_INST_0_i_1 
       (.I0(p_31_out[3]),
        .I1(p_23_out[3]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[3]),
        .I5(p_27_out[3]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_15_out[3]),
        .I1(p_7_out[3]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[3]),
        .I5(p_11_out[3]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[4]),
        .I3(\douta[11]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[11]_INST_0_i_1 
       (.I0(p_31_out[4]),
        .I1(p_23_out[4]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[4]),
        .I5(p_27_out[4]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_15_out[4]),
        .I1(p_7_out[4]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[4]),
        .I5(p_11_out[4]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[5]),
        .I3(\douta[12]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[12]_INST_0_i_1 
       (.I0(p_31_out[5]),
        .I1(p_23_out[5]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[5]),
        .I5(p_27_out[5]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[12]_INST_0_i_2 
       (.I0(p_15_out[5]),
        .I1(p_7_out[5]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[5]),
        .I5(p_11_out[5]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[6]),
        .I3(\douta[13]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[13]_INST_0_i_1 
       (.I0(p_31_out[6]),
        .I1(p_23_out[6]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[6]),
        .I5(p_27_out[6]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[13]_INST_0_i_2 
       (.I0(p_15_out[6]),
        .I1(p_7_out[6]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[6]),
        .I5(p_11_out[6]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[7]),
        .I3(\douta[14]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[14]_INST_0_i_1 
       (.I0(p_31_out[7]),
        .I1(p_23_out[7]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[7]),
        .I5(p_27_out[7]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[14]_INST_0_i_2 
       (.I0(p_15_out[7]),
        .I1(p_7_out[7]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[7]),
        .I5(p_11_out[7]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[8]),
        .I3(\douta[15]_INST_0_i_3_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[15]_INST_0_i_1 
       (.I0(p_31_out[8]),
        .I1(p_23_out[8]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[8]),
        .I5(p_27_out[8]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \douta[15]_INST_0_i_2 
       (.I0(sel_pipe[1]),
        .I1(sel_pipe[0]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[15]_INST_0_i_3 
       (.I0(p_15_out[8]),
        .I1(p_7_out[8]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[8]),
        .I5(p_11_out[8]),
        .O(\douta[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe[2]),
        .I1(\douta[2] [0]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[3]),
        .I4(\douta[1] ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe[2]),
        .I1(\douta[2] [1]),
        .I2(sel_pipe[1]),
        .I3(sel_pipe[3]),
        .I4(\douta[2]_0 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[3]_INST_0 
       (.I0(DOADO[0]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[3]),
        .I5(\douta[3] ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[4]_INST_0 
       (.I0(DOADO[1]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[3]),
        .I5(\douta[4] ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[5]_INST_0 
       (.I0(DOADO[2]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[3]),
        .I5(\douta[5] ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \douta[6]_INST_0 
       (.I0(DOADO[3]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[3]),
        .I5(\douta[6] ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[0]),
        .I3(\douta[7]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[7]_INST_0_i_1 
       (.I0(p_31_out[0]),
        .I1(p_23_out[0]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[0]),
        .I5(p_27_out[0]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_15_out[0]),
        .I1(p_7_out[0]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[0]),
        .I5(p_11_out[0]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[1]),
        .I3(\douta[8]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[8]_INST_0_i_1 
       (.I0(p_31_out[1]),
        .I1(p_23_out[1]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[1]),
        .I5(p_27_out[1]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_15_out[1]),
        .I1(p_7_out[1]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[1]),
        .I5(p_11_out[1]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000C0C0FF00AAAA)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .I2(p_3_out[2]),
        .I3(\douta[9]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[2]),
        .I5(sel_pipe[3]),
        .O(douta[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[9]_INST_0_i_1 
       (.I0(p_31_out[2]),
        .I1(p_23_out[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_35_out[2]),
        .I5(p_27_out[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_15_out[2]),
        .I1(p_7_out[2]),
        .I2(sel_pipe[0]),
        .I3(sel_pipe[1]),
        .I4(p_19_out[2]),
        .I5(p_11_out[2]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

module rope_memory_blk_mem_gen_prim_width
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire [13:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized10
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_31_out(p_31_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized11
   (p_27_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_27_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_27_out(p_27_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized12
   (p_23_out,
    clka,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [8:0]p_23_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .p_23_out(p_23_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized13
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_19_out(p_19_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized14
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized15
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_11_out(p_11_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized16
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_7_out(p_7_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized17
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_3_out(p_3_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [15:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized5
   (DOADO,
    clka,
    ena_array,
    addra);
  output [3:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [3:0]DOADO;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module rope_memory_blk_mem_gen_prim_width__parameterized9
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;

  rope_memory_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_35_out(p_35_out));
endmodule

module rope_memory_blk_mem_gen_prim_wrapper_init
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2E9B2994140FDC140AB9B02235E7D5100E033B8209B55514380FD639D8591D44),
    .INIT_01(256'h5B2A6E4A279E960A3AA86ADE77A5A8BDDA8704820003247FFFE4E1ADB878F193),
    .INIT_02(256'hB9C8081CC1F95BDA2FA04D909881104D6D111FDAD515990A20ABEEFDA8825ADE),
    .INIT_03(256'h00000000000000000000B611DA048D854A2EC5DDC00141D58598DC6C01043995),
    .INIT_04(256'h4BE65E5FFFFF95E7FC4AB5DD57FF0095B9113517703CA544D30100CF06191163),
    .INIT_05(256'hDBFE25540D8DCE98E98E98EB7FF2AA40010265A093333330E291E4DA5CA6F776),
    .INIT_06(256'h000000000000000000000000000000000000002B0F4ECB7D6E2AABBEB7CFDAF1),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h85C7E8B7800D9F80A43845E7A8425A58AA44402850B148020087559B39371190),
    .INIT_09(256'h1420A73EAEEA214380014A3258948C29F2140A1480000004C6226709D422AC33),
    .INIT_0A(256'h8587A4881F12024445012AABB0900000462D06435230399E0E40AE85FFBAFD10),
    .INIT_0B(256'h00000000000000000000000000000000000000000000095C888E26052ED6E100),
    .INIT_0C(256'h0EBA40221808BED0538FC3A8A18C4082A1200D8E202250C40020013573815D38),
    .INIT_0D(256'h648899922459B94808001248000C4492536244893668983E0B85A088746940E9),
    .INIT_0E(256'h4A94F282E12606662C64FC3C92B3A680DC12810D8434D8A01D02004D992648A6),
    .INIT_0F(256'h00000000000000024D5D8001C00F8203344384D0798D499E5E63D439CEA85052),
    .INIT_10(256'h49F4A91C089B7675F70BA30EA607C0D201E0BC3891DCA0DE329B9CEBFDFE035C),
    .INIT_11(256'h5EEB14107BEB5EA7F2457AC9391100550DC62664EAE5EDDB80079AEE5D0DE25D),
    .INIT_12(256'hC8A5B01EDF8DE7C98A28BB1C6BB21BF17D1ECBC948E8DF7568578B55AB192796),
    .INIT_13(256'h000000000000000000000000000000000000000213276967D431DF2A13458508),
    .INIT_14(256'h609453B2E92CC49857046E002D229E06A5093FD5212A709201202A0806001F0E),
    .INIT_15(256'h87F4A0DE83786047E8FD013A0B50EA80169AA0208AF93AB845B02C0C3B84960B),
    .INIT_16(256'h633A44D482AD33C263439588A190149427A618C71515A096CFEB9506267BF3E9),
    .INIT_17(256'h000000000000000000000000000000000000000000237D6AC91AE46C7F0AA90B),
    .INIT_18(256'hCA10E90AE805C022055850AA900222010A1848B45834195283B29A2A8A050491),
    .INIT_19(256'h000000000000000000000000000000000000A5D4A9C40464A4B89693B2944183),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'hCF21ABF0380999C3D2109804FA0A03BC0C848749CC3F89CA3CA14E345C41404F),
    .INIT_1D(256'h00000000000000000000000000000000000000000000001813E82F110A2AEBE0),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h92D49CF0B1E5ADB519FB3F6B151F976144891F66719D4A007928CC53FC2C24F9),
    .INIT_21(256'h3AD9A6D94AB9800D45C6561D8B01880F95EA706DEAA7CBEFA838E193E668B71A),
    .INIT_22(256'h0000000207E20000266E30C664F2941AD1E7CDFEC70BF3CDDD25AEC2DEABBF41),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h2C2C20C6931EE8339881383E6479EE248927807A88970AAAC4512A990000E0C2),
    .INIT_25(256'h7D29FF11D8755F018C2A40811021070044A2B594C145D836CE21A91F90D731F0),
    .INIT_26(256'h00035B0A0C18C0D2D655DF65CE781B502B59D4AC6C50B1528A807DD938FCF70D),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'hC9C7669632C8FFEFFFFC00AAA9904547274B913E82046F40418F84A59FE010F4),
    .INIT_29(256'hC6C56931CEA10C4E8851C50782187EF1C0091359D73A7DE70CC060050E0005D7),
    .INIT_2A(256'h42A8C52B7ADDB9AB24566FFA1AACF0F5084025022C4515750EA112D198486A1C),
    .INIT_2B(256'h0080938968A5150DD7A23C586DD5EB841090704507F6DD52DE3573652091581E),
    .INIT_2C(256'hA6CFDE2BF8838CF4F631807CC361487CD56910C51A8EAAC0071413918B7847D4),
    .INIT_2D(256'h5FFB9100CDFD7989CDFE2153B0AC3872AFD24C24B818507308E3BFF38F0E0462),
    .INIT_2E(256'hE00086D1F714F4D2550A9E6C046112062605B42C0000D89DBC80738C750C1D36),
    .INIT_2F(256'h000000000000000000000000000000000000000000000000000000006096092A),
    .INIT_30(256'h35ADC857C20A9FFBF5C2E8008EA141AECBA865EE924FBC083BDC9CFBFB872D05),
    .INIT_31(256'hA6DAAE480447F18001081483F347C9341BB367D68F686058E5A50EB46B0906A1),
    .INIT_32(256'h974399682FDD80BDBFEC6F7FDA584EEDE2EB76F96979231E02F3822208BF54FC),
    .INIT_33(256'h0000000000B60A6A900D883531359528FBB03263218410090240F398C3621398),
    .INIT_34(256'h977F11C40001FFFFFFFFE1E7FFFDE8128D30C5270D20CC260F6A855294A52945),
    .INIT_35(256'h7FDFE26ED8082FBA4D99FC5F7DFEEBD5E8E6DAA50841508413DCDB77DFF1FDAD),
    .INIT_36(256'hF2248D4A092AC5D9A7B3BAED6477D55D77BEDF95F3EABE2FA71A6700016FBEF8),
    .INIT_37(256'h000000000000000000000000000000003911C0502801800C6812100B69B44E73),
    .INIT_38(256'h9EB56D138A78A091729F1222E56040000201415DA020AE8FC8800304400508D2),
    .INIT_39(256'hC1EBCF33CCB3E5C04A8BA31A217605604080C080EB08FCE0007EC01FD69B7FD4),
    .INIT_3A(256'h0009400809A04A4825321C586E88D610A108140840704F8882BCEC1C8160A028),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h1E53EFFD77DB84B81592B41E13436AAA0313FB0E5BB7E5548955B14AB97AA201),
    .INIT_3D(256'h9975D6102A400123C480A01706188C36E51B80136AF9ECD8B224720C1E197941),
    .INIT_3E(256'h7DB71C010C72A2A465B4B016C0775E4EFFFDC208BD4AD5E81E7BEEACA5E64CEF),
    .INIT_3F(256'h0000000002C00000840808D66D856104033824104208270460E0403000C14105),
    .INIT_40(256'h8C3B621E4B18A08A2C4F9E8F45AD3AB708A697000038804BBD44970001ECE941),
    .INIT_41(256'hE8DC680B2A3F802801A0A5B523B3A800E93A0EC1E33E80A1AAF117984BC98230),
    .INIT_42(256'h5B797CEFA267FA4FE59901B789EBDDF5D75BFBD6FB5C67D4CADDD027D1227EEF),
    .INIT_43(256'h0001A9DC7CB071EEBF513C3E8F0B3217FDFF6F1B286973D33499D6BFEB2B520E),
    .INIT_44(256'hFDFFBDFFFBFFD283157FEAB9AA7095F4FD677515E09F84546BEC8319EE73317A),
    .INIT_45(256'h0AAE95AA1EBF6609917E974A7D69B6C7B48D2B35DEFCEC8DFBE9CFFCFD3FDFFF),
    .INIT_46(256'h63FB6000A54A642B58B5037865C77C26F87C57584E360108DCE1A188D631884A),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000E6EB4E),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h43A7B6C678056CA9352A6ABA571A9A52669B5FDAD9A8921AD00814388ECEF23B),
    .INIT_4D(256'h04C765B9C97473909A8B860299129F4986B789D810A6421ADCE074140AA5A99B),
    .INIT_4E(256'h90CA902942448C22A2AD30356C59572AE4A802200281C81DE784E34B8D99CCBD),
    .INIT_4F(256'h00000000000000000000000000000000000000000000000000000000000003C8),
    .INIT_50(256'h6903821F232199DA6221756095A5524852B5D481D8106BAAA3D12894510B6D05),
    .INIT_51(256'h8A6E05C852129E62B730B446D45DDD55832B840A41A1595297EE0704A6CE3003),
    .INIT_52(256'h14090896DC20A4221EF4D48814860200C58882DEC756EAE84C044C9E0DB03C90),
    .INIT_53(256'h00000000002D806B46DAAC32A8AFFEDDA4FBE342AABB6316BB857BD2514104A8),
    .INIT_54(256'hB202626E2866887B593619FFF9254AA078CD6B06A020BB4498282C90CA3A2939),
    .INIT_55(256'h3E100000000000063273000008CA510000006AA00530028078630640007BC006),
    .INIT_56(256'hDC16AC053D0B08D6CBF7F3F299B1AFA568CD88B302AA36AE6DA330F330FB3E39),
    .INIT_57(256'h0000000000000000000C44C73B161DA683102584894C4A5886B50AAB1FC94E86),
    .INIT_58(256'h5802AB12024A40357DFBBCC10A00A8F335050A4BA92F7FAC09B6038104001B40),
    .INIT_59(256'h17820221605CE299FEA660CA95AD28164012000032434333A0B1EE2B18F7048A),
    .INIT_5A(256'h0D11001B8E6B53A2C1837B472FDBDC8EE6833A936B2066C3299427C0EE08BD8D),
    .INIT_5B(256'h0000000000000000000000000000000000000000000AE6891245024ED2DA2D29),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  input [13:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ;
  wire [13:0]addra;
  wire clka;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_1 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hABA5B4439CF2A969690F485CA82DECC5981D60BF9A5202C4A070294426A2E891),
    .INIT_01(256'h206591A1A43999A275041E50CA9A6215E348F99ED79089000119C07210428614),
    .INIT_02(256'hC216D8431602C849A151F1E52565EAEADED6887E339666B3566676250250A102),
    .INIT_03(256'h00000000000000000002E908B5C6FC18A5804F2A473DB872100412178E388639),
    .INIT_04(256'h55BD7FA7979169B66CD562A1680009CCF2EE1A1878002001016098124B2CAACA),
    .INIT_05(256'h7D548CCDF6D1EEBE61CEBE61D54B33BF34E5D3E0011111118AC69B97350D00F1),
    .INIT_06(256'h00000000000000000000000000000000000000D6391D98F23DB333ADAD5D601C),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h69B1374C5E8A033FAE47DB0014BD2CB77AF2D648C3062DC6165356ECE4ECEE6C),
    .INIT_09(256'hEABAC574FF1B2EB57680D4E9C99CABDBEE8ADDF14000000CB96A9E616C3EA4D3),
    .INIT_0A(256'h491666AABEAB2D6BBB3CDD54B3983FC03B54F4EBE9D9CF8D75B49DE519C39166),
    .INIT_0B(256'h000000000000000000000000000000000000000000000FA9D2D4CC9ABC667133),
    .INIT_0C(256'h1451EEFE081D56F004832F9291C80202637E6B06A457AD3C025320A153C3CF41),
    .INIT_0D(256'hFBAEA76FB9B7548492038B192087776B9A9BD75BA9F6E679FC781F7DAB4729ED),
    .INIT_0E(256'h1350F1363B93F0C95390035429F93CC6B47D07F1FA49A54DE2E81F5276DF2FA9),
    .INIT_0F(256'h00000000000000048CCB4001DB9E7DA8FB7864CF066DF35F0FBF7BE3BD23674C),
    .INIT_10(256'hBF7E16D39F57AB33AFB4F240C0FFC181433E8C8BB8A1BFC2153A46080807FC4E),
    .INIT_11(256'h3D8954605C1C81898462017142E86B9060C34FC084C9A84E645CEAEF9509E07D),
    .INIT_12(256'h5860B03E478251B7C170B63AFB3B4313E5D43388838C0973D487D32AC4BA2FA7),
    .INIT_13(256'h0000000000000000000000000000000000000004E3B3B509B37204212AC5310C),
    .INIT_14(256'hDA29EE701EFAFC1FFDCD794F140F53BEE0063FCE188A9CF99E93587BE8000456),
    .INIT_15(256'hC58CA857915A4DF07686FEE7D72F99785F665F82FB61ABDBC4C51E5C465F072F),
    .INIT_16(256'h810806B4458DB98722A345482F2D84EA066164CFFE3104F86FA9BD2074CB4431),
    .INIT_17(256'h00000000000000000000000000000000000000000000B761749806E5F5E6A0C2),
    .INIT_18(256'h6CE5F690A3D808B7D9B736206E4068020B816F405BA6D15D4A3A3B1119AD6179),
    .INIT_19(256'h000000000000000000000000000000000000D6820433991713515D5848174D97),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h5EBFCCF18734EE727E303A61F6913080614971EF157D9F19D99DBCA6F377D7D7),
    .INIT_1D(256'h00000000000000000000000000000000000000000000001F5811F9B74C08653E),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h33D2E67F196D409DBBFAB0146E66B931BB2D70D43C1C5DFEED0A4ED1DCF2EA39),
    .INIT_21(256'hF24AEB3FDCAD8FB2EFF4A5D7E9EFCDE8146640629D18304111F87F86250FEDFC),
    .INIT_22(256'h0000000556C098C2FAAEE6704DB77D7F78FAB05370DC00FB82AB9B1785212DE8),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'hCD605417AF80103B63B3056CA7F7DCEC0CAA37D63BAF7ADDDDFC0F4AEFF1FF7A),
    .INIT_25(256'h749E0ECA7E7AB7DA13B7ABB9516B9BBF1F053E3EB2350266C5ABDCA8AA37B3AA),
    .INIT_26(256'h000CE2BD62F76DF34BA3B0367D917B6DAA5BABCD32288BF9757C5F6A42B8A39E),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h69F267475B08155FF2A8AA99ADEB956872C9384E68FD9EB9B7B7B74FFD455F28),
    .INIT_29(256'hEEC525812D9BA3F58FBF369C18C2460AFED4205335BB12BA53EB1F0A84000022),
    .INIT_2A(256'hB5DCC3E61189ADBB0DE2ED7FEFBAEBB3D767DBA424409B87FA38ECFE663DFF7C),
    .INIT_2B(256'h02FF6BB3967FFBB10A08E031992E4379F57F9E5AF427B1A6817E16DF200D683F),
    .INIT_2C(256'h9F1D808CAE3A1DF5E4BBAD7BFC0E21C76638CD007E1780747FF597DF5B77F7C0),
    .INIT_2D(256'hF551810339003E6633097B99288867F8C1FDF2FBC6579A94FF9849E63D347CE8),
    .INIT_2E(256'h423296B4F5304068AAD2029DF98C7E46D9CFBC5FA24B25878D84B01CA0920F10),
    .INIT_2F(256'h000000000000000000000000000000000000000000000000000000004180802A),
    .INIT_30(256'hFB76F2FC8FB71950EA1DB1C78F026F1D6C8089D6E98AABA7229AABC7F6445007),
    .INIT_31(256'h4C4CA813F9B8607928031F5C47B81FA2F45318808898019FB75135C384CE9958),
    .INIT_32(256'hCA96490D7EB011A6428E3CF12A5D5D17A4522709CF6E26E286793D23097EB968),
    .INIT_33(256'h0000000000DFEC5E0C04D8251519E3904E00D98A6449A3B268BB9A62965DAA64),
    .INIT_34(256'hFA5A847D562B555555555CAD55A96EDCB2C7124A58C71651518730CE739CE733),
    .INIT_35(256'h71EC8109D5D5A6ED4608009AE105D4AA507BF601095014940460359212A76E9F),
    .INIT_36(256'h52E56284298472A6D94C4700A0AD29AE064174620D1591924207C18000612510),
    .INIT_37(256'h00000000000000000000000000000000C48B7BE14BF9D2656902189841812838),
    .INIT_38(256'h55D08A3788B1516C2229144E49809C303401233495601ABDEC84035136BD4FFF),
    .INIT_39(256'h957F8BA6FCBFCD778BF4DC10D7FAFA41A7008555EF5B64C2005B4AA15E557321),
    .INIT_3A(256'h000D680C49391BF7C96DF782AD46A73514FFF784EFFE3AF227C94BF57F7C2045),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h9077C5489B1387A6FCABA86F9CE243C18FF883EFF90CFF650E62C7DBEC6EC30E),
    .INIT_3D(256'h1F5DF5327BF6AEA595330DF5F656B0BFDADDEA7F6EEE2908608B55173639FC4D),
    .INIT_3E(256'hD77DC63F8188180FBC750CA13BCDD1BFCA3A0309FF77F9B1D6D690A827CC59E2),
    .INIT_3F(256'h0000000000C000000200C8E184B30D8CE7F4AA9F1E80EA8FB333A1CE7B05C2AF),
    .INIT_40(256'h40C8B6B0B4444044BB28E060B8C285258C5C4C00080090927E6A42C080190BD2),
    .INIT_41(256'h17EAA1C9F46613C33C3DCE68909927761285D01A09CB9C5895C6E86518B47202),
    .INIT_42(256'h683B8334EE9599AED355C5AFABFF655961737FF4E260165787F37BFC2C198110),
    .INIT_43(256'h0000CD37DB3EAC1040EC47C763E6C910CE2390FDF3F6B913DCD13090928BC83F),
    .INIT_44(256'h168262851700337BC60169E7A74090DBCA721C8061181798C28C0A40BFA6B440),
    .INIT_45(256'h4CCF1FBFECEB75A238758F9098C5F7263DF87F83400006C2E0DDB03B22C42812),
    .INIT_46(256'hFFAA4A00A58818A690FB0E923D41BC1CDFAFFD5697FF01D0C889A01178C635BD),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000002ACBE11),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'hECCCDD729B0EF75C4679CBFD28B5ACB58BA5C15A5DF769ED2F47B954D07579C4),
    .INIT_4D(256'h713D1E8EA38EBC3D606B65ADF265E0E0F9C1FC25BDFBEF22285F897FFF42735D),
    .INIT_4E(256'h7D375BF9A6E97FFFFF71AF1CA16FFBB30358CE3EED516C6D9B993EE87FA6A79F),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000CD2),
    .INIT_50(256'hEA682330B2BACA63B577BA597B5ED6B6ED68BB2EA6A7BDF9C1EDFF69CE90F6F2),
    .INIT_51(256'h3F876810BC2E8C53C009C2E969C6E26E24DCF0F8B8D6AEC72FFCCE7B59C4CDAF),
    .INIT_52(256'h2539E10F21D646A42018708D255566B973573D18983175754E73276DEA7D212E),
    .INIT_53(256'h00000000002FF5758BFC0575E774FB826756CCB6B775D6AF183B1220B8F3508D),
    .INIT_54(256'h01E4B8B041585143C2A755FFFCD29296B5A6F5695CBB20FF63F7D6713BC696CF),
    .INIT_55(256'hF130000000000000000063273000008C652B001AA00CC00C8000F0063D001AE8),
    .INIT_56(256'h2C5B1CF640F0D6342C3D0C084778A1CE55323AFCCD5C71553A4A959A959AF338),
    .INIT_57(256'h00000000000000000008F8FBCEAF707D86C0FF7BB4DBF7FDAD7F6CDC48278285),
    .INIT_58(256'h26D4CCDFCDA6B8B2DDDFA33AA177DD3FC96E7537D6BBFF7272CD1D2A4D57A7BD),
    .INIT_59(256'hFDD7ED96E4A7FF9A3E59D15D084A02EDFFDDBAD7A35304139E82C1F5B8EA3A35),
    .INIT_5A(256'h4298FD6EDD98D048CFD74420524EABF55B7EE44DBD5F936DFE260F5D33ABC319),
    .INIT_5B(256'h0000000000000000000000000000000000000000000CF953DD3AC1B3FFB7E1BF),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized10
   (p_31_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h13FFFC184A83A19BA0118259400000A013FC6121F1CBBF92D4021000000000F8),
    .INITP_01(256'hE41D380C0300AA10294E070C054F05318390416D014AAFFE0104108035187DD5),
    .INITP_02(256'hC736971E3EC1420340E80BF978B2A2F61B01662FB4B372C60B70B01F12E10000),
    .INITP_03(256'h0000000000000000000000000000000000000004040001D0580C101E024009B3),
    .INITP_04(256'h5761B5AEEF41720A7663810043505E580000000008D2D11C8881C0065C301050),
    .INITP_05(256'h3FDD82DA736E5847C1F3225912C8664405999100200500065EE3FAA280240553),
    .INITP_06(256'hCA4275A2049E20AC163EEC2F7F1C207BA3003000030107EB8010645124030065),
    .INITP_07(256'h000000000000000000000000000000000000000000481FFF1101002F3C21E630),
    .INITP_08(256'h012808078482300402120DE12411800001FE0801ACB411D00230000000000008),
    .INITP_09(256'h0000000000000000000000000000000000008034E981706120F0848230000001),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h821D7ECE58CC38CE9B172998026DCCA396320B1866A000632E32E3658624ABB6),
    .INITP_0D(256'h00000000000000000000000000000000000000000000000097EE79270CCDE19D),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8D8D8D8D8989088D8D8D8D8D8D0808888888888888888D08A0B0B83039FF8E8E),
    .INIT_01(256'h30F5F32008B17FA1891208888821B07F8D8820E178A810890A8D8809090D8D8D),
    .INIT_02(256'hA001B1A0085808B040389DFFB07F3039A00840B800003039A08820E1788DB0E1),
    .INIT_03(256'h008012312188B1A038B1A038A880800808A0E178891C88010820E17808288048),
    .INIT_04(256'hF5B17F80800000960000000000808080808000000000000030E9A12D14808080),
    .INIT_05(256'h3069A0894809FF09891289B17FA1D9DFA07F898909F5317F12B07431B17F0A31),
    .INIT_06(256'h80C112099409140914488080808930DFB069A08948000D3830FF0DB8307FB0DF),
    .INIT_07(256'h758C808A0C801F32DF620AB1DFE11FB1D2E112315F61FF9480FF00B1B80000A9),
    .INIT_08(256'hA18931DF8ADF21EF81801235B57F8AA080B120006A000A6A00DF8ADFA12000B0),
    .INIT_09(256'h89480012960020DF0A4812518A30602910D980B0E059EA0A30208A0AE00A0A0A),
    .INIT_0A(256'h8080000080000031F4A00A599F0A316AA08DB06AA0B16AE11FA030B1A0B1A07F),
    .INIT_0B(256'hB80A7F587F8A304BDF0A8AB8208B8B8A0BB07F100080D1CA8039A0000A30E17F),
    .INIT_0C(256'h398F978BC0289DA86B2080002030609F2B00002000286B20800A00DF960A204B),
    .INIT_0D(256'h1C9DA860A0801475E0200B8B20B0388B0C8B8B8B8B3038388B2A109DA828B8E6),
    .INIT_0E(256'h20150C15158C401F0BFFA08B1C000C9DB07F31F4A860A0800D0B8B200BE00080),
    .INIT_0F(256'hB83838801CE61C47E3588B007F008B1FAC10307FB88B8B96208B0BA030008B8B),
    .INIT_10(256'h600C8C200C8C407FB0C038801C0B8C407F0B1C58EB0D0D0C0C208B0C0C0D2C80),
    .INIT_11(256'h000DA000B00030C000B0C038800C201530F830380C0C801C0C7F8BB02038B0C0),
    .INIT_12(256'h387F30F5F3A09D75307FB030FF8C30C07FB0CC38098C808930DF8C8C2030380D),
    .INIT_13(256'hF4090CB0808930DF8C8C200D7F0D78307F30380A8031150C208D3120B0B93038),
    .INIT_14(256'h806D2030DF960DA1A000B0DF7F20E07F3095B88D8D20E0FF30B830E075B0380C),
    .INIT_15(256'h95B074AD906D8D8DB038B07F308F0807000080D14D8039A000C0600D20AD80C0),
    .INIT_16(256'h8DA1A0B83038E0FFB031FF12958C809F8D1F940E9595B1FF148696002D80408D),
    .INIT_17(256'h7FDF960DA1A0CE317F0DDFB920D4018DB0960DDF20C11F30158D0D206D20DF96),
    .INIT_18(256'h0E128EA19200397F8EB10E120EA100800080000A31F40DDFB920CE010DEEA130),
    .INIT_19(256'hA1B0123120608E8EA00E8E2120B07F90608E21B00EFF0E7F121580B0A040A07F),
    .INIT_1A(256'h85960E7F1231FF80920E1593200E11751260158E0E8E20B9B93960317F90608E),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000558E0E),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h8048804881B17F808195310108090921088820E17888888821B074B17F0BAE8D),
    .INIT_21(256'h7F70080828E880943909A1898828804094B17F089451080988200888882028E8),
    .INIT_22(256'h29A990E821C8009048B895308888DF20418894DF080D613174A88048E11F9460),
    .INIT_23(256'h89202DD0AE252525AD2DADA9AAAA2B2B2BA92C2C2C2C2C2C2C2523AA29A92929),
    .INIT_24(256'hA9A0000889A0B8A0E0A01475605009898BB0E02030C9B07F0849804118898909),
    .INIT_25(256'h80B0383100B19FA980409415221031803174A9F4A9F400202900292900000000),
    .INIT_26(256'hB880A0891FB880A0899F2510000D6131F5B038B1A9E131F594292929DF2028E8),
    .INIT_27(256'h483089380D802031F4A0B009000920419F8980A0899F8980A0891F893800A00A),
    .INIT_28(256'h218000D000890B000A0A202A80DFE0480009960020C09575E0A0EA202A80C11F),
    .INIT_29(256'h80300B30012031F420B0B07F0AA0B92000A0C0B0B09575E0A0EA208000290080),
    .INIT_2A(256'hEB899F2322A32323222A2590EAA00AB0008AA0A41070880A0B0A8B8A0A20286A),
    .INIT_2B(256'h6B0909EB891F0BB0A00B7FB0A00BFF30A00B7F28E8808B188909EB09096B0909),
    .INIT_2C(256'hE88009B17F891F0B30A00B7F28E880090BB0A00BFF30A00B7F28E8808B1F0909),
    .INIT_2D(256'h81B000808026103115B19FB17F0BB0A00B7F28E88089B17F899F0BB0A00BFF28),
    .INIT_2E(256'h0B20B038008020607520B0EB20B0380015E0F5B03800092B8040002B20000030),
    .INIT_2F(256'h0C0B2030B920B0B920B07F3038B000C0E07595158B00C08020E07520B0EB208B),
    .INIT_30(256'h2C80DFE08CB07F0C890B0CA1940C2F207FD8E0D00C898B0CA13040809475E020),
    .INIT_31(256'h9F24A4A4242323A425906CA00B0C8B8C0C20286C80300B0B042180B8708880B8),
    .INIT_32(256'h0C0C2195008029A8A88C12FF0C2100B17F960C15205F0130C1B83095E1EEB0E1),
    .INIT_33(256'hB01561ED12943061EE0DA112120C0C21009331317F93A80C1175A88C12EC0C0C),
    .INIT_34(256'hF3A0FF00000000307F597F303830120D106131F41215140388B0619FB06DB138),
    .INIT_35(256'hE0221031F530B97F0D0D3038808030FF3038B08031150D2025103120B0B930F5),
    .INIT_36(256'h8DF5800060A8E180307495B0611F30758D2061FF00152210317F31F531802510),
    .INIT_37(256'hB1B17F89B809381489B88DA01409380D20B038B01560EE3060EEB0ED8DE13075),
    .INIT_38(256'h8EA0B1208EB0FF1480FF316E9480EEB1DFE11F000031380D48E1B0B9759F8088),
    .INIT_39(256'h7F0C801F8C80000E93A88E1175838003809F1712A80E1200EE80317FB1B1B18E),
    .INIT_3A(256'h000000000000000000EB0E8EB481B82510888032DF620EB152E18EB1D2E10E31),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h78300912FF3008127F00156888E108129415688808889415685015E8B020E895),
    .INIT_41(256'h7F9330081266268808A626B69388A6938288088812308A12FF308A127F308912),
    .INIT_42(256'h26E6B67F36000080B6E626B6662693308812E6268888A626B626A62604800480),
    .INIT_43(256'h01000000080696B6E60826B6E6892693300812E62604806604806688A60820FF),
    .INIT_44(256'h04805F08801293308912E62689892626B69389A6000000000100000000000000),
    .INIT_45(256'h2693300912662689260480DF08801293300912E62636E6263626DF8909202626),
    .INIT_46(256'hDF098920A6A68C808A93300912E6A60909A6A6369309265D93308912E9360989),
    .INIT_47(256'h6A959330091266A69480EA66A69330891172A980EA18806A9330091266A6B6A6),
    .INIT_48(256'h8AA727B7930AA794809E86123009127F00123009127F008A12941515EA15EA31),
    .INIT_49(256'h0A672793300A126727B727DF0A0A20A72793300A12DF0A672793300A1267270A),
    .INIT_4A(256'h273F270827806727B778938A2700007F800000CA80E69480FF363093308A124A),
    .INIT_4B(256'h00000000000000000000000000000000830A0A93308A12FF0AA73F2710278067),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'hA0E080407FB07F80E0407F80C8E080E6A0C87F80E48086A0B062A0307FB0B8E9),
    .INIT_61(256'h8088068806A8028088E6A8828088868886A882808866A80280B0B62828DF202A),
    .INIT_62(256'h7FB0608060286080B830306080388911720028A8A688E68866A8028088E6A882),
    .INIT_63(256'h407FC6207FB07F8060C6207F8048E480C88000C6207FB0FF80E0C620FF806040),
    .INIT_64(256'h105910E90629DFA0C620FF803E207FB620FF806620B07F80B620698029A6A038),
    .INIT_65(256'hA8E080287F80DF00B2A929DF2044003C60B2FFA9DFA04E20FF806620B07FB25B),
    .INIT_66(256'hC6207FB0E08060C6206080603038B229A60906A8008009E6A800800986B0B67F),
    .INIT_67(256'hA0E02088117530888075953038B03030603636B636B6B67FB0B8E929C0003CA8),
    .INIT_68(256'h8A808A20C00A0A8A00F58A8ACAF58A34B8B8607594807F30387F953038B01330),
    .INIT_69(256'hFF0A20C0000000000000000030C0BC131331DF611F0A09B8132061FF8A31611F),
    .INIT_6A(256'h000000000000000000000000000000000000000000000000000000930A8A000A),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_31_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_31_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_27_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_27_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_27_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h48080000240A024030F22F2407E560C26A182943B9304C04F50808309C3800F8),
    .INITP_01(256'h3E1DC40201601098098ED0000323C00C00B9ACF6573A74844A01720604080000),
    .INITP_02(256'h0000000801818FFE0700018C40001000788FC9FCAB01108904760C8448232201),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h00200C000809F01000008000000000004758000000000088C00D01D200000000),
    .INITP_05(256'h014370330020E001E9F19A60080730000083030011808010000289000B703A31),
    .INITP_06(256'h000873264C80101700024941924A8A003D0087494E78501C00A000980080B004),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h5D8AEFFFFFCFBFEFFFFFFFFFAE003711801AC74016204081E180A92817FFFFA8),
    .INITP_09(256'hCF04636D5C480857B80380000031DC71E04000D1DF280FE0F047020A06004005),
    .INITP_0A(256'h080918A00011982060F84780022100683E44C500DB5A2030008302E100C8F000),
    .INITP_0B(256'h02508009BC08888AEB226E00418210164AD3648008048110181E46083801841E),
    .INITP_0C(256'h4844757BE00881F0FC11C00002018F62BF01301BD06813C9801E038100600F9E),
    .INITP_0D(256'h800011C0C0C3018D87B66310207F25460F036C06B09133602802BF7510440304),
    .INITP_0E(256'h08448B0300514FB6C6603440000000101CAA01B6C016EE10307B84200F29A01D),
    .INITP_0F(256'h000000000000000000000000000000000000000000000000000000004000F73E),
    .INIT_00(256'hBF93E032621F82928C801F30307F00929480FFCE80AD33207F8032621F009288),
    .INIT_01(256'h7F32621F889F20627F887F20627F00920296A82062FF8886945AF1BA7FA87F28),
    .INIT_02(256'h600A32629F8888C8E820FF028868887F20627F0031B17F94807F338C809F2A20),
    .INIT_03(256'h60B06980B040268066A8807202009228CE80B6FFB6287FB6003218807FCAC7DC),
    .INIT_04(256'h948072A92030A0C00039A0E0297C9330E2A030FF48CBA809AA38A9A686A9FF93),
    .INIT_05(256'h2920FF02408912FF32DF621FAD2062FF292062FFB0DFE01F00A930E9A9092000),
    .INIT_06(256'h29207F5AFFB2695229829300FFED7F6AF8824880006D5901020CAD8830800296),
    .INIT_07(256'h807E82ED7F9880AA829300027E2988A95A7F882982938880306280408A127F88),
    .INIT_08(256'h2A2A22AA2062FF0092AAA820627F29029688408D12FFA95A7F882A8293882900),
    .INIT_09(256'h81148082FF98AAE080C02A400A1172B22D32621F8C800A82962AA2AD207F02AA),
    .INIT_0A(256'h000580558005EE666D02947D7F001100805506D56D0682005D6A788000FF6DC2),
    .INIT_0B(256'h2BABAB22002A2050FF93BAA0EB80E2A030FFB07FB2822A20FF023200807E3600),
    .INIT_0C(256'h808B44B209207F028C809FB28C809F32621FAB200880FF94807F2B20FF802BA0),
    .INIT_0D(256'h801480E0200C800BB20880EBB2DF3220AAFF80B200FF808B808B800B000B000B),
    .INIT_0E(256'h80E22C8088807FB20DB21F8296130296AB2BA22AE080C880B001292AB07FC260),
    .INIT_0F(256'h0D94326200B21F8C228C7F287FC060B0CCE0FFAC80F81880780B82962B807F98),
    .INIT_10(256'hFF30FFABD89340807F20627FAB207F02AB2062FF8C7F307F131480FFACACA232),
    .INIT_11(256'hCA8B8CE0408C80ACA0B07FC06030E0FF8C20188062380880B07F2CAC20B08880),
    .INIT_12(256'h30ACEC80387F3060806C2C8088807F28C0C0C0282CACA0ABB20880EB321880DF),
    .INIT_13(256'hFF32DF621F008400A24FAB942A2832C062000042280C2040603A40E200B00880),
    .INIT_14(256'h2062FF8389400D12FF2D0296AD800880FF8C801F89400D12ED9480FFAD800880),
    .INIT_15(256'hD6DB100D33B6C6E6806DC00D11F2C08D12332D26DB107F349FDB107F349F2DAD),
    .INIT_16(256'hC34343C34330ED26B0FF95ADB2B226B6D866AD8046862E26AA2E262AAE262A00),
    .INIT_17(256'h000000000000000000000000000000000000000000000000000000005C8D8D43),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h08A8A8ACACA8A8A8A8A8A8A8AA8B8D0C09090989090909090A0AA8080A098888),
    .INIT_21(256'hC19F09088888088808950080B1E1009F12089612950080B15FE1009F0820E17F),
    .INIT_22(256'h08941568958828441088A8A8DB10C1108808085B10581088FF08A8804850A880),
    .INIT_23(256'hA0B0A0EE10B9A0B07FB0E9303888888808941569900A08085B1058109615E808),
    .INIT_24(256'h15E99588918A08085B105910E9085B10D9109615E909089415699588828A8008),
    .INIT_25(256'h9615E9090894156995882810089588417F988AA8C889117F0015E8CC10090894),
    .INIT_26(256'h129415E9B0E995A8218812C0A89DC0A9A8A8B0B07F00121294129430E91602A9),
    .INIT_27(256'h108A084CE74A64E665720E49FAF9E0F8F8C89069A0667512C889117F00009389),
    .INIT_28(256'h129415EAB66A36B67F363830EA805A0880EA32620A00B06A952A1FB2EAB01086),
    .INIT_29(256'h11F20002808908808012C08D1200B66A367FAAF8362A20E6F845108E2A2696AA),
    .INIT_2A(256'h480A12B2EA008AB0CA6008A28D128093367F2AA6AAAA8A941515EAB6FF80C00D),
    .INIT_2B(256'h0B08941568958C800B8888898733B23A7FB2488A126AB23A6A0093488A11F212),
    .INIT_2C(256'h0B1200FF6011803394806BABA030207F8062A0B07FA8488B12007F9480FF15EB),
    .INIT_2D(256'hFFC0C067B02B80E03800B72718804F27B02B806B2798278067A0B77F00921248),
    .INIT_2E(256'h8712156B9513000B800F7F80AB2BA70B80B047EB2B488B117FC88D12F82B80E0),
    .INIT_2F(256'hCB95EB12AB94EC3160A960809500B0A060A8A0A8488B11F24880303850E020B0),
    .INIT_30(256'h94156C2C2C9415ECFF3062805A7F2C20FFD86C38007FAC7F2C941515EAB29082),
    .INIT_31(256'h2CAC202CACAC2040018028E180009212809396B2488C12FF29E180B11F002C2C),
    .INIT_32(256'h602BE080B3E31F00B2B3DFE31F008A8A2C81ACCC806133488C117F2929B17F2C),
    .INIT_33(256'h80FFB1DFE11F80AE960C12A0800CA62CAE60802C804006B6EB366000B86DB233),
    .INIT_34(256'hA8E680FF86067F6E0794068695984D80C68066802E96B86D121480FF9480FF8C),
    .INIT_35(256'h7F2D2088807F2DAD8088807F860DFF86067F07863106069598AEFF80120C801F),
    .INIT_36(256'hED7F80E036E080ED7F80E00DAD808880FF0C809F93C88D127F14805F7F30B030),
    .INIT_37(256'h000000000000000000000000A40D0DB893B636367F2DB6E080ED7F806036E080),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h8912FFB1EA34B4B43434B400B4B43434B4B4B030B031B231357FB57F317F8900),
    .INIT_41(256'hB95F61EA89D5B27F7F117FB2281080D99F2061FFA8EA80A86A80B3EAA96A8058),
    .INIT_42(256'h188064A080C030FFA8804A88807F2828804A0080080B1172A9EA809480FF207F),
    .INIT_43(256'h30A8A92028209060D029206018D0B06AA0302828A4A0C030FF30A82029292920),
    .INIT_44(256'hB6FF30EA30B030FF8480F20480048004807FB03828B14AE16A04A835E9A86AA0),
    .INIT_45(256'hB1B130B09FB636B6B63636B6B6361236B63636B6B63636B61236B6B636B63636),
    .INIT_46(256'h313131B1B131B13131B08920B1A09F30B1FFB34A334AB24A324A32EAB0B1B1B1),
    .INIT_47(256'hEA30EA3115B56A324A0880FFB1EA31EAB21F317F31B1B13131B131B1313131B1),
    .INIT_48(256'h808238FEFEFF7F808080808080808080808B808600829308098E888000B26AB6),
    .INIT_49(256'h533175B98A8A212A6A31EA8480533161F52A2A21C880B01080808080188C180C),
    .INIT_4A(256'h73A1F53075B1A1DF0AEA30AA317F20800A0A21A1A1315FB9309F312A6AAA210A),
    .INIT_4B(256'h291FB12B2A2AA18C809F8B7F7F1393AEAB2E8BAEAB2E0A2AA130EA31EA8480C0),
    .INIT_4C(256'h2B6194807F8B2B94806B30C17FA12BB141DF7F31C1DFFFD97F31C1EB8061AB29),
    .INIT_4D(256'h31E1B0C1019394807F8BD08B12F8B131B17F94807F2B2BA12B200880FF2B2BA1),
    .INIT_4E(256'h2B4D80B81FB1188049302B80EE98806181189AABB07F2F8C800B00B161304181),
    .INIT_4F(256'hFF812C20FFB1E18EACD97FAB20E17FAC207F81ABA00EA0E17FA0382B30C0D0DF),
    .INIT_50(256'h9394807F5B103320FF802C80E17FAC80FF39E19F926EACD08C126E0D8196AC20),
    .INIT_51(256'h12FF94807F8EAC20E07F5B103320FF80580912FF8C809F8DB1E10E92738C800E),
    .INIT_52(256'hA0E1FFA038AC30C0D0DFACC0B87FB1188049302C8018808C80F2B07261ACD00C),
    .INIT_53(256'h2F596DB95F7F012F20E1FFAD20612F807FC17FACFF4C804DACACACACA02CA00E),
    .INIT_54(256'h8008807FAD80E17F2B20E17F2B8C801F2B0E2B9480FF2D2DA1B07F7FCEAC2F0E),
    .INIT_55(256'h20FF80AD802B8C800E30B0B0307F0D8C808E2B202BB1DFE11F2B8196D97F2BAD),
    .INIT_56(256'h20AC8496AC20AC0196AC206E61AC207F818DD9EE39FF20AD2B20E17F2B01962B),
    .INIT_57(256'h80EE8C800E009480FF008C801F0020E1FFAD20F2009080617F80E16EAC8496AC),
    .INIT_58(256'h8046FB80E4870781000080000050207F81ADAD2D2DFA2D2D2DAD00B14EE18E94),
    .INIT_59(256'h96AE207F80A0AE400812FF324E628EAE20E0FF2E20FF321880CAAE80FF9880E2),
    .INIT_5A(256'h127F8C800E5AFFAEAE8093AE20626E94321880CAFFAE20627F2E807F9880E282),
    .INIT_5B(256'h80FF80E64F80DFE636668036116036668086B69160361160B69160C0E8AE4088),
    .INIT_5C(256'h7FB6EF2F6F2F207F832F808880FFB67F2FFFA6367F2FFF262F2680FF80863626),
    .INIT_5D(256'hB7B7377F377FB786DB7FB66FB320E37FB337B7EFB3E39F2F200880FF2F200880),
    .INIT_5E(256'hB77FB35FE39FAF200880FFB3288E12FF288E12FF280E12FF280C12EF37E6B7E6),
    .INIT_5F(256'h000000000000698F8F288E286F80B380F5188066B32680008301B3B3B66FB337),
    .INIT_60(256'h93330B30808196A820FF81580812FF94807F8C800BB14BE18BA80BB05FE09F00),
    .INIT_61(256'hB67F9480FF8BA8580812F8B1DFE11F948000FFAB5590B1E18B330B92738C809F),
    .INIT_62(256'h264980CB08890808A626B67F308B927F08A64E26D82830C0387F80C026806226),
    .INIT_63(256'hC9AB3636B636B6B6A82028282820C2A08060A0307F8192292008A63026D00BB6),
    .INIT_64(256'h588912FF8C808B0B00286B94806B883E267F88EBB626004980CBFEAB0196C880),
    .INIT_65(256'hB1E11F30B0B07F00300BA99F330B33B1E11F33200880FF330BAB8BA85809126B),
    .INIT_66(256'hB1B8B8E0580A12007F9480FFB089A10B30A9000196A8207FB1DFE11F00A85590),
    .INIT_67(256'hFF286080B029A1B26AA8E080A830E02920AE20A89DA866A080B0C0C0307F30F5),
    .INIT_68(256'hA98C801FAAAA20AA20E17F926AB17F000A018A818AAAA07F80618B8C808B59A9),
    .INIT_69(256'hEB80CA804A2AAB2AAAA0AB2AAA20A866A08030609F30F530D9DFFF30E020D99F),
    .INIT_6A(256'h30E0AEA07F587F2AFF2A20DF608058FF806030FF80E030FF8038E0F89480E0C0),
    .INIT_6B(256'h587F2B26A030F530618B2A580A125F7F8030C07FAEA0339480FF580A12587F80),
    .INIT_6C(256'hAB207F80800080872A0038007880300094805FE0C00B80CA804A2A587F36A02A),
    .INIT_6D(256'h207F2B2B2120B01FB0AB9FB0A8319F00207F810050207F8100AB20E1FF2B7F2B),
    .INIT_6E(256'h312090AB502B20A83120AB2B2B21A0B0007F8BFF2B7F3331206033D8A08092B9),
    .INIT_6F(256'h5F05968BA38B238BA28B228B221200968B8B21B00046807EFE600080800596B2),
    .INIT_70(256'h15EE0CED31DF611F8C20617FB17F9030A020B97F08588C117259602FA1B17F31),
    .INIT_71(256'h0C20E1980C0C94156E315F619F8C31611200968C2061FF8C0C2061FF0C0C9415),
    .INIT_72(256'hB0617F0C0C94156E0C8C20617FB02066213020E621B0617F0C8C20E1780C8C0C),
    .INIT_73(256'h8880EE3038286080B060306030E0B02BFF12588C12FF0031617F3020613020E1),
    .INIT_74(256'hAD808880EE8D2088807F8D208880FF0D2088807F1300960D211320617F0D0D20),
    .INIT_75(256'hB0A0E058E0A8A0E08030617F0D00968D8D2061B1FF30FF8DFF307F1380964B10),
    .INIT_76(256'hE0580D117258FF8D2061FF307F0D2061FF307F0D3141610041FF30A060B0A0E0),
    .INIT_77(256'h80968E2061F20D0E2061FF8D20617F12B1601414B06130C06E0DEE8D201330A0),
    .INIT_78(256'h00C50E8E9488958A0880000D59FF0D20FFB961120D3161810E207FB9DF611F0E),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_27_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_27_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized12
   (p_23_out,
    clka,
    addra);
  output [8:0]p_23_out;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [3:3]ena_array;
  wire [8:0]p_23_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hCA3249A850A12205024014395048002044125004000104003E402000000C12A2),
    .INITP_01(256'h380206C1243C9494B6C0E57C92B94A0102804910D1238E402FC48048492A4B32),
    .INITP_02(256'h8000A80009A205195920F348B161D312948A872529E3002520081C9DB6000B14),
    .INITP_03(256'h000000000108350000000031402AA0D224882480032008840208252005C44602),
    .INITP_04(256'h6480000000000000000000000000001AD41A8016B41A6A0DB408998000000000),
    .INITP_05(256'h7FE054B9B2225248A2230A84904336BB595BA44A94A4A94A4C952CA504469212),
    .INITP_06(256'h94285601739112220ACCCD4AC9CA69E52847A96A9E5CE3A92923920000620821),
    .INITP_07(256'h000000000000000000000000000000008284C202B4002EB5EB0021692C57641E),
    .INITP_08(256'hC000000000030000000000004000000000000000000000000085F8BAB57595DB),
    .INITP_09(256'h702E6FEB02D04000EAC0041E4001A03000018000020000000000000000000000),
    .INITP_0A(256'h0010000300004440015000E003D40010000100002000011C0115290DB726000C),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h7892E7610177080FC00800016545BFFCF1254960180EA85D1202500005E07D56),
    .INITP_0D(256'h0040000845019B1F8100058AE003386C4000DE04005E72200646C14370040A00),
    .INITP_0E(256'h8A4124824D9ABAA28B6C920D4080008110425DB60000411436C3E80680300607),
    .INITP_0F(256'h0000000004C00000100001F9E01020021527D3E9F5E7D2FB5E5E5F579EB80012),
    .INIT_00(256'h108B0B89AB5B10888A8A2BA1B6B928AB9415EFFF62809C617FE27F985810B6FF),
    .INIT_01(256'h000A363630B0B07F80A8960880E00C117200B6ABA8A8A66210899688AB5B10D9),
    .INIT_02(256'h10CE80601268E08812EF000A807B10B6E60A807B10B6669392681268E08812EF),
    .INIT_03(256'h6F317FDC10FF87066AE0819C6C819C9889AE60A180ABDB10DB107F156F31FFDC),
    .INIT_04(256'h6B7FE17F87866AE1019C6C819C9889ABDB10A9A9A9216210A920E0FFDB107F15),
    .INIT_05(256'h064E6AF8E1018C0606D198CE8086AB5B105810FFEB7F98CE800030A0C17F86FF),
    .INIT_06(256'h86EE98367FFD106FB7EFFF86AB5B10FF6E0A14E97E06FA064E6AF86101FF067A),
    .INIT_07(256'hBE0580A8FF0085806D06940600287F0086C28000FF8000FC7F867F06FF869E86),
    .INIT_08(256'h87FF0606D101063186EDFF98B6907F06EDFF06677106EEBE06EC557FE1804490),
    .INIT_09(256'h5E78CC804F06B6A6BEFF8E6EE7148186B198CE803066AB5B10FF6E8B1406869F),
    .INIT_0A(256'h31B8EE7E869906CA86AAB07FAAA62E26A9AB038AA92E26156F314E48FFCE8086),
    .INIT_0B(256'hCE80E295EA00A600A6AAAA2A94152A94E0A6CE807F0681C2866D019498AB038A),
    .INIT_0C(256'hFF06064D988636FFB67FFFF97F4E06FF06BE9886367FB6FF2B2BAB2B2BAB2B26),
    .INIT_0D(256'h9C9830A0E2B0A0E230A062ABAB9415EF30A0C07F86367FB67FFFF97FB17F4E06),
    .INIT_0E(256'hFF86FF87ECFF98CE8086FFF97FFA0600FA060006E17F988A36E686FFEBFFECEB),
    .INIT_0F(256'hAC805886FF86066C4E066C4E06ECBE9812DC108093B0E00000DF7F00AB2B8061),
    .INIT_10(256'hA060B0A0E030A060AB5B10D9100B89968AAB5B10FF06F97F4E0606FF06BE982C),
    .INIT_11(256'h8080FC98B2DB10AACC10C11036EF7510282C805F86FF06EDFF988930A0C07F30),
    .INIT_12(256'h2C5E9820C66FDFA687A6367F9528B69FB28296B2B2DB102C41FA7F0600D1E17F),
    .INIT_13(256'h860786E398FF80677F0000ECFF983678B6AC5E7820CF06FF8F067F0786E39836),
    .INIT_14(256'h8D01B1FF008786DB9836462C5EF8204F00C666FF80807F4E0730000D8F870B87),
    .INIT_15(256'h80D5004E7F80800500000598AD5EF820464F06FF00007FFF870A0081B5988000),
    .INIT_16(256'hE5E530ED26568D36B67F36FF2C7FB678AB9415156FB166FF0181E7B1B5800185),
    .INIT_17(256'h31FF0D04807FD1D60D0B9415EF156F04A680B17531FFE66666E3E666E6E666E5),
    .INIT_18(256'h80E00E120036FF36B1317F8C808F0D9480B16F8C801F31FF0D04807F9480B1FF),
    .INIT_19(256'h0E12FF9480FF30F50E26939236660E260EFF36FF12B6ED307F0D367F0B9415EF),
    .INIT_1A(256'h0E12FF008C801F367F12B6ED93E00E12FF94807F30EF939236668E260E1593E0),
    .INIT_1B(256'hF887FF87487F87871D9888807E980E94807F36FF12B66D0D367F0B9415EF80E0),
    .INIT_1C(256'h00317F80D010AF20AF20F5585F4EA04830EFB07F00AB15EFB0C06FFF00EEFF6A),
    .INIT_1D(256'hD186808CB1818A86062E178000808080000A8A838382008D00FE63AA0280AF1F),
    .INIT_1E(256'h00000000000000F90F8F7A10B7FF8F7FAF8037DF67FF627F988BAB5B10DA9F61),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h06060286060E0E028E0E8E8E020E0E8E8E020E8E0E0E028E8F0F0F0280008182),
    .INIT_21(256'hA080C630FF307F1480FFA868B6E90C801F84807A36622026B006068686020686),
    .INIT_22(256'hA080C6B6E9B6E928A6A860A9A080B6A86020A680B669B669A820587FAEA06020),
    .INIT_23(256'hA9A080B678B669A8A6A860A9A080B6F8B669A8A633048060848066A080F53060),
    .INIT_24(256'h860606868606068601810101818180000009080888082828A6A880292680B080),
    .INIT_25(256'h0E8E8E0E8E0E0E8E8E0E0E8E0E8E8E0E8E0E0E0E818080008080008000868606),
    .INIT_26(256'h810B8B8A0B8B8B8B0B0B8B0B8B8B810686060686068686060686868E0E8E8E0E),
    .INIT_27(256'h98FFB686EC550600650080820282020201010181810000800080858101820282),
    .INIT_28(256'h00FE6A7806FF80C806FF804E6A077F069580865580187F061E6AF87F80187F80),
    .INIT_29(256'h00FC81000C7F00007F006CF5008E6A7F80187F006A7F0000F5806AEAEC2000A6),
    .INIT_2A(256'h7F8000FCEA7F0000FCEA7F0080FC00000C00FFEA7F0080FCEA7F0000FCEA7F80),
    .INIT_2B(256'h006A803F96EB81FF006A0053FF8003FF6A887F0020FF00806DB88080DB00FFEA),
    .INIT_2C(256'hFF06062100CE6A7806FF00C80006180606061D7F80AF16006A803F167F80AF16),
    .INIT_2D(256'h596BFF988296FF00FA6EFF864E6A879606C80006216BFFEC15066A7806FF06C8),
    .INIT_2E(256'hFF00794B00807B000080D980008059808058EB7F8E06FA06EEFF06061B860006),
    .INIT_2F(256'h38AE2EAEAEAEAE2E2E2E7F0606CE064E06FF6BFF6B7F8E80FF00FAF92D0060F9),
    .INIT_30(256'h40808080808040D8167FDF807E067A6AF86C4E067A6AF8EC4E067A6AF86C807D),
    .INIT_31(256'h6CEC286CFF6C80AC6C6CA8806D80948655806D0600005BD59580808080808080),
    .INIT_32(256'h119880FF677FEA008005000566EE6D80947F968018006A8655EC066CFF808095),
    .INIT_33(256'h8000E080FFFFFF2A8A7F804800CAFFE796187F808D008055007F556D0680DB00),
    .INIT_34(256'h7FFA6A809C0080487F966A78FF80BE18806A8698666D009486EE666D0094EC06),
    .INIT_35(256'h48EC986C11005E00BE7F80C8FF8518006A666D829406183E00866D029480FF80),
    .INIT_36(256'h98AA2AAAAD20FF02FF02EEFF00CAEEFF80486C8D6AF87F001800988098C18480),
    .INIT_37(256'h3080E03060306000AD60306030E000BAC0FF80B87FB09FADAD7F203A608000FF),
    .INIT_38(256'h3AE0B08EA8A88EB8FF30E0B08EA8A8B08EA8288EB8B07F8E389DB81F30B0B07F),
    .INIT_39(256'h00DFDF2EDF202030022E8EE0508EE0508EE0B0EE0058FFA00030002EDF20C0A8),
    .INIT_3A(256'hC061B0386E30E02E8008807F009238591060A0003020C0FFA02E30002EDF20C0),
    .INIT_3B(256'hA10E0E4B802EB06030E08E20806E80E130DF2E2E2E20FF8011C080E0508E6E80),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h288028A86A208030EAA0B060FA306AA1B07F88B0FFC8804801B068A130E8A1A8),
    .INIT_41(256'h81818102000080807F80808080FF800000000000008028E9A080282828E9A080),
    .INIT_42(256'h889090108808888808060606808080808C810181828086868188888805818581),
    .INIT_43(256'h8001101010100101808080808080800101018080008010101090109008081090),
    .INIT_44(256'h0003109082008000001010908080808010088008080810101081818110108010),
    .INIT_45(256'hF305E181804EE681B000E18088000E238080D4018D80CA42C202CA4280809880),
    .INIT_46(256'hE6038080E55F2D14478090007000C07F1C917A809A80CD001100DC8040808E00),
    .INIT_47(256'h7A722F003A8B160A67B10D091E8DF6134CF3419531FEDB8180807F1D1A8DE977),
    .INIT_48(256'h020201018100000181010E0E8E0E0E8E01818E0E8E8E8E8E0E8E8F97BE11771A),
    .INIT_49(256'h8181818080808080800181810181810881818988888888080888888686868682),
    .INIT_4A(256'h6A8A0A968A2730FF94800A8A7FA7CE80A939B919A93980803918019910100081),
    .INIT_4B(256'h8CED8C6D0D8C6D8C7F0C0C0C0D0C0CB6B67F0585848694806A869480EA869480),
    .INIT_4C(256'h8C8D2BA70D2B5B100C0C6D0CED5810B227EDB77F8C7F8CED8CED32B26D0D8C6D),
    .INIT_4D(256'h3232B26B262BCB8046189392ED12ED700B127F8C808D8D8D0D0D8C0D32B20D0D),
    .INIT_4E(256'h568C2BDB10417F9832B2EB262BDB10C110B67F0D2B560C80C88B127F009480FF),
    .INIT_4F(256'h867374FB80040B0CE310CB80465F9F568CB1316C26B11F31B1B1B67FCB80469F),
    .INIT_50(256'hBE60274C8040278612A0B6CE80FD7E82020281010000000000000080F9FB8004),
    .INIT_51(256'h2CAC2B941515EDFF016E751483B987DD06869598B7C0802ECE808680AE2E96BE),
    .INIT_52(256'h15EDB0EDCE80862B5B10D910CE80860C8C262B5B105810367FCE803232B28656),
    .INIT_53(256'h6D56CE80AD6D56CE800094807F8C808D862B5B105810CE808656952C2C2B9415),
    .INIT_54(256'h156D95631080B0DFE01F00B67FB67F5810CE808695AC2D2B941515ED66156D15),
    .INIT_55(256'h12ED708D126D0CB66036E036600CCE80862B5B105810CE803232B27F860C8C0C),
    .INIT_56(256'h7187E0403220980086562DAD2B941515ED31C08066B14080E631C080E69392ED),
    .INIT_57(256'h0000000000000000000000D48D0D94000AF5738D830303828080828080F8A000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h100E0E581031EF36B636B17FA95B1058103232B2B1B6FFFFE27F98376F37367F),
    .INIT_61(256'h7F801388108FFF877FCF7FCF7F4EEA069EEA0666980827A95B100C888C8D095B),
    .INIT_62(256'h621088A637FF8C808B000D6F37B0267F37FFB6FF37EF621008A60E3626B1E731),
    .INIT_63(256'h368626B6606210B6EF0EFF016EFF7F05073987079598C7878037079688A70D27),
    .INIT_64(256'h7FB146FF0E317F3660B1678013881036B6FF36B6B636B636B63636B6B6367F8F),
    .INIT_65(256'h27B77FA95B100CA98C8D0DEFB77FA95B10581096156F0A200880EFE310491036),
    .INIT_66(256'h7F0D6F0D270DFFB6FF30B0B07F371F37FF890A206F0909A78989892636402782),
    .INIT_67(256'h2737003758FF092067E7C6A7C8E7A74837C79F89A6375FBF8CB0267F808B00B6),
    .INIT_68(256'h8AB28F327F8A0994150ADB10417F9809DB10C110326FB27F0A099415156F0D0D),
    .INIT_69(256'h8A8A0A0A8AA05F670A000AAA80FFCA80B7B90AA994156FFFE27F988686963638),
    .INIT_6A(256'h0CA98C8DA95B10581037EF37B6B7B67F96B7B7B6FF8AB67F8A8AB67F8A8A8A8A),
    .INIT_6B(256'h10B17F8B0BA78B270A26F2100D270DFFB6367FB15FE19F009480FF8AFF36E710),
    .INIT_6C(256'hB0278F8B12A0808BA78B0A0B0BA027B77F00B027B77F8A2B807F86DEB7B1FF62),
    .INIT_6D(256'hB17F008B12A08AB78A8BA70B200880FF8B0B8B0BA0278BB0276F8B8037E037FF),
    .INIT_6E(256'h0B31278048008B4780FF0B678BAB80EF872B80EF4B80B74780E780B1E19FB7B8),
    .INIT_6F(256'h7F0012A080CE80A90AB17FA95B105810A9A95B1058100A0B9415156FB1679515),
    .INIT_70(256'hA8968C8C268C8C8C8CA02636FF8C8C260C8C0C8CA02636FF8C0C8C0C26363826),
    .INIT_71(256'h8000B7A760B7A7E037A7E60B8C00B0264026BE86368C8C268C8C8C8CA02636FF),
    .INIT_72(256'hA95B10D910A95B105810CE808286A95B10367F0CD68C20E5EC5810FFEB7F98CE),
    .INIT_73(256'hE97E06FA064E6AF8067A064E6AF87F0606D19830A0C07F30A060B0A0E030A060),
    .INIT_74(256'hADB09392ED7D12ED37AD86862780F80D1266008D8D868D2737CE808659106FFF),
    .INIT_75(256'hC0FD796E94FD36FF7FF8058778930000FF0000FF8000FC98002DA75030207FB7),
    .INIT_76(256'h6EFF06FF39A64E7FFF070795FA87B607860786FFFA87B687860786980E95FF7D),
    .INIT_77(256'hFF6B78FFFF007F8698BE8618EC9E00FF067FB00600FF067FB098CE80AA0EFF01),
    .INIT_78(256'h367F8EB636369F86B67FB6B6367F0E8E8E0E8E8E0E0E0E8E0E8E0E260D6FB7EF),
    .INIT_79(256'h86B6FF3600B6B67F8EB6FFB6B600367F86B67FB6B600369F86367FB67F36B600),
    .INIT_7A(256'hB60FB6B6EF36EF3636B6366F8EB60036B636EFB67F8EB57F3600B63636EFB69F),
    .INIT_7B(256'hCE8000B661B661B6E1860C108EB600B63636EFB67F8E360036B636EFB67F86B6),
    .INIT_7C(256'hEA6EF76412F91DBB3C0086FF0706CF06CF06FF98CE802F0E86099415156FB166),
    .INIT_7D(256'hAD20007F0A0A06768002801980878784839F81701010886FE0749FE3778D9330),
    .INIT_7E(256'h0000000000CC8F0F7FBF8080808080808040808080808040808080808689B620),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_23_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_23_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[13]),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized13
   (p_19_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h05124006807EC020488050432F4128ED0A94B1004008004000C5000104821C00),
    .INITP_01(256'h000C4915003D048464330E932F26100398243ACB2621E10DE035315BC0E36100),
    .INITP_02(256'h1001EE2A834AD500FBFE3D0701A4EFF3FA554A550C648091D92462A121806006),
    .INITP_03(256'h0001084208D9279329A19253290A3E622488E444911C82005842A32404006600),
    .INITP_04(256'h2B34CB52CC8A2D3938152DE7774B760E493D2196A6F480040EAB905010908FD0),
    .INITP_05(256'h00114002A200025D80400012A4B492521044049C90873B6922464CC49159752D),
    .INITP_06(256'h0660080000C00C00F00F00F00FC0FC0FC0CC0CF0CF0C6C233A50CD0884210842),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000002151000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h001D909575000800390C58200382114AB2921507498DB21214304E2B81DF8630),
    .INITP_0D(256'h4EADACB1B4202B531086CAA2EA18188003000BCA210484108002F295A60F0751),
    .INITP_0E(256'h05192937DB3698691115A1BB57FFFFFFC000022010429405E28EB2CBACBBB5D9),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000820),
    .INIT_00(256'h0028282820008508357F250496553560088005FFFBAA7F7F553F870686050000),
    .INIT_01(256'h8F0E0D8C0C0B0808A05F558C10488048055508880825124D8000282028282000),
    .INIT_02(256'h2000888888882088888808A5B588888808208808888820880098882888080805),
    .INIT_03(256'hE8888888C8800088C8807F4880DFEE8848800048807F08858888888820888888),
    .INIT_04(256'h8060A5803D3D00B5FF35E888E0208060808860E0C0804080C0002520302575B5),
    .INIT_05(256'h80002980DFEEA98000A980FF08050805FFB57FB57F08608860A58088600880A8),
    .INIT_06(256'h45EEDD80DD80086088AD00B00EB50088B55FEE888888888829800088A9807FA9),
    .INIT_07(256'h6088C8C578B0FFADEE800840FF885FC07FB0FF8858800858805880FF08450E88),
    .INIT_08(256'h0035D080FF886008DF38858008C500B078AD0E8088D0084555886008C8658088),
    .INIT_09(256'hDFC0B57F08E5085DFF08488088658040D580356580600848D8E080406E8000B0),
    .INIT_0A(256'hEE0848A5800038258068B0EE0860085F3500B5A58088C800A5804D7FB50088B0),
    .INIT_0B(256'hB57F085F8588604D8088CE6008404880A08000B0880838884840A58088885F38),
    .INIT_0C(256'h80884580C0A0B5B0FF88E0FF88E8B07F08880B30C080EE8088C580884080B500),
    .INIT_0D(256'h883080D8EEB0FF086088C540608000B0FF8860884035A8088080FFB07F08C020),
    .INIT_0E(256'h0B12FF0B2B8060002B80C085B5C080B07F0088D88830D8D8B07F08888B306080),
    .INIT_0F(256'h6008008008488480FF089308CB808B288080808835008B5F8B0B200080C8EE00),
    .INIT_10(256'h60085F1880F888381F880C806888888068B08808600814806808908068B09808),
    .INIT_11(256'hDFCE000035EE08C5658C051208400C550845350C0C20808038E5ADEE8008085F),
    .INIT_12(256'hFF088008488508E50CDFCEE508C5650CB50C5D8065128008C5E58835880CA038),
    .INIT_13(256'h80252DA8A050B0650035E8B5E8B58C3568B5688C35FAB5688C35FAB5E8307FB5),
    .INIT_14(256'hE0558CA58C2D80C58555306512B5E080A8252D0840250025A82580258008C025),
    .INIT_15(256'hDF40C0C040084840C0C040B03030B0E88DA500A0DFB56830680C20AC80C8305F),
    .INIT_16(256'h35720D7F2D80B5000DDF0D1045E535FF35B57FB5FFB57F357F8D95150D08D508),
    .INIT_17(256'h12A02535FF8E0D608D250D0D0D2000C585B5457FB545B50D0D60A58035FFB57F),
    .INIT_18(256'h6F020E250E00FF8D258DFF8DFF8DA5AE80CEB57F8EB5DF658D8D8D8DA5D5128E),
    .INIT_19(256'h6EB0E8353D95651280800D11FF00B568357F35FF8E0845009565B5FF8E068EA5),
    .INIT_1A(256'hE580FFB5EE0EA5B5A51208CE40E580EEB5EE08956E12B568968E8E0E94150E94),
    .INIT_1B(256'h12084560087F8065B5EE8EA5B5A51208CE406E8065B5EE8EA5B5A51208456008),
    .INIT_1C(256'hA580888838EE0845A580688838EEB5A58068B00EB500B57F55B59F080EA5B5A5),
    .INIT_1D(256'hA580B568B07F08409F08CEA5806888CEDFE50838EE08C5A580880838EE084535),
    .INIT_1E(256'h8008600845A580883800084535A580008860B5A580B500B0B57F08CE60084800),
    .INIT_1F(256'h0000000000000000000000000000007A8F0F08D54F8065120848E5086008C5A5),
    .INIT_20(256'h108093B7668B0827FF878DFF98FD106DB7ED8B8032B23230B0B07FB760008013),
    .INIT_21(256'h7F80831330B0B07F32E0B260B2603700B7E020376700088113B7E7B760000BB9),
    .INIT_22(256'hFF0D4807806808072008FF08072C000DFF980C08381008882703138C93880811),
    .INIT_23(256'h07850707D307850B0D87050AFF08072C0000F807809F00BE7F8782C50708D897),
    .INIT_24(256'h97787FF8C7F87FF887BB8787D80009FC177878BB00087C8F8DA7073F7016FF8D),
    .INIT_25(256'h0080F8097F0F80A700A700FF877A073607875300897897F87FF8FA8D4778F80B),
    .INIT_26(256'h7F7F0000BD7F80003D809F877F003A009F870D80896510FFA80038EE7F8D87BD),
    .INIT_27(256'h8000BD00FA00E0168686BD7F077F8006BDFF86008580E01687FF065A0000BD86),
    .INIT_28(256'h3107800D1F07870D0DBD00FF7F0007BD00F2FF7F06FF06FA0000BD867FFF80FA),
    .INIT_29(256'h0F877F8F070E0B0787938B0BA68BFE07077F870D31FF0700BDFA001F077F870D),
    .INIT_2A(256'h05078E91879F878E91879F87878D8AFF8787FFE016078AE5870A5D0E86078E0B),
    .INIT_2B(256'h84138CCB80E7006210FF8787072D9882132BA10BA6FF0707AD8787D1F8960E07),
    .INIT_2C(256'hF10736070755988BFFE98B1C8E2E8706218706210706218000FF80FF9880377F),
    .INIT_2D(256'h800062108B0BA60113B6F91078100B278B8BA68B5B1059106D0213FF8687F28D),
    .INIT_2E(256'hB7A7FF87070DFF98807F10E31087960B07960B7F1280880812CB80C75F4B8047),
    .INIT_2F(256'h117F0C0C8C8C0C0C8C0B8B24066310FF627F984E808B00938B8B80138BA7B6FF),
    .INIT_30(256'h880812FF908808117F90880B117F90880A117F90888B117F90888812FF908888),
    .INIT_31(256'hC866A0B0B86C30ED2CB06C3000AC20C8B6A0C867A030EDB06C8A0890880B117F),
    .INIT_32(256'hFF7F96007F7F0F7FD8E721F4FFFF06AC2036A067A030EE4E802C3000AC20B7A0),
    .INIT_33(256'h777F8F00EFFEA47FFFFF7800FB7F7F80E1FF207FFFFF09007A7F077FB67E157E),
    .INIT_34(256'hE27F89FFFF7C7B7FAB7F818058FF4DFFFF7DBA7FCF7F4F80847FBBFFFFFE337F),
    .INIT_35(256'hFFFB7F7F0680808061FF2A7FFFFCFF7F18800180C07F2AFFFF7CFF7FBD800180),
    .INIT_36(256'h808080808C7FC37FFFFB80808080808096FFC8FFFF7A808082800080A07F0BFF),
    .INIT_37(256'h8CA7CCB0D1917EAA16DA3D89900A0680BE218077FF8100008080808080808080),
    .INIT_38(256'h0000000000004D0E0EF810376E377FB4EE009337FF00008019BE804C03F50033),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'hDFA894806EA82030A07F8046A03EA086A028A828A6A0307FA8807FB31880FF4B),
    .INIT_61(256'h4EC680B060A9E780AC807F000080C8804830ECA8B6A0942874A6A0A8C8805400),
    .INIT_62(256'h28DF204720806320B07F90DEC76C803EE780C0E080667F804EC680B0E0C87F80),
    .INIT_63(256'hC867376C8060FF80DF40B3377FDE0708B30820CCE7377F376D87A828A0B32000),
    .INIT_64(256'hFFA98088807F37B60C2980E3A980E3FFABA980E37F00CFE780E080677F806780),
    .INIT_65(256'hFFABB3E31F2980E3FFABA980EC000080AA337FB61FA9FFAB2980332329808880),
    .INIT_66(256'h60B3E31F2AC9804629A929A9A62A808880FFAB80E3FF298088807FAB14807FDB),
    .INIT_67(256'h6C2A8008807F532A14806C3030B07F36EC8060FF8060A980E3FFAB336033E0B3),
    .INIT_68(256'h4B80C6669036DFABAAABAA20B6C686367FAB14806C3030B07FB66C36EC2A6C36),
    .INIT_69(256'hB318804B7FDE6CAADE6C2A8080804B80CCB6376C80607F806680E6CA80C68006),
    .INIT_6A(256'hE62B367F916C2B367F91EC2A80E37F2B367F91EC2B367F91FFAA80E3AA2A7FA6),
    .INIT_6B(256'h6C2B808080AB9F367F916CDE6CAADE6CAA808080CA8086B6376C8060FF806680),
    .INIT_6C(256'hB646869036E6B65EC38060BEE6804380E0B391B6377FAB7F367F91ECDE6C2BDE),
    .INIT_6D(256'hAB7FAAB6E7AAE7A637AB106C90B61FAB36FF80E6B6FFCB804CAB4C20AB80A690),
    .INIT_6E(256'h3E7FB3BE7F33E614807FB066AB912B2B2BA037EC5380CC86CFE780E78067B79F),
    .INIT_6F(256'h2043B38006B3BBE6B066B3B3B33E7F33BE7FB3E6B3DFAB2BDF204086ACA3B3B3),
    .INIT_70(256'hB0B3B3E633DFACACDF20434086B3B33B3E7FB3BE7F33B3B33E367F33DF2C2CDF),
    .INIT_71(256'hFA7CFED1F17F7E00FF4081B33B3BBBE6B066333BACE63360B3DFACACDF204086),
    .INIT_72(256'hB38C800C048004807FA9ED80FF3330ECB16D482888E6838081808180807F64FD),
    .INIT_73(256'h36B07FAD2088807F2C808880FFAD200880FFAD2008805FFFAD20E1FFC880489E),
    .INIT_74(256'h6036EDB66DB737373636B63636B63036B637B7B737373333B3B636B6B636B636),
    .INIT_75(256'h8E12FF288E12FF280E12FFB7EEB76E37B7EE376D9480FF33B6603336B6E0B3B6),
    .INIT_76(256'h37376E366080366E80E6B66080B66E80B6A68028362680E08028E68066806E28),
    .INIT_77(256'hD780CF80FF300A1808DA33B7B7EE09180CB3306DA96D802FED80B737EEB737B7),
    .INIT_78(256'h0000000000000000000000000000000000000000A70E0E898027604C09A834D0),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_19_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_19_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized14
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h70A00877272155D568994050000020520006CC58C8CB2942D1D8ECB131090A0A),
    .INITP_01(256'hEC14A1184B6A92030842F0468204D44D4B0EB00000000166552F56A52AC15295),
    .INITP_02(256'hAA0055D24660055730D5442AA986AA924FEDD8BD7BCB0AAAB88054CA8D13A0DD),
    .INITP_03(256'h00000000002114E330DB890882800C9D9800735BD0B35A16A7A941544155400A),
    .INITP_04(256'h0000FAE59671027A0234B9A4920002AB4A588AB5A16E7F56BC2A0036ACB96D3D),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h04BFDA4FBA4C42A849C239D79877ADBD662DADF733B9BE9A2820000000000000),
    .INITP_07(256'h00000000000000000020759350E0870430104020100000000000000169598001),
    .INITP_08(256'h203FFD99249282D067FF944C4289885107808AD8AD2FFD2B4A36E68123F04282),
    .INITP_09(256'h54A421121256156558822224A529510408245224400000000000000000000005),
    .INITP_0A(256'h12130983BC0002B499234A45A0095C6AE0986003098B22C99844D51622AAA405),
    .INITP_0B(256'h00000000000000000000000000000000000000000008DCB552FF068CD8D80009),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h80E6B06080E6C87F804EC680B060C87F80CE4680B0E0A9E880C8804830EB300A),
    .INIT_01(256'hB7377FB768075EC7476780BEE780605E47C76780BEE78058E680B86080E6D860),
    .INIT_02(256'hB7678060E780E75F37E780606780376B8060FF80DFB35E875E0708B30820CBE7),
    .INIT_03(256'h80AB8088807F29808880FF8800B7377FB7608067376080E7C87F8047678067DF),
    .INIT_04(256'h8880FFAE8088807FAD8088807FAE808880FFB66B2A80E32980E3FF180CB3A969),
    .INIT_05(256'h80C08B406080E6406080E6286080664B80E3FFA98088807F2A337F376B2AAD80),
    .INIT_06(256'h80EBFF80E036C6E080EBFF80E02A80E3FF336033E0B360B3E31F29B6E636E649),
    .INIT_07(256'h80C6B606AAA9AAA64980462A2A2AAAA6A9A9AA26B66B14806B3030B07FB6C6E0),
    .INIT_08(256'h2D0F4A8046AD4D80C6B6E6AAAA2AA6498046AE46800F4980462D8F498046AE4E),
    .INIT_09(256'h607F806680DFAADFA6AE4E80C6B686CA80462D4D80C6B666CA80462D8F4A8046),
    .INIT_0A(256'h6BAA801880EBAA7F2A8088807F2A808880FFB3116B2A80E3FFB6367F2A376B80),
    .INIT_0B(256'h606780674B804BB6E7B311E6B737B67FCA804B07AA6BAAEB2A801880EBAA6BAA),
    .INIT_0C(256'h5FAB800880E6B7EB8C88AAE6DFEB80E0B767803060E780E75FEB80E037678030),
    .INIT_0D(256'hEB8011E6367FDEEBAB367FDEEBAB36EBB6BE5F80ABDEEB2B807FE62B80B0C680),
    .INIT_0E(256'hB3B1EB0A180B00008001008101D17E817E08400E09007F83007F7F7F64807E28),
    .INIT_0F(256'h3066278006B7FF03B3DB7F36E62EE680B3602B60802B20FF63AC20FF83088F9E),
    .INIT_10(256'h304380603E6680304380E0372BA7B72700ACDF2058E02CA730EB80C0E6278006),
    .INIT_11(256'hCC26A0C0B0FFAC20EB8080AC208080AC20E37FB65E6680E0BE6680E036DEE680),
    .INIT_12(256'h66362E2E360EB6C60636E790B6EB7FFE2BACA0ACCC804CAC4C2620AC4C80CC2C),
    .INIT_13(256'h664D8066364686B646B6ED80C66D8006B6ED80C66D802D80360E36C60636E7B6),
    .INIT_14(256'hCE20C6E6B767AE1836662DA7AE9F36664D80C6EEB7E7B6662EE680CD80E6CD80),
    .INIT_15(256'hE7AE9F3666ADA7AE983666CD80C6EEB7E74D8066AE9F0EAD27AE1F0E4D80CEAD),
    .INIT_16(256'h66CAB076ACB6ED80E6B66D802A80E6AE7F0E2D27AE1F0ECD80CEADCE20C606B7),
    .INIT_17(256'hCE20C6E6B7674E80E6AE7F0EAD27AEFF0E4D80CE2DCE20C606B7E74E80664D80),
    .INIT_18(256'hF83666AEA7AEFF36664E80C6EEB7E7B6662EE680AE7F0E2E27AE780ECE80CE2E),
    .INIT_19(256'h46E636E6AE06360636E62809286E8036FF3666AEA7AE7F36664E80C6EEB7E7AE),
    .INIT_1A(256'hDF00AE5FA02F2E80FF80B667DA0036EE8046E6366080B6602FAE80FF80B6EE80),
    .INIT_1B(256'h7F8066B686AE2F2FA6AEA6A6DEAF2EE6A6B646E780E6B646806680366080B6B6),
    .INIT_1C(256'h1F2FFF202F807F806680662F7FAFAFAFA6AFA6A6B6C6662F86A6AEB6C686AF46),
    .INIT_1D(256'h80663666808FAF80468600B6EE80460636E6AFE636E62A372A106F902700602F),
    .INIT_1E(256'h000000000000000000007B0F8F9D00B6A6806F188A286F80B6B6E6808F29B6E6),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'hC96648804786287FC880C9B6668066C880B64680C6FF806680E63606B6488086),
    .INIT_21(256'h4880C746C6E780E60BA836A836A8B60050E9A88067A880E728804008A8494880),
    .INIT_22(256'h66806680268066488046E9803647FF80E6B647C6C686B666808600C880460900),
    .INIT_23(256'h804669286680C9E928E980C0464E801186904E8048804669488046608046E9B6),
    .INIT_24(256'hA6296CA6A980FF63298088807FA9808880FF6486E5717F80FF807F0048804660),
    .INIT_25(256'h80A9A629A920E61480EAA6B0E9A65E80B6A9B6FF7F80E9A636ECA629ECA6296B),
    .INIT_26(256'h7F80603769A07F80EAA636FF80E629C0E6A9202929207F80E9A6365FF5E9A65E),
    .INIT_27(256'h80802721038081272103808100000080FFFFFFA02866B0E9365FFF8060B769A0),
    .INIT_28(256'h8113919026200280802620028080272102818027210280812620028080262002),
    .INIT_29(256'h9086801290908680129090878112909186801291918680129191868012909087),
    .INIT_2A(256'h0480808004808080058081800580818002909002909002909003919086801290),
    .INIT_2B(256'h1716BCBDBABABBE6E7D6D6D72604808080260480808027048181802704818180),
    .INIT_2C(256'hDBC9C8C8B0B03232328686161616BCBCBABABAE6E6D6D6D6B0B1323332868716),
    .INIT_2D(256'hC41A1AA8A8A89292A4A4A4DADAC8C8C85352C4C5C51B1AA8A9A99293A5A4A4DA),
    .INIT_2E(256'h3232323216161616BABABABAD6D6D6D652C4C492A4A41AA8A8DAC8C85252C4C4),
    .INIT_2F(256'h000000008080000000008000B0323232328616161616BCBABABABAE6D6D6D6D6),
    .INIT_30(256'h0000800000808000000080008000800000000000808000000000000080008000),
    .INIT_31(256'hEEADCC804D2D8067AD80E37F0080808000008000800000800000008000000080),
    .INIT_32(256'h80E0376780E0304DED8000B7EE80E0B7FF8037DF0030406EE7806E3040FFE780),
    .INIT_33(256'hE737E780E0B76780E0DF6080C64780BF065F6080C6C7803F0630DF7F8000B7E7),
    .INIT_34(256'hA0806E37A0208048FF30CE4D804EB0A0DF2DDF27A03078376D804707B76D8047),
    .INIT_35(256'h7FB77F2D7F8066A0B7A0FFADEE2D30AD2D2037A0FF8066A0B7A07F4D8047A040),
    .INIT_36(256'hB7EEB35FE37FAFEE80B76E33B7377FDF7F280C126E2C30EE306DB76EAF487F2C),
    .INIT_37(256'hDA198C2E807EC2807C333737B7B737B7B7377F37B7EE2FE6802F668037B73737),
    .INIT_38(256'h2E30C0D0DFAE60307F7F8000B6008036B67F084081B8808080A801E0D027837E),
    .INIT_39(256'h5E7FDE7F005E7FDEFF005E7FDE7F005EFFDEFFAEAE2EAEAE2E2EAEB3AE208EA0),
    .INIT_3A(256'h8E0F33280E12EEDE808E0E005EFFDE7F005EFFDE7F005E7FDEFF005EFFDEFF00),
    .INIT_3B(256'h48EF36C0A6804866330020E37F818A0133288E126E5E808E8F33288E126EDE80),
    .INIT_3C(256'h804666372680486FB6C037268048E600B7A680486FB6C0372680486600B7A680),
    .INIT_3D(256'h00000000000000000000650F8FAD008000B737EF80C76736362680E68066366D),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0080AE6080902FAF2FAF2FA9E780C880483069888928B6E8A96880C880483069),
    .INIT_41(256'h6A2680DE98A8180828A636E080097F80DFDF4880CEC68006B00080A8801880B0),
    .INIT_42(256'hFF806680C07F806680603EE620282E20282E2028AE2090B07F28B07F36EA26AE),
    .INIT_43(256'h80C8C066803EC0003640806689E08040FF80E0407F806680407F803066806640),
    .INIT_44(256'hC8FF80E658A9B058E680E040E680C8C0FF8066C8FF80E6D829B0586680E04066),
    .INIT_45(256'h804981A8A03E3E3E2E20282E2028AE2028D8A9B0586680E0406680C8C0FF8066),
    .INIT_46(256'h6A802FEA80AF6880AF68802FE980B668B669CE0058FFA0A9300029DF20C0B32A),
    .INIT_47(256'h8A08300A7F7F80B0D1B33636B73636B636B6B63636B67FAEFF8066AEFF80662F),
    .INIT_48(256'h05159F84951D04149B04941A8493180413972712178312968392158397308830),
    .INIT_49(256'h1AD7891A54889ACF089AC8089AC107993A0799B486982E8697AA8597250596A2),
    .INIT_4A(256'h4830E9004E3F0327B509182C1290261D0C22AB8A1EB9091CC6089BD0881AD688),
    .INIT_4B(256'h896680ABA96A80C8804830E9B3A96880483069A08833A9EA8048306933A96A80),
    .INIT_4C(256'hB066B60E66B066368E66B0E6360E66B0E63E8EAE0E6680B64380896680364380),
    .INIT_4D(256'hABCB2620B0FFAB20E37F0000B35EEB80E65EEB8066DE6B80E65E6B80E6368E66),
    .INIT_4E(256'h12FFCE3E6680AE6080376BB16BFEFE2B2BA0AB4B80CBABCB26A0C060AB4B80CB),
    .INIT_4F(256'h8028662080B07FABB07FFA330E300D120E7F300D120E7FA00C0A0A28EB80300B),
    .INIT_50(256'hE0C8FF80E02CCC80CC2CCCA0307FB07FCC80CBE0487F80E62C66AC8060286620),
    .INIT_51(256'h7F80E0B07F80602CC87F80E048FF806074FA2CCC804C2C4C20ACFFB0FF306080),
    .INIT_52(256'h80ACE080CC80E0286080E058E08028E080C8608060D86080A86080C860806030),
    .INIT_53(256'h38286C806046E0802EE080280080D5AC2030DF7FAC7F262C2C2CA646E0802E00),
    .INIT_54(256'hFF80668011E690DA2D2DA6C028D82DB05860803828608060402840ADB0586C80),
    .INIT_55(256'hB6FFAD30D1ADFFB6FFAD8DAD6D20B61F2DB67F467F80BE7F4E7F8066AD2E7F38),
    .INIT_56(256'h2080003620DF7FAD7FA0ADAD2D20C0E6802DADA6DE2DB05EE0802EE6803E1166),
    .INIT_57(256'h9E330E367FAD367FB30EDF668066B7E680665E5EE68066366680662BA04E20E6),
    .INIT_58(256'h406680386680480040E68038668048000480D87F2EFF26D8FF2E7F26B008800D),
    .INIT_59(256'h008E20CE20807F8086A0300036A006A0AEAEAEAE20E6A080302E8066A030D500),
    .INIT_5A(256'h000000000000000000000000228E8E6443A2802036A07F00CE80004EC0EE80DF),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized15
   (p_11_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_11_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_11_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized16
   (p_7_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized17
   (p_3_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_3_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_3_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_3_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_3_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ,
    clka,
    addra);
  output [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  input clka;
  input [15:0]addra;

  wire [1:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:2],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hF21D2F4CE65EAA23202A131740A9E14CC80526BEFE4AA8C38C10212825222020),
    .INIT_01(256'h3D16FF672613B1110DD8F6FE3DFF5E6E6A6483D6DD319A80000A93D772F8C030),
    .INIT_02(256'h56F37A6132210100077D6B4429137758B665EC1D0BFE251174073337D360A98A),
    .INIT_03(256'h00000000000000000000CE22217AED10010CC130610FBD121006039802088221),
    .INIT_04(256'h5CE6843FF9113A9207EC02256DDDB75145332C6A17430A06AA16FD44E38E001C),
    .INIT_05(256'h5CCCAC3CC480ABAEAAA30C23D993C32000DE57E67C5C5C507036040505793EC8),
    .INIT_06(256'h00000000000000000000000000000000000000E4D62B6C94C3C3C353C3B8CC2C),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h2711364E7E8D1318302DBF66B86F14B87E58431008468C62830202CC646AEEA7),
    .INIT_09(256'h063D26E2EF5028313400087F48FD9B5091BA03E180000007B94E9B1F0DE9A596),
    .INIT_0A(256'h29C35DF95C4694D2250B911235100000AC9A04872DF199970510594584518CA4),
    .INIT_0B(256'h0000000000000000000000000000000000000000000010AB776A2A45A202A828),
    .INIT_0C(256'h453E504A2F99FF9541B151ED110CC990014D1DCC333926221B3B941052812A45),
    .INIT_0D(256'hFDB3E376C8191910C0205C9182049DB4F60E6DAF60BB2228822020B322C1B251),
    .INIT_0E(256'hB35A9D2D36D3CBB11488CC7F746F57116931B52B5400C441240701F23EEDB2F8),
    .INIT_0F(256'h0000000000000000EFD82001E7F27CA07D9F3FB8E33F376DADB67B67B5356D6B),
    .INIT_10(256'h363EA0F0DF8B915796AA530DE1003E2A1A03B3376225415B4ABD985BF5F8020F),
    .INIT_11(256'h15AB1153255371B3459DA810F2A0029864C6A0DB3D1A2505880962017F54425A),
    .INIT_12(256'hF9F6F63F47E341AD0D388F3EFDFA5B99A1CA972C524CA44168068E607D16863D),
    .INIT_13(256'h0000000000000000000000000000000000000004D6649D1CB233254105821D96),
    .INIT_14(256'h57B58C789CE7961B9298FC00101D65B12D7A7FF979069BFC1E760FB7EE0F9809),
    .INIT_15(256'h60606021C180229081B87CC3E61E08FFAC223EFD76BA0216E31D1620C47C671F),
    .INIT_16(256'h358D04881B1594E213410C2D00C0F0A22327B81C3277D69920E4EE64EB9A8496),
    .INIT_17(256'h0000000000000000000000000000000000000000007101C83606E30928C6B772),
    .INIT_18(256'hDE631B50A1AC0476ADA6B4384D6C24004066EED8A125555FAA361DFFDFC33C93),
    .INIT_19(256'h000000000000000000000000000000000000EAD6EFD99FEEAEF5BFBE769BEFA2),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h43E6F18164A88C677E10AD5D4356AFB9DB39CDDF95507D99D9DDB9FFF956F59C),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000001001A991AD7E77E6),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h68740DC7A93E72A8270910EAFB3534A61562561A002422CC9085060EA37D6C0E),
    .INIT_21(256'h0ECAEDCCB7E42D95A3BE6C2A824646A28C8C5E80E7EB7E315BAE161412A20C09),
    .INIT_22(256'h0000000134D3572791F3BAD5138D23AD048950D9B4F60DB3122B9151F3189EBF),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h40DD76AE96D54C1818809E8267A6822064C083A1883270FBAD8300B1E7FCD07C),
    .INIT_25(256'hFD5C99F1DE77747692153B35F0D08EE84500B8DAAEE5EE8B383D444D83C8CCA1),
    .INIT_26(256'h00087EB57ACDA7348CA77D33FBBBE836FD736DB1DF7F4D8F3BFA5BAD18E22C25),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'hB8A6C427F14A088AAB30CC879D4EEFFB768891D04BD8B1AC19C18EEAF189A153),
    .INIT_29(256'hE6442F637DF344C021B85090F9D5FFFD4DDD12733D2612D4A14B960E0600481A),
    .INIT_2A(256'hD998D3F42009FD341B45852CAE334FF9204136AF9CCCAAD39000B5F3A01BFDE2),
    .INIT_2B(256'h02FFA8BA7C5FFFFB1FAAEC29DCE84669A5E385A6DB7024A50360049AA0D143DE),
    .INIT_2C(256'h971228E7D3E7A1FBE7A1C606779CC5C3B8F99EECF57BD62DD05EEF12906C9D01),
    .INIT_2D(256'hF7723B0B5851FCC4F7B221172CAFEBF28EADE5CFDD1EBEFD7F5EC683ED2601D8),
    .INIT_2E(256'h8F6402148475FEBF5AED3FF07DCE69D8E3B39FA940509A9CBCFB87313FAE307F),
    .INIT_2F(256'h00000000000000000000000000000000000000000000000000000000703E7F95),
    .INIT_30(256'h52D2A4ECC5BD9A5EAD5F5D9FDAD1A89235B45E236FF0407FE315DC1D7D5B3FA1),
    .INIT_31(256'h798EC90E65ADF47D92C96AD5D56B55D5FAD57BF51DDADC5FDD573F64532B6B39),
    .INIT_32(256'h3D41F7D93DF5ABD81DAC3F16B648520024CB3329E9F941CD812E368CD6D6E9B5),
    .INIT_33(256'h0000000000E56F71A80E1035A2293C7A46BBFCE1FFE774D55F4F3FB85FACE876),
    .INIT_34(256'hF44E7310DDA5333333333203339A7D44AA4466CC4A4550FC568170C1D0741D0D),
    .INIT_35(256'hD1695B2DF4718CE402621AC25005B319878036E0A6220862A79E6EA502B6B901),
    .INIT_36(256'h8392284C7AD5D10628C6FD3CE0F66CF957DA8F7AFFDE63A3A72DF800017C7142),
    .INIT_37(256'h00000000000000000000000000000000FBDEF97B36B7662D6B59301804A222DD),
    .INIT_38(256'h3DF7AA3449FF66E62143240C76F00000000002592640B7702B840051738DFF93),
    .INIT_39(256'h5094925D626932BA050F6FA22EAC148250AC47FF3FDFFFBDE06D9CC19999A5B3),
    .INIT_3A(256'h00102828C8BA7D99EDD3EB18217A75423193E39D5FAF346229D92BE199F9A08C),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h8A0522D2FF9A8E002BE90071BE69CCF2A1FF599F367D706DA3E250BD75F4075B),
    .INIT_3D(256'hF668205558C77485EE87A0071CD946C6710FABD0B4133FF30B0B8152E8842711),
    .INIT_3E(256'hFB70D337CC3EFBAEBED2442302FAFFF9D2A94CD652357C5D848A940912401802),
    .INIT_3F(256'h0000000000C000000380E04DA3FF2DD5D7E8A4DB8709F51CB0BAB2E8B142027A),
    .INIT_40(256'h1948A4B0140040CF9930A061B0E285278C7C5C0008001056F427428002460B64),
    .INIT_41(256'h11CECF807FE5C00900048068909425245081403818C028508586F82458909186),
    .INIT_42(256'hFCC0101D7E5B3F9E800108195EC865596196D6BBC556FC84A9F3716D28998112),
    .INIT_43(256'h0000CF228A1A2840440C42C36162C0F08602111060423155A62D70DA9ACFEFCA),
    .INIT_44(256'h69769B9AEA8FD75677D2C608C883CDF5B4D50F368FD4923713A69CFD7C94867D),
    .INIT_45(256'h9A7DDD8EFA1032F7CECA6A31EDCC49037E4CBF32F1FE0DCDDB9FF9C7FEE9F9EB),
    .INIT_46(256'h9B9369000C826C00B85921D00FE4F42F59E74D6AC6EA01884424809AFF7B5EDE),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000002D6A850),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'hAE5259DD7FAEBF47BFB12EC5AF2FBBBFF9BFCE14467FED2525C59C7CFABBFBD5),
    .INIT_4D(256'h7873CD9678990FFB5A9A350776CF5D5BBAB775AF14AD4AF4B4DD6BDE5A0294DF),
    .INIT_4E(256'h8F994A7A27AF33DDFFF405E2796E1DBDB2D4E5A6AFD8E818B69072F94DAC7E79),
    .INIT_4F(256'h000000000000000000000000000000000000000000000000000000000000091A),
    .INIT_50(256'hDD7FBD4CFEF7F5D7F576FAB74A5AECF7AB51FFEEA6A69DD1FCED7F7D9EF692B7),
    .INIT_51(256'h9AE7B9CADD8692376EF60DC93BA7B27B25EFDA5FAF52B73D6D5BDDEFBDAAFBBE),
    .INIT_52(256'hB339BDAF63BEC7F6AEAE77BEB051F26B613F7DF8AE188C4C44266379F7C23EB2),
    .INIT_53(256'h000000000011DF1BFD471798A56BBAA2E310E9A6B5F0863DDC3EB8F83AB937BE),
    .INIT_54(256'h35A8DD32CB8A1B8CE8C9A6124D5684CCA6E77D4A5ED964DC72F6F27B3E66F28F),
    .INIT_55(256'h0C30000000000009CD8C000005252A0000000339005500518C1E00019003BE00),
    .INIT_56(256'h7D1CFEB83DE2FBE7B7E257FACF49BFFFBBF37BCFFFF6F4513EE9B0764F890E1B),
    .INIT_57(256'h0000000000000000003208FFE69C34E5AE1672395C81094A020085B7DDA24301),
    .INIT_58(256'hFCE70F4649BD8133F514A2233D54EF3B9DA65D27DEB0D296FF4D106EDF3D88AC),
    .INIT_59(256'hEA656B76E7B9188624CB7378424A02DF3ACD93C5891BAF573466612E48B54407),
    .INIT_5A(256'h1D8CB74046DED44AE19365225A1CABF55B7D3D0DBD5FF7FF76620D3DDBAE7B10),
    .INIT_5B(256'h00000000000000000000000000000000000000000000C6535F75C3AC2C2C5EA3),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7319AB8C44202303100102888815AC2C00007440041888838400000001000C00),
    .INIT_01(256'h3142004224009055388CE2F677E10C774BA0024808A911000102038D3AD882A0),
    .INIT_02(256'h14612320088840C0200D2800006399224C83F80320680055607866711120810E),
    .INIT_03(256'h0000000000000000000281220028E5402011801C6003D200000001F000060041),
    .INIT_04(256'hCA397BC00006844DD897FDDB27D6E15105992026287F8F5278156744A0820014),
    .INIT_05(256'hFBC354016D8A830820C20C3221E40000011A576B1AA33AA1CBEBFBF8ECB6C535),
    .INIT_06(256'h000000000000000000000000000000000000008B23DC33762313FDB3A5BE0695),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h1089880004000080080260811100E940BA4048273400080200000F113135B1DA),
    .INIT_09(256'h0405C6F895E4905054000836C8A48D8CB101001800000004561C2804128C5001),
    .INIT_0A(256'h066AA5445813004550022AAC351000006C3804A300502900042ACCCE01108100),
    .INIT_0B(256'h000000000000000000000000000000000000000000001C48000828002A032634),
    .INIT_0C(256'h4FBE52A0DB59792187AA8C177104448C8D0124821102D25273028573608E900A),
    .INIT_0D(256'h20414080020009AC06CC21600E360E1868872EC6886001180810200040680A51),
    .INIT_0E(256'h80000A22912082D000088834C00804020120342810000000000500A0080001D0),
    .INIT_0F(256'h00000000000000087FC71001E40C3CE01009024D211A4830120500500C010103),
    .INIT_10(256'h49C1E3101F8100890701602080000049044082890A004040880081F3F5FE030F),
    .INIT_11(256'h032B1440208312CC43808044C480065464608109648910B0010313101D800B70),
    .INIT_12(256'h5024314A0105E100341088554A18E900E5C9120020482D71400C242128044FB4),
    .INIT_13(256'h00000000000000000000000000000000000000002241BCC8AACE041FA0281705),
    .INIT_14(256'h04809CFABDE4806D01387CB039312DC04E6D3FC6108A58D4949082E151000720),
    .INIT_15(256'h4900884581104100008154CAA6452A2BFCAA8AFFF4E00281290A201816960009),
    .INIT_16(256'h14A40005424CB40200410682008094841060005F107904001488820039E23546),
    .INIT_17(256'h000000000000000000000000000000000000000000051C9C482BE20F890BE143),
    .INIT_18(256'h47994437EE0B76381B4839F390FBB10016406011024066A018C0493B19A56DB3),
    .INIT_19(256'h000000000000000000000000000000000000E27DB98C12A246181D0D04135DBD),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'hC7367E23C1898006027527BD5DEDDFB5F272983000429C244204006282A9AB19),
    .INIT_1D(256'h00000000000000000000000000000000000000000000000150022B190D196B34),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'hE849850616AB497B33A2350094041500244A1447721E415469494C50BBB9A4BB),
    .INIT_21(256'h367832136B696AD0454C47FFC98BAB28148842421030104CD905E8B234E89F2A),
    .INIT_22(256'h000000010BD34D26C711B31A61D2C3C2FACE98024B2B1C49CD658A42A223215A),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h18601061B78500005B809662E3A61EE174C0A3A7B92870807F8D01DB10064003),
    .INIT_25(256'h394D30B17AF042148000041452B40DB75E8B1B00301496D1041ACD55BF4379F9),
    .INIT_26(256'h00097204080253C857464A641200044B54840001E000C49D5C1213595A8883B3),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0BDDCFF81000BD71943F0F0013B52A0208003820203665151BD0101049E1FB02),
    .INIT_29(256'h01324A63186C234422C8AF2B6B424614EF5A218519A3C080A010EB040E000E3C),
    .INIT_2A(256'h2AA990021191109F46BB6AD6409DF77F85229CFBD8EA6159E8622814C0A29CFC),
    .INIT_2B(256'h0320D74C1483732181711242F4504600080C1B61E4E4999B907E364DE0F1FA01),
    .INIT_2C(256'h8308080582D31C5524F44AD329319D2C7FA84A3BC1F3F419EACB3435B70F606A),
    .INIT_2D(256'h9F59373DE9F53DDD9FDC420834279C20028601080148256B80EE32935F640557),
    .INIT_2E(256'hCB5458E18F595E89213E330E216A579494FE9DC97B94CB502153E5A1FAAA28FD),
    .INIT_2F(256'h00000000000000000000000000000000000000000000000000000000343A6F95),
    .INIT_30(256'h8A62DDF105A5AEC42A415C2DF770BC89F4DC129F1C9450727221A214255672E3),
    .INIT_31(256'h0F0EC060B4659C90000392619123457828660F31A6179FE887E10179D406249A),
    .INIT_32(256'hA39CBAA3DFB239A626C4BE0642787F7534EAA34D49EA256F24069C124944A835),
    .INIT_33(256'h00000000000D3D141336A6894228033400AB7F8C6B71D0FC774DFD6317D1520A),
    .INIT_34(256'h61D6D700D35D0F0F0F0F17F8F079930002006C840A1004910166C4BFF10BFF11),
    .INIT_35(256'hDAAE697F94AB0A4FE7421D00908D347B313D7B1694A5E94A5C20241888844008),
    .INIT_36(256'h02D5019309A22042104C090EF2EC2384DE4120440A01C1520E63418001794513),
    .INIT_37(256'h000000000000000000000000000000007B64789E3C5704446A2DA008818008F0),
    .INIT_38(256'h2BAA40354D88F452C11A13F0708000700000039E3800B7C5EC84012CD9146D6D),
    .INIT_39(256'h112607C112240A75160E7312722CB041526702AA8DA40000007FD0FE1FE1F925),
    .INIT_3A(256'h001001F84963EEE9CBF82806E00E066FC62C20518081D5018F88C90FE724210C),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'hD2F2E744AA17CFFEE8BD08809DE9CF01D8F0B2613894C8F5272FE48955E403C2),
    .INIT_3D(256'h004823764261181C90D4ADE3F00EB0065B457EBC24322DDD1B34E7CCA4A4849A),
    .INIT_3E(256'hFE85C60737AFABEE2551BA210F898B8B760A52494201745C327AAC59474A191E),
    .INIT_3F(256'h0000000003C0000021010243A216A05C0681221903C5A09420302A4C9811570A),
    .INIT_40(256'h538A9216E84CE0812E4DF0412D60002788961120083810095101930000083BE5),
    .INIT_41(256'h000449C67A1900000A204428229C2252992008A0B11AB4A8A5E4B10848A46384),
    .INIT_42(256'h3EF9EEAEAA3FDD608200CC5455DC655161554A518F37ECD4CFB1607120002088),
    .INIT_43(256'h0001D3775D3CB492B071CF0F87871ACFE9FFAFFD9BF5C366BA013A65BBFE6D0E),
    .INIT_44(256'h51C76AA1F6B930263500D295EA062136360984D48CA7332112040AC002B4A841),
    .INIT_45(256'h935140402A4250C00E88AA35D0A2D2D2447CA7D91E81D10DFB24791FFE98DA5A),
    .INIT_46(256'h694BF80083C81801F06984F019ECD479C4C498C087290240008000127B5AD6BC),
    .INIT_47(256'h00000000000000000000000000000000000000000000000000000000030D0809),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h94A0827F9CFD2498CCC24FBAD41082085296154E5BF982CAC80AF950A5157922),
    .INIT_4D(256'h068826A105287081455E8CE95BB2890402080808801318420A220231AFE2680A),
    .INIT_4E(256'h309A3487C22400206E746BFFA88D9E3E54A52B9A400E6068270E805A2793010B),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000788),
    .INIT_50(256'h04082E804240FE62002234C0B5AD730010809942C0C029E8D4CB6C0221656459),
    .INIT_51(256'h2732F500044A94F6818D0B5002608108180C0FA5122D44885720001842040631),
    .INIT_52(256'h3E2D09E46AA23507B055D6103C822DD2412D589578D9E9604C40288C58BF2345),
    .INIT_53(256'h000000000004020C0400CA10A280055D04E93750329270D02BD0C1564156E610),
    .INIT_54(256'h8000E5028A248A084A0008492A2953680BC56880AB6CDD021D768024A6896970),
    .INIT_55(256'h33F000000000000000009CD8C0000052929D6400CC001800032018FC0CE800F7),
    .INIT_56(256'h5620C10F954194607035000510A2B1BDA2404883319031A2A517BC01F38831F8),
    .INIT_57(256'h0000000000000000000367011000800000091018042F7BDEF7BDE9288C4D84A1),
    .INIT_58(256'h5E37F020264BE9914AE9E99DD42333B755D5A2DB217F377251E20D1034C2FF57),
    .INIT_59(256'h35C35829E302D2903C60404B4A98A0860172E578EFC594F10960098BCD0E999A),
    .INIT_5A(256'h1600311A99E70D3742AD1AD4AEFCCDA44E82CFF32B290ED3B2DD67B024FA8DAD),
    .INIT_5B(256'h00000000000000000000000000000000000000000008C891500A00429292AB5D),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOADO,
    clka,
    ena_array,
    addra);
  output [3:0]DOADO;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [3:0]DOADO;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:4],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h23223402BB1D54140E3990E000E611100E034B00043005FC740C12204811177F),
    .INIT_01(256'h61412A94860A280058880918029080148284080000880280004440204060C014),
    .INIT_02(256'h0080002880A95958AF10418008091090200006C2600553000081E22200029798),
    .INIT_03(256'h00000000000000000001461010E0ADC2709D86020006F5180002000781001141),
    .INIT_04(256'h0886240911110ECACFC6D86F05F7060008888100328030B8008800CD06191121),
    .INIT_05(256'hF03F7C000D090410414510407E14002011C020A86DCDC4512157BB6C6BEB7241),
    .INIT_06(256'h000000000000000000000000000000000000008234574267231C00A333F69CE1),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h148900B10403AC20100261001302F178BA50420840A314414A0804220A828088),
    .INIT_09(256'h0431E7DA67CB001114000E34C8A58004731902C8800000000097438C42040209),
    .INIT_0A(256'h07AB0A9D1814849000010003B5901FBF0D38005200A1710894842A488DD7BC20),
    .INIT_0B(256'h0000000000000000000000000000000000000000000010480026960AAEC3E664),
    .INIT_0C(256'hBAC1AC2A0FAD3E260DA6E6CE018154A8828192447992D0100790CD313F81C140),
    .INIT_0D(256'h204000000019900080010811000C041004020480400001000212600000684FAE),
    .INIT_0E(256'h063180681408BD32246044161C26071154144141A00048A01400000008020100),
    .INIT_0F(256'h000000000000000817C00801C00C0004000A1A91410500080A0210210060C0C1),
    .INIT_10(256'h103554105F80622461AA934DE10000B8DB613739F235DF9B4A3DD8CFF7F9FE0A),
    .INIT_11(256'h0E4913207C9D729CC39850910280824C04E5202701D3BD5F090CCBF82B9C0900),
    .INIT_12(256'h33D6C6151EE030924528812836A212F9E0D697AC528C8801400149413D0E6E1C),
    .INIT_13(256'h000000000000000000000000000000000000000034E715D09BFC614A0B6C3EBA),
    .INIT_14(256'h299D18C331A39E851F5CD4000133AC19611DFFCC588CE59A85E509651F0FDB4C),
    .INIT_15(256'hE920C060C1806207BDBD90AC8574B3AC9ACCEB24C82ACB642B12223814F26112),
    .INIT_16(256'h31A9303DC209ADE2337E2FAD2F45308B842609D80869F2E84EA74300139AB6CE),
    .INIT_17(256'h000000000000000000000000000000000000000000340377013CE69082314673),
    .INIT_18(256'h8C31ED10208C80321B0279C304779020204070141200E8008D844BB1B3374120),
    .INIT_19(256'h000000000000000000000000000000000000878810540003470C0919049648BF),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'hCE420131200042110260A800B2020000080004008041A1081081080408010201),
    .INIT_1D(256'h00000000000000000000000000000000000000000000001013EA07004F7FF140),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h88D91D4C056F37E802080A760B77A29906D5AB0140040E0200002122E01C1440),
    .INIT_21(256'h08D0A4E10012D84701C2900020002806806A1C20426806760B2F027101400A1A),
    .INIT_22(256'h000000090713EDB4B75C99CC1122018A00E548DAEF6119C05C4582205E088201),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h13914223B4D54829530B82488451D8C51C02245423950A62B90C4142FFFCDF3B),
    .INIT_25(256'hF945B7B170E05B38040054084020008310908C8628E5D0F9C08BB9D5BFC14908),
    .INIT_26(256'h000F7E44890A01009146002090400500289154A5EC5220422BA456807322743D),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h1CCC13FF93204A2D2FC3F0800F204714020938A021234700B5C5292059E1F9F8),
    .INIT_29(256'h67542B6214C5241BD81F44208035FBE30C1EAA69386682C872A3F00000004690),
    .INIT_2A(256'h480141300018B82020864508022000FC5244600EDCAE610980A160E9004A6470),
    .INIT_2B(256'h0188C3006802666494820D0A14D0C2C1014D1F6080E00048084A500422A0E85E),
    .INIT_2C(256'h44280823020404A4C681805220404002407955C40108821002F41308112C0554),
    .INIT_2D(256'h17D8F320D1F541CFDEFE2117042F1C420E0E240C5D1A267388DEBE300F520007),
    .INIT_2E(256'h0A5484A19D556E9B7B71B4620801009426FD09C97B919B9CBDD7142DEAAE3BFF),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000034286714),
    .INIT_30(256'h1024492207E33F814A40B409D11047274C44517484C618D3232305D3E37455E4),
    .INIT_31(256'h2B5EAE01343C941DA49200FC10784020183603329408A940EF6100DF8BA14A03),
    .INIT_32(256'hC794BD15BFFD31AD3FCE7C4E825D5C65A5EB3769EDF14225235746A16D3C9D6C),
    .INIT_33(256'h0000000001DA954ABF67769E22A0323A88B225C841A109DCC15FB4F235E24392),
    .INIT_34(256'hB6C92FFCDF3D00FF00FF11980F06AD0009112484011001E51E0050000EF7BD0D),
    .INIT_35(256'h241AE1C226274FBC82204C1931946622180B124894A6894A6BEAF3CE1BA36D2D),
    .INIT_36(256'h02D5085878F724801000181CC98081C41F8500080C48C05C0452100001E34D31),
    .INIT_37(256'h00000000000000000000000000000000EDF580966F0882210124900080000241),
    .INIT_38(256'h274D41728701822A66AA200C0700C0000000001FC000FFDFEF840004111FB1DB),
    .INIT_39(256'hF249E83AEEFAE6201AD0C053557AA4455AB4C00019300000007FDF1E1801C1CF),
    .INIT_3A(256'h001C2B1C091B6EEA09FC54139A8085650000541581712A80ADA4C90FF7642204),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'hDCF6C5D4391D0B06C6B8ACAA0FE3F0029F77F377FE9DAF658B7CC468EFF281CB),
    .INIT_3D(256'h90251460637CCB5A47F0FD88C59F3F79A43C9401A2CF4001089645C07C9C5F1D),
    .INIT_3E(256'hC801A6877612A3EB25A8962319C9C187FC52416D3940C1B436D280A877C4F8E2),
    .INIT_3F(256'h0000000003C00006358BE2F7CC98215807903010220023240400006020621BCB),
    .INIT_40(256'h5B823206E84DBF12041D50402DCD3AB779B391D73DFFAD611564ED2C72E67B76),
    .INIT_41(256'h00831802C8BC88108A20C40022094252C9200020911AB4BA2544B0084024E384),
    .INIT_42(256'h74F9FF2BAA8EF78279FE44007DD4655161575EF30777E8F84FA1787004800002),
    .INIT_43(256'h000012375D3CB4D0A471CF0F87871ACF6DDDAFEDBFB5D2449A12E275B293653C),
    .INIT_44(256'hA6F1FDEF89F4C2AE204F09575900254BD9D510948594240103069028AE97C068),
    .INIT_45(256'h9C77458B32290080BE7E7593F8C52E7111F41CB4D6A8EE4902B99EB99DB74EBC),
    .INIT_46(256'h7BBA3C008580D82DB21F29BADB49BCC947C69CDDAF68104001040212694AD694),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000003A2274B),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h9302829FE4F108813522E0B212525112B0095A9E1BA420CCC8886C60029FDA11),
    .INIT_4D(256'h46AB692D6C2142562BAF8E02BAA2A424804D888088552998926020312CA0808A),
    .INIT_4E(256'h58003480022455684CC191FFFFF203BE64A1002000AB051D1EAEBA822B336D30),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000880),
    .INIT_50(256'h1581D40E04017F9C5310447294A10240109744984A4B02032A12013332666408),
    .INIT_51(256'hAD5CF4C812070270A4A408504145555558A1952A9525191412623104262F1250),
    .INIT_52(256'h80D6D402EE61DA5057D24AF283BE9014DEE4CA6E07F0F2F28A114118D1BF5DD5),
    .INIT_53(256'h0000000000382862708BB950A0AFEAA204424040A6110082EC854F09DF480AF2),
    .INIT_54(256'h0190E00410E6D0CF286EF3E5992109A25809CAA5A10083000088ADB840990100),
    .INIT_55(256'hFFF00000000000063273000008CA5100000C80155003A00F0063C8000E801DD0),
    .INIT_56(256'h05BCE2402A0336CAC1F2F1F78C535FBDAAE8E04777A314922DAF80003C7DFDD7),
    .INIT_57(256'h0000000000000000001876011932C99649161D9E8F600000000011CDD5844B80),
    .INIT_58(256'h9EB7FF100248488148FFCDD88DBB112641453093087FFFA90884200014006443),
    .INIT_59(256'h77831A80A305E5197A96AAE77BD6A8965032603064A433BF0C80203A9F6C5BF0),
    .INIT_5A(256'h1F00311A9F7F7937C9BF739E2EFECDE66ED9F23B2B3B6EDB3299B0D4CC5AB90F),
    .INIT_5B(256'h00000000000000000000000000000000000000000006CE0408FFF68C92922319),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2743DDB3862200283DE9181FFEA5C1208279E059619FFA8427E2C4FC928CC091),
    .INIT_01(256'h39EB124A1BA456089FFC0208852739807497042BA24267400011300CA923749B),
    .INIT_02(256'h208C84B642302E2F16D296135CEDDC7B36A3054AB5F089088A017BA9849040AA),
    .INIT_03(256'h00000000000000000001EF29CE5F5B25AE7F59D9DEF57E85E4327DC83CF76C96),
    .INIT_04(256'hCABF7FCFFFFFBDEFFFD7F8FF28214600288885052B34047054018A8945151129),
    .INIT_05(256'h100170020D88A20820C30C3140040059054060ADE7762671A3DFEEFAFD87F330),
    .INIT_06(256'h0000000000000000000000000000000000000061741F403A628000A2BBCFD8E5),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h1D8908002064A0A0090261890500F2383A404827340000000000062A2AA2248A),
    .INIT_09(256'h043420006826A01114000EB6C894802CD33902D880000000949F4B0D562CD413),
    .INIT_0A(256'h00C325C80802004110F0088834A0000001000D0312100920080A6A4E9DE338A0),
    .INIT_0B(256'h000000000000000000000000000000000000000000001040006FFE052D626000),
    .INIT_0C(256'hAAAA0282D96AD4581685121F510840800C003FCE802004006222096350CD181A),
    .INIT_0D(256'h285010A1420223AC06C531600C37871C1EC3D7FFEC31110C471DA22264492AAA),
    .INIT_0E(256'h7BDE9585424414A4CF37770B0228850002D34B1711B1D306CE00C80902409084),
    .INIT_0F(256'h000000000000000007C00401DB638006388A1E54500524A8EAC69E6D67BD7972),
    .INIT_10(256'h829F4A516A810265076B4FAF610000383EDDB7BD6D7F01192A7DD97BFBFFFE2F),
    .INIT_11(256'hEA66AFEBFF7AF888A211FF9B5B47115DFFF9610B01BE07951928C137373C0050),
    .INIT_12(256'hF1B6766B81794520B41508144C190100FBFE9427CF73FAC9435545E44FABFE7C),
    .INIT_13(256'h00000000000000000000000000000000000000035A22200881624FDFE1901F9A),
    .INIT_14(256'h2195CE7018E71789133CFCB08020011820863FD38A72B19F85B4AA390E01182D),
    .INIT_15(256'h5B20000500100000813CD5E6AF3599AEDE666BB6FFA208001B7A004400042023),
    .INIT_16(256'h3AF3C1122CF617F2FF0108A4A0E23C52083E8987D111D58A94A59115A23E8988),
    .INIT_17(256'h0000000000000000000000000000000000000000004009549135F4910A53E55A),
    .INIT_18(256'h0211A02880100122031059EB20B390140840500510480800818400888A90A2DA),
    .INIT_19(256'h000000000000000000000000000000000000E175EBC900A40414141080051460),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'hCA22FF99A942B18B88F07AA6AAAB52A46AD41528AAD10EC66C66C6340A20200C),
    .INIT_1D(256'h000000000000000000000000000000000000000000000011D0027F3FAB3B63E1),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h90467702AAAD8D0821511F2A0F7F321B02C7BF090FAB2E449CE525AFC72530CE),
    .INIT_21(256'hCA3AC48A02A00004000445555232424D0750F29E1091B84A280C9245D38656CC),
    .INIT_22(256'h0000000EFC7C824820192BDF32C89010AA554888EF6318017C6E8070EC921F18),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h415C55725DAA9BC01C49372F575543139997C373D5E7CBE2C9C1D899E7F15F1B),
    .INIT_25(256'hA8A776B1816D41A88000001E92050C246858D48D4AA141899C5174C954A84B29),
    .INIT_26(256'h00070C68D1B0909FC7120109104A05927CD510074EFB64FE2BB745DB8C84D560),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h141A5FA311D7C20E3802008040004D159E94F9D0230406C547F59DBCB1E1C5F4),
    .INIT_29(256'hEE767BF39CE1061FF897CF0D4C3DBDE5EE7957B9D3262FD181E7700146004820),
    .INIT_2A(256'h0089C1A94A4DEDB9647E2FCF1BB9A4C68D62BCF2F8CE700848C353D898CCF810),
    .INIT_2B(256'h01880005FE25115AFED37F10A9850851434104054B330C901A2A740870C18B94),
    .INIT_2C(256'hAE43B46ED09F81F3FAF5C2A55327FC523FF91ABF9AFFF249CCBE2FB9B0624FBE),
    .INIT_2D(256'hB5D4F732C4CD55DDDFF6635FA027383BCCEB7446DE5B376300DEBCF39266A962),
    .INIT_2E(256'h0A77495BB679EEDB7B71BFE08463109804A9D5C064599B9CBE7B17B31F3E317F),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000041CCE73E),
    .INIT_30(256'hCAD291284BFB302A1F56F12FA43B453EAD4ED5EAC057DE015D731CCA9A69B405),
    .INIT_31(256'h3CB22E6CFD7018F9001D9FE817F05F45AAFE6047419776AD4AE0A6DFCAC9896A),
    .INIT_32(256'h656A86E9EDEFEF21C022D029993530071719D54424919A262A7DD73200AADE84),
    .INIT_33(256'h00000000013D142D9B661001600855B1249076F423B09CD8A64F67BD27262190),
    .INIT_34(256'h6920F8F8B0C2FFFF0000E8000000375089410000004140F41E60807BDEF7BD02),
    .INIT_35(256'h7FD54A2890AA4DFBE3070FA4824B29048290259F18C7718C70170831A44C0252),
    .INIT_36(256'hBCA9DFF302800B7FC1BE27239219349386384070000241D16D69A1800165965C),
    .INIT_37(256'h00000000000000000000000000000000F175FA066C1CC1046836D659DEFFF71F),
    .INIT_38(256'h01AA8C218F2BE0A8C2001AA24870E0768A015BE00070637A00840300400148B6),
    .INIT_39(256'hC6EFEFF3EC3BFE111ACAA4C11D86F50C08FFC4CCF20AFCC200011FFE21FE3EE6),
    .INIT_3A(256'h001D2C6C88CE88894752DE1D5BDAD5DAE709D6CF7B5B6FC3BB24E9AFA3738401),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'hDEF2FFB5AAEFAB1AF5DEA63FFA038002E2E208194E93D53A8A86D74EFB9A8F17),
    .INIT_3D(256'h95F5D7D88009101DD6D1F6E564629776E2D57E3D7AA91B311AB63B122BD97576),
    .INIT_3E(256'hCA4D34A6116D4C0B0DD5226380B805D781875200AD66A9711B797FF7E8BD47AD),
    .INIT_3F(256'h0000000000C00004B104A97FB07AA9B798582C1602082F05E1E1E1F843C79C13),
    .INIT_40(256'h1B2EA01DAAC4C0020817FD542DD0402508B49720001800430D64FF0002E63AF7),
    .INIT_41(256'h48DA0BC0A018A0600360952C62D180C2FD4805265101B0B8BF8CB2004DACC9D5),
    .INIT_42(256'h7AF9FFAF92EFFF878400CC5179DC755561575AD3D55EEDD089FBF86766C41443),
    .INIT_43(256'h0000D3A30C1C34E4A692E32391930BFFA5BE0CF4B3C4AE4C5B1AF67FB2AA37CE),
    .INIT_44(256'h02C92A218080016537F2E25B554834A921FE1FD0E76BA4918D529233B5B3E1B0),
    .INIT_45(256'hE07B15CDE63819191E1DE59585CE4A9100F474D918D711CDDBD0180191904A18),
    .INIT_46(256'hFB5288000FC0D80DFADF8DBAFFEFDCA969A67CD38F5EA56527B64E9359DEF7AC),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000323C54),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h861F96D570004E23BDA0FEB8C4531808D289528EDBE4A20604002FEAC3DF8BB3),
    .INIT_4D(256'h462B6F856C428201652DDA411E820544828D8A0A90874A939A6002A12E0D878A),
    .INIT_4E(256'h0A989CB7D040DD40A2341322780263BFB18C63B010E0CCACBCAE3AF82CA36D39),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000052),
    .INIT_50(256'h248AC0782829D5E0511161E0218C436A443144D301002800294AA53333030201),
    .INIT_51(256'hA660A59A702C8A7004A42910C0C91091000180804188419857840208C6510673),
    .INIT_52(256'h0C7FC8727801DE01FFF1CFF90FDF0C0200000006007460600C806118C19F3DD4),
    .INIT_53(256'h00000000000000840010EE794AB8AAF59CEA52419490009038C4FFC7EF860EF0),
    .INIT_54(256'h7C00E1628AB4829448485A1B438C568818814800AB4EE50024D4A4BA0F094500),
    .INIT_55(256'h0330000000000000000063273000008C652057400AC003006400078630672007),
    .INIT_56(256'h38BF3B6FBE4FA2EAFBC2FBF39CD3AE844CA5257447B3A4962D308330FCC7033F),
    .INIT_57(256'h0000000000000000001F11D769B24D92691C2D068365294A5294A1E759C04407),
    .INIT_58(256'hCC87FFBA024AEC916FFFEDDDD9BBBB3755D5BADBAD7FFFBB59E6ED10241032C1),
    .INIT_59(256'h57C2D6696039C0103CE222614A5280965816231425148CFDDE3F5BAA7442D478),
    .INIT_5A(256'h0D04733F8EC660022A14294A8A5CCDE66A5BFDC9633B6EDBBADD77BCEEBF3D0D),
    .INIT_5B(256'h0000000000000000000000000000000000000000000886010A75F29E929235A9),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    addra);
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [14:0]addra;

  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2778DFBFF89FDC554BD4883776527995167BFB5965B775D09BE8D6D4DA9DD101),
    .INIT_01(256'h559B6DDFB99EEE5FF770E9E6756739E3BDB30E6BAAEB77C00101E3A5F399302F),
    .INIT_02(256'h34692794449977F7FAEFBE93549DDC7B02A212A8CD73FA5F88FEDDDE55A25230),
    .INIT_03(256'h0000000000000000000056115A8451875AFB16CEDEF10D0DE1306C283DF56886),
    .INIT_04(256'h8A5DDBD6EEEE80051039258102284090859990324408A1258716451228A22246),
    .INIT_05(256'hB8010000040105145104104340000000111A776E9AAAAAB0C2A8409080040D30),
    .INIT_06(256'h00000000000000000000000000000000000000602F94F82FA12FFEA1215D30C1),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0001A6024EEBB3B0BC290C66A900E0302000082314A118034808048008848480),
    .INIT_09(256'h04300000EDC5A040C000040000000028712800500000000404A1000010005200),
    .INIT_0A(256'h076809D55495A09004F0000035A0000001A20E7028E170DF50A4000998823000),
    .INIT_0B(256'h000000000000000000000000000000000000000000000C0080A4040A0E404664),
    .INIT_0C(256'h00000214DBE72B801A97FBB1234C03006E007FC686464BCE784431F230CC18AA),
    .INIT_0D(256'h2A5414A9521BBA2814EC22E82CBFA75D5ED3D7FFED155445554006662DCE9800),
    .INIT_0E(256'h7DEF17FFFF6EFB16EB5FBB20D695AA91DFEFFEFEA5B19BAEDAC2DA0942509505),
    .INIT_0F(256'h000000000000000687C00201DB63810EAAA95E4735486DB2F0E9CE9CE3DEBAB5),
    .INIT_10(256'h0015F4091F86E19AE094B0720000008805BD929D9FCAE0CAB5020A0408000070),
    .INIT_11(256'hF4E66EFB82B69A7722EC076C8D461544D679434900E5BA6A00971EC881D9600D),
    .INIT_12(256'h1844A174C688AEDB68AD536931A2A295BEE3498BACB777BC2B5AE22592B55860),
    .INIT_13(256'h000000000000000000000000000000000000000324661DD51A9D205412442601),
    .INIT_14(256'h76BC5ADAB59848F44C625400352CFA8947DC402FF1FC6AC39149DDE440F608F1),
    .INIT_15(256'h76D68C57E95D53504241828C1460330128CCC14948D9F1FD75E5383C92224410),
    .INIT_16(256'hCF7FC5BEAEFAAA09C482914A8110D3682707B19FEB6C3303064A4653144B726B),
    .INIT_17(256'h0000000000000000000000000000000000000000003583FF0016822E74214224),
    .INIT_18(256'h4F19E03F6C1FF7190C02220004400048084020140000C400180163139124C369),
    .INIT_19(256'h000000000000000000000000000000000000E6800050100382000A0800861855),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0800808B48C85AD4D005251941448D1190A688532E91B54A54A54A42D0CCC994),
    .INIT_1D(256'h00000000000000000000000000000000000000000000001C8000522600000001),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0047368582A80402860080002046060100130400078E0C0008418220C1010006),
    .INIT_21(256'h004084E80012C020001000002000000107D0A21252B038078806010000A34A4E),
    .INIT_22(256'h0000000602A0A000504C8420192009000260000020400510650000001C088008),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'hE3D034617E4B90B866970261A4AA11A7E5576C877B183088160C01421809E028),
    .INIT_25(256'hEDEA470039611B1C04005004440000823C081C8E6A882F60CB0810A060200282),
    .INIT_26(256'h000F004081180300420397405C38A800294793C14C52D45DD49202D0E7C0005B),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h040A2FFCEFBDA28030020080002025559C94F17002030780A5C12028560E04A8),
    .INIT_29(256'h46D5311084A1025BD84F818342579975AE1F9BB8C6DCFD3FDFE7100586004388),
    .INIT_2A(256'h0001512D6A4CE8A914022D4A02A8A096D34654F44422505C821021D884086A50),
    .INIT_2B(256'h038815C42A06663000921C08288000000000000489B20441424100202700F194),
    .INIT_2C(256'h6E63B448D20EC0A3C00180032266306200B802421B02040000740F9880240F80),
    .INIT_2D(256'h1DF2E080BCBC2911280421100180006100AC000C014000000800008200454043),
    .INIT_2E(256'h8E54FF5A39451E80002C300B00010490000019895ED08A5B3353C4229A2821DD),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000006DA7F14),
    .INIT_30(256'hCAF2C90CC0BDF0592657111B2219840944E65694558596563041B21C6DFDD142),
    .INIT_31(256'h3802000D757019F9124E6D6896B15A85BAFB67F5CFCFDF65E7E9AF7F9ACDB7AA),
    .INIT_32(256'hA3F4AB71DFABD7805126B040137C709A748BF3DDEB6A45A625080F0C92C4EA14),
    .INIT_33(256'h0000000000E284748FD847B0440006D000A227B8C13300F040CD266E15C24683),
    .INIT_34(256'h0400F83890020000FFFFE80000FC394009412000014100000020007BDEF7BD02),
    .INIT_35(256'h00007C99B2227008821A084084002422121B248118C4118C401428A140140292),
    .INIT_36(256'h94A895A008800224008C2D2829E8255507812070084AC1D1B18BA00000E20820),
    .INIT_37(256'h00000000000000000000000000000000F685380A5B052669131B64414C77640E),
    .INIT_38(256'h6681B36349210808E129200E7870FC46BC013000000070DFE084002C91149069),
    .INIT_39(256'h70A9EDEAF43C46201CCA4432C6284BCBF777ACCCE832578E007FD80039C0C004),
    .INIT_3A(256'h000CD18481FDCCC95F56E20FF0145DBFE701E2FEFB8BF14377A2E1AD8133880C),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0A201825010044F80A4908156D418000F1714808308220FD0357B2B565E40D96),
    .INIT_3D(256'h044821ABC22C4818828000000000033440E0D416940A16EEE0004D9201288028),
    .INIT_3E(256'h9B61E7A72212A2AE626C92210030C459824A4C9242255D91093179068831060D),
    .INIT_3F(256'h0000000003C000021E010B277BFAA9AB9FE0000248100200C040C0D00183E056),
    .INIT_40(256'h19000004A8448089224550402D400025089091200838905D7628C50003B6BB64),
    .INIT_41(256'h000A0AC0D89800080020040022000042890000201100B0A82504B0004024C184),
    .INIT_42(256'h32F9EFAAEABED57A0000445079D4655161575AD10597A8D409A1606004000002),
    .INIT_43(256'h0001F2230C1C3480A010430381830ACF21BC0DE49784921B5A32A261DBD625FC),
    .INIT_44(256'h20E1E2230C002D2D2ABD25141449769304A70BD7E6DD93832000085319B1E012),
    .INIT_45(256'h806D1056E61120D50343BADF24D2DA5234746CD8800612A0004C108140810A30),
    .INIT_46(256'hC30FD8000788DC05B0FF8592FFCFB4B9C4AC5C5FC5DFB52D23124E022308C210),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000151056),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0220029565F00A0131084030019A1000800140948220000004A0000040000091),
    .INIT_4D(256'h4F6DBB15B61B9100943800A310821299053689406734945C9580D01418000871),
    .INIT_4E(256'hAA409C8012648828CCC01122280183C1908420A01061C9143EAF7681382BB5D0),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000112),
    .INIT_50(256'h44B4CC80404555A1200150CC00003A4A401000000001002A0800000000000205),
    .INIT_51(256'h0040A488658682709B5BC62204B000000312AF8FC6840D6A000944B1088142D4),
    .INIT_52(256'hB0885D86EEEA217600861002B1003004DFEDDAC00C1D9B9B8291500040880040),
    .INIT_53(256'h00000000003C220C060802D00000002004420000221900420001001880180022),
    .INIT_54(256'h4000E58208C258E7326EA3A59100168A500CEA25010002108000000860100000),
    .INIT_55(256'hFFF0000000000009CD8C000005252A00000AD800330014018FC000320F7400CE),
    .INIT_56(256'hF6800000280014410001000000000284000000000180000048A07CC0000FFFFF),
    .INIT_57(256'h000000000000000000200001000000000011391C8E6A5294A5295E0000098820),
    .INIT_58(256'h9EB7FD32000AE12177920441108822111498020A21324A4B5C640D0024102A81),
    .INIT_59(256'h212318E9983B370DC29004014A52D5B2C81423142913094D96C38EAD738657A8),
    .INIT_5A(256'h1604733511391D358D42D2942720000224810BF2480000000100800000002040),
    .INIT_5B(256'h000000000000000000000000000000000000000000068894500A005000000211),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module rope_memory_blk_mem_gen_prim_wrapper_init__parameterized9
   (p_35_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0018403C3D81DC5449DD2C066774039115A00800002775180B89C2C7D84CC146),
    .INITP_01(256'h6E304C5C35CEF60047730157300631E1DC3304408A27644000F16C05C35CB93B),
    .INITP_02(256'h094C838E6800061708EEAE0A5611980E06A9028A1801DB0009FE9DDFFDAF1859),
    .INITP_03(256'h000000000000000000020015CE1999871E601EC208406609EAD94C00D0431CD6),
    .INITP_04(256'hFAD8DF97FFFF80AFDC29F068A001001B8F0072B2C40000040004EF3029A2624C),
    .INITP_05(256'h07FF77FC5B5C828A28A28A287FEBFCFCBDD296D00000400DE7A8FFF8EC0357B2),
    .INITP_06(256'h00000000000000000000000000000000000000826BD6BA30002FFFA020005157),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h56A926A36A98BF6029AB6C7EEC02E0700EF4DF6A566A59EDDE98055555515914),
    .INITP_09(256'hADD1DF010A14229C1C80A986FD97AE100195932AC00000090C400B321A4D5825),
    .INITP_0A(256'h4732285604741981054200800047DFBF0E3EA05A3BB198861C4C8C8831452128),
    .INITP_0B(256'h00000000000000000000000000000000000000000000101C083642AF20683006),
    .INITP_0C(256'h000001BFA0000000000000001602B870EA01DB6CC8F89618D5FEC5A6470828F8),
    .INITP_0D(256'h060C040812A00031F48C3DFBE9A6A75D03D3D7F83D35544555424CCC1809B400),
    .INITP_0E(256'h79CE07C7E24C2D02AB57BB24008DABF48BA3BA2E25B78AAADACAF20541505403),
    .INITP_0F(256'h000000000000000863C000031B61810ABAA54124B440491070618E1CC79C3022),
    .INIT_00(256'h38E08038E0806038C0E08060A8608060B0E08060B888A0B07FA08028A030E0F8),
    .INIT_01(256'h1CA0A8A0B0A830C0C0C06080B0E0A838B0E0806000C0E080B8B07FD828B0C040),
    .INIT_02(256'h80C060809CA880C06080B03D88A828A888A8A8A888B07F2080A8A0B0E07F3838),
    .INIT_03(256'hFFA920603B80A830C058C0C0608050A8E028A81BB038A8A09C288040E0809C28),
    .INIT_04(256'h0938B8C00938B8B07FB0DF48804960A9A9A029A9A9A9A0F860807FB0381C2060),
    .INIT_05(256'h2060FFCB7F89A0B038B87FB0DFC980496000387FB0C038932F29A04009B8B8C0),
    .INIT_06(256'hA9A0B030B01F28B06080FFA82929A0B04880A9B04880A8A82060FFB07F20381C),
    .INIT_07(256'h8038A9382AA0A9A92A20502800803CFF8A30FF29A9A9A0A92980B83838B829A9),
    .INIT_08(256'h80B0A900AA204000D8DF7F30C0C07F58DF7FB040C07F2A40AA2040DF0050A880),
    .INIT_09(256'hC0C0C0C0C0C0C02A38C038FF80C838B08AA0A82A30C06040E080D080AA4980C0),
    .INIT_0A(256'hCA802A8040804A802AD04080AA3040608000A8A080A82A1AA0A8C0C0C0C0C0C0),
    .INIT_0B(256'h301F2A400030FFAAAA804000007FA88080000000A0B0A080484058802A80AAD0),
    .INIT_0C(256'h7FD0280080A9ABA92BA0A92B80B8B8A9AB80B838A9AB80B83838B8ABAB2BA030),
    .INIT_0D(256'h20B0E03D8B28A8288BA8A8A88B2B30C06040E080D0802B30E038D8DF7F30C0C0),
    .INIT_0E(256'h2B20400058DF7FB040C07F2AA0A84B804000B01F50A8808000AB002BA0AB2B2B),
    .INIT_0F(256'h20408CA9A8A0B0AB200DA8A06080A9AB8038E08D30387F1E2B4980C080B0A96A),
    .INIT_10(256'hA8A0384038608038E080B07FA000B0002C6080B088ACA02C7FB0E0B08C2CAC00),
    .INIT_11(256'h2000002C60807FA08038B8B83838B87FB03D8C28A8288CA8A8A88C28A828B01F),
    .INIT_12(256'hACA00DA8A06080488D2C2CA0380DAA20A8B0AA208080B09F002C002CA02CAC2C),
    .INIT_13(256'h80B87F8DB81F2860A080A8E0A080589F3F38381BA87FB07F2029C8484C804938),
    .INIT_14(256'hC06080387FB0608060BB60A03A6038A7A0E08027A0608038ADA058F820A8A060),
    .INIT_15(256'h2D2D2D20B07F3C0DA828B0ADB040C040A80D306028A8A80DC88000C06080B8C0),
    .INIT_16(256'hC8A8CE804A85962EAD2E7FA0AD2000AD002D20D87F3038AD2D2D20B07F303838),
    .INIT_17(256'hAE80C0E0B0A080387F30A080A8FF80D8FF80A08048E0B0CA6080E9D8B8A8FF80),
    .INIT_18(256'h30C058C0C060805058C0C06080ADC960806BD8B8A8FF80C8A84E80DF00B030FF),
    .INIT_19(256'h8030C080C07FA0AEB0C0E0A880802E30C0A858FFA880802E2E2E1B2EAD2E2020),
    .INIT_1A(256'h2E6E3858C0C0608058C0C060801C6A6B0166F6C5A8C32DFD32801D0D286080B0),
    .INIT_1B(256'h2FA00D28A85F80800030B0AE2E7FA0AE2F2F20C09F3038E9A880802F2E1BB0EF),
    .INIT_1C(256'hDF808080A85F8080001C6A09FB1C0CBF70DB0EE3F4410A9F734F2D801DA828A8),
    .INIT_1D(256'h00000000000000000000000000006A8F0F2EFF85962E2EAF202F88B07FA038A8),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h38D820E0A0883B3820E0A0883B6020882800A08828E0A08888808838B0206088),
    .INIT_21(256'hA0BB38BB38203060A0000050A0B0E0BB3820D8804020002088A800A088A86088),
    .INIT_22(256'hA0E0FF3B60A0963BA038BBBB1BBB38381BA8A8A038BB381BA0BB8128A0B038A8),
    .INIT_23(256'hE080FF80B020E000281880E0289080E028A0E9E080FFB060A000B0E080FF307F),
    .INIT_24(256'hA0485F059629A3292329A22922292230385080A9609696A9BBA920608029A0E9),
    .INIT_25(256'hA0A8B228A8B09696A9A030E0B0A92030A0FFB0A060A980A9A0A03069307FD847),
    .INIT_26(256'hA82828202828282028A8A820A8282820280596A92058EAB2B0E0528040802028),
    .INIT_27(256'hB0DF0028C9802880B038FF3000297F2030E07FA8A820A830002980387FA8A820),
    .INIT_28(256'h40A000B2301FAA2058EA2A80AAA0A03069307F302A309F3060F8B0800038E0F9),
    .INIT_29(256'h38309F002A00B040E07FB07FB029A920B0C0A079B8DF6019B0A0B080A0AAAA80),
    .INIT_2A(256'hAA9696202A968AA1AA968AA1AA968AA12A5F8AA1AA968AA12A968A2030A020FF),
    .INIT_2B(256'hC62040CB00D8204A8030002048803000202A2A0020C030A9B0CA5FA029AAA032),
    .INIT_2C(256'h80D2AE2EAEAE2E2EAEAE2E2B20603EBEBE3EBE3E3EBE4880405F385F5F802BAB),
    .INIT_2D(256'h800BDF2BC620000BDFAB4620800BDF2BC620000BDFAB4620000BDFAB4620ABB2),
    .INIT_2E(256'h80B0AB2000DD20C0FFB0E0203020000BDF859620000BDF2B4620800BDF2BC620),
    .INIT_2F(256'h021215EB95282EAEAE2E2EAEAE2EAE1280349F34D8DFBE3E3EBE3EBEBE3EFFC8),
    .INIT_30(256'hFF0035FF80009D171714171713161610150010357F0C8CA065357F4C805F00B5),
    .INIT_31(256'h8C0C259380080C12FF00316C31B131B1B131B13131B1B10CA500350C80080C12),
    .INIT_32(256'h009FB58C3178B1B1B18C00B5FF359F8C31783131B1008C9480EC351F0C0CA50C),
    .INIT_33(256'h000000000000000000000000000000000000000000000000D78C8C938C800C0C),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'hAAB8F0282CB8702829B8F028D0B37F282BB8702828618028B0C88028A8B8F000),
    .INIT_41(256'h38B8082028387A48B050E02028C0E858380810D033337F28ABB8F028A8B8F028),
    .INIT_42(256'h60B07F3060B0380060B038E8A0807A4848B000C0E0FAA820387AB0E0A03800B8),
    .INIT_43(256'hA0B39000B838B8082028387A48B050E02028A82038387AB0E0203060B07FB000),
    .INIT_44(256'h34C00431345FB1E30004800004805180BB3B3B7F14807F3180B03BBB7F000000),
    .INIT_45(256'hB120B48456E4001FA00034C06480D16480517180346480B1B134C400DFA4BCB1),
    .INIT_46(256'h00A4FF80BC11BC20BC9191C044FFB191D1205134B830B43C3130D1CC80005000),
    .INIT_47(256'h602080B0293038F2A8602080B07E50EF1160E480FF340400C080B820804804B8),
    .INIT_48(256'h962A6030B8F2B0002A38F2D89F302AB0F2B0B280B0F22900C860B0F2A938F2A8),
    .INIT_49(256'hF294807F28289480053072B27F32A04D80B28C809F80B09F090020B0E02AB0F2),
    .INIT_4A(256'h30387CF8F470EC6864E0DC5854D04CC8C4BC3834B02CA8A41C98948C80A900B0),
    .INIT_4B(256'h09117232333320EFEDB3B23072B0E0B03850E0200800A030E0AAB872B060A080),
    .INIT_4C(256'hACA000B0B8C0E020300033FF80B8C0F530E02000A0283060C8802B3072243338),
    .INIT_4D(256'h733380C100B950E0208080808080800020800048A810F3A0FF80E04880305380),
    .INIT_4E(256'h93FF7FB3317330F3B3F3AAB8F0317F332120A18480002000203380C100202830),
    .INIT_4F(256'h20002000205380C02000B3D3808200B030B07FC030209080F0E0D040302090F0),
    .INIT_50(256'h030020B193E0005793C0F494005293C07400D893E0B420627F482860A08050E0),
    .INIT_51(256'h812000315F7F1880E1B03380FFC17F2062FFB4807402B48062740020E1FFBA83),
    .INIT_52(256'h0080315F61009F28A994B1DF60A808B1B87494B1DF6000A1309F121494306174),
    .INIT_53(256'h0080000055F5303461003055F530B100200020003434A11212B190283848B1FF),
    .INIT_54(256'h0086810FE01193121178070000C0C0C0C0C000B80000000030003880808080B0),
    .INIT_55(256'h009480FF00B000B058C0C06080002860800094807F008C801F009480FF800080),
    .INIT_56(256'h50B460B5A13008A0104040950031FF3521201040E0FA002031FF0021008C801F),
    .INIT_57(256'h002000B68039B9B97F15B0380080B17F8C809F0031FF9215155580C1FFB03835),
    .INIT_58(256'h96E0A0880B11729616B5D800A080E01696A5303800840080200E127600B03800),
    .INIT_59(256'h36801880B00080008496353816B5B89696D8161616A530E02000820031D66116),
    .INIT_5A(256'h000000000000000000000000000000000000004D1696008080B680401FB00080),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h207F3B38A0B078B0003920E0205032A0B8A0B0E0B038C8B8B0DA30FF30604880),
    .INIT_61(256'h002050B0E0B0FF792030DF7AB040D880792058E038D920583050FFB8208020B8),
    .INIT_62(256'h58E079F92058E0F92030DF7AB0E0B8807938807958802058E0B8807930B85020),
    .INIT_63(256'h7930B0E020507FB9A0808000808000792030581820B81820B818A02058FFB820),
    .INIT_64(256'hBFBC3A78F8787F8800A8A8A8A0B9A0A0B039A0E0B07958E039A0E0B07939B920),
    .INIT_65(256'h28A8A8BE3EB93BBCBB3EBE3DBC3BBBBE3E3EBEBEBDBB3A3D3A3B3A3EBABA3B3D),
    .INIT_66(256'h2050B0E0ACADB9ACAC2BAC3FA8ACAE2E2EAEACA828282828A82828A828A828A8),
    .INIT_67(256'hBA1ABA1A381A381A381ABA1ABA1ABA1A381A381A381AB9A07F80F9B87A30DF00),
    .INIT_68(256'h003AA0A8A0608058E0873A2058E05800A0BA80A0B8B07F1ABA1ABA1ABA1ABA1A),
    .INIT_69(256'h80B060A0B8B07FA860A08038F838B07F38B0FF00B0A0600028A0E08028A06080),
    .INIT_6A(256'h58F820A8A0A860A080B81F28E0A080A8E0A080A860A0803AE0A048B8FFA860A0),
    .INIT_6B(256'h80BA3BA058F820A8A0A860A080382FA038B038B038A7A02827A0A8B0B0BA3AA0),
    .INIT_6C(256'hB0C0A0E020503830A0E020503A2FA060A8E0A08038A7A028E0A08027A0A8E0A0),
    .INIT_6D(256'h7AB0C0A06020BB5820D8E020DB80B8BBB8A0B0DF7AB060B0A0C0401AB068A07A),
    .INIT_6E(256'h80C0E0A080A02000200020BB3B00A0BBBB00A0BB3B002008BB6020B0E0BB68A0),
    .INIT_6F(256'h809CBB804000A0809C3B80C000A080389C3880C060A0809C3B8040E0A0809CBB),
    .INIT_70(256'h60A0809CBC8040808028E0A0809C3C80C08080A8E0A080BCFF389C3880C080A0),
    .INIT_71(256'h38E080B0387FB060A03050E02038B03830C0C0A0C060A080389C3880C08080A8),
    .INIT_72(256'hC880B07F00B00030C000B04000B0C038B07F00C0E080B8C0E08038E0A0C06080),
    .INIT_73(256'hB0C88080B0803040C0C0289C5860A828B03CB040C040A89C5860306028A8A89C),
    .INIT_74(256'h1B4880803DA0C06020809CD89FB0BD28A8602080307F30DFB040C0B0E0203D48),
    .INIT_75(256'hB8C0E080387FB0E080B0BDB000B030C0C07FB040C07FB040D08030FFBD1FBD3D),
    .INIT_76(256'hA8A8289C586028E080A8608028A8E0809C1EB0F8B01F3DB07FB87F1C00C0E080),
    .INIT_77(256'h38A8A828A81C9C28A8281C9CA8A8A81C9C3E3EA038A8A828A8289C58602828A8),
    .INIT_78(256'h28A8E080B81FA828A81C9CA8A8A8587F1C9C28A86080587F1C9CA86080589F1C),
    .INIT_79(256'hC0A8A8A89C9CBE8040A80080587F9C28A8E0809C28A80080587F9CA8A880809C),
    .INIT_7A(256'hB07F28A860A080BE60A080389C9C389C0028E080A860802860803B289C9CBE80),
    .INIT_7B(256'hA080B01F28E0A080A8E0A0802AB07F2860A0803E3EA028B0F828B07FB830E029),
    .INIT_7C(256'hFFFF38B08038280080A88080BFBFA0A88080B83FB8B8A0A03F3FB820A0BEA860),
    .INIT_7D(256'h0080008080037FFFFF7F808000808000000000000000000102040810204000BF),
    .INIT_7E(256'h00000000000000000000000000000000000000000000000000000000551F1FE0),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],p_35_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],p_35_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module rope_memory_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  rope_memory_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "3" *) 
(* C_COUNT_36K_BRAM = "16" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "1" *) (* C_DISABLE_WARN_BHV_RANGE = "1" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     16.523845 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "rope_memory.mem" *) 
(* C_INIT_FILE_NAME = "rope_memory.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "36864" *) (* C_READ_DEPTH_B = "36864" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "36864" *) 
(* C_WRITE_DEPTH_B = "36864" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module rope_memory_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  rope_memory_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module rope_memory_blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [15:0]addra;

  wire [15:0]addra;
  wire clka;
  wire [15:0]douta;

  rope_memory_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
