set moduleName process_stream2xfMat_8_0_1080_1920_1_s
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
set C_modelName {process_stream2xfMat<8, 0, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img31 int 8 regular {fifo 0 volatile }  }
	{ img_mat_429 int 8 regular {fifo 1 volatile }  }
	{ dst_rows int 11 regular {fifo 0}  }
	{ dst_cols int 11 regular {fifo 0}  }
	{ dst_rows_out int 11 regular {fifo 1}  }
	{ dst_cols_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img31", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_mat_429", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_rows", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "dst_cols", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "dst_rows_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_cols_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img31_dout sc_in sc_lv 8 signal 0 } 
	{ img31_empty_n sc_in sc_logic 1 signal 0 } 
	{ img31_read sc_out sc_logic 1 signal 0 } 
	{ img_mat_429_din sc_out sc_lv 8 signal 1 } 
	{ img_mat_429_full_n sc_in sc_logic 1 signal 1 } 
	{ img_mat_429_write sc_out sc_logic 1 signal 1 } 
	{ dst_rows_dout sc_in sc_lv 11 signal 2 } 
	{ dst_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ dst_rows_read sc_out sc_logic 1 signal 2 } 
	{ dst_cols_dout sc_in sc_lv 11 signal 3 } 
	{ dst_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ dst_cols_read sc_out sc_logic 1 signal 3 } 
	{ dst_rows_out_din sc_out sc_lv 11 signal 4 } 
	{ dst_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ dst_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ dst_cols_out_din sc_out sc_lv 11 signal 5 } 
	{ dst_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ dst_cols_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img31_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img31", "role": "dout" }} , 
 	{ "name": "img31_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img31", "role": "empty_n" }} , 
 	{ "name": "img31_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img31", "role": "read" }} , 
 	{ "name": "img_mat_429_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_mat_429", "role": "din" }} , 
 	{ "name": "img_mat_429_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "full_n" }} , 
 	{ "name": "img_mat_429_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_mat_429", "role": "write" }} , 
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
		"CDFG" : "process_stream2xfMat_8_0_1080_1920_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img31", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_mat_429", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_mat_429_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dst_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_22_4_1_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_stream2xfMat_8_0_1080_1920_1_s {
		img31 {Type I LastRead 5 FirstWrite -1}
		img_mat_429 {Type O LastRead -1 FirstWrite 5}
		dst_rows {Type I LastRead 0 FirstWrite -1}
		dst_cols {Type I LastRead 0 FirstWrite -1}
		dst_rows_out {Type O LastRead -1 FirstWrite 0}
		dst_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img31 { ap_fifo {  { img31_dout fifo_data 0 8 }  { img31_empty_n fifo_status 0 1 }  { img31_read fifo_update 1 1 } } }
	img_mat_429 { ap_fifo {  { img_mat_429_din fifo_data 1 8 }  { img_mat_429_full_n fifo_status 0 1 }  { img_mat_429_write fifo_update 1 1 } } }
	dst_rows { ap_fifo {  { dst_rows_dout fifo_data 0 11 }  { dst_rows_empty_n fifo_status 0 1 }  { dst_rows_read fifo_update 1 1 } } }
	dst_cols { ap_fifo {  { dst_cols_dout fifo_data 0 11 }  { dst_cols_empty_n fifo_status 0 1 }  { dst_cols_read fifo_update 1 1 } } }
	dst_rows_out { ap_fifo {  { dst_rows_out_din fifo_data 1 11 }  { dst_rows_out_full_n fifo_status 0 1 }  { dst_rows_out_write fifo_update 1 1 } } }
	dst_cols_out { ap_fifo {  { dst_cols_out_din fifo_data 1 11 }  { dst_cols_out_full_n fifo_status 0 1 }  { dst_cols_out_write fifo_update 1 1 } } }
}
