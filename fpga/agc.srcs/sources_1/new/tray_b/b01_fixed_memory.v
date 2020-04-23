`timescale 1ns / 1ps

module b01_fixed_memory(
    input wire ROPER,
    input wire ROPES,
    input wire ROPET,
    
    input wire LOMOD,
    input wire HIMOD,
    
    input wire STR14,
    input wire STR58,
    input wire STR912,
    
    input wire STR19,
    input wire STR210,
    input wire STR311,
    input wire STR412,
    
    input wire SETAB,
    input wire SETCD,
    input wire RESETA,
    input wire RESETB,
    input wire RESETC,
    input wire RESETD,
    
    input wire IL01,
    input wire IL02,
    input wire IL03,
    input wire IL04,
    input wire IL05,
    input wire IL06,
    input wire IL07,
    
    input wire SBF,
    input wire CLROPE,
    
    
    output wire B01_1_SA01,
    output wire B01_1_SA02,
    output wire B01_1_SA03,
    output wire B01_1_SA04,
    output wire B01_1_SA05,
    output wire B01_1_SA06,
    output wire B01_1_SA07,
    output wire B01_1_SA08,
    output wire B01_1_SA09,
    output wire B01_1_SA10,
    output wire B01_1_SA11,
    output wire B01_1_SA12,
    output wire B01_1_SA13,
    output wire B01_1_SA14,
    output wire B01_1_SAP,
    output wire B01_1_SA16,
    
    input wire prop_clk,
    input wire n0VDCA,
    input wire p4VDC,
    input wire reset
    );
    
    wire NOR00032_out;
    wire NOR00033_out;
    wire NOR00035_out;
    wire NOR00036_out;
    wire NOR00037_out;
    wire NOR00038_out;
    wire NOR00039_out;
    wire NOR00040_out;
    wire NOR00041_out;
    wire NOR00042_out;
    wire NOR00043_out;
    wire NOR00044_out;
    wire NOR00045_out;
    wire NOR00046_out;
    wire NOR00047_out;
    wire NOR00048_out;
    wire NOR00051_out;
    wire NOR00052_out;
    wire NOR00053_out;
    wire NOR00054_out;
    wire NOR00055_out;
    wire NOR00056_out;
    wire NOR00057_out;
    wire NOR00061_out;
    wire NOR00062_out;
    wire NOR00063_out;
    wire NOR00064_out;
    wire NOR00065_out;
    wire NOR00066_out;
    wire NOR00067_out;
    wire NOR00071_out;
    wire NOR00072_out;
    wire NOR00073_out;
    wire NOR00074_out;
    wire NOR00075_out;
    wire NOR00076_out;
    wire NOR00077_out;
    
    wire SETAB_;
    wire SETCD_;
    wire RESETA_;
    wire RESETB_;
    wire RESETD_;
    
    wire SETPLANE_A;
    wire SETPLANE_B;
    wire SETPLANE_C;
    
    wire CLRPLANE_A;
    wire CLRPLANE_A_;
    wire CLRPLANE_B;
    wire CLRPLANE_B_;
    wire CLRPLANE_C;
    wire CLRPLANE_C_;
    
    wire PLANE_A;
    wire PLANE_A_;
    wire PLANE_B;
    wire PLANE_B_;
    wire PLANE_C;
    wire PLANE_C_;
    
    wire ROPER_;
    wire ROPES_;
    wire ROPET_;
    wire STR14_;
    wire STR58_;
    wire STR912_;
    
    wire SBF_;
    wire NOROPE;
    
    wire FADDR01;
    wire FADDR02;
    wire FADDR03;
    wire FADDR04;
    wire FADDR05;
    wire FADDR06;
    wire FADDR07;
    wire FADDR08;
    wire FADDR09;
    wire FADDR10;
    wire FADDR11;
    wire FADDR12;
    wire FADDR13;
    wire FADDR14;
    wire FADDR15;
    wire FADDR16;
    
    wire output_enable;
    wire [15:0] address;
    wire [15:0] read_word;
    wire [15:0] sensed_word;
    
    // Inhibit lines
    nor_3 #(1'b0) NOR00001(FADDR01,         IL01,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00002(FADDR02,         IL02,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00003(FADDR03,         IL03,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00004(FADDR04,         IL04,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00005(FADDR05,         IL05,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00006(FADDR06,         IL06,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00007(FADDR07,         IL07,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Planes
    nor_3 #(1'b1) NOR00008(SETAB_,          SETAB,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00009(SETCD_,          SETCD,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00010(RESETA_,         RESETA,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00011(RESETB_,         RESETB,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00012(RESETD_,         RESETD,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0) NOR00013(SETPLANE_A,      SETAB_,         RESETB_,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00014(SETPLANE_B,      SETAB_,         RESETA_,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00015(SETPLANE_C,      SETCD_,         RESETD_,        n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1) NOR00016(PLANE_A_,        SETPLANE_A,     PLANE_A,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00017(PLANE_A,         PLANE_A_,       CLRPLANE_A,     n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1) NOR00018(PLANE_B_,        SETPLANE_B,     PLANE_B,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00019(PLANE_B,         PLANE_B_,       CLRPLANE_B,     n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b1) NOR00020(PLANE_C_,        SETPLANE_C,     PLANE_C,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00021(PLANE_C,         PLANE_C_,       CLRPLANE_C,     n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0) NOR00022(FADDR08,         PLANE_A,        PLANE_C,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00023(FADDR09,         PLANE_A,        PLANE_B,        n0VDCA,         p4VDC, reset, prop_clk);
    
    // Strand groups
    nor_3 #(1'b0) NOR00024(FADDR10,         STR19,          STR311,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00025(FADDR11,         STR19,          STR210,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Rope, module strand group
    nor_3 #(1'b0) NOR00026(ROPER_,          ROPER,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00027(ROPES_,          ROPES,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00028(ROPET_,          ROPET,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00029(STR14_,          STR14,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00030(STR58_,          STR58,          n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00031(STR912_,         STR912,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0) NOR00032(NOR00032_out,    STR58,          HIMOD,          n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00033(NOR00033_out,    STR58_,         LOMOD,          n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00034(FADDR12,         NOR00032_out,   NOR00033_out,   n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0) NOR00035(NOR00035_out,    ROPES,          HIMOD,          STR912,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00036(NOR00036_out,    ROPES,          LOMOD,          STR14,          p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00037(NOR00037_out,    ROPES_,         HIMOD,          STR912_,        p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00038(NOR00038_out,    ROPES_,         LOMOD,          STR14_,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00039(NOR00039_out,    NOR00035_out,   NOR00036_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00040(NOR00040_out,    NOR00037_out,   NOR00038_out,   n0VDCA,         p4VDC, reset, prop_clk);
    assign FADDR13 = NOR00039_out & NOR00040_out;
    
    nor_3 #(1'b0) NOR00041(NOR00041_out,    ROPES_,         STR912_,        n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00042(NOR00042_out,    ROPER,          LOMOD,          STR14,          p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00043(NOR00043_out,    ROPET,          LOMOD,          STR14_,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00044(NOR00044_out,    ROPER_,         HIMOD,          n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00045(NOR00045_out,    NOR00041_out,   NOR00042_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00046(NOR00046_out,    NOR00043_out,   NOR00044_out,   n0VDCA,         p4VDC, reset, prop_clk);
    assign FADDR14 = NOR00045_out & NOR00046_out;
    
    nor_3 #(1'b0) NOR00047(NOR00047_out,    ROPES,          LOMOD,          STR14,          p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00048(NOR00048_out,    ROPET,          HIMOD,          STR912,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00049(FADDR15,         ROPER,          NOR00047_out,   NOR00048_out,   p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0) NOR00050(FADDR16,         ROPET_,         LOMOD,          STR14,          p4VDC, reset, prop_clk);
    
    // Clear plane A
    nor_3 #(1'b0) NOR00051(NOR00051_out,    RESETA,         NOR00057_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00052(NOR00052_out,    NOR00051_out,   NOR00053_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00053(NOR00053_out,    NOR00052_out,   RESETA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00054(NOR00054_out,    NOR00053_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00055(NOR00055_out,    NOR00054_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00056(NOR00056_out,    NOR00055_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00057(NOR00057_out,    NOR00056_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00058(CLRPLANE_A_,     CLROPE,         NOR00051_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00059(CLRPLANE_A,      CLRPLANE_A_,    n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Clear plane B
    nor_3 #(1'b0) NOR00061(NOR00061_out,    RESETB,         NOR00067_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00062(NOR00062_out,    NOR00061_out,   NOR00063_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00063(NOR00063_out,    NOR00062_out,   RESETB,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00064(NOR00064_out,    NOR00063_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00065(NOR00065_out,    NOR00064_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00066(NOR00066_out,    NOR00065_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00067(NOR00067_out,    NOR00066_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00068(CLRPLANE_B_,     CLROPE,         NOR00061_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00069(CLRPLANE_B,      CLRPLANE_B_,    n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Clear plane C
    nor_3 #(1'b0) NOR00071(NOR00071_out,    RESETC,         NOR00077_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00072(NOR00072_out,    NOR00071_out,   NOR00073_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00073(NOR00073_out,    NOR00072_out,   RESETC,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00074(NOR00074_out,    NOR00073_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00075(NOR00075_out,    NOR00074_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00076(NOR00076_out,    NOR00075_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b1) NOR00077(NOR00077_out,    NOR00076_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00078(CLRPLANE_C_,     CLROPE,         NOR00071_out,   n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00079(CLRPLANE_C,      CLRPLANE_C_,    n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    // Output enable
    nor_3 #(1'b1) NOR00080(SBF_,            SBF,            n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00081(NOROPE,          ROPER,          ROPES,          ROPET,          p4VDC, reset, prop_clk);
    nor_3 #(1'b0) NOR00082(output_enable,   SBF_,           NOROPE,         n0VDCA,         p4VDC, reset, prop_clk);
    
    
    // Address
    assign address = {FADDR16, FADDR15, FADDR14, FADDR13, FADDR12, FADDR11, FADDR10, FADDR09, FADDR08, FADDR07, FADDR06, FADDR05, FADDR04, FADDR03, FADDR02, FADDR01};
    
    
    // Output word to sense amplifiers
    assign sensed_word = output_enable ? read_word : 16'b0;
    assign B01_1_SA01 = sensed_word[0];
    assign B01_1_SA02 = sensed_word[1];
    assign B01_1_SA03 = sensed_word[2];
    assign B01_1_SA04 = sensed_word[3];
    assign B01_1_SA05 = sensed_word[4];
    assign B01_1_SA06 = sensed_word[5];
    assign B01_1_SA07 = sensed_word[6];
    assign B01_1_SA08 = sensed_word[7];
    assign B01_1_SA09 = sensed_word[8];
    assign B01_1_SA10 = sensed_word[9];
    assign B01_1_SA11 = sensed_word[10];
    assign B01_1_SA12 = sensed_word[11];
    assign B01_1_SA13 = sensed_word[12];
    assign B01_1_SA14 = sensed_word[13];
    assign B01_1_SAP = sensed_word[14];
    assign B01_1_SA16 = sensed_word[15];
    
    
    // The memory itself
    rope_memory rom(
        .clka(prop_clk),
        .addra(address),
        .douta(read_word)
    );
    
endmodule
