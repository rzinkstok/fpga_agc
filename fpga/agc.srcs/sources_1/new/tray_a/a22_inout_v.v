`timescale 1ns / 1ps

module a22_inout_v(
    input wire DKSTRT,
    input wire END,
    input wire CHWL01_,
    input wire CHWL02_,
    input wire CHWL03_,
    input wire CHWL04_,
    input wire CHWL05_,
    input wire CHWL06_,
    input wire CHWL07_,
    input wire CHWL08_,
    input wire CHWL09_,
    input wire CHWL10_,
    input wire CHWL11_,
    input wire CHWL12_,
    input wire CHWL13_,
    input wire CHWL14_,
    input wire CHWL16_,
    
    input wire GOJAM,
    
    input wire XB3_,
    input wire XB4_,
    input wire XT1_,
    input wire WCHG_,
    input wire CCHG_,
    
    input wire WCH34_,
    input wire CCH34,
    input wire WCH35_,
    input wire CCH35,
    
    input wire DATA_,
    
    input wire HIGH0_,
    input wire HIGH1_,
    input wire HIGH2_,
    input wire HIGH3_,
    
    input wire DKBSNC,
    input wire PC15_,
    
    output wire WCH13_,
    output wire CCH13,
    output wire RCH13_,    

    output wire WCH14_,
    output wire CCH14,
    output wire RCH14_,    

    output wire CH1307,
    
    output wire LOW6_,
    output wire LOW7_,
    
    output wire A22_1_DATA_,
    output wire A22_2_DATA_,
    output wire A22_3_DATA_,
    output wire A22_4_DATA_,
    output wire A22_5_DATA_,
    output wire A22_6_DATA_,
    output wire A22_7_DATA_,
    output wire A22_8_DATA_,
    output wire A22_9_DATA_,
    output wire A22_10_DATA_,
    
    output wire DKDATA,
    output wire DKDATB,
    output wire DKCTR4,
    output wire DKCTR4_,
    output wire DKCTR5,
    output wire DKCTR5_,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A22 sheet 1
    *  Sheet number 2005271/1
    *
    **************************/
    
    wire NOR47101_out;
    wire NOR47104_out;
    wire NOR47107_out;
    wire NOR47108_out;
    wire NOR47110_out;
    wire NOR47111_out;
    wire NOR47112_out;
    wire NOR47113_out;
    wire NOR47114_out;
    wire NOR47117_out;
    wire NOR47118_out;
    wire NOR47119_out;
    wire NOR47120_out;
    wire NOR47121_out;
    wire NOR47122_out;
    wire NOR47125_out;
    wire NOR47126_out;
    wire NOR47127_out;
    wire NOR47128_out;
    wire NOR47129_out;
    wire NOR47130_out;
    wire NOR47133_out;
    wire NOR47134_out;
    wire NOR47135_out;
    wire NOR47136_out;
    wire NOR47140_out;
    wire NOR47141_out;
    wire NOR47145_out;
    
    wire NOR47147_out;
    wire NOR47148_out;
    wire NOR47149_out;
    wire NOR47150_out;
    wire NOR47151_out;
    wire NOR47153_out;
    wire NOR47155_out;
    wire NOR47156_out;
    wire NOR47157_out;
    
    wire NOR47201_out;
    wire NOR47205_out;
    wire NOR47206_out;
    wire NOR47210_out;
    wire NOR47214_out;
    wire NOR47218_out;
    wire NOR47219_out;
    wire NOR47223_out;
    wire NOR47228_out;
    wire NOR47230_out;
    wire NOR47232_out;
    wire NOR47234_out;
    wire NOR47236_out;
    wire NOR47238_out;
    wire NOR47240_out;
    wire NOR47242_out;
    wire NOR47244_out;
    wire NOR47245_out;
    wire NOR47246_out;
    wire NOR47247_out;
    wire NOR47248_out;
    wire NOR47249_out;
    wire NOR47250_out;
    wire NOR47251_out;
    wire NOR47254_out;
    
    
    wire DLKCLR;
    wire RDOUT_;
    wire ADVCTR;
    wire WDORDR;
    wire BSYNC_;
    wire ORDRBT;
    
    wire n1CNT;
    wire n16CNT;
    wire n32CNT;
    
    wire DKCTR1;
    wire DKCTR1_;
    wire DKCTR2;
    wire DKCTR2_;
    wire DKCTR3;
    wire DKCTR3_;
    
    wire LOW0_;
    wire LOW1_;
    wire LOW2_;
    wire LOW3_;
    wire LOW4_;
    wire LOW5_;
    
    wire WRD1B1;
    wire WRD1BP;
    wire WRD2B2;
    wire WRD2B3;
    
    wire DKDAT_;
    
    
    nor_3 #(1'b0)  NOR47101(NOR47101_out,   DKSTRT,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47102(DLKCLR,         NOR47101_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47103 removed (fan-out expansion)
    
    nor_3 #(1'b1)  NOR47104(NOR47104_out,   RDOUT_,         END,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47105(RDOUT_,         DLKCLR,         NOR47104_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47106(ADVCTR,         RDOUT_,         WDORDR,         BSYNC_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47107(NOR47107_out,   DLKCLR,         ADVCTR,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47108(NOR47108_out,   NOR47107_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DKCTR1
    nor_3 #(1'b1)  NOR47109(n1CNT,          NOR47113_out,   NOR47110_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47110(NOR47110_out,   n1CNT,          NOR47108_out,   NOR47111_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47111(NOR47111_out,   NOR47110_out,   NOR47108_out,   NOR47112_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47112(NOR47112_out,   NOR47111_out,   NOR47114_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47113(NOR47113_out,   NOR47110_out,   NOR47114_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47114(NOR47114_out,   NOR47113_out,   DLKCLR,         NOR47111_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47115(DKCTR1_,        NOR47113_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47116(DKCTR1,         NOR47114_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DKCTR2
    nor_3 #(1'b1)  NOR47117(NOR47117_out,   NOR47121_out,   NOR47118_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47118(NOR47118_out,   NOR47117_out,   NOR47112_out,   NOR47119_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47119(NOR47119_out,   NOR47118_out,   NOR47112_out,   NOR47120_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47120(NOR47120_out,   NOR47119_out,   NOR47122_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47121(NOR47121_out,   NOR47118_out,   NOR47122_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47122(NOR47122_out,   NOR47121_out,   DLKCLR,         NOR47119_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47123(DKCTR2_,        NOR47121_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47124(DKCTR2,         NOR47122_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DKCTR3
    nor_3 #(1'b1)  NOR47125(NOR47125_out,   NOR47129_out,   NOR47126_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47126(NOR47126_out,   NOR47125_out,   NOR47120_out,   NOR47127_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47127(NOR47127_out,   NOR47126_out,   NOR47120_out,   NOR47128_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47128(NOR47128_out,   NOR47127_out,   NOR47130_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47129(NOR47129_out,   NOR47126_out,   NOR47130_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47130(NOR47130_out,   NOR47129_out,   DLKCLR,         NOR47127_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47131(DKCTR3_,        NOR47129_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47132(DKCTR3,         NOR47130_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // DKCTR4
    nor_3 #(1'b1)  NOR47133(NOR47133_out,   DKCTR4,         NOR47134_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47134(NOR47134_out,   NOR47133_out,   NOR47128_out,   NOR47135_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47135(NOR47135_out,   NOR47134_out,   NOR47128_out,   NOR47136_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47136(NOR47136_out,   NOR47135_out,   DKCTR4_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47137(DKCTR4,         NOR47134_out,   DKCTR4_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47138(DKCTR4_,        DKCTR4,         DLKCLR,         NOR47135_out,   p4SW, reset, prop_clk);
    
    // DKCTR5
    nor_3 #(1'b1)  NOR47139(n16CNT,         DKCTR5,         NOR47140_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47140(NOR47140_out,   n16CNT,         NOR47136_out,   NOR47141_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47141(NOR47141_out,   NOR47140_out,   NOR47136_out,   n32CNT,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47142(n32CNT,         NOR47141_out,   DKCTR5_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47143(DKCTR5,         NOR47140_out,   DKCTR5_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47144(DKCTR5_,        DKCTR5,         DLKCLR,         NOR47141_out,   p4SW, reset, prop_clk);
    
    // WDORDR
    nor_3 #(1'b0)  NOR47145(NOR47145_out,   BSYNC_,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47146 removed (not used)
    nor_3 #(1'b0)  NOR47147(NOR47147_out,   NOR47145_out,   NOR47150_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47148(NOR47148_out,   NOR47147_out,   NOR47151_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47149(NOR47149_out,   NOR47151_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47150(NOR47150_out,   NOR47149_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47151(NOR47151_out,   NOR47145_out,   NOR47148_out,   n0VDCA,         p4SW, reset, prop_clk);
    // NOR47152 removed (not used)
    
    nor_3 #(1'b1)  NOR47153(NOR47153_out,   DLKCLR,         WDORDR,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47154(WDORDR,         NOR47153_out,   NOR47147_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // Channel 13 bit 7
    nor_3 #(1'b0)  NOR47155(NOR47155_out,   CHWL07_,        WCH13_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47156(NOR47156_out,   NOR47157_out,   NOR47155_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47157(NOR47157_out,   CCH13,          NOR47156_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47158(CH1307,         RCH13_,         NOR47156_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // ORDRBT
    nor_3 #(1'b0)  NOR47159(ORDRBT,         NOR47156_out,   NOR47153_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR47160 removed (not connected)
    // NOR47161 removed (moved to A13)
    // NOR47162 removed (moved to A13)
    
    // Channel 13 service
    nor_3 #(1'b0)  NOR47201(NOR47201_out,   XB3_,           XT1_,           WCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47202(WCH13_,         NOR47201_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47203 removed (fan-out expansion)
    // NOR47204 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR47205(NOR47205_out,   XT1_,           XB3_,           CCHG_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47206(NOR47206_out,   NOR47205_out,   GOJAM,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47207(CCH13,          NOR47206_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47208 removed (fan-out expansion)
    // NOR47209 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR47210(NOR47210_out,   XB3_,           XT1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47211(RCH13_,         NOR47210_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47212 removed (fan-out expansion)
    // NOR47213 removed (fan-out expansion)
    
    
    // Channel 14 service
    nor_3 #(1'b0)  NOR47214(NOR47214_out,   WCHG_,          XB4_,           XT1_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47215(WCH14_,         NOR47214_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47216 removed (fan-out expansion)
    // NOR47217 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR47218(NOR47218_out,   CCHG_,          XT1_,           XB4_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47219(NOR47219_out,   GOJAM,          NOR47218_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47220(CCH14,          NOR47219_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47221 removed (fan-out expansion)
    // NOR47222 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR47223(NOR47223_out,   XB4_,           XT1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47224(RCH14_,         NOR47223_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR47225 removed (fan-out expansion)
    // NOR47226 removed (fan-out expansion)
    
    
    // Downlink counter decoding
    nor_3 #(1'b0)  NOR47228(NOR47228_out,   DKCTR1,         DKCTR2,         DKCTR3,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47229(LOW0_,          NOR47228_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47230(NOR47230_out,   DKCTR1_,        DKCTR2,         DKCTR3,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47231(LOW1_,          NOR47230_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47232(NOR47232_out,   DKCTR1,         DKCTR2_,        DKCTR3,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47233(LOW2_,          NOR47232_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47234(NOR47234_out,   DKCTR1_,        DKCTR2_,        DKCTR3,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47235(LOW3_,          NOR47234_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47236(NOR47236_out,   DKCTR1,         DKCTR2,         DKCTR3_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47237(LOW4_,          NOR47236_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47238(NOR47238_out,   DKCTR1_,        DKCTR2,         DKCTR3_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47239(LOW5_,          NOR47238_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47240(NOR47240_out,   DKCTR1,         DKCTR2_,        DKCTR3_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47241(LOW6_,          NOR47240_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47242(NOR47242_out,   DKCTR1_,        DKCTR2_,        DKCTR3_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47243(LOW7_,          NOR47242_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);

    // Channel 34
    
    nor_3 #(1'b0)  NOR47244(NOR47244_out,   CHWL16_,        WCH34_,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47245(NOR47245_out,   WCH34_,         CHWL14_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47246(NOR47246_out,   NOR47244_out,   NOR47247_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47247(NOR47247_out,   NOR47246_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47248(NOR47248_out,   NOR47245_out,   NOR47249_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47249(NOR47249_out,   NOR47248_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47250(NOR47250_out,   LOW0_,          NOR47246_out,   HIGH0_,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47251(NOR47251_out,   LOW1_,          NOR47248_out,   HIGH0_,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47252(A22_1_DATA_,    WRD1B1,         WRD1BP,         WRD2B3,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47253(A22_2_DATA_,    WRD2B2,         NOR47250_out,   NOR47251_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47254(NOR47254_out,   DATA_,          WDORDR,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47255(DKDAT_,         NOR47254_out,   ORDRBT,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47227(BSYNC_,         DKBSNC,         n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR47256(DKDATA,         BSYNC_,         RDOUT_,         DKDAT_,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR47261(DKDATB,         BSYNC_,         RDOUT_,         DKDAT_,         p4SW, reset, prop_clk);
    
    // NOR47257 removed (not used)
    // NOR47258 removed (not used)
    // NOR47259 removed (not used)
    // NOR47260 removed (not used)
    // NOR47262 removed (moved to A13)
    
    
    /**************************
    *
    *  Module A22 sheet 2
    *  Sheet number 2005271/2
    *
    **************************/
    
    wire NOR47301_out;
    wire NOR47302_out;
    wire NOR47303_out;
    wire NOR47305_out;
    wire NOR47306_out;
    wire NOR47307_out;
    wire NOR47309_out;
    wire NOR47310_out;
    wire NOR47311_out;
    wire NOR47312_out;
    wire NOR47313_out;
    wire NOR47314_out;
    wire NOR47315_out;
    wire NOR47316_out;
    wire NOR47317_out;
    wire NOR47318_out;
    wire NOR47319_out;
    wire NOR47320_out;
    wire NOR47322_out;
    wire NOR47323_out;
    wire NOR47324_out;
    wire NOR47325_out;
    wire NOR47326_out;
    wire NOR47327_out;
    wire NOR47328_out;
    wire NOR47329_out;
    wire NOR47330_out;
    wire NOR47331_out;
    wire NOR47332_out;
    wire NOR47333_out;
    wire NOR47335_out;
    wire NOR47336_out;
    wire NOR47337_out;
    wire NOR47338_out;
    wire NOR47339_out;
    wire NOR47340_out;
    wire NOR47341_out;
    wire NOR47342_out;
    wire NOR47344_out;
    wire NOR47345_out;
    wire NOR47346_out;
    wire NOR47347_out;
    wire NOR47348_out;
    wire NOR47349_out;
    wire NOR47350_out;
    wire NOR47351_out;
    wire NOR47352_out;
    wire NOR47353_out;
    wire NOR47354_out;
    wire NOR47355_out;
    wire NOR47356_out;
    wire NOR47357_out;
    wire NOR47358_out;
    wire NOR47359_out;
    
    wire NOR47401_out;
    wire NOR47402_out;
    wire NOR47403_out;
    wire NOR47405_out;
    wire NOR47406_out;
    wire NOR47407_out;
    wire NOR47409_out;
    wire NOR47410_out;
    wire NOR47411_out;
    wire NOR47412_out;
    wire NOR47413_out;
    wire NOR47414_out;
    wire NOR47415_out;
    wire NOR47416_out;
    wire NOR47417_out;
    wire NOR47418_out;
    wire NOR47419_out;
    wire NOR47420_out;
    wire NOR47422_out;
    wire NOR47423_out;
    wire NOR47424_out;
    wire NOR47425_out;
    wire NOR47426_out;
    wire NOR47427_out;
    wire NOR47428_out;
    wire NOR47429_out;
    wire NOR47430_out;
    wire NOR47431_out;
    wire NOR47432_out;
    wire NOR47433_out;
    wire NOR47435_out;
    wire NOR47436_out;
    wire NOR47437_out;
    wire NOR47438_out;
    wire NOR47439_out;
    wire NOR47440_out;
    wire NOR47441_out;
    wire NOR47442_out;
    wire NOR47443_out;
    wire NOR47444_out;
    wire NOR47445_out;
    wire NOR47446_out;
    wire NOR47448_out;
    wire NOR47449_out;
    wire NOR47450_out;
    wire NOR47451_out;
    wire NOR47452_out;
    wire NOR47453_out;
    wire NOR47454_out;
    wire NOR47455_out;
    wire NOR47456_out;
    wire NOR47457_out;
    wire NOR47458_out;
    wire NOR47459_out;
    
    
    // Channel 34
    
    nor_3 #(1'b0)  NOR47301(NOR47301_out,   WCH34_,         PC15_,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47302(NOR47302_out,   NOR47301_out,   NOR47303_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47303(NOR47303_out,   NOR47302_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47304(WRD1BP,         HIGH1_,         NOR47302_out,   LOW7_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47305(NOR47305_out,   WCH34_,         CHWL01_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47306(NOR47306_out,   NOR47305_out,   NOR47307_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47307(NOR47307_out,   NOR47306_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47308(WRD1B1,         HIGH1_,         NOR47306_out,   LOW6_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47309(NOR47309_out,   WCH34_,         CHWL02_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47310(NOR47310_out,   NOR47309_out,   NOR47311_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47311(NOR47311_out,   NOR47310_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47312(NOR47312_out,   HIGH1_,         NOR47310_out,   LOW5_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47313(NOR47313_out,   WCH34_,         CHWL13_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47314(NOR47314_out,   NOR47313_out,   NOR47315_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47315(NOR47315_out,   NOR47314_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47316(NOR47316_out,   HIGH0_,         NOR47314_out,   LOW2_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47317(NOR47317_out,   WCH34_,         CHWL12_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47318(NOR47318_out,   NOR47317_out,   NOR47319_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47319(NOR47319_out,   NOR47318_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47320(NOR47320_out,   HIGH0_,         NOR47318_out,   LOW3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47321(A22_3_DATA_,    NOR47312_out,   NOR47316_out,   NOR47320_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47322(NOR47322_out,   WCH34_,         CHWL11_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47323(NOR47323_out,   NOR47322_out,   NOR47324_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47324(NOR47324_out,   NOR47323_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47325(NOR47325_out,   HIGH0_,         NOR47323_out,   LOW4_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47326(NOR47326_out,   WCH34_,         CHWL10_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47327(NOR47327_out,   NOR47326_out,   NOR47328_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47328(NOR47328_out,   NOR47327_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47329(NOR47329_out,   HIGH0_,         NOR47327_out,   LOW5_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47330(NOR47330_out,   WCH34_,         CHWL09_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47331(NOR47331_out,   NOR47330_out,   NOR47332_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47332(NOR47332_out,   NOR47331_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47333(NOR47333_out,   HIGH0_,         NOR47331_out,   LOW6_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47334(A22_4_DATA_,    NOR47325_out,   NOR47329_out,   NOR47333_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47335(NOR47335_out,   WCH34_,         CHWL08_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47336(NOR47336_out,   NOR47335_out,   NOR47337_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47337(NOR47337_out,   NOR47336_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47338(NOR47338_out,   HIGH0_,         NOR47336_out,   LOW7_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47339(NOR47339_out,   WCH34_,         CHWL07_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47340(NOR47340_out,   NOR47339_out,   NOR47341_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47341(NOR47341_out,   NOR47340_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47342(NOR47342_out,   HIGH1_,         NOR47340_out,   LOW0_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47343(A22_5_DATA_,    NOR47338_out,   NOR47342_out,   NOR47347_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47344(NOR47344_out,   WCH34_,         CHWL06_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47345(NOR47345_out,   NOR47344_out,   NOR47346_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47346(NOR47346_out,   NOR47345_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47347(NOR47347_out,   HIGH1_,         NOR47345_out,   LOW1_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47348(NOR47348_out,   WCH34_,         CHWL05_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47349(NOR47349_out,   NOR47348_out,   NOR47350_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47350(NOR47350_out,   NOR47349_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47351(NOR47351_out,   HIGH1_,         NOR47349_out,   LOW2_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47352(NOR47352_out,   WCH34_,         CHWL04_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47353(NOR47353_out,   NOR47352_out,   NOR47354_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47354(NOR47354_out,   NOR47353_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47355(NOR47355_out,   HIGH1_,         NOR47353_out,   LOW3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47356(NOR47356_out,   WCH34_,         CHWL03_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47357(NOR47357_out,   NOR47356_out,   NOR47358_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47358(NOR47358_out,   NOR47357_out,   CCH34,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47359(NOR47359_out,   HIGH1_,         NOR47357_out,   LOW4_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47360(A22_6_DATA_,    NOR47351_out,   NOR47355_out,   NOR47359_out,   p4SW, reset, prop_clk);
    
    
    // Channel 35
    nor_3 #(1'b0)  NOR47401(NOR47401_out,   WCH35_,         CHWL02_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47402(NOR47402_out,   NOR47401_out,   NOR47403_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47403(NOR47403_out,   NOR47402_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47404(WRD2B2,         HIGH3_,         NOR47402_out,   LOW5_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47405(NOR47405_out,   WCH35_,         CHWL03_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47406(NOR47406_out,   NOR47405_out,   NOR47407_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47407(NOR47407_out,   NOR47406_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47408(WRD2B3,         HIGH3_,         NOR47406_out,   LOW4_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47409(NOR47409_out,   WCH35_,         CHWL04_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47410(NOR47410_out,   NOR47409_out,   NOR47411_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47411(NOR47411_out,   NOR47410_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47412(NOR47412_out,   HIGH3_,         NOR47410_out,   LOW3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47413(NOR47413_out,   WCH35_,         CHWL16_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47414(NOR47414_out,   NOR47413_out,   NOR47415_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47415(NOR47415_out,   NOR47414_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47416(NOR47416_out,   HIGH2_,         NOR47414_out,   LOW0_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47417(NOR47417_out,   WCH35_,         CHWL14_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47418(NOR47418_out,   NOR47417_out,   NOR47419_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47419(NOR47419_out,   NOR47418_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47420(NOR47420_out,   HIGH2_,         NOR47418_out,   LOW1_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47421(A22_7_DATA_,    NOR47416_out,   NOR47420_out,   NOR47425_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47422(NOR47422_out,   WCH35_,         CHWL13_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47423(NOR47423_out,   NOR47422_out,   NOR47424_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47424(NOR47424_out,   NOR47423_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47425(NOR47425_out,   HIGH2_,         NOR47423_out,   LOW2_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47426(NOR47426_out,   WCH35_,         CHWL12_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47427(NOR47427_out,   NOR47426_out,   NOR47428_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47428(NOR47428_out,   NOR47427_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47429(NOR47429_out,   HIGH2_,         NOR47427_out,   LOW3_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47430(NOR47430_out,   WCH35_,         CHWL11_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47431(NOR47431_out,   NOR47430_out,   NOR47432_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47432(NOR47432_out,   NOR47431_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47433(NOR47433_out,   HIGH2_,         NOR47431_out,   LOW4_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47434(A22_8_DATA_,    NOR47429_out,   NOR47433_out,   NOR47438_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47435(NOR47435_out,   WCH35_,         CHWL10_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47436(NOR47436_out,   NOR47435_out,   NOR47437_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47437(NOR47437_out,   NOR47436_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47438(NOR47438_out,   HIGH2_,         NOR47436_out,   LOW5_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47439(NOR47439_out,   WCH35_,         CHWL09_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47440(NOR47440_out,   NOR47439_out,   NOR47441_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47441(NOR47441_out,   NOR47440_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47442(NOR47442_out,   HIGH2_,         NOR47440_out,   LOW6_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47443(NOR47443_out,   WCH35_,         CHWL08_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47444(NOR47444_out,   NOR47443_out,   NOR47445_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47445(NOR47445_out,   NOR47444_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47446(NOR47446_out,   HIGH2_,         NOR47444_out,   LOW7_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47447(A22_9_DATA_,    NOR47442_out,   NOR47446_out,   NOR47451_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47448(NOR47448_out,   WCH35_,         CHWL07_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47449(NOR47449_out,   NOR47448_out,   NOR47450_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47450(NOR47450_out,   NOR47449_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47451(NOR47451_out,   HIGH3_,         NOR47449_out,   LOW0_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47452(NOR47452_out,   WCH35_,         CHWL06_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47453(NOR47453_out,   NOR47452_out,   NOR47454_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47454(NOR47454_out,   NOR47453_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47455(NOR47455_out,   HIGH3_,         NOR47453_out,   LOW1_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47456(NOR47456_out,   WCH35_,         CHWL05_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR47457(NOR47457_out,   NOR47456_out,   NOR47458_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47458(NOR47458_out,   NOR47457_out,   CCH35,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR47459(NOR47459_out,   HIGH3_,         NOR47457_out,   LOW2_,          p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR47460(A22_10_DATA_,   NOR47455_out,   NOR47459_out,   NOR47412_out,   p4SW, reset, prop_clk);
    
endmodule
