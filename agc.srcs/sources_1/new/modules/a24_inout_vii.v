`timescale 1ns / 1ps

module a24_inout_vii(
    input wire SB0_,
    input wire SB1_,
    input wire SB2_,
    input wire SB4,
    
    input wire WT_,
    input wire CT_,
    input wire RT_,
    
    input wire T02_,
    input wire T06,
    input wire T08,
    
    input wire F01A,
    input wire F01B,
    input wire FS02,
    input wire F02B,
    input wire FS03,
    input wire F03B_,
    input wire FS04,
    input wire F04B,
    input wire FS05,
    input wire FS05_,
    input wire F05A_,
    input wire F05B_,
    input wire FS06,
    input wire FS06_,
    input wire FS07_, 
    input wire FS07A,
    input wire F07A_,
    input wire F07B_,
    input wire FS08,
    input wire FS08_,
    input wire FS09,
    input wire FS09_,
    input wire FS16,
    input wire FS17,
    input wire F17A,
    input wire F17B,
    input wire F18AX,
    
    input wire F5ASB2,
    
    input wire CA6_,
    input wire XB3_,
    input wire XB4_,
    input wire XB7_,
    input wire XT0_,
    
    input wire DKCTR4,
    input wire DKCTR4_,
    input wire DKCTR5,
    input wire DKCTR5_,
    
    input wire WCH_,
    input wire RCH_,
    
    input wire WL01,
    input wire WL02,
    input wire WL03,
    input wire WL04,
    input wire WL05,
    input wire WL06,
    input wire WL07,
    input wire WL08,
    input wire WL09,
    input wire WL10,
    input wire WL11,
    input wire WL12,
    input wire WL13,
    input wire WL14,
    input wire WL16,
    
    input wire NISQ_,
    
    input wire FF1109_,
    input wire FF1110_,
    input wire FF1111_,
    input wire FF1112_,
    
    input wire PIPSAM_,
    input wire PIPAZp,
    input wire PIPAZm,
    
    input wire RSCT,
    input wire RUSG_,
    input wire SUMA15_,
    input wire SUMB15_,
    input wire U2BBK,
    input wire CI_,
    
    output wire WATCHP,
    output wire MWATCH_,
    
    output wire HIGH0_,
    output wire HIGH1_,
    output wire HIGH2_,
    output wire HIGH3_,
    
    output wire WCHG_,
    output wire CCHG_,
    output wire RCHG_,
    
    output wire CHWL01_,
    output wire CHWL02_,
    output wire CHWL03_,
    output wire CHWL04_,
    output wire CHWL05_,
    output wire CHWL06_,
    output wire CHWL07_,
    output wire CHWL08_,
    output wire CHWL09_,
    output wire CHWL10_,
    output wire CHWL11_,
    output wire CHWL12_,
    output wire CHWL13_,
    output wire CHWL14_,
    output wire CHWL16_,
    
    output wire PIPPLS_,
    output wire PIPASW,
    output wire PIPDAT,
    output wire PIPINT,
    
    output wire n800SET,
    output wire n800RST,
    
    output wire n3200A,
    output wire n3200B,
    output wire n3200C,
    output wire n3200D,
    
    output wire n12KPPS,
    output wire n25KPPS,
    
    output wire RRRST,
    output wire LRRST,
    
    output wire CDUCLK,
    
    output wire NISQ,
    output wire MNISQ,
    
    output wire MON800,
    
    output wire RCHAT_,
    output wire RCHBT_,
    
    output wire ELSNCN,
    output wire ELSNCM,
    
    output wire OT1110,
    output wire OT1111,
    output wire OT1112,
    
    output wire NOZP,
    output wire NOZM,
    output wire MISSZ,
    output wire BOTHZ,
    output wire PIPZP,
    output wire PIPZM,

    output wire RSCT_,
    output wire MWCH,
    output wire MRCH,
    output wire US2SG,
    output wire U2BBKG_,
    output wire OUTCOM,
    
    output wire GTSET,
    output wire GTSET_,
    output wire GTRST_,
    output wire GTONE,
    
    output wire CI,

    output wire FLASH,
    output wire FLASH_,
    
    output wire ONE,
    
    output wire CDUSTB_,
    
    input wire n0VDCA,
    input wire p4VDC,
    input wire p4SW,
    input wire reset,
    input wire prop_clk
    );
    
    /**************************
    *
    *  Module A24 sheet 1
    *  Sheet number 2005273/1
    *
    **************************/
    
    wire NOR49110_out;
    wire NOR49111_out;
    wire NOR49112_out;
    wire NOR49113_out;
    wire NOR49115_out;
    wire NOR49120_out;
    wire NOR49123_out;
    wire NOR49126_out;
    wire NOR49129_out;
    wire NOR49132_out;
    wire NOR49136_out;
    wire NOR49140_out;
    
    wire NOR49201_out;
    wire NOR49202_out;
    wire NOR49207_out;
    wire NOR49214_out;
    wire NOR49216_out;
    wire NOR49221_out;
    wire NOR49222_out;
    wire NOR49240_out;
    wire NOR49244_out;
    wire NOR49248_out;
    
    wire WATCH;
    wire WATCH_;
    
    // NOR49101 removed (moved to A3 sheet 1)
    // NOR49102 removed (moved to A3 sheet 1)
    // NOR49103 removed (moved to A3 sheet 1)
    // NOR49104 removed (moved to A3 sheet 1)
    // NOR49105 removed (moved to A3 sheet 1)
    // NOR49106 removed (moved to A3 sheet 1)
    // NOR49107 removed (moved to A3 sheet 1)
    // NOR49108 removed (moved to A3 sheet 1)
    // NOR49109 removed (moved to A3 sheet 1)
    
    // WATCH
    nor_3 #(1'b0)  NOR49110(NOR49110_out,   T02_,           CA6_,           XB7_,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49111(NOR49111_out,   NOR49110_out,   NOR49112_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49112(NOR49112_out,   NOR49111_out,   F17B,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49113(NOR49113_out,   F17A,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49114(WATCHP,         SB2_,           NOR49112_out,   NOR49113_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49115(NOR49115_out,   NOR49113_out,   SB1_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49116(WATCH_,         WATCHP,         WATCH,          n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49117(WATCH,          WATCH_,         NOR49115_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49118(MWATCH_,        WATCH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR49119 removed (not connected)
    
    // Downlink address decoding (high part)
    nor_3 #(1'b0)  NOR49120(NOR49120_out,   DKCTR5,         DKCTR4,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49121(HIGH0_,         NOR49120_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49122 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49123(NOR49123_out,   DKCTR5,         DKCTR4_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49124(HIGH1_,         NOR49123_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49125 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49126(NOR49126_out,   DKCTR5_,        DKCTR4,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49127(HIGH2_,         NOR49126_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49128 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49129(NOR49129_out,   DKCTR5_,        DKCTR4_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49130(HIGH3_,         NOR49129_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49131 removed (fan-out expansion)
    
    // Channel service
    nor_3 #(1'b0)  NOR49132(NOR49132_out,   RCH_,           RT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49133(RCHG_,          NOR49132_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49134 removed (fan-out expansion)
    // NOR49135 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49136(NOR49136_out,   WT_,            WCH_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49137(WCHG_,          NOR49136_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49138 removed (fan-out expansion)
    // NOR49139 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49140(NOR49140_out,   WCHG_,          CT_,            n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49141(CCHG_,          NOR49140_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49142 removed (fan-out expansion)
    
    // Channel write lines
    nor_3 #(1'b0)  NOR49143(CHWL01_,        WL01,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49144 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49145(CHWL02_,        WL02,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49146 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49147(CHWL03_,        WL03,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49148 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49149(CHWL04_,        WL04,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49150 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49151(CHWL05_,        WL05,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49152 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49153(CHWL06_,        WL06,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49154 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49155(CHWL07_,        WL07,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49156 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49157(CHWL08_,        WL08,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49158 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49159(CHWL09_,        WL09,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49160 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49235(CHWL10_,        WL10,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49236 removed (fan-out expansion)
    
    
    // Standby powered
    nor_3 #(1'b0)  NOR49201(NOR49201_out,   FS04,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49202(NOR49202_out,   F03B_,          NOR49201_out,   FS05,           p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49203(PIPPLS_,        NOR49202_out,   n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49204(PIPASW,         PIPPLS_,        SB1_,           n0VDCA,         p4VDC, reset, prop_clk);
    // NOR49205 removed (moved to A1 sheet 1)
    nor_3 #(1'b0)  NOR49206(PIPDAT,         PIPPLS_,        SB2_,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49207(NOR49207_out,   SB4,            n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49208(PIPINT,         PIPPLS_,        NOR49207_out,   n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49209(n800SET,        F07A_,          SB1_,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49210(n800RST,        SB1_,           F07B_,          n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49211(n3200A,         F05A_,          SB0_,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49212(n3200B,         F05B_,          SB0_,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49213(n3200C,         FS05,           SB0_,           NOR49214_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49214(NOR49214_out,   F04B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49215(n3200D,         NOR49214_out,   SB0_,           FS05_,          p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49216(NOR49216_out,   F02B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49217(n12KPPS,        FS03,           NOR49216_out,   SB0_,           p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49218(RRRST,          F05B_,          SB1_,           n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49219(LRRST,          F05B_,          SB1_,           n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49220(n25KPPS,        SB0_,           FS02,           NOR49221_out,   p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49221(NOR49221_out,   F01B,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49222(NOR49222_out,   F01A,           n0VDCA,         n0VDCA,         p4VDC, reset, prop_clk);
    nor_3 #(1'b0)  NOR49223(CDUCLK,         NOR49222_out,   SB0_,           n0VDCA,         p4VDC, reset, prop_clk);
    
    // NOR49224 moved to A02 sheet 2
    // NOR49225 removed (fan-out expansion)
    // NOR49226 moved to A02 sheet 2
    // NOR49227 removed (fan-out expansion)
    // NOR49228 moved to A02 sheet 2
    // NOR49229 removed (fan-out expansion)
    
    // NOR49230 removed (moved to A1 sheet 1)
    // NOR49231 removed (fan-out expansion)
    // NOR49232 removed (moved to A1 sheet 1)
    // NOR49233 removed (fan-out expansion)
    // NOR49234 removed (moved to A1 sheet 1)
    // NOR49255 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49237(NISQ,           NISQ_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49238(MNISQ,          NISQ_,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49239(MON800,         FS07A,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49240(NOR49240_out,   XB4_,           XT0_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49241(RCHAT_,         NOR49240_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49242 removed (fan-out expansion)
    // NOR49243 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49244(NOR49244_out,   XT0_,           XB3_,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49245(RCHBT_,         NOR49244_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49246 removed (fan-out expansion)
    // NOR49247 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49248(NOR49248_out,   FS07A,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49249(ELSNCN,         NOR49248_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49250(ELSNCM,         NOR49248_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR49251 removed (not connected)
    
    nor_3 #(1'b0)  NOR49252(OT1110,         FF1110_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49253(OT1111,         FF1111_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49254(OT1112,         FF1112_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    
    /**************************
    *
    *  Module A24 sheet 2
    *  Sheet number 2005273/2
    *
    **************************/
    
    wire NOR49301_out;
    wire NOR49302_out;
    wire NOR49304_out;
    wire NOR49306_out;
    wire NOR49308_out;
    wire NOR49310_out;
    wire NOR49311_out;
    wire NOR49312_out;
    wire NOR49313_out;
    wire NOR49314_out;
    wire NOR49315_out;
    wire NOR49316_out;
    wire NOR49317_out;
    wire NOR49318_out;
    wire NOR49319_out;
    wire NOR49320_out;
    wire NOR49321_out;
    wire NOR49322_out;
    wire NOR49323_out;
    wire NOR49324_out;
    wire NOR49325_out;
    wire NOR49326_out;
    wire NOR49327_out;
    wire NOR49328_out;
    wire NOR49341_out;
    wire NOR49342_out;
    wire NOR49346_out;
    wire NOR49347_out;
    wire NOR49359_out;
    wire NOR49412_out;
    
    wire PIPAZp_;
    wire PIPAZm_;
    wire PIPGZp;
    wire PIPGZm;

    wire GTRST;


    // PIPA precount logic Z
    
    // NOR54361 and NOR54362 moved here from A11 sheet 2
    nor_3 #(1'b0)  NOR54361(PIPAZp_,        PIPAZp,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR54362(PIPAZm_,        PIPAZm,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR53261 and NOR53262 moved here from A10 sheet 1
    nor_3 #(1'b0)  NOR53261(PIPGZp,         PIPSAM_,        PIPAZp_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR53262(PIPGZm,         PIPSAM_,        PIPAZm_,        n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49301(NOR49301_out,   PIPGZp,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49302(NOR49302_out,   PIPGZm,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR49303(NOZM,           PIPGZm,         NOR49304_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49304(NOR49304_out,   NOZM,           F18AX,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR49305(NOZP,           PIPGZp,         NOR49306_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49306(NOR49306_out,   NOZP,           F18AX,          n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b1)  NOR49307(MISSZ,          PIPGZp,         PIPGZm,         NOR49308_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49308(NOR49308_out,   MISSZ,          F5ASB2,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49309(BOTHZ,          NOR49301_out,   NOR49302_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49310(NOR49310_out,   NOR49302_out,   NOR49328_out,   NOR49317_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49311(NOR49311_out,   NOR49316_out,   NOR49328_out,   NOR49301_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49312(NOR49312_out,   NOR49310_out,   NOR49313_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49313(NOR49313_out,   NOR49312_out,   NOR49311_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49314(NOR49314_out,   NOR49318_out,   NOR49312_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49315(NOR49315_out,   NOR49318_out,   NOR49313_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49316(NOR49316_out,   NOR49314_out,   NOR49317_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49317(NOR49317_out,   NOR49316_out,   NOR49315_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49318(NOR49318_out,   F5ASB2,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49319(NOR49319_out,   NOR49317_out,   NOR49328_out,   NOR49301_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49320(NOR49320_out,   NOR49316_out,   NOR49328_out,   NOR49302_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49321(NOR49321_out,   NOR49317_out,   NOR49327_out,   NOR49302_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49322(NOR49322_out,   NOR49316_out,   NOR49327_out,   NOR49301_out,   p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49323(NOR49323_out,   NOR49319_out,   NOR49320_out,   NOR49324_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49324(NOR49324_out,   NOR49323_out,   NOR49321_out,   NOR49322_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49325(NOR49325_out,   NOR49318_out,   NOR49323_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49326(NOR49326_out,   NOR49318_out,   NOR49324_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49327(NOR49327_out,   NOR49325_out,   NOR49328_out,   n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49328(NOR49328_out,   NOR49327_out,   NOR49326_out,   n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49329(PIPZP,          NOR49317_out,   NOR49327_out,   NOR49301_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49330(PIPZM,          NOR49316_out,   NOR49327_out,   NOR49302_out,   p4SW, reset, prop_clk);

    // NOR49331 removed (moved to A19 sheet 2)
    nor_3 #(1'b0)  NOR49332(RSCT_,          RSCT,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49333 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49334(MWCH,           WCH_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49335(MRCH,           RCH_,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49336(US2SG,          RUSG_,          SUMA15_,        SUMB15_,        p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49337(U2BBKG_,        U2BBK,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49338 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49339(OUTCOM,         FF1109_,        n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49340 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49341(NOR49341_out,   FS07_,          FS08_,          FS09_,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49342(NOR49342_out,   NOR49341_out,   n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49343(GTSET,          FS06_,          F05B_,          NOR49342_out,   p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49344(GTSET_,         GTSET,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49345(GTRST,          NOR49342_out,   F05B_,          FS06,           p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49346(NOR49346_out,   FS06,           F05B_,          FS07A,          p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49347(NOR49347_out,   FS08,           FS09,           n0VDCA,         p4SW, reset, prop_clk);
    assign GTONE = NOR49346_out & NOR49347_out;
    
    // Moved here from A11 sheet 1
    nor_3 #(1'b0)  NOR54261(GTRST_,         GTRST,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR49348 removed (moved to A1 sheet 1)
    // NOR49349 removed (fan-out expansion)
    // NOR49350 removed (fan-out expansion)
    // NOR49351 removed (moved to A1 sheet 1)
    // NOR49352 removed (moved to A1 sheet 1)
    // NOR49353 removed (moved to A1 sheet 1)

    nor_3 #(1'b0)  NOR49354(CI,             CI_,            n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR49355 removed (moved to A1 sheet 1)
    // NOR49356 removed (moved to A1 sheet 1)
    // NOR49357 removed (moved to A1 sheet 1)
    // NOR49358 removed (moved to A1 sheet 1)
    // NOR49359 removed (moved to A19 sheet 2)
    // NOR49360 removed (moved to A19 sheet 2)

    // NOR49401 removed (fan-out expansion)
    // NOR49402 removed (fan-out expansion)
    // NOR49403 removed (fan-out expansion)
    // NOR49404 removed (fan-out expansion)
    // NOR49405 removed (fan-out expansion)
    // NOR49406 removed (fan-out expansion)
    // NOR49407 removed (fan-out expansion)
    // NOR49408 removed (fan-out expansion)
    
    nor_3 #(1'b0)  NOR49409(FLASH,          FS17,           FS16,           n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b0)  NOR49410(FLASH_,         FLASH,          n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49411(ONE,            n0VDCA,         n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    
    nor_3 #(1'b0)  NOR49412(NOR49412_out,   T08,            CDUSTB_,        n0VDCA,         p4SW, reset, prop_clk);
    nor_3 #(1'b1)  NOR49413(CDUSTB_,        NOR49412_out,   T06,            n0VDCA,         p4SW, reset, prop_clk);
    
    // NOR49414 removed (moved to A2 sheet 1)
    // NOR49415 removed (fan-out expansion)
    // NOR49416 removed (fan-out expansion)
    // NOR49417 removed (fan-out expansion)
    // NOR49418 removed (moved to A1 sheet 1)
    // NOR49419 removed (moved to A3 sheet 2)
    // NOR49420 removed (moved to A1 sheet 1)
    // NOR49421 removed (fan-out expansion A2 sheet 2)
    // NOR49422 removed (fan-out expansion A2 sheet 2)
    // NOR49423 removed (fan-out expansion A2 sheet 2)
    // NOR49424 removed (fan-out expansion A2 sheet 2)
    
    nor_3 #(1'b0)  NOR49425(CHWL11_,        WL11,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49426 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49427(CHWL12_,        WL12,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49428 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49429(CHWL13_,        WL13,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49430 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49431(CHWL14_,        WL14,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49432 removed (fan-out expansion)
    nor_3 #(1'b0)  NOR49433(CHWL16_,        WL16,           n0VDCA,         n0VDCA,         p4SW, reset, prop_clk);
    // NOR49434 removed (fan-out expansion)
    
    // NOR49435 removed (moved to A13 sheet 1)
    // NOR49436 removed (moved to A13 sheet 1)
    // NOR49437 removed (moved to A13 sheet 1)
    // NOR49438 removed (moved to A13 sheet 1)
    // NOR49439 removed (moved to A13 sheet 1)
    // NOR49440 removed (moved to A13 sheet 1)
    // NOR49441 removed (moved to A13 sheet 1)
    // NOR49442 removed (moved to A13 sheet 1)
    // NOR49443 removed (moved to A13 sheet 1)
    
endmodule
