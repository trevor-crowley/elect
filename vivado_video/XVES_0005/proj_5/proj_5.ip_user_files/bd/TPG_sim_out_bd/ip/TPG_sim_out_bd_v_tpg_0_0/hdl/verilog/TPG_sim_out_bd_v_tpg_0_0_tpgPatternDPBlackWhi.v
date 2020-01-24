// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TPG_sim_out_bd_v_tpg_0_0_tpgPatternDPBlackWhi (
        ap_ready,
        x,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [15:0] x;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;

wire   [0:0] trunc_ln1631_fu_16_p1;
wire   [7:0] select_ln300_fu_20_p3;

assign ap_ready = 1'b1;

assign ap_return_0 = select_ln300_fu_20_p3;

assign ap_return_1 = select_ln300_fu_20_p3;

assign ap_return_2 = select_ln300_fu_20_p3;

assign select_ln300_fu_20_p3 = ((trunc_ln1631_fu_16_p1[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign trunc_ln1631_fu_16_p1 = x[0:0];

endmodule //TPG_sim_out_bd_v_tpg_0_0_tpgPatternDPBlackWhi
