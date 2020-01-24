// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module TPG_sim_bd_v_tpg_0_0_tpgPatternTemporalRa (
        ap_ready,
        rampStart,
        color,
        ap_return_0,
        ap_return_1,
        ap_return_2
);


output   ap_ready;
input  [7:0] rampStart;
input  [7:0] color;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;

wire   [0:0] icmp_ln1070_fu_24_p2;
wire   [7:0] select_ln1070_fu_30_p3;

assign ap_ready = 1'b1;

assign ap_return_0 = rampStart;

assign ap_return_1 = select_ln1070_fu_30_p3;

assign ap_return_2 = select_ln1070_fu_30_p3;

assign icmp_ln1070_fu_24_p2 = ((color == 8'd0) ? 1'b1 : 1'b0);

assign select_ln1070_fu_30_p3 = ((icmp_ln1070_fu_24_p2[0:0] === 1'b1) ? rampStart : 8'd128);

endmodule //TPG_sim_bd_v_tpg_0_0_tpgPatternTemporalRa
