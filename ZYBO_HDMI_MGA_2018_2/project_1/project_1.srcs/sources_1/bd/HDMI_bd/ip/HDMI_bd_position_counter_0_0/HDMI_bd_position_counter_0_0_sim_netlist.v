// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 11:07:05 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_position_counter_0_0/HDMI_bd_position_counter_0_0_sim_netlist.v
// Design      : HDMI_bd_position_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_position_counter_0_0,position_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "position_counter,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_position_counter_0_0
   (clk,
    rst,
    vde_in,
    hsync_in,
    vsync_in,
    rgb_in,
    vde_out,
    hsync_out,
    vsync_out,
    h_count,
    v_count,
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
  output [31:0]h_count;
  output [31:0]v_count;
  output [23:0]rgb_out;

  wire \<const0> ;
  wire clk;
  wire [10:0]\^h_count ;
  wire hsync_in;
  wire hsync_out;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire rst;
  wire [9:0]\^v_count ;
  wire vde_in;
  wire vde_out;
  wire vsync_in;
  wire vsync_out;

  assign h_count[31] = \<const0> ;
  assign h_count[30] = \<const0> ;
  assign h_count[29] = \<const0> ;
  assign h_count[28] = \<const0> ;
  assign h_count[27] = \<const0> ;
  assign h_count[26] = \<const0> ;
  assign h_count[25] = \<const0> ;
  assign h_count[24] = \<const0> ;
  assign h_count[23] = \<const0> ;
  assign h_count[22] = \<const0> ;
  assign h_count[21] = \<const0> ;
  assign h_count[20] = \<const0> ;
  assign h_count[19] = \<const0> ;
  assign h_count[18] = \<const0> ;
  assign h_count[17] = \<const0> ;
  assign h_count[16] = \<const0> ;
  assign h_count[15] = \<const0> ;
  assign h_count[14] = \<const0> ;
  assign h_count[13] = \<const0> ;
  assign h_count[12] = \<const0> ;
  assign h_count[11] = \<const0> ;
  assign h_count[10:0] = \^h_count [10:0];
  assign v_count[31] = \<const0> ;
  assign v_count[30] = \<const0> ;
  assign v_count[29] = \<const0> ;
  assign v_count[28] = \<const0> ;
  assign v_count[27] = \<const0> ;
  assign v_count[26] = \<const0> ;
  assign v_count[25] = \<const0> ;
  assign v_count[24] = \<const0> ;
  assign v_count[23] = \<const0> ;
  assign v_count[22] = \<const0> ;
  assign v_count[21] = \<const0> ;
  assign v_count[20] = \<const0> ;
  assign v_count[19] = \<const0> ;
  assign v_count[18] = \<const0> ;
  assign v_count[17] = \<const0> ;
  assign v_count[16] = \<const0> ;
  assign v_count[15] = \<const0> ;
  assign v_count[14] = \<const0> ;
  assign v_count[13] = \<const0> ;
  assign v_count[12] = \<const0> ;
  assign v_count[11] = \<const0> ;
  assign v_count[10] = \<const0> ;
  assign v_count[9:0] = \^v_count [9:0];
  GND GND
       (.G(\<const0> ));
  HDMI_bd_position_counter_0_0_position_counter U0
       (.clk(clk),
        .h_count(\^h_count ),
        .hsync_in(hsync_in),
        .hsync_out(hsync_out),
        .rgb_in(rgb_in),
        .rgb_out(rgb_out),
        .rst(rst),
        .v_count(\^v_count ),
        .vde_in(vde_in),
        .vde_out(vde_out),
        .vsync_in(vsync_in),
        .vsync_out(vsync_out));
endmodule

(* ORIG_REF_NAME = "position_counter" *) 
module HDMI_bd_position_counter_0_0_position_counter
   (vde_out,
    hsync_out,
    vsync_out,
    h_count,
    v_count,
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
  output [10:0]h_count;
  output [9:0]v_count;
  output [23:0]rgb_out;
  input rst;
  input vde_in;
  input clk;
  input hsync_in;
  input vsync_in;
  input [23:0]rgb_in;

  wire clk;
  wire [10:0]h_count;
  wire h_count_u;
  wire \h_count_u[10]_i_1_n_0 ;
  wire \h_count_u[10]_i_4_n_0 ;
  wire \h_count_u[10]_i_5_n_0 ;
  wire \h_count_u[4]_i_1_n_0 ;
  wire [10:0]h_count_u_reg;
  wire hsync_in;
  wire hsync_out;
  wire [10:0]plusOp;
  wire [9:0]plusOp__0;
  wire [23:0]rgb_in;
  wire [23:0]rgb_out;
  wire rst;
  wire [9:0]v_count;
  wire \v_count_u[7]_i_1_n_0 ;
  wire \v_count_u[9]_i_1_n_0 ;
  wire \v_count_u[9]_i_2_n_0 ;
  wire \v_count_u[9]_i_4_n_0 ;
  wire \v_count_u[9]_i_5_n_0 ;
  wire \v_count_u[9]_i_6_n_0 ;
  wire \v_count_u[9]_i_7_n_0 ;
  wire [9:0]v_count_u_reg;
  wire v_started_i_1_n_0;
  wire v_started_reg_n_0;
  wire vde_in;
  wire vde_out;
  wire vsync_in;
  wire vsync_out;

  FDRE \h_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[0]),
        .Q(h_count[0]),
        .R(rst));
  FDRE \h_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[10]),
        .Q(h_count[10]),
        .R(rst));
  FDRE \h_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[1]),
        .Q(h_count[1]),
        .R(rst));
  FDRE \h_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[2]),
        .Q(h_count[2]),
        .R(rst));
  FDRE \h_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[3]),
        .Q(h_count[3]),
        .R(rst));
  FDRE \h_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[4]),
        .Q(h_count[4]),
        .R(rst));
  FDRE \h_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[5]),
        .Q(h_count[5]),
        .R(rst));
  FDRE \h_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[6]),
        .Q(h_count[6]),
        .R(rst));
  FDRE \h_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[7]),
        .Q(h_count[7]),
        .R(rst));
  FDRE \h_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[8]),
        .Q(h_count[8]),
        .R(rst));
  FDRE \h_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(h_count_u_reg[9]),
        .Q(h_count[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \h_count_u[0]_i_1 
       (.I0(h_count_u_reg[0]),
        .O(plusOp[0]));
  LUT3 #(
    .INIT(8'hBA)) 
    \h_count_u[10]_i_1 
       (.I0(rst),
        .I1(vde_out),
        .I2(vde_in),
        .O(\h_count_u[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2A2A2AAA)) 
    \h_count_u[10]_i_2 
       (.I0(vde_in),
        .I1(h_count_u_reg[9]),
        .I2(h_count_u_reg[10]),
        .I3(\h_count_u[10]_i_4_n_0 ),
        .I4(\h_count_u[10]_i_5_n_0 ),
        .O(h_count_u));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_count_u[10]_i_3 
       (.I0(h_count_u_reg[10]),
        .I1(h_count_u_reg[8]),
        .I2(h_count_u_reg[6]),
        .I3(\h_count_u[10]_i_4_n_0 ),
        .I4(h_count_u_reg[7]),
        .I5(h_count_u_reg[9]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count_u[10]_i_4 
       (.I0(h_count_u_reg[5]),
        .I1(h_count_u_reg[4]),
        .I2(h_count_u_reg[3]),
        .I3(h_count_u_reg[2]),
        .I4(h_count_u_reg[1]),
        .I5(h_count_u_reg[0]),
        .O(\h_count_u[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \h_count_u[10]_i_5 
       (.I0(h_count_u_reg[6]),
        .I1(h_count_u_reg[8]),
        .I2(h_count_u_reg[7]),
        .O(\h_count_u[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count_u[1]_i_1 
       (.I0(h_count_u_reg[0]),
        .I1(h_count_u_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count_u[2]_i_1 
       (.I0(h_count_u_reg[0]),
        .I1(h_count_u_reg[1]),
        .I2(h_count_u_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count_u[3]_i_1 
       (.I0(h_count_u_reg[3]),
        .I1(h_count_u_reg[0]),
        .I2(h_count_u_reg[1]),
        .I3(h_count_u_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count_u[4]_i_1 
       (.I0(h_count_u_reg[4]),
        .I1(h_count_u_reg[0]),
        .I2(h_count_u_reg[1]),
        .I3(h_count_u_reg[2]),
        .I4(h_count_u_reg[3]),
        .O(\h_count_u[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count_u[5]_i_1 
       (.I0(h_count_u_reg[0]),
        .I1(h_count_u_reg[1]),
        .I2(h_count_u_reg[2]),
        .I3(h_count_u_reg[3]),
        .I4(h_count_u_reg[4]),
        .I5(h_count_u_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count_u[6]_i_1 
       (.I0(h_count_u_reg[6]),
        .I1(\h_count_u[10]_i_4_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_count_u[7]_i_1 
       (.I0(h_count_u_reg[7]),
        .I1(\h_count_u[10]_i_4_n_0 ),
        .I2(h_count_u_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_count_u[8]_i_1 
       (.I0(h_count_u_reg[8]),
        .I1(h_count_u_reg[6]),
        .I2(\h_count_u[10]_i_4_n_0 ),
        .I3(h_count_u_reg[7]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_count_u[9]_i_1 
       (.I0(h_count_u_reg[9]),
        .I1(h_count_u_reg[7]),
        .I2(\h_count_u[10]_i_4_n_0 ),
        .I3(h_count_u_reg[6]),
        .I4(h_count_u_reg[8]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[0] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[0]),
        .Q(h_count_u_reg[0]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[10] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[10]),
        .Q(h_count_u_reg[10]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[1] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[1]),
        .Q(h_count_u_reg[1]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[2] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[2]),
        .Q(h_count_u_reg[2]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[3] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[3]),
        .Q(h_count_u_reg[3]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[4] 
       (.C(clk),
        .CE(h_count_u),
        .D(\h_count_u[4]_i_1_n_0 ),
        .Q(h_count_u_reg[4]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[5] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[5]),
        .Q(h_count_u_reg[5]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[6] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[6]),
        .Q(h_count_u_reg[6]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[7] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[7]),
        .Q(h_count_u_reg[7]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[8] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[8]),
        .Q(h_count_u_reg[8]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_count_u_reg[9] 
       (.C(clk),
        .CE(h_count_u),
        .D(plusOp[9]),
        .Q(h_count_u_reg[9]),
        .R(\h_count_u[10]_i_1_n_0 ));
  FDRE hsync_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_in),
        .Q(hsync_out),
        .R(rst));
  FDRE \rgb_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[0]),
        .Q(rgb_out[0]),
        .R(rst));
  FDRE \rgb_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[10]),
        .Q(rgb_out[10]),
        .R(rst));
  FDRE \rgb_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[11]),
        .Q(rgb_out[11]),
        .R(rst));
  FDRE \rgb_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[12]),
        .Q(rgb_out[12]),
        .R(rst));
  FDRE \rgb_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[13]),
        .Q(rgb_out[13]),
        .R(rst));
  FDRE \rgb_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[14]),
        .Q(rgb_out[14]),
        .R(rst));
  FDRE \rgb_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[15]),
        .Q(rgb_out[15]),
        .R(rst));
  FDRE \rgb_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[16]),
        .Q(rgb_out[16]),
        .R(rst));
  FDRE \rgb_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[17]),
        .Q(rgb_out[17]),
        .R(rst));
  FDRE \rgb_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[18]),
        .Q(rgb_out[18]),
        .R(rst));
  FDRE \rgb_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[19]),
        .Q(rgb_out[19]),
        .R(rst));
  FDRE \rgb_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[1]),
        .Q(rgb_out[1]),
        .R(rst));
  FDRE \rgb_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[20]),
        .Q(rgb_out[20]),
        .R(rst));
  FDRE \rgb_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[21]),
        .Q(rgb_out[21]),
        .R(rst));
  FDRE \rgb_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[22]),
        .Q(rgb_out[22]),
        .R(rst));
  FDRE \rgb_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[23]),
        .Q(rgb_out[23]),
        .R(rst));
  FDRE \rgb_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[2]),
        .Q(rgb_out[2]),
        .R(rst));
  FDRE \rgb_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[3]),
        .Q(rgb_out[3]),
        .R(rst));
  FDRE \rgb_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[4]),
        .Q(rgb_out[4]),
        .R(rst));
  FDRE \rgb_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[5]),
        .Q(rgb_out[5]),
        .R(rst));
  FDRE \rgb_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[6]),
        .Q(rgb_out[6]),
        .R(rst));
  FDRE \rgb_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[7]),
        .Q(rgb_out[7]),
        .R(rst));
  FDRE \rgb_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[8]),
        .Q(rgb_out[8]),
        .R(rst));
  FDRE \rgb_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rgb_in[9]),
        .Q(rgb_out[9]),
        .R(rst));
  FDRE \v_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[0]),
        .Q(v_count[0]),
        .R(rst));
  FDRE \v_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[1]),
        .Q(v_count[1]),
        .R(rst));
  FDRE \v_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[2]),
        .Q(v_count[2]),
        .R(rst));
  FDRE \v_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[3]),
        .Q(v_count[3]),
        .R(rst));
  FDRE \v_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[4]),
        .Q(v_count[4]),
        .R(rst));
  FDRE \v_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[5]),
        .Q(v_count[5]),
        .R(rst));
  FDRE \v_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[6]),
        .Q(v_count[6]),
        .R(rst));
  FDRE \v_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[7]),
        .Q(v_count[7]),
        .R(rst));
  FDRE \v_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[8]),
        .Q(v_count[8]),
        .R(rst));
  FDRE \v_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(v_count_u_reg[9]),
        .Q(v_count[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \v_count_u[0]_i_1 
       (.I0(v_count_u_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_count_u[1]_i_1 
       (.I0(v_count_u_reg[0]),
        .I1(v_count_u_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count_u[2]_i_1 
       (.I0(v_count_u_reg[2]),
        .I1(v_count_u_reg[1]),
        .I2(v_count_u_reg[0]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count_u[3]_i_1 
       (.I0(v_count_u_reg[3]),
        .I1(v_count_u_reg[2]),
        .I2(v_count_u_reg[1]),
        .I3(v_count_u_reg[0]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \v_count_u[4]_i_1 
       (.I0(v_count_u_reg[0]),
        .I1(v_count_u_reg[1]),
        .I2(v_count_u_reg[2]),
        .I3(v_count_u_reg[3]),
        .I4(v_count_u_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count_u[5]_i_1 
       (.I0(v_count_u_reg[5]),
        .I1(v_count_u_reg[0]),
        .I2(v_count_u_reg[1]),
        .I3(v_count_u_reg[2]),
        .I4(v_count_u_reg[3]),
        .I5(v_count_u_reg[4]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_count_u[6]_i_1 
       (.I0(v_count_u_reg[6]),
        .I1(\v_count_u[9]_i_7_n_0 ),
        .I2(v_count_u_reg[5]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_count_u[7]_i_1 
       (.I0(v_count_u_reg[7]),
        .I1(v_count_u_reg[5]),
        .I2(\v_count_u[9]_i_7_n_0 ),
        .I3(v_count_u_reg[6]),
        .O(\v_count_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_count_u[8]_i_1 
       (.I0(v_count_u_reg[8]),
        .I1(v_count_u_reg[6]),
        .I2(\v_count_u[9]_i_7_n_0 ),
        .I3(v_count_u_reg[5]),
        .I4(v_count_u_reg[7]),
        .O(plusOp__0[8]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \v_count_u[9]_i_1 
       (.I0(rst),
        .I1(v_started_reg_n_0),
        .I2(vde_in),
        .I3(vde_out),
        .O(\v_count_u[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040404044)) 
    \v_count_u[9]_i_2 
       (.I0(vde_out),
        .I1(vde_in),
        .I2(\v_count_u[9]_i_4_n_0 ),
        .I3(\v_count_u[9]_i_5_n_0 ),
        .I4(v_count_u_reg[2]),
        .I5(\v_count_u[9]_i_6_n_0 ),
        .O(\v_count_u[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_count_u[9]_i_3 
       (.I0(v_count_u_reg[9]),
        .I1(v_count_u_reg[7]),
        .I2(v_count_u_reg[5]),
        .I3(\v_count_u[9]_i_7_n_0 ),
        .I4(v_count_u_reg[6]),
        .I5(v_count_u_reg[8]),
        .O(plusOp__0[9]));
  LUT3 #(
    .INIT(8'h7F)) 
    \v_count_u[9]_i_4 
       (.I0(v_count_u_reg[9]),
        .I1(v_count_u_reg[8]),
        .I2(v_count_u_reg[7]),
        .O(\v_count_u[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_count_u[9]_i_5 
       (.I0(v_count_u_reg[0]),
        .I1(v_count_u_reg[1]),
        .O(\v_count_u[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \v_count_u[9]_i_6 
       (.I0(v_count_u_reg[4]),
        .I1(v_count_u_reg[3]),
        .I2(v_count_u_reg[6]),
        .I3(v_count_u_reg[5]),
        .O(\v_count_u[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count_u[9]_i_7 
       (.I0(v_count_u_reg[4]),
        .I1(v_count_u_reg[3]),
        .I2(v_count_u_reg[2]),
        .I3(v_count_u_reg[1]),
        .I4(v_count_u_reg[0]),
        .O(\v_count_u[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[0] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[0]),
        .Q(v_count_u_reg[0]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[1] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(v_count_u_reg[1]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[2] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(v_count_u_reg[2]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[3] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(v_count_u_reg[3]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[4] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[4]),
        .Q(v_count_u_reg[4]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[5] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(v_count_u_reg[5]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[6] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(v_count_u_reg[6]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[7] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(\v_count_u[7]_i_1_n_0 ),
        .Q(v_count_u_reg[7]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[8] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[8]),
        .Q(v_count_u_reg[8]),
        .R(\v_count_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_count_u_reg[9] 
       (.C(clk),
        .CE(\v_count_u[9]_i_2_n_0 ),
        .D(plusOp__0[9]),
        .Q(v_count_u_reg[9]),
        .R(\v_count_u[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAE04AEAE)) 
    v_started_i_1
       (.I0(v_started_reg_n_0),
        .I1(vde_in),
        .I2(vde_out),
        .I3(vsync_out),
        .I4(vsync_in),
        .O(v_started_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_started_reg
       (.C(clk),
        .CE(1'b1),
        .D(v_started_i_1_n_0),
        .Q(v_started_reg_n_0),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vde_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(vde_in),
        .Q(vde_out),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    vsync_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_in),
        .Q(vsync_out),
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
