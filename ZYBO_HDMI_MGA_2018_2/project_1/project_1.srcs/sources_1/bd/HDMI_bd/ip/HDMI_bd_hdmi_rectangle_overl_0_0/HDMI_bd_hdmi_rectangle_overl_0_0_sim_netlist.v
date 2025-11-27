// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Nov 26 22:58:21 2025
// Host        : pcetu-139 running 64-bit major release  (build 9200)
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
  input vde_in;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;
  output vde_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;

  wire clk;
  wire hsync_in;
  wire hsync_out;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire rst;
  wire vde_in;
  wire vde_out;
  wire vsync_in;
  wire vsync_out;

  HDMI_bd_hdmi_rectangle_overl_0_0_hdmi_rectangle_overlay U0
       (.clk(clk),
        .hsync_in(hsync_in),
        .hsync_out(hsync_out),
        .rgb_in(rgb_in),
        .rgb_out(rgb_out),
        .rst(rst),
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
    rst,
    vde_in,
    clk,
    hsync_in,
    vsync_in,
    rgb_in);
  output vde_out;
  output hsync_out;
  output vsync_out;
  output [23:0]rgb_out;
  input rst;
  input vde_in;
  input clk;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;

  wire clk;
  wire h_count;
  wire \h_count[10]_i_1_n_0 ;
  wire \h_count[10]_i_4_n_0 ;
  wire \h_count[10]_i_5_n_0 ;
  wire \h_count[10]_i_6_n_0 ;
  wire [10:0]h_count_reg;
  wire hsync_in;
  wire hsync_out;
  wire hsync_prev;
  wire is_edge;
  wire is_edge0__7;
  wire is_edge_reg;
  wire is_edge_reg_i_10_n_0;
  wire is_edge_reg_i_11_n_0;
  wire is_edge_reg_i_12_n_0;
  wire is_edge_reg_i_13_n_0;
  wire is_edge_reg_i_14_n_0;
  wire is_edge_reg_i_1_n_0;
  wire is_edge_reg_i_3_n_0;
  wire is_edge_reg_i_6_n_0;
  wire is_edge_reg_i_7_n_0;
  wire is_edge_reg_i_9_n_0;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire p_23_in;
  wire p_29_in;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire \rgb_out[15]_i_1_n_0 ;
  wire \rgb_out[16]_i_1_n_0 ;
  wire \rgb_out[17]_i_1_n_0 ;
  wire \rgb_out[18]_i_1_n_0 ;
  wire \rgb_out[19]_i_1_n_0 ;
  wire \rgb_out[20]_i_1_n_0 ;
  wire \rgb_out[21]_i_1_n_0 ;
  wire \rgb_out[22]_i_1_n_0 ;
  wire \rgb_out[23]_i_1_n_0 ;
  wire [23:0]rgb_reg;
  wire rst;
  wire v_count;
  wire \v_count[10]_i_1_n_0 ;
  wire \v_count[10]_i_4_n_0 ;
  wire \v_count[10]_i_5_n_0 ;
  wire \v_count[10]_i_6_n_0 ;
  wire [10:0]v_count_reg;
  wire vde_in;
  wire vde_out;
  wire vde_reg;
  wire vsync_in;
  wire vsync_out;
  wire vsync_prev;

  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \h_count[10]_i_1 
       (.I0(rst),
        .I1(hsync_in),
        .I2(hsync_prev),
        .I3(vsync_in),
        .I4(vsync_prev),
        .O(\h_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h22222AAA)) 
    \h_count[10]_i_2 
       (.I0(vde_in),
        .I1(\h_count[10]_i_4_n_0 ),
        .I2(h_count_reg[0]),
        .I3(\h_count[10]_i_5_n_0 ),
        .I4(h_count_reg[7]),
        .O(h_count));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[10]_i_3 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[6]),
        .I2(\h_count[10]_i_6_n_0 ),
        .I3(h_count_reg[7]),
        .I4(h_count_reg[9]),
        .I5(h_count_reg[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \h_count[10]_i_4 
       (.I0(h_count_reg[8]),
        .I1(h_count_reg[10]),
        .I2(h_count_reg[9]),
        .O(\h_count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count[10]_i_5 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[6]),
        .I4(h_count_reg[3]),
        .I5(h_count_reg[4]),
        .O(\h_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count[10]_i_6 
       (.I0(h_count_reg[5]),
        .I1(h_count_reg[3]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[0]),
        .I4(h_count_reg[2]),
        .I5(h_count_reg[4]),
        .O(\h_count[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg[0]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg[1]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg[2]),
        .I1(h_count_reg[0]),
        .I2(h_count_reg[1]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg[3]),
        .I1(h_count_reg[1]),
        .I2(h_count_reg[0]),
        .I3(h_count_reg[2]),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[6]_i_1 
       (.I0(\h_count[10]_i_6_n_0 ),
        .I1(h_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[7]_i_1 
       (.I0(\h_count[10]_i_6_n_0 ),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg[6]),
        .I1(\h_count[10]_i_6_n_0 ),
        .I2(h_count_reg[7]),
        .I3(h_count_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[9]_i_1 
       (.I0(h_count_reg[7]),
        .I1(\h_count[10]_i_6_n_0 ),
        .I2(h_count_reg[6]),
        .I3(h_count_reg[8]),
        .I4(h_count_reg[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[0] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[0]),
        .Q(h_count_reg[0]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[10] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[10]),
        .Q(h_count_reg[10]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[1] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[1]),
        .Q(h_count_reg[1]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[2] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[2]),
        .Q(h_count_reg[2]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[3] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[3]),
        .Q(h_count_reg[3]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[4] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[4]),
        .Q(h_count_reg[4]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[5] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[5]),
        .Q(h_count_reg[5]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[6] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[6]),
        .Q(h_count_reg[6]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[7] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[7]),
        .Q(h_count_reg[7]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[8] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[8]),
        .Q(h_count_reg[8]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_reg[9] 
       (.C(clk),
        .CE(h_count),
        .D(p_0_in[9]),
        .Q(h_count_reg[9]),
        .R(\h_count[10]_i_1_n_0 ));
  FDRE hsync_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_prev),
        .Q(hsync_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    hsync_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_in),
        .Q(hsync_prev),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFFAFFEA)) 
    is_edge_reg_i_1
       (.I0(is_edge),
        .I1(is_edge_reg_i_3_n_0),
        .I2(p_29_in),
        .I3(is_edge0__7),
        .I4(is_edge_reg_i_6_n_0),
        .O(is_edge_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000777F7F7F)) 
    is_edge_reg_i_10
       (.I0(h_count_reg[7]),
        .I1(h_count_reg[6]),
        .I2(h_count_reg[5]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[8]),
        .O(is_edge_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'hEEEAAAAA00000000)) 
    is_edge_reg_i_11
       (.I0(v_count_reg[6]),
        .I1(v_count_reg[5]),
        .I2(v_count_reg[3]),
        .I3(v_count_reg[2]),
        .I4(v_count_reg[4]),
        .I5(v_count_reg[7]),
        .O(is_edge_reg_i_11_n_0));
  LUT5 #(
    .INIT(32'h007FFFFF)) 
    is_edge_reg_i_12
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[5]),
        .I2(v_count_reg[4]),
        .I3(v_count_reg[6]),
        .I4(v_count_reg[7]),
        .O(is_edge_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEA0000)) 
    is_edge_reg_i_13
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[3]),
        .I3(h_count_reg[4]),
        .I4(h_count_reg[7]),
        .I5(h_count_reg[8]),
        .O(is_edge_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h00155555FFFFFFFF)) 
    is_edge_reg_i_14
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[2]),
        .I2(h_count_reg[3]),
        .I3(h_count_reg[4]),
        .I4(h_count_reg[5]),
        .I5(h_count_reg[7]),
        .O(is_edge_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    is_edge_reg_i_2
       (.I0(v_count_reg[9]),
        .I1(v_count_reg[8]),
        .I2(is_edge_reg_i_7_n_0),
        .I3(v_count_reg[10]),
        .I4(p_23_in),
        .I5(v_count_reg[7]),
        .O(is_edge));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00E00000)) 
    is_edge_reg_i_3
       (.I0(h_count_reg[8]),
        .I1(is_edge_reg_i_9_n_0),
        .I2(h_count_reg[10]),
        .I3(h_count_reg[9]),
        .I4(is_edge_reg_i_10_n_0),
        .O(is_edge_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'h23332330)) 
    is_edge_reg_i_4
       (.I0(is_edge_reg_i_7_n_0),
        .I1(v_count_reg[10]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[8]),
        .I4(is_edge_reg_i_11_n_0),
        .O(p_29_in));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    is_edge_reg_i_5
       (.I0(is_edge_reg_i_11_n_0),
        .I1(v_count_reg[8]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[10]),
        .I4(is_edge_reg_i_12_n_0),
        .I5(p_23_in),
        .O(is_edge0__7));
  LUT5 #(
    .INIT(32'h02000000)) 
    is_edge_reg_i_6
       (.I0(is_edge_reg_i_13_n_0),
        .I1(h_count_reg[10]),
        .I2(h_count_reg[8]),
        .I3(is_edge_reg_i_14_n_0),
        .I4(h_count_reg[9]),
        .O(is_edge_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    is_edge_reg_i_7
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[2]),
        .I3(v_count_reg[4]),
        .I4(v_count_reg[6]),
        .I5(v_count_reg[7]),
        .O(is_edge_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'h3808)) 
    is_edge_reg_i_8
       (.I0(is_edge_reg_i_10_n_0),
        .I1(h_count_reg[10]),
        .I2(h_count_reg[9]),
        .I3(is_edge_reg_i_13_n_0),
        .O(p_23_in));
  LUT6 #(
    .INIT(64'hAAA8888800000000)) 
    is_edge_reg_i_9
       (.I0(h_count_reg[6]),
        .I1(h_count_reg[5]),
        .I2(h_count_reg[2]),
        .I3(h_count_reg[3]),
        .I4(h_count_reg[4]),
        .I5(h_count_reg[7]),
        .O(is_edge_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_edge_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_edge_reg_i_1_n_0),
        .Q(is_edge_reg),
        .R(rst));
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[15]_i_1 
       (.I0(rst),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[16]_i_1 
       (.I0(rgb_reg[16]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[17]_i_1 
       (.I0(rgb_reg[17]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[18]_i_1 
       (.I0(rgb_reg[18]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[19]_i_1 
       (.I0(rgb_reg[19]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[20]_i_1 
       (.I0(rgb_reg[20]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[21]_i_1 
       (.I0(rgb_reg[21]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[22]_i_1 
       (.I0(rgb_reg[22]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rgb_out[23]_i_1 
       (.I0(rgb_reg[23]),
        .I1(is_edge_reg),
        .I2(vde_reg),
        .O(\rgb_out[23]_i_1_n_0 ));
  FDRE \rgb_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[0]),
        .Q(rgb_out[0]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[10]),
        .Q(rgb_out[10]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[11]),
        .Q(rgb_out[11]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[12]),
        .Q(rgb_out[12]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[13]),
        .Q(rgb_out[13]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[14]),
        .Q(rgb_out[14]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[15]),
        .Q(rgb_out[15]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[16]_i_1_n_0 ),
        .Q(rgb_out[16]),
        .R(rst));
  FDRE \rgb_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[17]_i_1_n_0 ),
        .Q(rgb_out[17]),
        .R(rst));
  FDRE \rgb_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[18]_i_1_n_0 ),
        .Q(rgb_out[18]),
        .R(rst));
  FDRE \rgb_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[19]_i_1_n_0 ),
        .Q(rgb_out[19]),
        .R(rst));
  FDRE \rgb_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[1]),
        .Q(rgb_out[1]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[20]_i_1_n_0 ),
        .Q(rgb_out[20]),
        .R(rst));
  FDRE \rgb_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[21]_i_1_n_0 ),
        .Q(rgb_out[21]),
        .R(rst));
  FDRE \rgb_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[22]_i_1_n_0 ),
        .Q(rgb_out[22]),
        .R(rst));
  FDRE \rgb_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\rgb_out[23]_i_1_n_0 ),
        .Q(rgb_out[23]),
        .R(rst));
  FDRE \rgb_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[2]),
        .Q(rgb_out[2]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[3]),
        .Q(rgb_out[3]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[4]),
        .Q(rgb_out[4]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[5]),
        .Q(rgb_out[5]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[6]),
        .Q(rgb_out[6]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[7]),
        .Q(rgb_out[7]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[8]),
        .Q(rgb_out[8]),
        .R(\rgb_out[15]_i_1_n_0 ));
  FDRE \rgb_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_reg[9]),
        .Q(rgb_out[9]),
        .R(\rgb_out[15]_i_1_n_0 ));
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
  LUT1 #(
    .INIT(2'h1)) 
    \v_count[0]_i_1 
       (.I0(v_count_reg[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \v_count[10]_i_1 
       (.I0(rst),
        .I1(vsync_prev),
        .I2(vsync_in),
        .O(\v_count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04044404)) 
    \v_count[10]_i_2 
       (.I0(hsync_prev),
        .I1(hsync_in),
        .I2(v_count_reg[10]),
        .I3(\v_count[10]_i_4_n_0 ),
        .I4(\v_count[10]_i_5_n_0 ),
        .O(v_count));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_count[10]_i_3 
       (.I0(v_count_reg[8]),
        .I1(v_count_reg[6]),
        .I2(\v_count[10]_i_6_n_0 ),
        .I3(v_count_reg[7]),
        .I4(v_count_reg[9]),
        .I5(v_count_reg[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h1555FFFFFFFFFFFF)) 
    \v_count[10]_i_4 
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[2]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[5]),
        .I5(v_count_reg[4]),
        .O(\v_count[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count[10]_i_5 
       (.I0(v_count_reg[7]),
        .I1(v_count_reg[6]),
        .I2(v_count_reg[9]),
        .I3(v_count_reg[8]),
        .O(\v_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[10]_i_6 
       (.I0(v_count_reg[5]),
        .I1(v_count_reg[3]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[0]),
        .I4(v_count_reg[2]),
        .I5(v_count_reg[4]),
        .O(\v_count[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[2]_i_1 
       (.I0(v_count_reg[0]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_count[3]_i_1 
       (.I0(v_count_reg[1]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[2]),
        .I3(v_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count[4]_i_1 
       (.I0(v_count_reg[2]),
        .I1(v_count_reg[0]),
        .I2(v_count_reg[1]),
        .I3(v_count_reg[3]),
        .I4(v_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \v_count[5]_i_1 
       (.I0(v_count_reg[3]),
        .I1(v_count_reg[1]),
        .I2(v_count_reg[0]),
        .I3(v_count_reg[2]),
        .I4(v_count_reg[4]),
        .I5(v_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[6]_i_1 
       (.I0(\v_count[10]_i_6_n_0 ),
        .I1(v_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \v_count[7]_i_1 
       (.I0(\v_count[10]_i_6_n_0 ),
        .I1(v_count_reg[6]),
        .I2(v_count_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \v_count[8]_i_1 
       (.I0(v_count_reg[6]),
        .I1(\v_count[10]_i_6_n_0 ),
        .I2(v_count_reg[7]),
        .I3(v_count_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count[9]_i_1 
       (.I0(v_count_reg[7]),
        .I1(\v_count[10]_i_6_n_0 ),
        .I2(v_count_reg[6]),
        .I3(v_count_reg[8]),
        .I4(v_count_reg[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[0] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[0]),
        .Q(v_count_reg[0]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[10] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[10]),
        .Q(v_count_reg[10]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[1] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[1]),
        .Q(v_count_reg[1]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[2] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[2]),
        .Q(v_count_reg[2]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[3] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[3]),
        .Q(v_count_reg[3]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[4] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[4]),
        .Q(v_count_reg[4]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[5] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[5]),
        .Q(v_count_reg[5]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[6] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[6]),
        .Q(v_count_reg[6]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[7] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[7]),
        .Q(v_count_reg[7]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[8] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[8]),
        .Q(v_count_reg[8]),
        .R(\v_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_reg[9] 
       (.C(clk),
        .CE(v_count),
        .D(p_0_in__0[9]),
        .Q(v_count_reg[9]),
        .R(\v_count[10]_i_1_n_0 ));
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
        .D(vsync_prev),
        .Q(vsync_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vsync_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_in),
        .Q(vsync_prev),
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
