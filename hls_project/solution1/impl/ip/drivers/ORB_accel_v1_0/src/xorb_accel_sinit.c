// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xorb_accel.h"

extern XOrb_accel_Config XOrb_accel_ConfigTable[];

XOrb_accel_Config *XOrb_accel_LookupConfig(u16 DeviceId) {
	XOrb_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XORB_ACCEL_NUM_INSTANCES; Index++) {
		if (XOrb_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XOrb_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XOrb_accel_Initialize(XOrb_accel *InstancePtr, u16 DeviceId) {
	XOrb_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XOrb_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XOrb_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

