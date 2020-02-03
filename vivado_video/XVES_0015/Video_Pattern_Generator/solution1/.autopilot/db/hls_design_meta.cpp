#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axis_video_TDATA", 24, hls_out, 0, "axis", "out_data", 1),
	Port_Property("m_axis_video_TVALID", 1, hls_out, 6, "axis", "out_vld", 1),
	Port_Property("m_axis_video_TREADY", 1, hls_in, 0, "axis", "out_acc", 1),
	Port_Property("m_axis_video_TKEEP", 3, hls_out, 1, "axis", "out_data", 1),
	Port_Property("m_axis_video_TSTRB", 3, hls_out, 2, "axis", "out_data", 1),
	Port_Property("m_axis_video_TUSER", 1, hls_out, 3, "axis", "out_data", 1),
	Port_Property("m_axis_video_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("m_axis_video_TID", 1, hls_out, 5, "axis", "out_data", 1),
	Port_Property("m_axis_video_TDEST", 1, hls_out, 6, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "video_pattern_generator";
