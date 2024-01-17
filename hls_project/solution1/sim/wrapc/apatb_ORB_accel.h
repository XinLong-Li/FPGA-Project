// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" int AESL_WRAP_ORB_accel (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&src),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&dst),
int height,
int width,
int height_new,
int width_new,
int threshold);
