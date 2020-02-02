set moduleName video_mandelbrot_generator
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {video_mandelbrot_generator}
set C_modelType { void 0 }
set C_modelArgList {
	{ VIDEO_OUT_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ VIDEO_OUT_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ VIDEO_OUT_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ VIDEO_OUT_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ VIDEO_OUT_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ VIDEO_OUT_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ VIDEO_OUT_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ moveX float 32 regular {axi_slave 0}  }
	{ moveY float 32 regular {axi_slave 0}  }
	{ zoom float 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "VIDEO_OUT_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "m_axis_video.V.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "m_axis_video.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m_axis_video.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "moveX", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "moveX","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "moveY", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "moveY","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "zoom", "interface" : "axi_slave", "bundle":"cmd","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "zoom","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 0 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 6 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 0 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 1 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 2 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 3 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 6 } 
	{ s_axi_cmd_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_cmd_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_cmd_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_cmd_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_cmd_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_cmd_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_cmd_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cmd_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cmd_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_cmd_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cmd", "role": "AWADDR" },"address":[{"name":"video_mandelbrot_generator","role":"start","value":"0","valid_bit":"0"},{"name":"video_mandelbrot_generator","role":"continue","value":"0","valid_bit":"4"},{"name":"video_mandelbrot_generator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"moveX","role":"data","value":"16"},{"name":"moveY","role":"data","value":"24"},{"name":"zoom","role":"data","value":"32"}] },
	{ "name": "s_axi_cmd_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "AWVALID" } },
	{ "name": "s_axi_cmd_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "AWREADY" } },
	{ "name": "s_axi_cmd_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "WVALID" } },
	{ "name": "s_axi_cmd_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "WREADY" } },
	{ "name": "s_axi_cmd_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cmd", "role": "WDATA" } },
	{ "name": "s_axi_cmd_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmd", "role": "WSTRB" } },
	{ "name": "s_axi_cmd_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cmd", "role": "ARADDR" },"address":[{"name":"video_mandelbrot_generator","role":"start","value":"0","valid_bit":"0"},{"name":"video_mandelbrot_generator","role":"done","value":"0","valid_bit":"1"},{"name":"video_mandelbrot_generator","role":"idle","value":"0","valid_bit":"2"},{"name":"video_mandelbrot_generator","role":"ready","value":"0","valid_bit":"3"},{"name":"video_mandelbrot_generator","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_cmd_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "ARVALID" } },
	{ "name": "s_axi_cmd_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "ARREADY" } },
	{ "name": "s_axi_cmd_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "RVALID" } },
	{ "name": "s_axi_cmd_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "RREADY" } },
	{ "name": "s_axi_cmd_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cmd", "role": "RDATA" } },
	{ "name": "s_axi_cmd_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cmd", "role": "RRESP" } },
	{ "name": "s_axi_cmd_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "BVALID" } },
	{ "name": "s_axi_cmd_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "BREADY" } },
	{ "name": "s_axi_cmd_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cmd", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmd", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "VIDEO_OUT_V_data_V", "role": "" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "video_mandelbrot_generator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "VIDEO_OUT_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "VIDEO_OUT_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "VIDEO_OUT_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "VIDEO_OUT_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "VIDEO_OUT_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "VIDEO_OUT_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "VIDEO_OUT_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "moveX", "Type" : "None", "Direction" : "I"},
			{"Name" : "moveY", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_cmd_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_faddfsub_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_fsub_32ns_32ns_32_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_fmul_32ns_32ns_32_4_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_fmul_32ns_32ns_32_4_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_uitofp_32ns_32_6_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.video_mandelbrot_generator_fcmp_32ns_32ns_1_2_1_U6", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	video_mandelbrot_generator {
		VIDEO_OUT_V_data_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_keep_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_strb_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_user_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_last_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_id_V {Type O LastRead -1 FirstWrite 59}
		VIDEO_OUT_V_dest_V {Type O LastRead -1 FirstWrite 59}
		moveX {Type I LastRead 0 FirstWrite -1}
		moveY {Type I LastRead 0 FirstWrite -1}
		zoom {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	VIDEO_OUT_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 }  { m_axis_video_TREADY out_acc 0 1 } } }
	VIDEO_OUT_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	VIDEO_OUT_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	VIDEO_OUT_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	VIDEO_OUT_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	VIDEO_OUT_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	VIDEO_OUT_V_dest_V { axis {  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TDEST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
