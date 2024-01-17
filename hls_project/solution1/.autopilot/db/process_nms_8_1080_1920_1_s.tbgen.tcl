set moduleName process_nms_8_1080_1920_1_s
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
set C_modelName {process_nms<8, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in int 8 regular {fifo 0 volatile }  }
	{ img_out int 8 regular {fifo 1 volatile }  }
	{ blur_in int 8 regular {fifo 0 volatile }  }
	{ blur_out int 8 regular {fifo 1 volatile }  }
	{ mask_in int 8 regular {fifo 0 volatile }  }
	{ mask_out int 8 regular {fifo 1 volatile }  }
	{ height int 11 regular {fifo 0}  }
	{ width int 11 regular {fifo 0}  }
	{ height_out int 11 regular {fifo 1}  }
	{ width_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blur_in", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blur_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mask_in", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mask_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "height_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ img_in_dout sc_in sc_lv 8 signal 0 } 
	{ img_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_read sc_out sc_logic 1 signal 0 } 
	{ img_out_din sc_out sc_lv 8 signal 1 } 
	{ img_out_full_n sc_in sc_logic 1 signal 1 } 
	{ img_out_write sc_out sc_logic 1 signal 1 } 
	{ blur_in_dout sc_in sc_lv 8 signal 2 } 
	{ blur_in_empty_n sc_in sc_logic 1 signal 2 } 
	{ blur_in_read sc_out sc_logic 1 signal 2 } 
	{ blur_out_din sc_out sc_lv 8 signal 3 } 
	{ blur_out_full_n sc_in sc_logic 1 signal 3 } 
	{ blur_out_write sc_out sc_logic 1 signal 3 } 
	{ mask_in_dout sc_in sc_lv 8 signal 4 } 
	{ mask_in_empty_n sc_in sc_logic 1 signal 4 } 
	{ mask_in_read sc_out sc_logic 1 signal 4 } 
	{ mask_out_din sc_out sc_lv 8 signal 5 } 
	{ mask_out_full_n sc_in sc_logic 1 signal 5 } 
	{ mask_out_write sc_out sc_logic 1 signal 5 } 
	{ height_dout sc_in sc_lv 11 signal 6 } 
	{ height_empty_n sc_in sc_logic 1 signal 6 } 
	{ height_read sc_out sc_logic 1 signal 6 } 
	{ width_dout sc_in sc_lv 11 signal 7 } 
	{ width_empty_n sc_in sc_logic 1 signal 7 } 
	{ width_read sc_out sc_logic 1 signal 7 } 
	{ height_out_din sc_out sc_lv 11 signal 8 } 
	{ height_out_full_n sc_in sc_logic 1 signal 8 } 
	{ height_out_write sc_out sc_logic 1 signal 8 } 
	{ width_out_din sc_out sc_lv 11 signal 9 } 
	{ width_out_full_n sc_in sc_logic 1 signal 9 } 
	{ width_out_write sc_out sc_logic 1 signal 9 } 
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
 	{ "name": "img_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in", "role": "dout" }} , 
 	{ "name": "img_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in", "role": "empty_n" }} , 
 	{ "name": "img_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in", "role": "read" }} , 
 	{ "name": "img_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out", "role": "din" }} , 
 	{ "name": "img_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out", "role": "full_n" }} , 
 	{ "name": "img_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out", "role": "write" }} , 
 	{ "name": "blur_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_in", "role": "dout" }} , 
 	{ "name": "blur_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_in", "role": "empty_n" }} , 
 	{ "name": "blur_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_in", "role": "read" }} , 
 	{ "name": "blur_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_out", "role": "din" }} , 
 	{ "name": "blur_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_out", "role": "full_n" }} , 
 	{ "name": "blur_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_out", "role": "write" }} , 
 	{ "name": "mask_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mask_in", "role": "dout" }} , 
 	{ "name": "mask_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask_in", "role": "empty_n" }} , 
 	{ "name": "mask_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask_in", "role": "read" }} , 
 	{ "name": "mask_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mask_out", "role": "din" }} , 
 	{ "name": "mask_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask_out", "role": "full_n" }} , 
 	{ "name": "mask_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask_out", "role": "write" }} , 
 	{ "name": "height_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height", "role": "dout" }} , 
 	{ "name": "height_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "empty_n" }} , 
 	{ "name": "height_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height", "role": "read" }} , 
 	{ "name": "width_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width", "role": "dout" }} , 
 	{ "name": "width_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "empty_n" }} , 
 	{ "name": "width_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width", "role": "read" }} , 
 	{ "name": "height_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "height_out", "role": "din" }} , 
 	{ "name": "height_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "full_n" }} , 
 	{ "name": "height_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "height_out", "role": "write" }} , 
 	{ "name": "width_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "width_out", "role": "din" }} , 
 	{ "name": "width_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "full_n" }} , 
 	{ "name": "width_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "width_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "process_nms_8_1080_1920_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_64", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_83", "FromFinalSV" : "3", "FromAddress" : "line_buffer_val_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_85", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_85", "ToFinalSV" : "3", "ToAddress" : "line_buffer_val_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_66", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "3", "FromAddress" : "line_buffer_val_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_86", "ToFinalSV" : "3", "ToAddress" : "line_buffer_val_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_85", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_85", "FromFinalSV" : "3", "FromAddress" : "line_buffer_val_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_64", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_83", "ToFinalSV" : "3", "ToAddress" : "line_buffer_val_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter0_stage0", "ap_enable_state4_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_86", "FromFinalSV" : "3", "FromAddress" : "line_buffer_val_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_66", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "3", "ToAddress" : "line_buffer_val_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter0_stage0", "ap_enable_state4_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "img_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7680", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7680", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blur_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7680", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blur_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blur_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7680", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blur_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mask_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mask_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mask_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mask_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_nms_8_1080_1920_1_s {
		img_in {Type I LastRead 3 FirstWrite -1}
		img_out {Type O LastRead -1 FirstWrite 3}
		blur_in {Type I LastRead 3 FirstWrite -1}
		blur_out {Type O LastRead -1 FirstWrite 3}
		mask_in {Type I LastRead 3 FirstWrite -1}
		mask_out {Type O LastRead -1 FirstWrite 3}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		height_out {Type O LastRead -1 FirstWrite 0}
		width_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	img_in { ap_fifo {  { img_in_dout fifo_data 0 8 }  { img_in_empty_n fifo_status 0 1 }  { img_in_read fifo_update 1 1 } } }
	img_out { ap_fifo {  { img_out_din fifo_data 1 8 }  { img_out_full_n fifo_status 0 1 }  { img_out_write fifo_update 1 1 } } }
	blur_in { ap_fifo {  { blur_in_dout fifo_data 0 8 }  { blur_in_empty_n fifo_status 0 1 }  { blur_in_read fifo_update 1 1 } } }
	blur_out { ap_fifo {  { blur_out_din fifo_data 1 8 }  { blur_out_full_n fifo_status 0 1 }  { blur_out_write fifo_update 1 1 } } }
	mask_in { ap_fifo {  { mask_in_dout fifo_data 0 8 }  { mask_in_empty_n fifo_status 0 1 }  { mask_in_read fifo_update 1 1 } } }
	mask_out { ap_fifo {  { mask_out_din fifo_data 1 8 }  { mask_out_full_n fifo_status 0 1 }  { mask_out_write fifo_update 1 1 } } }
	height { ap_fifo {  { height_dout fifo_data 0 11 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_update 1 1 } } }
	width { ap_fifo {  { width_dout fifo_data 0 11 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_update 1 1 } } }
	height_out { ap_fifo {  { height_out_din fifo_data 1 11 }  { height_out_full_n fifo_status 0 1 }  { height_out_write fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_din fifo_data 1 11 }  { width_out_full_n fifo_status 0 1 }  { width_out_write fifo_update 1 1 } } }
}
