//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Sat Jan 25 21:53:44 2020
//Host        : luigilinux running 64-bit unknown
//Command     : generate_target test_VPG_bd.bd
//Design      : test_VPG_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "test_VPG_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test_VPG_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "test_VPG_bd.hwdef" *) 
module test_VPG_bd
   (AXIS_out_tdata,
    AXIS_out_tdest,
    AXIS_out_tid,
    AXIS_out_tkeep,
    AXIS_out_tlast,
    AXIS_out_tready,
    AXIS_out_tstrb,
    AXIS_out_tuser,
    AXIS_out_tvalid,
    aclk_40MHz,
    ap_start,
    aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXIS_out, CLK_DOMAIN test_VPG_bd_aclk_40MHz, FREQ_HZ 40000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1" *) output [23:0]AXIS_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TDEST" *) output [0:0]AXIS_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TID" *) output [0:0]AXIS_out_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TKEEP" *) output [2:0]AXIS_out_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TLAST" *) output [0:0]AXIS_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TREADY" *) input AXIS_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TSTRB" *) output [2:0]AXIS_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TUSER" *) output [0:0]AXIS_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 AXIS_out TVALID" *) output AXIS_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_40MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_40MHZ, ASSOCIATED_BUSIF AXIS_out, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN test_VPG_bd_aclk_40MHz, FREQ_HZ 40000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_40MHz;
  input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;

  wire aclk_40MHz_1;
  wire ap_start_0_1;
  wire aresetn_0_1;
  wire [23:0]video_pattern_genera_0_m_axis_video_TDATA;
  wire [0:0]video_pattern_genera_0_m_axis_video_TDEST;
  wire [0:0]video_pattern_genera_0_m_axis_video_TID;
  wire [2:0]video_pattern_genera_0_m_axis_video_TKEEP;
  wire [0:0]video_pattern_genera_0_m_axis_video_TLAST;
  wire video_pattern_genera_0_m_axis_video_TREADY;
  wire [2:0]video_pattern_genera_0_m_axis_video_TSTRB;
  wire [0:0]video_pattern_genera_0_m_axis_video_TUSER;
  wire video_pattern_genera_0_m_axis_video_TVALID;

  assign AXIS_out_tdata[23:0] = video_pattern_genera_0_m_axis_video_TDATA;
  assign AXIS_out_tdest[0] = video_pattern_genera_0_m_axis_video_TDEST;
  assign AXIS_out_tid[0] = video_pattern_genera_0_m_axis_video_TID;
  assign AXIS_out_tkeep[2:0] = video_pattern_genera_0_m_axis_video_TKEEP;
  assign AXIS_out_tlast[0] = video_pattern_genera_0_m_axis_video_TLAST;
  assign AXIS_out_tstrb[2:0] = video_pattern_genera_0_m_axis_video_TSTRB;
  assign AXIS_out_tuser[0] = video_pattern_genera_0_m_axis_video_TUSER;
  assign AXIS_out_tvalid = video_pattern_genera_0_m_axis_video_TVALID;
  assign aclk_40MHz_1 = aclk_40MHz;
  assign ap_start_0_1 = ap_start;
  assign aresetn_0_1 = aresetn_0;
  assign video_pattern_genera_0_m_axis_video_TREADY = AXIS_out_tready;
  test_VPG_bd_video_pattern_genera_0_0 video_pattern_genera_0
       (.ap_clk(aclk_40MHz_1),
        .ap_rst_n(aresetn_0_1),
        .ap_start(ap_start_0_1),
        .m_axis_video_TDATA(video_pattern_genera_0_m_axis_video_TDATA),
        .m_axis_video_TDEST(video_pattern_genera_0_m_axis_video_TDEST),
        .m_axis_video_TID(video_pattern_genera_0_m_axis_video_TID),
        .m_axis_video_TKEEP(video_pattern_genera_0_m_axis_video_TKEEP),
        .m_axis_video_TLAST(video_pattern_genera_0_m_axis_video_TLAST),
        .m_axis_video_TREADY(video_pattern_genera_0_m_axis_video_TREADY),
        .m_axis_video_TSTRB(video_pattern_genera_0_m_axis_video_TSTRB),
        .m_axis_video_TUSER(video_pattern_genera_0_m_axis_video_TUSER),
        .m_axis_video_TVALID(video_pattern_genera_0_m_axis_video_TVALID));
endmodule
