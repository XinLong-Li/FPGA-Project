// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_src_TDATA "../tv/cdatafile/c.ORB_accel.autotvin_src_V_data_V.dat"
`define INGRESS_STATUS_src_TDATA "../tv/stream_size/stream_ingress_status_src_V_data_V.dat"
`define TV_IN_src_TKEEP "../tv/cdatafile/c.ORB_accel.autotvin_src_V_keep_V.dat"
`define INGRESS_STATUS_src_TKEEP "../tv/stream_size/stream_ingress_status_src_V_keep_V.dat"
`define TV_IN_src_TSTRB "../tv/cdatafile/c.ORB_accel.autotvin_src_V_strb_V.dat"
`define INGRESS_STATUS_src_TSTRB "../tv/stream_size/stream_ingress_status_src_V_strb_V.dat"
`define TV_IN_src_TUSER "../tv/cdatafile/c.ORB_accel.autotvin_src_V_user_V.dat"
`define INGRESS_STATUS_src_TUSER "../tv/stream_size/stream_ingress_status_src_V_user_V.dat"
`define TV_IN_src_TLAST "../tv/cdatafile/c.ORB_accel.autotvin_src_V_last_V.dat"
`define INGRESS_STATUS_src_TLAST "../tv/stream_size/stream_ingress_status_src_V_last_V.dat"
`define TV_IN_src_TID "../tv/cdatafile/c.ORB_accel.autotvin_src_V_id_V.dat"
`define INGRESS_STATUS_src_TID "../tv/stream_size/stream_ingress_status_src_V_id_V.dat"
`define TV_IN_src_TDEST "../tv/cdatafile/c.ORB_accel.autotvin_src_V_dest_V.dat"
`define INGRESS_STATUS_src_TDEST "../tv/stream_size/stream_ingress_status_src_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_src (
    input clk,
    input reset,
    output [8 - 1:0] TRAN_src_TDATA,
    output TRAN_src_TKEEP,
    output TRAN_src_TSTRB,
    output TRAN_src_TUSER,
    output TRAN_src_TLAST,
    output TRAN_src_TID,
    output TRAN_src_TDEST,
    output TRAN_src_TVALID,
    input TRAN_src_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_src_TVALID_temp;
    wire src_TDATA_full;
    wire src_TDATA_empty;
    reg src_TDATA_write_en;
    reg [8 - 1:0] src_TDATA_write_data;
    reg src_TDATA_read_en;
    wire [8 - 1:0] src_TDATA_read_data;
    
    fifo #(4800, 8) fifo_src_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TDATA_write_en),
        .write_data(src_TDATA_write_data),
        .read_clock(clk),
        .read_en(src_TDATA_read_en),
        .read_data(src_TDATA_read_data),
        .full(src_TDATA_full),
        .empty(src_TDATA_empty));
    
    always @ (*) begin
        src_TDATA_write_en <= 0;
        src_TDATA_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TDATA = src_TDATA_read_data;
    wire src_TKEEP_full;
    wire src_TKEEP_empty;
    reg src_TKEEP_write_en;
    reg [1 - 1:0] src_TKEEP_write_data;
    reg src_TKEEP_read_en;
    wire [1 - 1:0] src_TKEEP_read_data;
    
    fifo #(4800, 1) fifo_src_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TKEEP_write_en),
        .write_data(src_TKEEP_write_data),
        .read_clock(clk),
        .read_en(src_TKEEP_read_en),
        .read_data(src_TKEEP_read_data),
        .full(src_TKEEP_full),
        .empty(src_TKEEP_empty));
    
    always @ (*) begin
        src_TKEEP_write_en <= 0;
        src_TKEEP_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TKEEP = src_TKEEP_read_data;
    wire src_TSTRB_full;
    wire src_TSTRB_empty;
    reg src_TSTRB_write_en;
    reg [1 - 1:0] src_TSTRB_write_data;
    reg src_TSTRB_read_en;
    wire [1 - 1:0] src_TSTRB_read_data;
    
    fifo #(4800, 1) fifo_src_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TSTRB_write_en),
        .write_data(src_TSTRB_write_data),
        .read_clock(clk),
        .read_en(src_TSTRB_read_en),
        .read_data(src_TSTRB_read_data),
        .full(src_TSTRB_full),
        .empty(src_TSTRB_empty));
    
    always @ (*) begin
        src_TSTRB_write_en <= 0;
        src_TSTRB_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TSTRB = src_TSTRB_read_data;
    wire src_TUSER_full;
    wire src_TUSER_empty;
    reg src_TUSER_write_en;
    reg [1 - 1:0] src_TUSER_write_data;
    reg src_TUSER_read_en;
    wire [1 - 1:0] src_TUSER_read_data;
    
    fifo #(4800, 1) fifo_src_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TUSER_write_en),
        .write_data(src_TUSER_write_data),
        .read_clock(clk),
        .read_en(src_TUSER_read_en),
        .read_data(src_TUSER_read_data),
        .full(src_TUSER_full),
        .empty(src_TUSER_empty));
    
    always @ (*) begin
        src_TUSER_write_en <= 0;
        src_TUSER_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TUSER = src_TUSER_read_data;
    wire src_TLAST_full;
    wire src_TLAST_empty;
    reg src_TLAST_write_en;
    reg [1 - 1:0] src_TLAST_write_data;
    reg src_TLAST_read_en;
    wire [1 - 1:0] src_TLAST_read_data;
    
    fifo #(4800, 1) fifo_src_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TLAST_write_en),
        .write_data(src_TLAST_write_data),
        .read_clock(clk),
        .read_en(src_TLAST_read_en),
        .read_data(src_TLAST_read_data),
        .full(src_TLAST_full),
        .empty(src_TLAST_empty));
    
    always @ (*) begin
        src_TLAST_write_en <= 0;
        src_TLAST_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TLAST = src_TLAST_read_data;
    wire src_TID_full;
    wire src_TID_empty;
    reg src_TID_write_en;
    reg [1 - 1:0] src_TID_write_data;
    reg src_TID_read_en;
    wire [1 - 1:0] src_TID_read_data;
    
    fifo #(4800, 1) fifo_src_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TID_write_en),
        .write_data(src_TID_write_data),
        .read_clock(clk),
        .read_en(src_TID_read_en),
        .read_data(src_TID_read_data),
        .full(src_TID_full),
        .empty(src_TID_empty));
    
    always @ (*) begin
        src_TID_write_en <= 0;
        src_TID_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TID = src_TID_read_data;
    wire src_TDEST_full;
    wire src_TDEST_empty;
    reg src_TDEST_write_en;
    reg [1 - 1:0] src_TDEST_write_data;
    reg src_TDEST_read_en;
    wire [1 - 1:0] src_TDEST_read_data;
    
    fifo #(4800, 1) fifo_src_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(src_TDEST_write_en),
        .write_data(src_TDEST_write_data),
        .read_clock(clk),
        .read_en(src_TDEST_read_en),
        .read_data(src_TDEST_read_data),
        .full(src_TDEST_full),
        .empty(src_TDEST_empty));
    
    always @ (*) begin
        src_TDEST_write_en <= 0;
        src_TDEST_read_en <= TRAN_src_TREADY & TRAN_src_TVALID;
    end
    
    assign TRAN_src_TDEST = src_TDEST_read_data;
    assign TRAN_src_TVALID = TRAN_src_TVALID_temp;

    
    reg src_TDATA_valid = 0; // ingress buffer indicator: src_TDATA
    reg src_TKEEP_valid = 0; // ingress buffer indicator: src_TKEEP
    reg src_TSTRB_valid = 0; // ingress buffer indicator: src_TSTRB
    reg src_TUSER_valid = 0; // ingress buffer indicator: src_TUSER
    reg src_TLAST_valid = 0; // ingress buffer indicator: src_TLAST
    reg src_TID_valid = 0; // ingress buffer indicator: src_TID
    reg src_TDEST_valid = 0; // ingress buffer indicator: src_TDEST
    
    assign TRAN_src_TVALID_temp = ~(src_TDATA_empty || src_TKEEP_empty || src_TSTRB_empty || src_TUSER_empty || src_TLAST_empty || src_TID_empty || src_TDEST_empty) || (src_TDATA_valid && src_TKEEP_valid && src_TSTRB_valid && src_TUSER_valid && src_TLAST_valid && src_TID_valid && src_TDEST_valid);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [615:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [615:0] rm_0x(input [615:0] token);
        reg [615:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_src_TDATA;
    
    assign transaction = transaction_load_src_TDATA;
    
    initial begin : AXI_stream_driver_src_TDATA
        integer fp;
        reg [615:0] token;
        reg [8 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TDATA = 0;
        fifo_src_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TDATA = transaction_load_src_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TKEEP;
    
    initial begin : AXI_stream_driver_src_TKEEP
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TKEEP = 0;
        fifo_src_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TKEEP = transaction_load_src_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TSTRB;
    
    initial begin : AXI_stream_driver_src_TSTRB
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TSTRB = 0;
        fifo_src_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TSTRB = transaction_load_src_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TUSER;
    
    initial begin : AXI_stream_driver_src_TUSER
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TUSER = 0;
        fifo_src_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TUSER = transaction_load_src_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TLAST;
    
    initial begin : AXI_stream_driver_src_TLAST
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TLAST = 0;
        fifo_src_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TLAST = transaction_load_src_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TID;
    
    initial begin : AXI_stream_driver_src_TID
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TID = 0;
        fifo_src_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TID = transaction_load_src_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_src_TDEST;
    
    initial begin : AXI_stream_driver_src_TDEST
        integer fp;
        reg [615:0] token;
        reg [1 - 1:0] data;
        reg [615:0] data_integer;
        integer fp_ingress_status;
        reg [615:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_src_TDEST = 0;
        fifo_src_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_src_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_src_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_src_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_src_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_src_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_src_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_src_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    src_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_src_TDEST = transaction_load_src_TDEST + 1;
            end
        end
    end

endmodule
