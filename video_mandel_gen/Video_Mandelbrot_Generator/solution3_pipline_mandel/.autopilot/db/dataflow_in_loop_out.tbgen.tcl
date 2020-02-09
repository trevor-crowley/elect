set moduleName dataflow_in_loop_out
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_in_loop_out}
set C_modelType { void 0 }
set C_modelArgList {
	{ v_assign int 3 regular  }
	{ m_axis_video_V_data_V int 24 regular {axi_s 1 volatile  { m_axis_video Data } }  }
	{ m_axis_video_V_keep_V int 3 regular {axi_s 1 volatile  { m_axis_video Keep } }  }
	{ m_axis_video_V_strb_V int 3 regular {axi_s 1 volatile  { m_axis_video Strb } }  }
	{ m_axis_video_V_user_V int 1 regular {axi_s 1 volatile  { m_axis_video User } }  }
	{ m_axis_video_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_video Last } }  }
	{ m_axis_video_V_id_V int 1 regular {axi_s 1 volatile  { m_axis_video ID } }  }
	{ m_axis_video_V_dest_V int 1 regular {axi_s 1 volatile  { m_axis_video Dest } }  }
	{ im_V int 18 regular  }
	{ re_V int 18 regular  }
	{ zoom_factor_V int 18 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v_assign", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_video_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_video_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "im_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "re_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "zoom_factor_V", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ v_assign sc_in sc_lv 3 signal 0 } 
	{ m_axis_video_TDATA sc_out sc_lv 24 signal 1 } 
	{ m_axis_video_TKEEP sc_out sc_lv 3 signal 2 } 
	{ m_axis_video_TSTRB sc_out sc_lv 3 signal 3 } 
	{ m_axis_video_TUSER sc_out sc_lv 1 signal 4 } 
	{ m_axis_video_TLAST sc_out sc_lv 1 signal 5 } 
	{ m_axis_video_TID sc_out sc_lv 1 signal 6 } 
	{ m_axis_video_TDEST sc_out sc_lv 1 signal 7 } 
	{ im_V sc_in sc_lv 18 signal 8 } 
	{ re_V sc_in sc_lv 18 signal 9 } 
	{ zoom_factor_V sc_in sc_lv 18 signal 10 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ v_assign_ap_vld sc_in sc_logic 1 invld 0 } 
	{ m_axis_video_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_video_TREADY sc_in sc_logic 1 outacc 7 } 
	{ im_V_ap_vld sc_in sc_logic 1 invld 8 } 
	{ re_V_ap_vld sc_in sc_logic 1 invld 9 } 
	{ zoom_factor_V_ap_vld sc_in sc_logic 1 invld 10 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "v_assign", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "v_assign", "role": "default" }} , 
 	{ "name": "m_axis_video_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "m_axis_video_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_video_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_user_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_id_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "im_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "im_V", "role": "default" }} , 
 	{ "name": "re_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "re_V", "role": "default" }} , 
 	{ "name": "zoom_factor_V", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "zoom_factor_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "v_assign_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "v_assign", "role": "ap_vld" }} , 
 	{ "name": "m_axis_video_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_video_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_video_V_dest_V", "role": "default" }} , 
 	{ "name": "im_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "im_V", "role": "ap_vld" }} , 
 	{ "name": "re_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "re_V", "role": "ap_vld" }} , 
 	{ "name": "zoom_factor_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "zoom_factor_V", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_in_loop_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "369",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "inner_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "inner_proc_U0"}],
		"Port" : [
			{"Name" : "v_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_data_V"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_keep_V"}]},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_strb_V"}]},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_user_V"}]},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_last_V"}]},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_id_V"}]},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "inner_proc_U0", "Port" : "m_axis_video_V_dest_V"}]},
			{"Name" : "im_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "re_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom_factor_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "inner_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "369",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "v_assign", "Type" : "None", "Direction" : "I"},
			{"Name" : "m_axis_video_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_video_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_video_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_video_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "im_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "re_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "zoom_factor_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_14ns_17ns_31_1_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_18s_18s_36_1_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.inner_proc_U0.video_mandelbrot_generator_mul_mul_19s_19s_38_1_1_U6", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_out {
		v_assign {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 6}
		im_V {Type I LastRead 0 FirstWrite -1}
		re_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}}
	inner_proc {
		v_assign {Type I LastRead 0 FirstWrite -1}
		m_axis_video_V_data_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_keep_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_strb_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_user_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_last_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_id_V {Type O LastRead -1 FirstWrite 6}
		m_axis_video_V_dest_V {Type O LastRead -1 FirstWrite 6}
		im_V {Type I LastRead 0 FirstWrite -1}
		re_V {Type I LastRead 0 FirstWrite -1}
		zoom_factor_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "369"}
	, {"Name" : "Interval", "Min" : "82", "Max" : "370"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v_assign { ap_none {  { v_assign in_data 0 3 }  { v_assign_ap_vld in_vld 0 1 } } }
	m_axis_video_V_data_V { axis {  { m_axis_video_TDATA out_data 1 24 } } }
	m_axis_video_V_keep_V { axis {  { m_axis_video_TKEEP out_data 1 3 } } }
	m_axis_video_V_strb_V { axis {  { m_axis_video_TSTRB out_data 1 3 } } }
	m_axis_video_V_user_V { axis {  { m_axis_video_TUSER out_data 1 1 } } }
	m_axis_video_V_last_V { axis {  { m_axis_video_TLAST out_data 1 1 } } }
	m_axis_video_V_id_V { axis {  { m_axis_video_TID out_data 1 1 } } }
	m_axis_video_V_dest_V { axis {  { m_axis_video_TDEST out_data 1 1 }  { m_axis_video_TVALID out_vld 1 1 }  { m_axis_video_TREADY out_acc 0 1 } } }
	im_V { ap_none {  { im_V in_data 0 18 }  { im_V_ap_vld in_vld 0 1 } } }
	re_V { ap_none {  { re_V in_data 0 18 }  { re_V_ap_vld in_vld 0 1 } } }
	zoom_factor_V { ap_none {  { zoom_factor_V in_data 0 18 }  { zoom_factor_V_ap_vld in_vld 0 1 } } }
}
