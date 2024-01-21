set moduleName process_output_8_0_1080_1920_1_s
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
set C_modelName {process_output<8, 0, 1080, 1920, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ src int 512 regular {fifo 0 volatile }  }
	{ dst_V_data_V int 296 regular {axi_s 1 volatile  { dst Data } }  }
	{ dst_V_keep_V int 37 regular {axi_s 1 volatile  { dst Keep } }  }
	{ dst_V_strb_V int 37 regular {axi_s 1 volatile  { dst Strb } }  }
	{ dst_V_user_V int 1 regular {axi_s 1 volatile  { dst User } }  }
	{ dst_V_last_V int 1 regular {axi_s 1 volatile  { dst Last } }  }
	{ dst_V_id_V int 1 regular {axi_s 1 volatile  { dst ID } }  }
	{ dst_V_dest_V int 1 regular {axi_s 1 volatile  { dst Dest } }  }
	{ length_r int 32 regular {pointer 1}  }
	{ cntTree int 32 regular {array 256 { 0 1 } 1 1 } {global 2}  }
	{ idxTree int 32 regular {array 25600 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dst_V_data_V", "interface" : "axis", "bitwidth" : 296, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_keep_V", "interface" : "axis", "bitwidth" : 37, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_strb_V", "interface" : "axis", "bitwidth" : 37, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cntTree", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "idxTree", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_dout sc_in sc_lv 512 signal 0 } 
	{ src_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_read sc_out sc_logic 1 signal 0 } 
	{ dst_TDATA sc_out sc_lv 296 signal 1 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 7 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 1 } 
	{ dst_TKEEP sc_out sc_lv 37 signal 2 } 
	{ dst_TSTRB sc_out sc_lv 37 signal 3 } 
	{ dst_TUSER sc_out sc_lv 1 signal 4 } 
	{ dst_TLAST sc_out sc_lv 1 signal 5 } 
	{ dst_TID sc_out sc_lv 1 signal 6 } 
	{ dst_TDEST sc_out sc_lv 1 signal 7 } 
	{ length_r sc_out sc_lv 32 signal 8 } 
	{ length_r_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ cntTree_address0 sc_out sc_lv 8 signal 9 } 
	{ cntTree_ce0 sc_out sc_logic 1 signal 9 } 
	{ cntTree_we0 sc_out sc_logic 1 signal 9 } 
	{ cntTree_d0 sc_out sc_lv 32 signal 9 } 
	{ cntTree_address1 sc_out sc_lv 8 signal 9 } 
	{ cntTree_ce1 sc_out sc_logic 1 signal 9 } 
	{ cntTree_q1 sc_in sc_lv 32 signal 9 } 
	{ idxTree_address0 sc_out sc_lv 15 signal 10 } 
	{ idxTree_ce0 sc_out sc_logic 1 signal 10 } 
	{ idxTree_we0 sc_out sc_logic 1 signal 10 } 
	{ idxTree_d0 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "src", "role": "dout" }} , 
 	{ "name": "src_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "empty_n" }} , 
 	{ "name": "src_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src", "role": "read" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":296, "type": "signal", "bundle":{"name": "dst_V_data_V", "role": "default" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_V_data_V", "role": "default" }} , 
 	{ "name": "dst_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "dst_V_keep_V", "role": "default" }} , 
 	{ "name": "dst_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":37, "type": "signal", "bundle":{"name": "dst_V_strb_V", "role": "default" }} , 
 	{ "name": "dst_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_user_V", "role": "default" }} , 
 	{ "name": "dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_last_V", "role": "default" }} , 
 	{ "name": "dst_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_id_V", "role": "default" }} , 
 	{ "name": "dst_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "length_r", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }} , 
 	{ "name": "length_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "length_r", "role": "ap_vld" }} , 
 	{ "name": "cntTree_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cntTree", "role": "address0" }} , 
 	{ "name": "cntTree_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cntTree", "role": "ce0" }} , 
 	{ "name": "cntTree_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cntTree", "role": "we0" }} , 
 	{ "name": "cntTree_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cntTree", "role": "d0" }} , 
 	{ "name": "cntTree_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cntTree", "role": "address1" }} , 
 	{ "name": "cntTree_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cntTree", "role": "ce1" }} , 
 	{ "name": "cntTree_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cntTree", "role": "q1" }} , 
 	{ "name": "idxTree_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "idxTree", "role": "address0" }} , 
 	{ "name": "idxTree_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idxTree", "role": "ce0" }} , 
 	{ "name": "idxTree_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "idxTree", "role": "we0" }} , 
 	{ "name": "idxTree_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "idxTree", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_output_8_0_1080_1920_1_s",
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
			{"Name" : "src", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "src_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "length_r", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cntTree", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "idxTree", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_8ns_15ns_15_4_1_U2489", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_output_8_0_1080_1920_1_s {
		src {Type I LastRead 1 FirstWrite -1}
		dst_V_data_V {Type O LastRead -1 FirstWrite 4}
		dst_V_keep_V {Type O LastRead -1 FirstWrite 4}
		dst_V_strb_V {Type O LastRead -1 FirstWrite 4}
		dst_V_user_V {Type O LastRead -1 FirstWrite 4}
		dst_V_last_V {Type O LastRead -1 FirstWrite 4}
		dst_V_id_V {Type O LastRead -1 FirstWrite 4}
		dst_V_dest_V {Type O LastRead -1 FirstWrite 4}
		length_r {Type O LastRead -1 FirstWrite 5}
		cntTree {Type IO LastRead 1 FirstWrite 2}
		idxTree {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src { ap_fifo {  { src_dout fifo_data 0 512 }  { src_empty_n fifo_status 0 1 }  { src_read fifo_update 1 1 } } }
	dst_V_data_V { axis {  { dst_TDATA out_data 1 296 }  { dst_TREADY out_acc 0 1 } } }
	dst_V_keep_V { axis {  { dst_TKEEP out_data 1 37 } } }
	dst_V_strb_V { axis {  { dst_TSTRB out_data 1 37 } } }
	dst_V_user_V { axis {  { dst_TUSER out_data 1 1 } } }
	dst_V_last_V { axis {  { dst_TLAST out_data 1 1 } } }
	dst_V_id_V { axis {  { dst_TID out_data 1 1 } } }
	dst_V_dest_V { axis {  { dst_TVALID out_vld 1 1 }  { dst_TDEST out_data 1 1 } } }
	length_r { ap_vld {  { length_r out_data 1 32 }  { length_r_ap_vld out_vld 1 1 } } }
	cntTree { ap_memory {  { cntTree_address0 mem_address 1 8 }  { cntTree_ce0 mem_ce 1 1 }  { cntTree_we0 mem_we 1 1 }  { cntTree_d0 mem_din 1 32 }  { cntTree_address1 MemPortADDR2 1 8 }  { cntTree_ce1 MemPortCE2 1 1 }  { cntTree_q1 MemPortDOUT2 0 32 } } }
	idxTree { ap_memory {  { idxTree_address0 mem_address 1 15 }  { idxTree_ce0 mem_ce 1 1 }  { idxTree_we0 mem_we 1 1 }  { idxTree_d0 mem_din 1 32 } } }
}
