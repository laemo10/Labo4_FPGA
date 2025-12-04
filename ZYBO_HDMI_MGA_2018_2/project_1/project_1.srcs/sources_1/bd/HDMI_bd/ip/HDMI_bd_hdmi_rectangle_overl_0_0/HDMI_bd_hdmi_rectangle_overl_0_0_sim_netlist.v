// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Dec  1 20:11:04 2025
// Host        : pcetu-125 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_hdmi_rectangle_overl_0_0/HDMI_bd_hdmi_rectangle_overl_0_0_sim_netlist.v
// Design      : HDMI_bd_hdmi_rectangle_overl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_hdmi_rectangle_overl_0_0,hdmi_rectangle_overlay,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "hdmi_rectangle_overlay,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_hdmi_rectangle_overl_0_0
   (clk,
    rst,
    h_count,
    v_count,
    vde_in,
    hsync_in,
    vsync_in,
    rgb_in,
    vde_out,
    hsync_out,
    vsync_out,
    rgb_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]h_count;
  input [31:0]v_count;
  input vde_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output vde_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;

  wire clk;
  wire [31:0]h_count;
  wire hsync_in;
  wire hsync_out;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire rst;
  wire [31:0]v_count;
  wire vde_in;
  wire vde_out;
  wire vsync_in;
  wire vsync_out;

  HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay U0
       (.clk(clk),
        .h_count(h_count),
        .hsync_in(hsync_in),
        .hsync_out(hsync_out),
        .rgb_in(rgb_in),
        .rgb_out(rgb_out),
        .rst(rst),
        .v_count(v_count),
        .vde_in(vde_in),
        .vde_out(vde_out),
        .vsync_in(vsync_in),
        .vsync_out(vsync_out));
endmodule

