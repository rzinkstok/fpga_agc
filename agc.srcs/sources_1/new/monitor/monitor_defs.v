`timescale 1ns / 1ps

// SLIP special characters
`define SLIP_END     8'hC0
`define SLIP_ESC     8'hDB
`define SLIP_ESC_END 8'hDC
`define SLIP_ESC_ESC 8'hDD

// Message format
`define MSG_READ_LENGTH  3'd3
`define MSG_WRITE_LENGTH 3'd5

// Groups
`define ADDR_GROUP_ERASABLE     7'h00
`define ADDR_GROUP_FIXED        7'h01
`define ADDR_GROUP_CHANNELS     7'h02
`define ADDR_GROUP_SIM_ERASABLE 7'h10
`define ADDR_GROUP_SIM_FIXED    7'h11
`define ADDR_GROUP_CONTROL      7'h20
`define ADDR_GROUP_MON_REGS     7'h21
`define ADDR_GROUP_MON_CHANNELS 7'h22
`define ADDR_GROUP_MON_DSKY     7'h23
`define ADDR_GROUP_STATUS       7'h24
`define ADDR_GROUP_TRACE        7'h25
`define ADDR_GROUP_NASSP        7'h26

// Control Registers
`define CTRL_REG_START        16'h0
`define CTRL_REG_STOP         16'h1
`define CTRL_REG_STOP_CAUSE   16'h2
`define CTRL_REG_PROCEED      16'h3
`define CTRL_REG_MNHRPT       16'h4
`define CTRL_REG_MNHNC        16'h5
`define CTRL_REG_S1_S         16'h6
`define CTRL_REG_S1_BANK      16'h7
`define CTRL_REG_S1_S_IGN     16'h8
`define CTRL_REG_S1_BANK_IGN  16'h9
`define CTRL_REG_S2_S         16'hA
`define CTRL_REG_S2_BANK      16'hB
`define CTRL_REG_S2_S_IGN     16'hC
`define CTRL_REG_S2_BANK_IGN  16'hD
`define CTRL_REG_WRITE_W      16'hE
`define CTRL_REG_W_TIMES      16'hF
`define CTRL_REG_W_PULSES     16'h10
`define CTRL_REG_W_COMP_VAL   16'h11
`define CTRL_REG_W_COMP_IGN   16'h12
`define CTRL_REG_W_COMP_PAR   16'h13
`define CTRL_REG_I_COMP_VAL   16'h14
`define CTRL_REG_I_COMP_IGN   16'h15
`define CTRL_REG_I_COMP_STAT  16'h16
`define CTRL_REG_LDRD_S1_S2   16'h17
`define CTRL_REG_BANK_S       16'h18
`define CTRL_REG_ADVANCE_S    16'h19
`define CTRL_REG_CRS_BANK_EN0 16'h1A
`define CTRL_REG_CRS_BANK_EN1 16'h1B
`define CTRL_REG_CRS_BANK_EN2 16'h1C
`define CTRL_REG_CRS_BANK_EN3 16'h1D
`define CTRL_REG_EMS_BANK_EN  16'h1E
`define CTRL_REG_DOSCAL       16'h30
`define CTRL_REG_DBLTST       16'h31
`define CTRL_REG_NHALGA       16'h40
`define CTRL_REG_NHSTRT1      16'h41
`define CTRL_REG_NHSTRT2      16'h42
`define CTRL_REG_DOWNRUPT     16'h50
`define CTRL_REG_HANDRUPT     16'h51
`define CTRL_REG_LOAD_S       16'h70
`define CTRL_REG_LOAD_PRESET  16'h71
`define CTRL_REG_LOAD_CHAN    16'h72
`define CTRL_REG_READ_S       16'h73
`define CTRL_REG_READ_PRESET  16'h74
`define CTRL_REG_READ_CHAN    16'h75
`define CTRL_REG_START_S      16'h76
`define CTRL_REG_START_PRESET 16'h77