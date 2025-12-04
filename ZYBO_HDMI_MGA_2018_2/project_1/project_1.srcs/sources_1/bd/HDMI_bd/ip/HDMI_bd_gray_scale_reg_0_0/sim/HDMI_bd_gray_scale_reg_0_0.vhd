-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:gray_scale_reg:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY HDMI_bd_gray_scale_reg_0_0 IS
  PORT (
    rst : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rdy : IN STD_LOGIC;
    flaten_gray_in : IN STD_LOGIC_VECTOR(119 DOWNTO 0);
    flaten_gray_out : OUT STD_LOGIC_VECTOR(119 DOWNTO 0);
    out0 : OUT STD_LOGIC;
    out1 : OUT STD_LOGIC;
    out2 : OUT STD_LOGIC;
    out3 : OUT STD_LOGIC;
    out4 : OUT STD_LOGIC;
    out5 : OUT STD_LOGIC;
    out6 : OUT STD_LOGIC;
    out7 : OUT STD_LOGIC
  );
END HDMI_bd_gray_scale_reg_0_0;

ARCHITECTURE HDMI_bd_gray_scale_reg_0_0_arch OF HDMI_bd_gray_scale_reg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF HDMI_bd_gray_scale_reg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT gray_scale_reg IS
    PORT (
      rst : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      rdy : IN STD_LOGIC;
      flaten_gray_in : IN STD_LOGIC_VECTOR(119 DOWNTO 0);
      flaten_gray_out : OUT STD_LOGIC_VECTOR(119 DOWNTO 0);
      out0 : OUT STD_LOGIC;
      out1 : OUT STD_LOGIC;
      out2 : OUT STD_LOGIC;
      out3 : OUT STD_LOGIC;
      out4 : OUT STD_LOGIC;
      out5 : OUT STD_LOGIC;
      out6 : OUT STD_LOGIC;
      out7 : OUT STD_LOGIC
    );
  END COMPONENT gray_scale_reg;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : gray_scale_reg
    PORT MAP (
      rst => rst,
      clk => clk,
      rdy => rdy,
      flaten_gray_in => flaten_gray_in,
      flaten_gray_out => flaten_gray_out,
      out0 => out0,
      out1 => out1,
      out2 => out2,
      out3 => out3,
      out4 => out4,
      out5 => out5,
      out6 => out6,
      out7 => out7
    );
END HDMI_bd_gray_scale_reg_0_0_arch;
