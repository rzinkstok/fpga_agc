module a2_timer(
	CLOCK, STOP, 
	CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A, 
	RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_,
	SIM_RST, SIM_CLK
);

	input wire CLOCK, STOP, SIM_RST, SIM_CLK;
	output wire CLK, PHS2, PHS2_, PHS4, PHS4_, CT, CT_, RT, WT, WT_, TT_, OVFSTB_, MONWT, Q2A;
	output wire RINGA_, RINGB_, ODDSET_, EVNSET, EVNSET_;
	
	wire NOR37101_out;
	wire NOR37102_out;
	wire NOR37103_out;
	wire NOR37105_out;
	wire NOR37106_out;
	wire NOR37107_out;
	wire NOR37111_out;
	wire NOR37112_out;
	wire NOR37113_out;
	wire NOR37114_out;
	wire NOR37117_out;
	wire NOR37118_out;
	wire NOR37121_out;
	wire NOR37136_out;
	wire NOR37138_out;
	wire NOR37139_out;
	wire NOR37148_out;
	wire NOR37149_out;
	wire NOR37150_out;
	wire NOR37152_out;
	wire NOR37153_out;
	wire NOR37154_out;
	
	// Clock divider 1
	nor_2 #(1'b0) NOR37101(NOR37101_out, 	NOR37105_out, 	NOR37102_out, 						SIM_RST, SIM_CLK);
	nor_3 #(1'b0) NOR37102(NOR37102_out, 	NOR37101_out, 	CLOCK, 			NOR37103_out, 	SIM_RST, SIM_CLK);
	nor_3 #(1'b0) NOR37103(NOR37103_out, 	NOR37102_out, 	CLOCK, 			PHS2, 			SIM_RST, SIM_CLK);
	nor_2 #(1'b1) NOR37104(PHS2, 				NOR37103_out, 	NOR37106_out,		      		SIM_RST, SIM_CLK);
	nor_2 #(1'b1) NOR37105(NOR37105_out, 	NOR37102_out, 	NOR37106_out, 						SIM_RST, SIM_CLK);
	nor_2 #(1'b0) NOR37106(NOR37106_out, 	NOR37105_out, 	NOR37103_out, 						SIM_RST, SIM_CLK);
	
	// PHS4 and PHS4_
	nor_1 #(1'b1) NOR37107(NOR37107_out, 	NOR37101_out, 											SIM_RST, SIM_CLK);
	nor_2 #(1'b0) NOR37108(PHS4, 				NOR37107_out, 	NOR37103_out, 						SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37109(PHS4_,				PHS4,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37110(PHS4_,				PHS4,														SIM_RST, SIM_CLK);
	
	// Clock divider 2, part 1
	nor_2 #(1'b0) NOR37111(NOR37111_out, 	NOR37117_out, 	NOR37112_out, 						SIM_RST, SIM_CLK);
	nor_3 #(1'b0) NOR37112(NOR37112_out, 	NOR37111_out, 	NOR37107_out, 	NOR37113_out, 	SIM_RST, SIM_CLK);
	nor_3 #(1'b0) NOR37113(NOR37113_out, 	NOR37112_out,  NOR37107_out,  NOR37114_out, 	SIM_RST, SIM_CLK);
	nor_2 #(1'b1) NOR37114(NOR37114_out,   NOR37113_out, 	NOR37118_out, 						SIM_RST, SIM_CLK);
	
	// RINGA_
	nor_1 #(1'b1) NOR37115(RINGA_,			NOR37111_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37116(RINGA_,			NOR37111_out,											SIM_RST, SIM_CLK);
	
	// Clock divider 2, part 2
	nor_2 #(1'b1) NOR37117(NOR37117_out, 	NOR37112_out, 	NOR37118_out, 						SIM_RST, SIM_CLK);
	nor_2 #(1'b0) NOR37118(NOR37118_out, 	NOR37117_out, 	NOR37113_out, 						SIM_RST, SIM_CLK);
	
	// RINGB_
	nor_1 #(1'b0) NOR37119(RINGB_,			NOR37114_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37120(RINGB_,			NOR37114_out,											SIM_RST, SIM_CLK);
	
	// ODDSET_
	nor_2 #(1'b0) NOR37121(NOR37121_out,	STOP,				RINGA_,								SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37122(ODDSET_,			NOR37121_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37123(ODDSET_,			NOR37121_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37124(ODDSET_,			NOR37121_out,											SIM_RST, SIM_CLK);
	
	// EVNSET and EVNSET_
	nor_1 #(1'b1) NOR37125(EVNSET,			RINGB_,													SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37126(EVNSET_,			EVNSET,													SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37127(EVNSET_,			EVNSET,													SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37128(EVNSET_,			EVNSET,													SIM_RST, SIM_CLK);
	
	// RT
	nor_1 #(1'b1) NOR37129(RT, 				NOR37103_out, 											SIM_RST, SIM_CLK);
	
	// WT and WT_
 	nor_1 #(1'b0) NOR37130(WT,					NOR37105_out, 											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37131(WT_,				WT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37132(WT_,				WT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37133(WT_,				WT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37134(WT_,				WT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37135(TT_,				WT,														SIM_RST, SIM_CLK);
	
	// MONWT
	nor_2 #(1'b0) NOR37136(NOR37136_out,	WT_,				WT_,									SIM_RST, SIM_CLK);
	od_buf 		  BUF37136(MONWT,				NOR37136_out);
	
	// CLK
	nor_1 #(1'b0) NOR37137(CLK,				WT_,														SIM_RST, SIM_CLK);
	
	// Q2A
	nor_3 #(1'b0) NOR37138(NOR37138_out,	WT_,				WT_,				WT_,				SIM_RST, SIM_CLK);
	od_buf 		  BUF37138(Q2A,				NOR37138_out);
	
	// CT and CT_
	nor_1 #(1'b1) NOR37139(NOR37139_out, 	NOR37102_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37140(CT,					NOR37139_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37141(CT,					NOR37139_out,											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37142(CT_,				CT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37143(CT_,				CT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37144(CT_,				CT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37145(CT_,				CT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37146(CT_,				CT,														SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37147(CT_,				CT,														SIM_RST, SIM_CLK);
	
	// OVFSTB
	nor_2 #(1'b0) NOR37148(NOR37148_out, 	CT_, 				NOR37149_out,						SIM_RST, SIM_CLK);
	nor_2 #(1'b0) NOR37149(NOR37149_out, 	NOR37154_out, 	NOR37148_out,						SIM_RST, SIM_CLK);
	nor_2 #(1'b0) NOR37150(NOR37150_out, 	NOR37152_out, 	NOR37149_out,						SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37151(OVFSTB_, 			NOR37149_out,											SIM_RST, SIM_CLK);
	nor_2 #(1'b1) NOR37152(NOR37152_out, 	NOR37150_out, 	NOR37148_out,						SIM_RST, SIM_CLK);
	nor_1 #(1'b0) NOR37153(NOR37153_out, 	NOR37152_out, 											SIM_RST, SIM_CLK);
	nor_1 #(1'b1) NOR37154(NOR37154_out, 	NOR37153_out,											SIM_RST, SIM_CLK);
	
	// PHS2_
	nor_1 #(1'b0) NOR37155(PHS2_, 			PHS2,														SIM_RST, SIM_CLK);
	
endmodule