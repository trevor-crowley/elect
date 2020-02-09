// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sat Feb  8 19:53:38 2020
// Host        : luigilinux running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ test_VPG_bd_video_mandelbrot_gen_0_0_sim_netlist.v
// Design      : test_VPG_bd_video_mandelbrot_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_VPG_bd_video_mandelbrot_gen_0_0,video_mandelbrot_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "video_mandelbrot_generator,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TDATA,
    m_axis_video_TDEST,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF m_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN test_VPG_bd_aclk_40MHz, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *) output m_axis_video_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *) input m_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *) output [23:0]m_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDEST" *) output [0:0]m_axis_video_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TKEEP" *) output [2:0]m_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TSTRB" *) output [2:0]m_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *) output [0:0]m_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *) output [0:0]m_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN test_VPG_bd_aclk_40MHz, INSERT_VIP 0" *) output [0:0]m_axis_video_TID;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [23:0]m_axis_video_TDATA;
  wire [0:0]m_axis_video_TDEST;
  wire [0:0]m_axis_video_TID;
  wire [2:0]m_axis_video_TKEEP;
  wire [0:0]m_axis_video_TLAST;
  wire m_axis_video_TREADY;
  wire [2:0]m_axis_video_TSTRB;
  wire [0:0]m_axis_video_TUSER;
  wire m_axis_video_TVALID;

  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_mandelbrot_generator inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .m_axis_video_TDATA(m_axis_video_TDATA),
        .m_axis_video_TDEST(m_axis_video_TDEST),
        .m_axis_video_TID(m_axis_video_TID),
        .m_axis_video_TKEEP(m_axis_video_TKEEP),
        .m_axis_video_TLAST(m_axis_video_TLAST),
        .m_axis_video_TREADY(m_axis_video_TREADY),
        .m_axis_video_TSTRB(m_axis_video_TSTRB),
        .m_axis_video_TUSER(m_axis_video_TUSER),
        .m_axis_video_TVALID(m_axis_video_TVALID));
endmodule

