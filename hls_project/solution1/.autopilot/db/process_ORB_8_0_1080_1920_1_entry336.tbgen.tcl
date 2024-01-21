set moduleName process_ORB_8_0_1080_1920_1_entry336
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {process_ORB<8, 0, 1080, 1920, 1>.entry336}
set C_modelType { void 0 }
set C_modelArgList {
	{ height int 11 regular  }
	{ width int 11 regular  }
	{ height_new int 11 regular  }
	{ width_new int 11 regular  }
	{ threshold int 8 regular  }
	{ height_out int 11 regular {fifo 1}  }
	{ height_out1 int 11 regular {fifo 1}  }
	{ width_out int 11 regular {fifo 1}  }
	{ width_out2 int 11 regular {fifo 1}  }
	{ height_new_out int 11 regular {fifo 1}  }
	{ width_new_out int 11 regular {fifo 1}  }
	{ threshold_out int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "height", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "height_new", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width_new", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "threshold", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "height_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_out1", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out2", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height_new_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_new_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "threshold_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
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
	{ height sc_in sc_lv 11 signal 0 } 
	{ width sc_in sc_lv 11 signal 1 } 
	{ height_new sc_in sc_lv 11 signal 2 } 
	{ width_new sc_in sc_lv 11 signal 3 } 
	{ threshold sc_in sc_lv 8 signal 4 } 
	{ height_out_din sc_out sc_lv 11 signal 5 } 
	{ height_out_full_n sc_in sc_logic 1 signal 5 } 
	{ height_out_write sc_out sc_logic 1 signal 5 } 
	{ height_out1_din sc_out sc_lv 11 signal 6 } 
	{ height_out1_full_n sc_in sc_logic 1 signal 6 } 
	{ height_out1_write sc_out sc_logic 1 signal 6 } 
	{ width_out_din sc_out sc_lv 11 signal 7 } 
	{ width_out_full_n sc_in sc_logic 1 signal 7 } 
	{ width_out_write sc_out sc_logic 1 signal 7 } 
	{ width_out2_din sc_out sc_lv 11 signal 8 } 
	{ width_out2_full_n sc_in sc_logic 1 signal 8 } 
	{ width_out2_write sc_out sc_logic 1 signal 8 } 
	{ height_new_out_din sc_out sc_lv 11 signal 9 } 
	{ height_new_out_full_n sc_in sc_logic 1 signal 9 } 
	{ height_new_out_write sc_out sc_logic 1 signal 9 } 
	{ width_new_out_din sc_out sc_lv 11 signal 10 } 
	{ width_new_out_full_n sc_in sc_logic 1 signal 10 } 
	{ width_new_out_write sc_out sc_logic 1 signal 10 } 
	{ threshold_out_din sc_out sc_lv 8 signal 11 } 
	{ threshold_out_full_n sc_in sc_logic 1 signal 11 } 
	{ threshold_out_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "height_new", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_new", "role": "default" }} , 
 	{ "name": "width_new", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_new", "role": "default" }} , 
 	{ "name": "threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold", "role": "default" }} , 
 	{ "name": "height_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_out", "role": "din" }} , 
 	{ "name": "height_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "full_n" }} , 
 	{ "name": "height_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "write" }} , 
 	{ "name": "height_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_out1", "role": "din" }} , 
 	{ "name": "height_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out1", "role": "full_n" }} , 
 	{ "name": "height_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out1", "role": "write" }} , 
 	{ "name": "width_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_out", "role": "din" }} , 
 	{ "name": "width_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "full_n" }} , 
 	{ "name": "width_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "write" }} , 
 	{ "name": "width_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_out2", "role": "din" }} , 
 	{ "name": "width_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out2", "role": "full_n" }} , 
 	{ "name": "width_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out2", "role": "write" }} , 
 	{ "name": "height_new_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_new_out", "role": "din" }} , 
 	{ "name": "height_new_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_new_out", "role": "full_n" }} , 
 	{ "name": "height_new_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_new_out", "role": "write" }} , 
 	{ "name": "width_new_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_new_out", "role": "din" }} , 
 	{ "name": "width_new_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_new_out", "role": "full_n" }} , 
 	{ "name": "width_new_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_new_out", "role": "write" }} , 
 	{ "name": "threshold_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "threshold_out", "role": "din" }} , 
 	{ "name": "threshold_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_out", "role": "full_n" }} , 
 	{ "name": "threshold_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "threshold_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "process_ORB_8_0_1080_1920_1_entry336",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_new", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_new", "Type" : "None", "Direction" : "I"},
			{"Name" : "threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_new_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_new_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_new_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_new_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "threshold_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "threshold_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	process_ORB_8_0_1080_1920_1_entry336 {
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height_new {Type I LastRead 0 FirstWrite -1}
		width_new {Type I LastRead 0 FirstWrite -1}
		threshold {Type I LastRead 0 FirstWrite -1}
		height_out {Type O LastRead -1 FirstWrite 0}
		height_out1 {Type O LastRead -1 FirstWrite 0}
		width_out {Type O LastRead -1 FirstWrite 0}
		width_out2 {Type O LastRead -1 FirstWrite 0}
		height_new_out {Type O LastRead -1 FirstWrite 0}
		width_new_out {Type O LastRead -1 FirstWrite 0}
		threshold_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	height { ap_none {  { height in_data 0 11 } } }
	width { ap_none {  { width in_data 0 11 } } }
	height_new { ap_none {  { height_new in_data 0 11 } } }
	width_new { ap_none {  { width_new in_data 0 11 } } }
	threshold { ap_none {  { threshold in_data 0 8 } } }
	height_out { ap_fifo {  { height_out_din fifo_data 1 11 }  { height_out_full_n fifo_status 0 1 }  { height_out_write fifo_update 1 1 } } }
	height_out1 { ap_fifo {  { height_out1_din fifo_data 1 11 }  { height_out1_full_n fifo_status 0 1 }  { height_out1_write fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_din fifo_data 1 11 }  { width_out_full_n fifo_status 0 1 }  { width_out_write fifo_update 1 1 } } }
	width_out2 { ap_fifo {  { width_out2_din fifo_data 1 11 }  { width_out2_full_n fifo_status 0 1 }  { width_out2_write fifo_update 1 1 } } }
	height_new_out { ap_fifo {  { height_new_out_din fifo_data 1 11 }  { height_new_out_full_n fifo_status 0 1 }  { height_new_out_write fifo_update 1 1 } } }
	width_new_out { ap_fifo {  { width_new_out_din fifo_data 1 11 }  { width_new_out_full_n fifo_status 0 1 }  { width_new_out_write fifo_update 1 1 } } }
	threshold_out { ap_fifo {  { threshold_out_din fifo_data 1 8 }  { threshold_out_full_n fifo_status 0 1 }  { threshold_out_write fifo_update 1 1 } } }
}
