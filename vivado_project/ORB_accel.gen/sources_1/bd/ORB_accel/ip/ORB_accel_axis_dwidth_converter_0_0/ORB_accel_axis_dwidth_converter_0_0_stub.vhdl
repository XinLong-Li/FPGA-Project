-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jan 17 17:16:19 2024
-- Host        : LXL-MAGIC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/lxl/Documents/vitis_hls_ws/Project/Project/vivado_project/ORB_accel.gen/sources_1/bd/ORB_accel/ip/ORB_accel_axis_dwidth_converter_0_0/ORB_accel_axis_dwidth_converter_0_0_stub.vhdl
-- Design      : ORB_accel_axis_dwidth_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ORB_accel_axis_dwidth_converter_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 295 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 36 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 36 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ORB_accel_axis_dwidth_converter_0_0;

architecture stub of ORB_accel_axis_dwidth_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[295:0],s_axis_tstrb[36:0],s_axis_tkeep[36:0],s_axis_tlast,s_axis_tid[0:0],s_axis_tdest[0:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[127:0],m_axis_tstrb[15:0],m_axis_tkeep[15:0],m_axis_tlast,m_axis_tid[0:0],m_axis_tdest[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_dwidth_converter_v1_1_21_axis_dwidth_converter,Vivado 2020.2";
begin
end;
