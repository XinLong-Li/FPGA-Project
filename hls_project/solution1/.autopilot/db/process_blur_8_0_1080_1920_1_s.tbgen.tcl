set moduleName process_blur_8_0_1080_1920_1_s
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
set C_modelName {process_blur<8, 0, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in int 8 regular {fifo 0 volatile }  }
	{ img_out int 8 regular {fifo 1 volatile }  }
	{ blur_out int 8 regular {fifo 1 volatile }  }
	{ height int 11 regular {fifo 0}  }
	{ width int 11 regular {fifo 0}  }
	{ height_out int 11 regular {fifo 1}  }
	{ width_out int 11 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "blur_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "height", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "height_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "width_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_in_dout sc_in sc_lv 8 signal 0 } 
	{ img_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_read sc_out sc_logic 1 signal 0 } 
	{ img_out_din sc_out sc_lv 8 signal 1 } 
	{ img_out_full_n sc_in sc_logic 1 signal 1 } 
	{ img_out_write sc_out sc_logic 1 signal 1 } 
	{ blur_out_din sc_out sc_lv 8 signal 2 } 
	{ blur_out_full_n sc_in sc_logic 1 signal 2 } 
	{ blur_out_write sc_out sc_logic 1 signal 2 } 
	{ height_dout sc_in sc_lv 11 signal 3 } 
	{ height_empty_n sc_in sc_logic 1 signal 3 } 
	{ height_read sc_out sc_logic 1 signal 3 } 
	{ width_dout sc_in sc_lv 11 signal 4 } 
	{ width_empty_n sc_in sc_logic 1 signal 4 } 
	{ width_read sc_out sc_logic 1 signal 4 } 
	{ height_out_din sc_out sc_lv 11 signal 5 } 
	{ height_out_full_n sc_in sc_logic 1 signal 5 } 
	{ height_out_write sc_out sc_logic 1 signal 5 } 
	{ width_out_din sc_out sc_lv 11 signal 6 } 
	{ width_out_full_n sc_in sc_logic 1 signal 6 } 
	{ width_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in", "role": "dout" }} , 
 	{ "name": "img_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in", "role": "empty_n" }} , 
 	{ "name": "img_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in", "role": "read" }} , 
 	{ "name": "img_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out", "role": "din" }} , 
 	{ "name": "img_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out", "role": "full_n" }} , 
 	{ "name": "img_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out", "role": "write" }} , 
 	{ "name": "blur_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blur_out", "role": "din" }} , 
 	{ "name": "blur_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_out", "role": "full_n" }} , 
 	{ "name": "blur_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blur_out", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "process_blur_8_0_1080_1920_1_s",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state40_pp1_iter26_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter26", "FromInitialOperation" : "ap_enable_operation_297", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_335", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_338", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_338", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_336", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_336", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_334", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state42_pp1_iter28_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter28", "ToFinalOperation" : "ap_enable_operation_390", "ToFinalSV" : "40", "ToAddress" : "line_buffer_val_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state40_pp1_iter26_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter26", "FromInitialOperation" : "ap_enable_operation_299", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_337", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_340", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_340", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_338", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_338", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp1_iter26_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter26", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter27", "ToInitialOperation" : "ap_enable_operation_297", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_335", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state40_pp1_iter26_stage0", "ap_enable_state41_pp1_iter27_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp1_iter26_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter26", "FromInitialOperation" : "ap_enable_operation_301", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_339", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_342", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_342", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_340", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_340", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp1_iter26_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter26", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter27", "ToInitialOperation" : "ap_enable_operation_299", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_337", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state40_pp1_iter26_stage0", "ap_enable_state41_pp1_iter27_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp1_iter26_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter26", "FromInitialOperation" : "ap_enable_operation_303", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_341", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_5_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_344", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_344", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_5_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_342", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_342", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp1_iter26_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter26", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter27", "ToInitialOperation" : "ap_enable_operation_301", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_339", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state40_pp1_iter26_stage0", "ap_enable_state41_pp1_iter27_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp1_iter26_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter26", "FromInitialOperation" : "ap_enable_operation_305", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_343", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_6_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_345", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_345", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_6_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_344", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_344", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_5_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp1_iter26_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter26", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter27", "ToInitialOperation" : "ap_enable_operation_303", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_341", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_5_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state40_pp1_iter26_stage0", "ap_enable_state41_pp1_iter27_stage0"]},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_345", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state41_pp1_iter27_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter27", "FromFinalOperation" : "ap_enable_operation_345", "FromFinalSV" : "39", "FromAddress" : "line_buffer_val_V_6_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp1_iter26_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter26", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter27", "ToInitialOperation" : "ap_enable_operation_305", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_343", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_6_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state40_pp1_iter26_stage0", "ap_enable_state41_pp1_iter27_stage0"]},
			{"FromInitialState" : "ap_enable_state41_pp1_iter27_stage0", "FromInitialIteration" : "ap_enable_reg_pp1_iter27", "FromInitialOperation" : "ap_enable_operation_334", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state42_pp1_iter28_stage0", "FromFinalIteration" : "ap_enable_reg_pp1_iter28", "FromFinalOperation" : "ap_enable_operation_390", "FromFinalSV" : "40", "FromAddress" : "line_buffer_val_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state41_pp1_iter27_stage0", "ToInitialIteration" : "ap_enable_reg_pp1_iter27", "ToInitialNextIteration" : "ap_enable_reg_pp1_iter28", "ToInitialOperation" : "ap_enable_operation_336", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state41_pp1_iter27_stage0", "ToFinalIteration" : "ap_enable_reg_pp1_iter27", "ToFinalOperation" : "ap_enable_operation_336", "ToFinalSV" : "39", "ToAddress" : "line_buffer_val_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp1", "AddressWidth" : "11", "II" : "1", "Pragma" : "", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state41_pp1_iter27_stage0", "ap_enable_state42_pp1_iter28_stage0"]}],
		"Port" : [
			{"Name" : "img_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7680", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "img_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "blur_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blur_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "height_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "height_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "width_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_4_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_5_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_val_V_6_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_23ns_11ns_23_27_1_U84", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_23ns_11ns_23_27_1_U85", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U86", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U87", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U88", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U89", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U90", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U91", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U92", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U93", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U94", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U95", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U96", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U97", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U98", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U99", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U100", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U101", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U102", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U103", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U104", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U105", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U106", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U107", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U108", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U109", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U110", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U111", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_10ns_17_1_1_U112", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U113", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U114", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U115", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U116", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_9ns_16_1_1_U117", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_22_4_1_U118", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_11ns_4ns_11ns_23_4_1_U119", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U120", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U121", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U122", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U123", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U124", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U125", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U126", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U127", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_11ns_18_4_1_U128", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_blur_8_0_1080_1920_1_s {
		img_in {Type I LastRead 39 FirstWrite -1}
		img_out {Type O LastRead -1 FirstWrite 39}
		blur_out {Type O LastRead -1 FirstWrite 42}
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
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	img_in { ap_fifo {  { img_in_dout fifo_data 0 8 }  { img_in_empty_n fifo_status 0 1 }  { img_in_read fifo_update 1 1 } } }
	img_out { ap_fifo {  { img_out_din fifo_data 1 8 }  { img_out_full_n fifo_status 0 1 }  { img_out_write fifo_update 1 1 } } }
	blur_out { ap_fifo {  { blur_out_din fifo_data 1 8 }  { blur_out_full_n fifo_status 0 1 }  { blur_out_write fifo_update 1 1 } } }
	height { ap_fifo {  { height_dout fifo_data 0 11 }  { height_empty_n fifo_status 0 1 }  { height_read fifo_update 1 1 } } }
	width { ap_fifo {  { width_dout fifo_data 0 11 }  { width_empty_n fifo_status 0 1 }  { width_read fifo_update 1 1 } } }
	height_out { ap_fifo {  { height_out_din fifo_data 1 11 }  { height_out_full_n fifo_status 0 1 }  { height_out_write fifo_update 1 1 } } }
	width_out { ap_fifo {  { width_out_din fifo_data 1 11 }  { width_out_full_n fifo_status 0 1 }  { width_out_write fifo_update 1 1 } } }
}
