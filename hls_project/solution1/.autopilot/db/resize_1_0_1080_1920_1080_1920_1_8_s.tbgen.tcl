set moduleName resize_1_0_1080_1920_1080_1920_1_8_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {resize<1, 0, 1080, 1920, 1080, 1920, 1, 8>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_mat_429 int 8 regular {fifo 0 volatile }  }
	{ resized_mat_430 int 8 regular {fifo 1 volatile }  }
	{ p_read int 11 regular  }
	{ p_read1 int 11 regular  }
	{ p_read2 int 11 regular  }
	{ p_read3 int 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_mat_429", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "resized_mat_430", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_mat_429_dout sc_in sc_lv 8 signal 0 } 
	{ img_mat_429_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_mat_429_read sc_out sc_logic 1 signal 0 } 
	{ resized_mat_430_din sc_out sc_lv 8 signal 1 } 
	{ resized_mat_430_full_n sc_in sc_logic 1 signal 1 } 
	{ resized_mat_430_write sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 11 signal 2 } 
	{ p_read1 sc_in sc_lv 11 signal 3 } 
	{ p_read2 sc_in sc_lv 11 signal 4 } 
	{ p_read3 sc_in sc_lv 11 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_mat_429_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_mat_429", "role": "dout" }} , 
 	{ "name": "img_mat_429_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "empty_n" }} , 
 	{ "name": "img_mat_429_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "read" }} , 
 	{ "name": "resized_mat_430_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "din" }} , 
 	{ "name": "resized_mat_430_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "full_n" }} , 
 	{ "name": "resized_mat_430_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "resize_1_0_1080_1920_1080_1920_1_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "105", "EstimateLatencyMax" : "2089420",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_mat_429", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Port" : "img_mat_429"}]},
			{"Name" : "resized_mat_430", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Port" : "resized_mat_430"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Parent" : "0", "Child" : ["2", "3", "4", "5", "7", "9", "10", "11", "12"],
		"CDFG" : "resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "2089419",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_mat_429", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_mat_429_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_mat_430", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "resized_mat_430_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_0_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_1_0_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_2_0_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_xfUDivResize_fu_566", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "xfUDivResize",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_d", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_xfUDivResize_fu_566.udiv_43ns_16ns_43_47_seq_1_U42", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_scaleCompute_17_42_20_48_16_1_s_fu_583", "Parent" : "1", "Child" : ["8"],
		"CDFG" : "scaleCompute_17_42_20_48_16_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "currindex", "Type" : "None", "Direction" : "I"},
			{"Name" : "inscale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_scaleCompute_17_42_20_48_16_1_s_fu_583.mul_48ns_42s_74_1_1_U46", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mul_mul_12ns_12ns_24_4_1_U50", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mul_mul_12ns_9s_21_4_1_U51", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mac_muladd_12ns_9s_21s_22_4_1_U52", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mac_muladd_12ns_10s_22s_23_4_1_U53", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	resize_1_0_1080_1920_1080_1920_1_8_s {
		img_mat_429 {Type I LastRead 8 FirstWrite -1}
		resized_mat_430 {Type O LastRead -1 FirstWrite 15}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}}
	resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s {
		img_mat_429 {Type I LastRead 8 FirstWrite -1}
		resized_mat_430 {Type O LastRead -1 FirstWrite 15}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}}
	xfUDivResize {
		in_n {Type I LastRead 0 FirstWrite -1}
		in_d {Type I LastRead 0 FirstWrite -1}}
	scaleCompute_17_42_20_48_16_1_s {
		currindex {Type I LastRead 0 FirstWrite -1}
		inscale {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "105", "Max" : "2089420"}
	, {"Name" : "Interval", "Min" : "105", "Max" : "2089420"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_mat_429 { ap_fifo {  { img_mat_429_dout fifo_data 0 8 }  { img_mat_429_empty_n fifo_status 0 1 }  { img_mat_429_read fifo_update 1 1 } } }
	resized_mat_430 { ap_fifo {  { resized_mat_430_din fifo_data 1 8 }  { resized_mat_430_full_n fifo_status 0 1 }  { resized_mat_430_write fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 11 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 11 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 11 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 11 } } }
}
