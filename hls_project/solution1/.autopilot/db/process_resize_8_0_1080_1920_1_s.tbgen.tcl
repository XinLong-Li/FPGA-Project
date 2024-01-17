set moduleName process_resize_8_0_1080_1920_1_s
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
set C_modelName {process_resize<8, 0, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_mat_429 int 8 regular {fifo 0 volatile }  }
	{ resized_mat_430 int 8 regular {fifo 1 volatile }  }
	{ src_rows int 11 regular {fifo 0}  }
	{ src_cols int 11 regular {fifo 0}  }
	{ dst_rows int 11 regular {fifo 0}  }
	{ dst_cols int 11 regular {fifo 0}  }
	{ dst_rows_out int 11 regular {fifo 1}  }
	{ dst_cols_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_mat_429", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "resized_mat_430", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_rows", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "src_cols", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "dst_rows", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "dst_cols", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "dst_rows_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_cols_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ img_mat_429_dout sc_in sc_lv 8 signal 0 } 
	{ img_mat_429_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_mat_429_read sc_out sc_logic 1 signal 0 } 
	{ resized_mat_430_din sc_out sc_lv 8 signal 1 } 
	{ resized_mat_430_full_n sc_in sc_logic 1 signal 1 } 
	{ resized_mat_430_write sc_out sc_logic 1 signal 1 } 
	{ src_rows_dout sc_in sc_lv 11 signal 2 } 
	{ src_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_rows_read sc_out sc_logic 1 signal 2 } 
	{ src_cols_dout sc_in sc_lv 11 signal 3 } 
	{ src_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_cols_read sc_out sc_logic 1 signal 3 } 
	{ dst_rows_dout sc_in sc_lv 11 signal 4 } 
	{ dst_rows_empty_n sc_in sc_logic 1 signal 4 } 
	{ dst_rows_read sc_out sc_logic 1 signal 4 } 
	{ dst_cols_dout sc_in sc_lv 11 signal 5 } 
	{ dst_cols_empty_n sc_in sc_logic 1 signal 5 } 
	{ dst_cols_read sc_out sc_logic 1 signal 5 } 
	{ dst_rows_out_din sc_out sc_lv 11 signal 6 } 
	{ dst_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ dst_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ dst_cols_out_din sc_out sc_lv 11 signal 7 } 
	{ dst_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ dst_cols_out_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "img_mat_429_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_mat_429", "role": "dout" }} , 
 	{ "name": "img_mat_429_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "empty_n" }} , 
 	{ "name": "img_mat_429_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "read" }} , 
 	{ "name": "resized_mat_430_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "din" }} , 
 	{ "name": "resized_mat_430_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "full_n" }} , 
 	{ "name": "resized_mat_430_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_mat_430", "role": "write" }} , 
 	{ "name": "src_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "src_rows", "role": "dout" }} , 
 	{ "name": "src_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows", "role": "empty_n" }} , 
 	{ "name": "src_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_rows", "role": "read" }} , 
 	{ "name": "src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "src_cols", "role": "dout" }} , 
 	{ "name": "src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols", "role": "empty_n" }} , 
 	{ "name": "src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_cols", "role": "read" }} , 
 	{ "name": "dst_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dst_rows", "role": "dout" }} , 
 	{ "name": "dst_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows", "role": "empty_n" }} , 
 	{ "name": "dst_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows", "role": "read" }} , 
 	{ "name": "dst_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dst_cols", "role": "dout" }} , 
 	{ "name": "dst_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols", "role": "empty_n" }} , 
 	{ "name": "dst_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols", "role": "read" }} , 
 	{ "name": "dst_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dst_rows_out", "role": "din" }} , 
 	{ "name": "dst_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_out", "role": "full_n" }} , 
 	{ "name": "dst_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_rows_out", "role": "write" }} , 
 	{ "name": "dst_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dst_cols_out", "role": "din" }} , 
 	{ "name": "dst_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_out", "role": "full_n" }} , 
 	{ "name": "dst_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_resize_8_0_1080_1920_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "106", "EstimateLatencyMax" : "2089421",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_mat_429", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80", "Port" : "img_mat_429"}]},
			{"Name" : "resized_mat_430", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80", "Port" : "resized_mat_430"}]},
			{"Name" : "src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "src_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Port" : "img_mat_429"}]},
			{"Name" : "resized_mat_430", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Port" : "resized_mat_430"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48", "Parent" : "1", "Child" : ["3", "4", "5", "6", "8", "10", "11", "12", "13"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.line_buffer_V_2_0_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_xfUDivResize_fu_566", "Parent" : "2", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_xfUDivResize_fu_566.udiv_43ns_16ns_43_47_seq_1_U42", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_scaleCompute_17_42_20_48_16_1_s_fu_583", "Parent" : "2", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.grp_scaleCompute_17_42_20_48_16_1_s_fu_583.mul_48ns_42s_74_1_1_U46", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mul_mul_12ns_12ns_24_4_1_U50", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mul_mul_12ns_9s_21_4_1_U51", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mac_muladd_12ns_9s_21s_22_4_1_U52", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_resize_1_0_1080_1920_1080_1920_1_8_s_fu_80.grp_resizeNNBilinear_0_1080_1920_1_1080_1920_1_8_s_fu_48.mac_muladd_12ns_10s_22s_23_4_1_U53", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	process_resize_8_0_1080_1920_1_s {
		img_mat_429 {Type I LastRead 8 FirstWrite -1}
		resized_mat_430 {Type O LastRead -1 FirstWrite 15}
		src_rows {Type I LastRead 0 FirstWrite -1}
		src_cols {Type I LastRead 0 FirstWrite -1}
		dst_rows {Type I LastRead 0 FirstWrite -1}
		dst_cols {Type I LastRead 0 FirstWrite -1}
		dst_rows_out {Type O LastRead -1 FirstWrite 0}
		dst_cols_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "106", "Max" : "2089421"}
	, {"Name" : "Interval", "Min" : "106", "Max" : "2089421"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_mat_429 { ap_fifo {  { img_mat_429_dout fifo_data 0 8 }  { img_mat_429_empty_n fifo_status 0 1 }  { img_mat_429_read fifo_update 1 1 } } }
	resized_mat_430 { ap_fifo {  { resized_mat_430_din fifo_data 1 8 }  { resized_mat_430_full_n fifo_status 0 1 }  { resized_mat_430_write fifo_update 1 1 } } }
	src_rows { ap_fifo {  { src_rows_dout fifo_data 0 11 }  { src_rows_empty_n fifo_status 0 1 }  { src_rows_read fifo_update 1 1 } } }
	src_cols { ap_fifo {  { src_cols_dout fifo_data 0 11 }  { src_cols_empty_n fifo_status 0 1 }  { src_cols_read fifo_update 1 1 } } }
	dst_rows { ap_fifo {  { dst_rows_dout fifo_data 0 11 }  { dst_rows_empty_n fifo_status 0 1 }  { dst_rows_read fifo_update 1 1 } } }
	dst_cols { ap_fifo {  { dst_cols_dout fifo_data 0 11 }  { dst_cols_empty_n fifo_status 0 1 }  { dst_cols_read fifo_update 1 1 } } }
	dst_rows_out { ap_fifo {  { dst_rows_out_din fifo_data 1 11 }  { dst_rows_out_full_n fifo_status 0 1 }  { dst_rows_out_write fifo_update 1 1 } } }
	dst_cols_out { ap_fifo {  { dst_cols_out_din fifo_data 1 11 }  { dst_cols_out_full_n fifo_status 0 1 }  { dst_cols_out_write fifo_update 1 1 } } }
}