(* ap_ST_fsm_state1 = "3'b001" *) (* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video_mandelbrot_generator
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    m_axis_video_TDATA,
    m_axis_video_TVALID,
    m_axis_video_TREADY,
    m_axis_video_TKEEP,
    m_axis_video_TSTRB,
    m_axis_video_TUSER,
    m_axis_video_TLAST,
    m_axis_video_TID,
    m_axis_video_TDEST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [23:0]m_axis_video_TDATA;
  output m_axis_video_TVALID;
  input m_axis_video_TREADY;
  output [2:0]m_axis_video_TKEEP;
  output [2:0]m_axis_video_TSTRB;
  output [0:0]m_axis_video_TUSER;
  output [0:0]m_axis_video_TLAST;
  output [0:0]m_axis_video_TID;
  output [0:0]m_axis_video_TDEST;

  wire \<const0> ;
  wire \ap_CS_fsm[0]_i_1_n_1 ;
  wire \ap_CS_fsm[1]_i_1_n_1 ;
  wire \ap_CS_fsm[2]_i_1_n_1 ;
  wire \ap_CS_fsm[2]_i_2_n_1 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready_INST_0_i_1_n_1;
  wire ap_rst_n;
  wire ap_start;
  wire i_0_reg_89;
  wire \i_0_reg_89_reg_n_1_[0] ;
  wire \i_0_reg_89_reg_n_1_[1] ;
  wire \i_0_reg_89_reg_n_1_[2] ;
  wire \i_0_reg_89_reg_n_1_[3] ;
  wire \i_0_reg_89_reg_n_1_[4] ;
  wire \i_0_reg_89_reg_n_1_[5] ;
  wire \i_0_reg_89_reg_n_1_[6] ;
  wire \i_0_reg_89_reg_n_1_[7] ;
  wire \i_0_reg_89_reg_n_1_[8] ;
  wire \i_0_reg_89_reg_n_1_[9] ;
  wire [9:0]i_fu_118_p2;
  wire [9:0]i_reg_164;
  wire \i_reg_164[5]_i_1_n_1 ;
  wire \i_reg_164[7]_i_2_n_1 ;
  wire \i_reg_164[9]_i_2_n_1 ;
  wire j_0_reg_101;
  wire \j_0_reg_101[5]_i_1_n_1 ;
  wire [9:0]j_fu_130_p2;
  wire [9:0]\^m_axis_video_TDATA ;
  wire [0:0]m_axis_video_TLAST;
  wire \m_axis_video_TLAST[0]_INST_0_i_1_n_1 ;
  wire m_axis_video_TREADY;
  wire [0:0]m_axis_video_TUSER;
  wire \m_axis_video_TUSER[0]_INST_0_i_1_n_1 ;
  wire \m_axis_video_TUSER[0]_INST_0_i_2_n_1 ;
  wire \m_axis_video_TUSER[0]_INST_0_i_3_n_1 ;
  wire m_axis_video_TVALID;
  wire m_axis_video_TVALID_INST_0_i_1_n_1;

  assign ap_ready = ap_done;
  assign m_axis_video_TDATA[23] = \<const0> ;
  assign m_axis_video_TDATA[22] = \<const0> ;
  assign m_axis_video_TDATA[21] = \<const0> ;
  assign m_axis_video_TDATA[20] = \<const0> ;
  assign m_axis_video_TDATA[19] = \<const0> ;
  assign m_axis_video_TDATA[18] = \<const0> ;
  assign m_axis_video_TDATA[17] = \<const0> ;
  assign m_axis_video_TDATA[16] = \<const0> ;
  assign m_axis_video_TDATA[15] = \<const0> ;
  assign m_axis_video_TDATA[14] = \<const0> ;
  assign m_axis_video_TDATA[13] = \<const0> ;
  assign m_axis_video_TDATA[12] = \<const0> ;
  assign m_axis_video_TDATA[11] = \<const0> ;
  assign m_axis_video_TDATA[10] = \<const0> ;
  assign m_axis_video_TDATA[9:0] = \^m_axis_video_TDATA [9:0];
  assign m_axis_video_TDEST[0] = \<const0> ;
  assign m_axis_video_TID[0] = \<const0> ;
  assign m_axis_video_TKEEP[2] = \<const0> ;
  assign m_axis_video_TKEEP[1] = \<const0> ;
  assign m_axis_video_TKEEP[0] = \<const0> ;
  assign m_axis_video_TSTRB[2] = \<const0> ;
  assign m_axis_video_TSTRB[1] = \<const0> ;
  assign m_axis_video_TSTRB[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA2F2FFFF)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_state2),
        .I3(ap_ready_INST_0_i_1_n_1),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[0]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h080D0000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_state2),
        .I3(\ap_CS_fsm[2]_i_2_n_1 ),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0B080000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_1),
        .I1(ap_CS_fsm_state2),
        .I2(\ap_CS_fsm_reg_n_1_[0] ),
        .I3(\ap_CS_fsm[2]_i_2_n_1 ),
        .I4(ap_rst_n),
        .O(\ap_CS_fsm[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\^m_axis_video_TDATA [9]),
        .I1(\^m_axis_video_TDATA [7]),
        .I2(\^m_axis_video_TDATA [5]),
        .I3(\^m_axis_video_TDATA [8]),
        .I4(\m_axis_video_TUSER[0]_INST_0_i_3_n_1 ),
        .I5(ap_CS_fsm_state3),
        .O(\ap_CS_fsm[2]_i_2_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_1 ),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_1 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_1 ),
        .Q(ap_CS_fsm_state3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(ap_ready_INST_0_i_1_n_1),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    ap_ready_INST_0_i_1
       (.I0(\m_axis_video_TUSER[0]_INST_0_i_2_n_1 ),
        .I1(\i_0_reg_89_reg_n_1_[6] ),
        .I2(\i_0_reg_89_reg_n_1_[3] ),
        .I3(\i_0_reg_89_reg_n_1_[4] ),
        .I4(\i_0_reg_89_reg_n_1_[8] ),
        .I5(\i_0_reg_89_reg_n_1_[9] ),
        .O(ap_ready_INST_0_i_1_n_1));
  LUT3 #(
    .INIT(8'h80)) 
    \i_0_reg_89[9]_i_1 
       (.I0(\ap_CS_fsm[2]_i_2_n_1 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_1_[0] ),
        .O(i_0_reg_89));
  LUT1 #(
    .INIT(2'h1)) 
    \i_0_reg_89[9]_i_2 
       (.I0(\ap_CS_fsm[2]_i_2_n_1 ),
        .O(ap_NS_fsm1));
  FDRE \i_0_reg_89_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[0]),
        .Q(\i_0_reg_89_reg_n_1_[0] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[1]),
        .Q(\i_0_reg_89_reg_n_1_[1] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[2]),
        .Q(\i_0_reg_89_reg_n_1_[2] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[3]),
        .Q(\i_0_reg_89_reg_n_1_[3] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[4]),
        .Q(\i_0_reg_89_reg_n_1_[4] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[5]),
        .Q(\i_0_reg_89_reg_n_1_[5] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[6]),
        .Q(\i_0_reg_89_reg_n_1_[6] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[7]),
        .Q(\i_0_reg_89_reg_n_1_[7] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[8]),
        .Q(\i_0_reg_89_reg_n_1_[8] ),
        .R(i_0_reg_89));
  FDRE \i_0_reg_89_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_164[9]),
        .Q(\i_0_reg_89_reg_n_1_[9] ),
        .R(i_0_reg_89));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_164[0]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[0] ),
        .O(i_fu_118_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_164[1]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[1] ),
        .I1(\i_0_reg_89_reg_n_1_[0] ),
        .O(i_fu_118_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_164[2]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[2] ),
        .I1(\i_0_reg_89_reg_n_1_[1] ),
        .I2(\i_0_reg_89_reg_n_1_[0] ),
        .O(i_fu_118_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_reg_164[3]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[0] ),
        .I1(\i_0_reg_89_reg_n_1_[1] ),
        .I2(\i_0_reg_89_reg_n_1_[2] ),
        .I3(\i_0_reg_89_reg_n_1_[3] ),
        .O(i_fu_118_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_164[4]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[4] ),
        .I1(\i_0_reg_89_reg_n_1_[0] ),
        .I2(\i_0_reg_89_reg_n_1_[1] ),
        .I3(\i_0_reg_89_reg_n_1_[2] ),
        .I4(\i_0_reg_89_reg_n_1_[3] ),
        .O(i_fu_118_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_164[5]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[5] ),
        .I1(\i_0_reg_89_reg_n_1_[4] ),
        .I2(\i_0_reg_89_reg_n_1_[3] ),
        .I3(\i_0_reg_89_reg_n_1_[0] ),
        .I4(\i_0_reg_89_reg_n_1_[1] ),
        .I5(\i_0_reg_89_reg_n_1_[2] ),
        .O(\i_reg_164[5]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \i_reg_164[6]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[6] ),
        .I1(\i_reg_164[7]_i_2_n_1 ),
        .I2(\i_0_reg_89_reg_n_1_[3] ),
        .I3(\i_0_reg_89_reg_n_1_[4] ),
        .I4(\i_0_reg_89_reg_n_1_[5] ),
        .O(i_fu_118_p2[6]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \i_reg_164[7]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[7] ),
        .I1(\i_reg_164[7]_i_2_n_1 ),
        .I2(\i_0_reg_89_reg_n_1_[5] ),
        .I3(\i_0_reg_89_reg_n_1_[6] ),
        .I4(\i_0_reg_89_reg_n_1_[3] ),
        .I5(\i_0_reg_89_reg_n_1_[4] ),
        .O(i_fu_118_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \i_reg_164[7]_i_2 
       (.I0(\i_0_reg_89_reg_n_1_[0] ),
        .I1(\i_0_reg_89_reg_n_1_[1] ),
        .I2(\i_0_reg_89_reg_n_1_[2] ),
        .O(\i_reg_164[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_164[8]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[8] ),
        .I1(\i_reg_164[9]_i_2_n_1 ),
        .O(i_fu_118_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_164[9]_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[9] ),
        .I1(\i_reg_164[9]_i_2_n_1 ),
        .I2(\i_0_reg_89_reg_n_1_[8] ),
        .O(i_fu_118_p2[9]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \i_reg_164[9]_i_2 
       (.I0(\i_0_reg_89_reg_n_1_[7] ),
        .I1(\i_reg_164[7]_i_2_n_1 ),
        .I2(\i_0_reg_89_reg_n_1_[5] ),
        .I3(\i_0_reg_89_reg_n_1_[6] ),
        .I4(\i_0_reg_89_reg_n_1_[3] ),
        .I5(\i_0_reg_89_reg_n_1_[4] ),
        .O(\i_reg_164[9]_i_2_n_1 ));
  FDRE \i_reg_164_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[0]),
        .Q(i_reg_164[0]),
        .R(1'b0));
  FDRE \i_reg_164_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[1]),
        .Q(i_reg_164[1]),
        .R(1'b0));
  FDRE \i_reg_164_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[2]),
        .Q(i_reg_164[2]),
        .R(1'b0));
  FDRE \i_reg_164_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[3]),
        .Q(i_reg_164[3]),
        .R(1'b0));
  FDRE \i_reg_164_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[4]),
        .Q(i_reg_164[4]),
        .R(1'b0));
  FDRE \i_reg_164_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(\i_reg_164[5]_i_1_n_1 ),
        .Q(i_reg_164[5]),
        .R(1'b0));
  FDRE \i_reg_164_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[6]),
        .Q(i_reg_164[6]),
        .R(1'b0));
  FDRE \i_reg_164_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[7]),
        .Q(i_reg_164[7]),
        .R(1'b0));
  FDRE \i_reg_164_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[8]),
        .Q(i_reg_164[8]),
        .R(1'b0));
  FDRE \i_reg_164_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_118_p2[9]),
        .Q(i_reg_164[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_0_reg_101[0]_i_1 
       (.I0(\^m_axis_video_TDATA [0]),
        .O(j_fu_130_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_reg_101[1]_i_1 
       (.I0(\^m_axis_video_TDATA [1]),
        .I1(\^m_axis_video_TDATA [0]),
        .O(j_fu_130_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j_0_reg_101[2]_i_1 
       (.I0(\^m_axis_video_TDATA [1]),
        .I1(\^m_axis_video_TDATA [0]),
        .I2(\^m_axis_video_TDATA [2]),
        .O(j_fu_130_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_0_reg_101[3]_i_1 
       (.I0(\^m_axis_video_TDATA [3]),
        .I1(\^m_axis_video_TDATA [1]),
        .I2(\^m_axis_video_TDATA [0]),
        .I3(\^m_axis_video_TDATA [2]),
        .O(j_fu_130_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_0_reg_101[4]_i_1 
       (.I0(\^m_axis_video_TDATA [4]),
        .I1(\^m_axis_video_TDATA [2]),
        .I2(\^m_axis_video_TDATA [0]),
        .I3(\^m_axis_video_TDATA [1]),
        .I4(\^m_axis_video_TDATA [3]),
        .O(j_fu_130_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_0_reg_101[5]_i_1 
       (.I0(\^m_axis_video_TDATA [5]),
        .I1(\^m_axis_video_TDATA [3]),
        .I2(\^m_axis_video_TDATA [1]),
        .I3(\^m_axis_video_TDATA [0]),
        .I4(\^m_axis_video_TDATA [2]),
        .I5(\^m_axis_video_TDATA [4]),
        .O(\j_0_reg_101[5]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \j_0_reg_101[6]_i_1 
       (.I0(\^m_axis_video_TDATA [6]),
        .I1(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ),
        .I2(\^m_axis_video_TDATA [5]),
        .O(j_fu_130_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \j_0_reg_101[7]_i_1 
       (.I0(\^m_axis_video_TDATA [7]),
        .I1(\^m_axis_video_TDATA [5]),
        .I2(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ),
        .I3(\^m_axis_video_TDATA [6]),
        .O(j_fu_130_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \j_0_reg_101[8]_i_1 
       (.I0(\^m_axis_video_TDATA [8]),
        .I1(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ),
        .I2(\^m_axis_video_TDATA [7]),
        .I3(\^m_axis_video_TDATA [6]),
        .I4(\^m_axis_video_TDATA [5]),
        .O(j_fu_130_p2[8]));
  LUT5 #(
    .INIT(32'h08888888)) 
    \j_0_reg_101[9]_i_1 
       (.I0(ap_ready_INST_0_i_1_n_1),
        .I1(ap_CS_fsm_state2),
        .I2(ap_CS_fsm_state3),
        .I3(m_axis_video_TREADY),
        .I4(m_axis_video_TVALID_INST_0_i_1_n_1),
        .O(j_0_reg_101));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \j_0_reg_101[9]_i_2 
       (.I0(\^m_axis_video_TDATA [9]),
        .I1(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ),
        .I2(\^m_axis_video_TDATA [7]),
        .I3(\^m_axis_video_TDATA [6]),
        .I4(\^m_axis_video_TDATA [8]),
        .I5(\^m_axis_video_TDATA [5]),
        .O(j_fu_130_p2[9]));
  FDRE \j_0_reg_101_reg[0] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[0]),
        .Q(\^m_axis_video_TDATA [0]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[1] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[1]),
        .Q(\^m_axis_video_TDATA [1]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[2] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[2]),
        .Q(\^m_axis_video_TDATA [2]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[3] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[3]),
        .Q(\^m_axis_video_TDATA [3]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[4] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[4]),
        .Q(\^m_axis_video_TDATA [4]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[5] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(\j_0_reg_101[5]_i_1_n_1 ),
        .Q(\^m_axis_video_TDATA [5]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[6] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[6]),
        .Q(\^m_axis_video_TDATA [6]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[7] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[7]),
        .Q(\^m_axis_video_TDATA [7]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[8] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[8]),
        .Q(\^m_axis_video_TDATA [8]),
        .R(j_0_reg_101));
  FDRE \j_0_reg_101_reg[9] 
       (.C(ap_clk),
        .CE(m_axis_video_TVALID),
        .D(j_fu_130_p2[9]),
        .Q(\^m_axis_video_TDATA [9]),
        .R(j_0_reg_101));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \m_axis_video_TLAST[0]_INST_0 
       (.I0(\^m_axis_video_TDATA [5]),
        .I1(\^m_axis_video_TDATA [8]),
        .I2(\^m_axis_video_TDATA [6]),
        .I3(\^m_axis_video_TDATA [7]),
        .I4(\^m_axis_video_TDATA [9]),
        .I5(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ),
        .O(m_axis_video_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \m_axis_video_TLAST[0]_INST_0_i_1 
       (.I0(\^m_axis_video_TDATA [4]),
        .I1(\^m_axis_video_TDATA [2]),
        .I2(\^m_axis_video_TDATA [0]),
        .I3(\^m_axis_video_TDATA [1]),
        .I4(\^m_axis_video_TDATA [3]),
        .O(\m_axis_video_TLAST[0]_INST_0_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_video_TUSER[0]_INST_0 
       (.I0(\m_axis_video_TUSER[0]_INST_0_i_1_n_1 ),
        .I1(\i_0_reg_89_reg_n_1_[8] ),
        .I2(\^m_axis_video_TDATA [8]),
        .I3(\i_0_reg_89_reg_n_1_[3] ),
        .I4(\m_axis_video_TUSER[0]_INST_0_i_2_n_1 ),
        .I5(\m_axis_video_TUSER[0]_INST_0_i_3_n_1 ),
        .O(m_axis_video_TUSER));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_video_TUSER[0]_INST_0_i_1 
       (.I0(\i_0_reg_89_reg_n_1_[6] ),
        .I1(\^m_axis_video_TDATA [9]),
        .I2(\^m_axis_video_TDATA [7]),
        .I3(\i_0_reg_89_reg_n_1_[4] ),
        .I4(\^m_axis_video_TDATA [5]),
        .I5(\i_0_reg_89_reg_n_1_[9] ),
        .O(\m_axis_video_TUSER[0]_INST_0_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_video_TUSER[0]_INST_0_i_2 
       (.I0(\i_0_reg_89_reg_n_1_[0] ),
        .I1(\i_0_reg_89_reg_n_1_[1] ),
        .I2(\i_0_reg_89_reg_n_1_[7] ),
        .I3(\i_0_reg_89_reg_n_1_[5] ),
        .I4(\i_0_reg_89_reg_n_1_[2] ),
        .O(\m_axis_video_TUSER[0]_INST_0_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_video_TUSER[0]_INST_0_i_3 
       (.I0(\^m_axis_video_TDATA [0]),
        .I1(\^m_axis_video_TDATA [1]),
        .I2(\^m_axis_video_TDATA [6]),
        .I3(\^m_axis_video_TDATA [4]),
        .I4(\^m_axis_video_TDATA [3]),
        .I5(\^m_axis_video_TDATA [2]),
        .O(\m_axis_video_TUSER[0]_INST_0_i_3_n_1 ));
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_video_TVALID_INST_0
       (.I0(m_axis_video_TVALID_INST_0_i_1_n_1),
        .I1(m_axis_video_TREADY),
        .I2(ap_CS_fsm_state3),
        .O(m_axis_video_TVALID));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    m_axis_video_TVALID_INST_0_i_1
       (.I0(\m_axis_video_TUSER[0]_INST_0_i_3_n_1 ),
        .I1(\^m_axis_video_TDATA [8]),
        .I2(\^m_axis_video_TDATA [5]),
        .I3(\^m_axis_video_TDATA [7]),
        .I4(\^m_axis_video_TDATA [9]),
        .O(m_axis_video_TVALID_INST_0_i_1_n_1));
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
