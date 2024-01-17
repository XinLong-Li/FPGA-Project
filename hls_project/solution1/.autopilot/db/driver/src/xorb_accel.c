// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xorb_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XOrb_accel_CfgInitialize(XOrb_accel *InstancePtr, XOrb_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XOrb_accel_Start(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XOrb_accel_IsDone(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XOrb_accel_IsIdle(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XOrb_accel_IsReady(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XOrb_accel_EnableAutoRestart(XOrb_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XOrb_accel_DisableAutoRestart(XOrb_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XOrb_accel_Get_return(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XOrb_accel_Set_height(XOrb_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XOrb_accel_Get_height(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XOrb_accel_Set_width(XOrb_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XOrb_accel_Get_width(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XOrb_accel_Set_height_new(XOrb_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_HEIGHT_NEW_DATA, Data);
}

u32 XOrb_accel_Get_height_new(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_HEIGHT_NEW_DATA);
    return Data;
}

void XOrb_accel_Set_width_new(XOrb_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_WIDTH_NEW_DATA, Data);
}

u32 XOrb_accel_Get_width_new(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_WIDTH_NEW_DATA);
    return Data;
}

void XOrb_accel_Set_threshold(XOrb_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_THRESHOLD_DATA, Data);
}

u32 XOrb_accel_Get_threshold(XOrb_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_THRESHOLD_DATA);
    return Data;
}

void XOrb_accel_InterruptGlobalEnable(XOrb_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XOrb_accel_InterruptGlobalDisable(XOrb_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XOrb_accel_InterruptEnable(XOrb_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_IER);
    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XOrb_accel_InterruptDisable(XOrb_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_IER);
    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XOrb_accel_InterruptClear(XOrb_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XOrb_accel_WriteReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XOrb_accel_InterruptGetEnabled(XOrb_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_IER);
}

u32 XOrb_accel_InterruptGetStatus(XOrb_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XOrb_accel_ReadReg(InstancePtr->Control_BaseAddress, XORB_ACCEL_CONTROL_ADDR_ISR);
}