(* ORIG_REF_NAME = "hdmi_rectangle_overlay" *) 
module HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay
   (vde_out,
    hsync_out,
    vsync_out,
    rgb_out,
    h_count,
    rst,
    vde_in,
    clk,
    hsync_in,
    vsync_in,
    rgb_in,
    v_count);
  output vde_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;
  input [31:0]h_count;
  input rst;
  input vde_in;
  input clk;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  input [31:0]v_count;

  wire clk;
  wire [31:0]h_count;
  wire hsync_in;
  wire hsync_out;
  wire hsync_reg;
  wire is_edge_reg;
  wire is_edge_reg_i_10_n_0;
  wire is_edge_reg_i_11_n_0;
  wire is_edge_reg_i_12_n_0;
  wire is_edge_reg_i_13_n_0;
  wire is_edge_reg_i_14_n_0;
  wire is_edge_reg_i_15_n_0;
  wire is_edge_reg_i_16_n_0;
  wire is_edge_reg_i_17_n_0;
  wire is_edge_reg_i_18_n_0;
  wire is_edge_reg_i_19_n_0;
  wire is_edge_reg_i_1_n_0;
  wire is_edge_reg_i_20_n_0;
  wire is_edge_reg_i_21_n_0;
  wire is_edge_reg_i_2_n_0;
  wire is_edge_reg_i_3_n_0;
  wire is_edge_reg_i_4_n_0;
  wire is_edge_reg_i_5_n_0;
  wire is_edge_reg_i_6_n_0;
  wire is_edge_reg_i_7_n_0;
  wire is_edge_reg_i_8_n_0;
  wire is_edge_reg_i_9_n_0;
  wire is_logic_grid;
  wire is_logic_grid_reg;
  wire is_logic_grid_reg_i_10_n_0;
  wire is_logic_grid_reg_i_11_n_0;
  wire is_logic_grid_reg_i_12_n_0;
  wire is_logic_grid_reg_i_13_n_0;
  wire is_logic_grid_reg_i_14_n_0;
  wire is_logic_grid_reg_i_15_n_0;
  wire is_logic_grid_reg_i_16_n_0;
  wire is_logic_grid_reg_i_17_n_0;
  wire is_logic_grid_reg_i_18_n_0;
  wire is_logic_grid_reg_i_19_n_0;
  wire is_logic_grid_reg_i_1_n_0;
  wire is_logic_grid_reg_i_20_n_0;
  wire is_logic_grid_reg_i_21_n_0;
  wire is_logic_grid_reg_i_22_n_0;
  wire is_logic_grid_reg_i_23_n_0;
  wire is_logic_grid_reg_i_24_n_0;
  wire is_logic_grid_reg_i_25_n_0;
  wire is_logic_grid_reg_i_26_n_0;
  wire is_logic_grid_reg_i_27_n_0;
  wire is_logic_grid_reg_i_28_n_0;
  wire is_logic_grid_reg_i_29_n_0;
  wire is_logic_grid_reg_i_30_n_0;
  wire is_logic_grid_reg_i_31_n_0;
  wire is_logic_grid_reg_i_32_n_0;
  wire is_logic_grid_reg_i_33_n_0;
  wire is_logic_grid_reg_i_34_n_0;
  wire is_logic_grid_reg_i_35_n_0;
  wire is_logic_grid_reg_i_36_n_0;
  wire is_logic_grid_reg_i_37_n_0;
  wire is_logic_grid_reg_i_38_n_0;
  wire is_logic_grid_reg_i_39_n_0;
  wire is_logic_grid_reg_i_3_n_0;
  wire is_logic_grid_reg_i_40_n_0;
  wire is_logic_grid_reg_i_41_n_0;
  wire is_logic_grid_reg_i_42_n_0;
  wire is_logic_grid_reg_i_43_n_0;
  wire is_logic_grid_reg_i_44_n_0;
  wire is_logic_grid_reg_i_45_n_0;
  wire is_logic_grid_reg_i_46_n_0;
  wire is_logic_grid_reg_i_47_n_0;
  wire is_logic_grid_reg_i_48_n_0;
  wire is_logic_grid_reg_i_49_n_0;
  wire is_logic_grid_reg_i_4_n_0;
  wire is_logic_grid_reg_i_5_n_0;
  wire is_logic_grid_reg_i_6_n_0;
  wire is_logic_grid_reg_i_7_n_0;
  wire is_logic_grid_reg_i_8_n_0;
  wire is_logic_grid_reg_i_9_n_0;
  wire [23:0]p_0_in;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire [23:0]rgb_reg;
  wire rst;
  wire [31:0]v_count;
  wire vde_in;
  wire vde_out;
  wire vde_reg;
  wire vsync_in;
  wire vsync_out;
  wire vsync_reg;

  FDRE hsync_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_reg),
        .Q(hsync_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    hsync_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_in),
        .Q(hsync_reg),
        .R(rst));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0808080)) 
    is_edge_reg_i_1
       (.I0(is_edge_reg_i_2_n_0),
        .I1(is_edge_reg_i_3_n_0),
        .I2(is_logic_grid_reg_i_7_n_0),
        .I3(is_edge_reg_i_4_n_0),
        .I4(is_edge_reg_i_5_n_0),
        .I5(is_edge_reg_i_6_n_0),
        .O(is_edge_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    is_edge_reg_i_10
       (.I0(v_count[6]),
        .I1(v_count[7]),
        .I2(v_count[5]),
        .I3(v_count[4]),
        .I4(v_count[9]),
        .I5(v_count[8]),
        .O(is_edge_reg_i_10_n_0));
  LUT5 #(
    .INIT(32'h00010100)) 
    is_edge_reg_i_11
       (.I0(v_count[5]),
        .I1(v_count[7]),
        .I2(v_count[9]),
        .I3(v_count[2]),
        .I4(v_count[1]),
        .O(is_edge_reg_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    is_edge_reg_i_12
       (.I0(is_edge_reg_i_15_n_0),
        .I1(h_count[5]),
        .I2(h_count[3]),
        .I3(h_count[4]),
        .O(is_edge_reg_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    is_edge_reg_i_13
       (.I0(is_edge_reg_i_16_n_0),
        .I1(is_edge_reg_i_17_n_0),
        .I2(is_edge_reg_i_18_n_0),
        .I3(is_edge_reg_i_19_n_0),
        .I4(is_edge_reg_i_20_n_0),
        .O(is_edge_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h3333FFFFBBBFFCCC)) 
    is_edge_reg_i_14
       (.I0(is_edge_reg_i_21_n_0),
        .I1(v_count[8]),
        .I2(v_count[6]),
        .I3(v_count[5]),
        .I4(v_count[9]),
        .I5(v_count[7]),
        .O(is_edge_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    is_edge_reg_i_15
       (.I0(h_count[2]),
        .I1(h_count[9]),
        .I2(h_count[0]),
        .I3(h_count[1]),
        .I4(v_count[1]),
        .I5(h_count[10]),
        .O(is_edge_reg_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h01C0)) 
    is_edge_reg_i_16
       (.I0(h_count[1]),
        .I1(h_count[0]),
        .I2(h_count[2]),
        .I3(h_count[3]),
        .O(is_edge_reg_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    is_edge_reg_i_17
       (.I0(h_count[5]),
        .I1(h_count[4]),
        .I2(h_count[9]),
        .I3(h_count[10]),
        .O(is_edge_reg_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    is_edge_reg_i_18
       (.I0(h_count[4]),
        .I1(h_count[5]),
        .I2(h_count[3]),
        .I3(h_count[2]),
        .I4(h_count[10]),
        .I5(h_count[9]),
        .O(is_edge_reg_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    is_edge_reg_i_19
       (.I0(h_count[1]),
        .I1(h_count[10]),
        .I2(h_count[9]),
        .I3(h_count[5]),
        .O(is_edge_reg_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    is_edge_reg_i_2
       (.I0(is_edge_reg_i_7_n_0),
        .I1(h_count[0]),
        .I2(h_count[1]),
        .I3(h_count[2]),
        .I4(is_edge_reg_i_8_n_0),
        .I5(is_edge_reg_i_9_n_0),
        .O(is_edge_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    is_edge_reg_i_20
       (.I0(h_count[3]),
        .I1(h_count[4]),
        .I2(h_count[2]),
        .O(is_edge_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h0101010101111111)) 
    is_edge_reg_i_21
       (.I0(v_count[6]),
        .I1(v_count[4]),
        .I2(v_count[3]),
        .I3(v_count[1]),
        .I4(v_count[0]),
        .I5(v_count[2]),
        .O(is_edge_reg_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20080808)) 
    is_edge_reg_i_3
       (.I0(is_edge_reg_i_10_n_0),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[1]),
        .I4(v_count[0]),
        .O(is_edge_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    is_edge_reg_i_4
       (.I0(v_count[4]),
        .I1(v_count[3]),
        .I2(v_count[8]),
        .I3(v_count[6]),
        .O(is_edge_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F888F888F88)) 
    is_edge_reg_i_5
       (.I0(is_edge_reg_i_9_n_0),
        .I1(is_edge_reg_i_11_n_0),
        .I2(is_edge_reg_i_7_n_0),
        .I3(is_edge_reg_i_12_n_0),
        .I4(v_count[2]),
        .I5(is_edge_reg_i_13_n_0),
        .O(is_edge_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    is_edge_reg_i_6
       (.I0(h_count[7]),
        .I1(h_count[6]),
        .I2(h_count[8]),
        .I3(is_edge_reg_i_13_n_0),
        .I4(is_edge_reg_i_14_n_0),
        .O(is_edge_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_edge_reg_i_7
       (.I0(h_count[7]),
        .I1(h_count[6]),
        .I2(h_count[8]),
        .O(is_edge_reg_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_edge_reg_i_8
       (.I0(h_count[10]),
        .I1(h_count[9]),
        .O(is_edge_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h4446464646464642)) 
    is_edge_reg_i_9
       (.I0(h_count[10]),
        .I1(h_count[9]),
        .I2(is_edge_reg_i_7_n_0),
        .I3(h_count[4]),
        .I4(h_count[3]),
        .I5(h_count[5]),
        .O(is_edge_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_edge_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_edge_reg_i_1_n_0),
        .Q(is_edge_reg),
        .R(rst));
  LUT6 #(
    .INIT(64'hFEEEAAAAAAAAAAAA)) 
    is_logic_grid_reg_i_1
       (.I0(is_logic_grid),
        .I1(is_logic_grid_reg_i_3_n_0),
        .I2(is_logic_grid_reg_i_4_n_0),
        .I3(is_logic_grid_reg_i_5_n_0),
        .I4(is_logic_grid_reg_i_6_n_0),
        .I5(is_logic_grid_reg_i_7_n_0),
        .O(is_logic_grid_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    is_logic_grid_reg_i_10
       (.I0(is_logic_grid_reg_i_27_n_0),
        .I1(h_count[12]),
        .I2(h_count[11]),
        .I3(v_count[31]),
        .I4(is_logic_grid_reg_i_28_n_0),
        .O(is_logic_grid_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    is_logic_grid_reg_i_11
       (.I0(is_logic_grid_reg_i_29_n_0),
        .I1(is_logic_grid_reg_i_30_n_0),
        .I2(is_logic_grid_reg_i_31_n_0),
        .I3(is_logic_grid_reg_i_32_n_0),
        .O(is_logic_grid_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h0001100000000000)) 
    is_logic_grid_reg_i_12
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .I2(v_count[1]),
        .I3(v_count[2]),
        .I4(v_count[3]),
        .I5(is_logic_grid_reg_i_33_n_0),
        .O(is_logic_grid_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h4F4F4F4F4F4F4F44)) 
    is_logic_grid_reg_i_13
       (.I0(is_logic_grid_reg_i_34_n_0),
        .I1(is_logic_grid_reg_i_35_n_0),
        .I2(h_count[8]),
        .I3(is_logic_grid_reg_i_36_n_0),
        .I4(h_count[7]),
        .I5(is_logic_grid_reg_i_37_n_0),
        .O(is_logic_grid_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_logic_grid_reg_i_14
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .O(is_logic_grid_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h00000000ABABAAAB)) 
    is_logic_grid_reg_i_15
       (.I0(is_logic_grid_reg_i_38_n_0),
        .I1(v_count[3]),
        .I2(is_logic_grid_reg_i_39_n_0),
        .I3(v_count[2]),
        .I4(is_logic_grid_reg_i_40_n_0),
        .I5(h_count[5]),
        .O(is_logic_grid_reg_i_15_n_0));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    is_logic_grid_reg_i_16
       (.I0(is_logic_grid_reg_i_41_n_0),
        .I1(h_count[8]),
        .I2(h_count[7]),
        .I3(is_logic_grid_reg_i_42_n_0),
        .I4(is_logic_grid_reg_i_43_n_0),
        .O(is_logic_grid_reg_i_16_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    is_logic_grid_reg_i_17
       (.I0(h_count[3]),
        .I1(h_count[0]),
        .I2(is_logic_grid_reg_i_44_n_0),
        .I3(is_logic_grid_reg_i_45_n_0),
        .I4(h_count[8]),
        .O(is_logic_grid_reg_i_17_n_0));
  LUT6 #(
    .INIT(64'h0002000200020000)) 
    is_logic_grid_reg_i_18
       (.I0(v_count[5]),
        .I1(v_count[7]),
        .I2(h_count[8]),
        .I3(v_count[4]),
        .I4(h_count[7]),
        .I5(is_logic_grid_reg_i_37_n_0),
        .O(is_logic_grid_reg_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00AA5600)) 
    is_logic_grid_reg_i_19
       (.I0(v_count[2]),
        .I1(v_count[0]),
        .I2(v_count[1]),
        .I3(v_count[3]),
        .I4(v_count[6]),
        .O(is_logic_grid_reg_i_19_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    is_logic_grid_reg_i_2
       (.I0(is_logic_grid_reg_i_8_n_0),
        .I1(is_logic_grid_reg_i_9_n_0),
        .I2(is_logic_grid_reg_i_10_n_0),
        .I3(is_logic_grid_reg_i_11_n_0),
        .I4(is_logic_grid_reg_i_12_n_0),
        .I5(is_logic_grid_reg_i_13_n_0),
        .O(is_logic_grid));
  LUT6 #(
    .INIT(64'hE0E0E000E000E000)) 
    is_logic_grid_reg_i_20
       (.I0(is_logic_grid_reg_i_37_n_0),
        .I1(h_count[7]),
        .I2(is_logic_grid_reg_i_46_n_0),
        .I3(is_logic_grid_reg_i_47_n_0),
        .I4(is_logic_grid_reg_i_48_n_0),
        .I5(is_logic_grid_reg_i_49_n_0),
        .O(is_logic_grid_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    is_logic_grid_reg_i_21
       (.I0(v_count[2]),
        .I1(v_count[7]),
        .I2(v_count[1]),
        .I3(h_count[7]),
        .I4(is_logic_grid_reg_i_43_n_0),
        .I5(is_logic_grid_reg_i_42_n_0),
        .O(is_logic_grid_reg_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCCCCCCC8)) 
    is_logic_grid_reg_i_22
       (.I0(v_count[3]),
        .I1(v_count[7]),
        .I2(v_count[6]),
        .I3(v_count[5]),
        .I4(v_count[4]),
        .O(is_logic_grid_reg_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    is_logic_grid_reg_i_23
       (.I0(v_count[11]),
        .I1(v_count[12]),
        .I2(v_count[13]),
        .I3(v_count[14]),
        .I4(is_logic_grid_reg_i_31_n_0),
        .O(is_logic_grid_reg_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    is_logic_grid_reg_i_24
       (.I0(v_count[19]),
        .I1(v_count[20]),
        .I2(v_count[21]),
        .I3(v_count[22]),
        .I4(is_logic_grid_reg_i_29_n_0),
        .O(is_logic_grid_reg_i_24_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_25
       (.I0(v_count[10]),
        .I1(h_count[31]),
        .I2(h_count[30]),
        .I3(h_count[29]),
        .O(is_logic_grid_reg_i_25_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_26
       (.I0(h_count[24]),
        .I1(h_count[23]),
        .I2(h_count[22]),
        .I3(h_count[21]),
        .O(is_logic_grid_reg_i_26_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_27
       (.I0(h_count[16]),
        .I1(h_count[15]),
        .I2(h_count[14]),
        .I3(h_count[13]),
        .O(is_logic_grid_reg_i_27_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_28
       (.I0(v_count[30]),
        .I1(v_count[29]),
        .I2(v_count[28]),
        .I3(v_count[27]),
        .O(is_logic_grid_reg_i_28_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_29
       (.I0(v_count[26]),
        .I1(v_count[25]),
        .I2(v_count[24]),
        .I3(v_count[23]),
        .O(is_logic_grid_reg_i_29_n_0));
  LUT6 #(
    .INIT(64'hAAAA888088808880)) 
    is_logic_grid_reg_i_3
       (.I0(is_logic_grid_reg_i_14_n_0),
        .I1(is_logic_grid_reg_i_15_n_0),
        .I2(is_logic_grid_reg_i_16_n_0),
        .I3(is_logic_grid_reg_i_17_n_0),
        .I4(is_logic_grid_reg_i_18_n_0),
        .I5(is_logic_grid_reg_i_19_n_0),
        .O(is_logic_grid_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_30
       (.I0(v_count[22]),
        .I1(v_count[21]),
        .I2(v_count[20]),
        .I3(v_count[19]),
        .O(is_logic_grid_reg_i_30_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_31
       (.I0(v_count[18]),
        .I1(v_count[17]),
        .I2(v_count[16]),
        .I3(v_count[15]),
        .O(is_logic_grid_reg_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    is_logic_grid_reg_i_32
       (.I0(v_count[14]),
        .I1(v_count[13]),
        .I2(v_count[12]),
        .I3(v_count[11]),
        .O(is_logic_grid_reg_i_32_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    is_logic_grid_reg_i_33
       (.I0(v_count[4]),
        .I1(v_count[7]),
        .I2(h_count[9]),
        .I3(h_count[10]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(is_logic_grid_reg_i_33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_logic_grid_reg_i_34
       (.I0(h_count[5]),
        .I1(h_count[4]),
        .I2(h_count[3]),
        .O(is_logic_grid_reg_i_34_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    is_logic_grid_reg_i_35
       (.I0(h_count[1]),
        .I1(h_count[2]),
        .I2(h_count[8]),
        .I3(h_count[0]),
        .I4(h_count[7]),
        .I5(h_count[6]),
        .O(is_logic_grid_reg_i_35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    is_logic_grid_reg_i_36
       (.I0(h_count[6]),
        .I1(h_count[2]),
        .I2(h_count[4]),
        .I3(h_count[3]),
        .O(is_logic_grid_reg_i_36_n_0));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    is_logic_grid_reg_i_37
       (.I0(h_count[5]),
        .I1(h_count[1]),
        .I2(h_count[0]),
        .I3(h_count[4]),
        .I4(h_count[3]),
        .I5(h_count[6]),
        .O(is_logic_grid_reg_i_37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    is_logic_grid_reg_i_38
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .I2(v_count[6]),
        .I3(v_count[7]),
        .O(is_logic_grid_reg_i_38_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    is_logic_grid_reg_i_39
       (.I0(v_count[5]),
        .I1(v_count[6]),
        .O(is_logic_grid_reg_i_39_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBABABABABA)) 
    is_logic_grid_reg_i_4
       (.I0(is_logic_grid_reg_i_20_n_0),
        .I1(h_count[5]),
        .I2(is_logic_grid_reg_i_21_n_0),
        .I3(is_logic_grid_reg_i_17_n_0),
        .I4(is_logic_grid_reg_i_16_n_0),
        .I5(is_logic_grid_reg_i_22_n_0),
        .O(is_logic_grid_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    is_logic_grid_reg_i_40
       (.I0(v_count[0]),
        .I1(v_count[1]),
        .O(is_logic_grid_reg_i_40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0C000020)) 
    is_logic_grid_reg_i_41
       (.I0(h_count[6]),
        .I1(h_count[3]),
        .I2(h_count[4]),
        .I3(h_count[1]),
        .I4(h_count[2]),
        .O(is_logic_grid_reg_i_41_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    is_logic_grid_reg_i_42
       (.I0(h_count[3]),
        .I1(h_count[4]),
        .I2(h_count[2]),
        .I3(h_count[0]),
        .I4(h_count[8]),
        .I5(h_count[6]),
        .O(is_logic_grid_reg_i_42_n_0));
  LUT6 #(
    .INIT(64'h100000000000000C)) 
    is_logic_grid_reg_i_43
       (.I0(h_count[1]),
        .I1(h_count[8]),
        .I2(h_count[6]),
        .I3(h_count[4]),
        .I4(h_count[3]),
        .I5(h_count[2]),
        .O(is_logic_grid_reg_i_43_n_0));
  LUT5 #(
    .INIT(32'h00200C00)) 
    is_logic_grid_reg_i_44
       (.I0(h_count[1]),
        .I1(h_count[7]),
        .I2(h_count[6]),
        .I3(h_count[2]),
        .I4(h_count[4]),
        .O(is_logic_grid_reg_i_44_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    is_logic_grid_reg_i_45
       (.I0(h_count[1]),
        .I1(h_count[2]),
        .I2(h_count[0]),
        .I3(h_count[3]),
        .I4(h_count[7]),
        .I5(h_count[4]),
        .O(is_logic_grid_reg_i_45_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    is_logic_grid_reg_i_46
       (.I0(v_count[7]),
        .I1(h_count[8]),
        .O(is_logic_grid_reg_i_46_n_0));
  LUT6 #(
    .INIT(64'h0000000000000042)) 
    is_logic_grid_reg_i_47
       (.I0(v_count[3]),
        .I1(v_count[2]),
        .I2(v_count[1]),
        .I3(v_count[4]),
        .I4(v_count[5]),
        .I5(v_count[6]),
        .O(is_logic_grid_reg_i_47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_logic_grid_reg_i_48
       (.I0(v_count[4]),
        .I1(v_count[5]),
        .O(is_logic_grid_reg_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h001FE000)) 
    is_logic_grid_reg_i_49
       (.I0(v_count[1]),
        .I1(v_count[0]),
        .I2(v_count[6]),
        .I3(v_count[2]),
        .I4(v_count[3]),
        .O(is_logic_grid_reg_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_logic_grid_reg_i_5
       (.I0(v_count[8]),
        .I1(v_count[9]),
        .O(is_logic_grid_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_logic_grid_reg_i_6
       (.I0(h_count[9]),
        .I1(h_count[10]),
        .O(is_logic_grid_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    is_logic_grid_reg_i_7
       (.I0(is_logic_grid_reg_i_8_n_0),
        .I1(is_logic_grid_reg_i_9_n_0),
        .I2(is_logic_grid_reg_i_10_n_0),
        .I3(is_logic_grid_reg_i_23_n_0),
        .I4(is_logic_grid_reg_i_24_n_0),
        .O(is_logic_grid_reg_i_7_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    is_logic_grid_reg_i_8
       (.I0(h_count[25]),
        .I1(h_count[26]),
        .I2(h_count[27]),
        .I3(h_count[28]),
        .I4(is_logic_grid_reg_i_25_n_0),
        .O(is_logic_grid_reg_i_8_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    is_logic_grid_reg_i_9
       (.I0(h_count[17]),
        .I1(h_count[18]),
        .I2(h_count[19]),
        .I3(h_count[20]),
        .I4(is_logic_grid_reg_i_26_n_0),
        .O(is_logic_grid_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_logic_grid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_logic_grid_reg_i_1_n_0),
        .Q(is_logic_grid_reg),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[0]_i_1 
       (.I0(rgb_reg[0]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[10]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[10]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[11]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[11]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[12]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[12]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[13]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[13]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[14]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[14]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[15]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[15]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[16]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[17]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[18]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[19]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[1]_i_1 
       (.I0(rgb_reg[1]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[20]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[21]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[21]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[22]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hBFA0)) 
    \rgb_out[23]_i_1 
       (.I0(is_edge_reg),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(rgb_reg[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[2]_i_1 
       (.I0(rgb_reg[2]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[3]_i_1 
       (.I0(rgb_reg[3]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[4]_i_1 
       (.I0(rgb_reg[4]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[5]_i_1 
       (.I0(rgb_reg[5]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[6]_i_1 
       (.I0(rgb_reg[6]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0AEA)) 
    \rgb_out[7]_i_1 
       (.I0(rgb_reg[7]),
        .I1(is_logic_grid_reg),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[8]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[8]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    \rgb_out[9]_i_1 
       (.I0(is_logic_grid_reg),
        .I1(rgb_reg[9]),
        .I2(vde_reg),
        .I3(is_edge_reg),
        .O(p_0_in[9]));
  FDRE \rgb_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(rgb_out[0]),
        .R(rst));
  FDRE \rgb_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(rgb_out[10]),
        .R(rst));
  FDRE \rgb_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(rgb_out[11]),
        .R(rst));
  FDRE \rgb_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(rgb_out[12]),
        .R(rst));
  FDRE \rgb_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(rgb_out[13]),
        .R(rst));
  FDRE \rgb_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(rgb_out[14]),
        .R(rst));
  FDRE \rgb_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(rgb_out[15]),
        .R(rst));
  FDRE \rgb_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(rgb_out[16]),
        .R(rst));
  FDRE \rgb_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(rgb_out[17]),
        .R(rst));
  FDRE \rgb_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(rgb_out[18]),
        .R(rst));
  FDRE \rgb_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(rgb_out[19]),
        .R(rst));
  FDRE \rgb_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(rgb_out[1]),
        .R(rst));
  FDRE \rgb_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(rgb_out[20]),
        .R(rst));
  FDRE \rgb_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(rgb_out[21]),
        .R(rst));
  FDRE \rgb_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(rgb_out[22]),
        .R(rst));
  FDRE \rgb_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(rgb_out[23]),
        .R(rst));
  FDRE \rgb_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(rgb_out[2]),
        .R(rst));
  FDRE \rgb_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(rgb_out[3]),
        .R(rst));
  FDRE \rgb_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(rgb_out[4]),
        .R(rst));
  FDRE \rgb_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(rgb_out[5]),
        .R(rst));
  FDRE \rgb_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(rgb_out[6]),
        .R(rst));
  FDRE \rgb_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(rgb_out[7]),
        .R(rst));
  FDRE \rgb_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(rgb_out[8]),
        .R(rst));
  FDRE \rgb_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(rgb_out[9]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[0]),
        .Q(rgb_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[10]),
        .Q(rgb_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[11]),
        .Q(rgb_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[12]),
        .Q(rgb_reg[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[13]),
        .Q(rgb_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[14]),
        .Q(rgb_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[15]),
        .Q(rgb_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[16]),
        .Q(rgb_reg[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[17]),
        .Q(rgb_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[18]),
        .Q(rgb_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[19]),
        .Q(rgb_reg[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[1]),
        .Q(rgb_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[20]),
        .Q(rgb_reg[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[21]),
        .Q(rgb_reg[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[22]),
        .Q(rgb_reg[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[23]),
        .Q(rgb_reg[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[2]),
        .Q(rgb_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[3]),
        .Q(rgb_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[4]),
        .Q(rgb_reg[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[5]),
        .Q(rgb_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[6]),
        .Q(rgb_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[7]),
        .Q(rgb_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[8]),
        .Q(rgb_reg[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \rgb_reg_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[9]),
        .Q(rgb_reg[9]),
        .R(rst));
  FDRE vde_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(vde_reg),
        .Q(vde_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vde_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(vde_in),
        .Q(vde_reg),
        .R(rst));
  FDRE vsync_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_reg),
        .Q(vsync_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vsync_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_in),
        .Q(vsync_reg),
        .R(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
