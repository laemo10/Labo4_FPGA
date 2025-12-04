// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 10:46:52 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_speed_detection_0_0/HDMI_bd_speed_detection_0_0_sim_netlist.v
// Design      : HDMI_bd_speed_detection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_speed_detection_0_0,speed_detection,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "speed_detection,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_speed_detection_0_0
   (clk,
    rst,
    grid_in,
    speed_out,
    out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    out7);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]grid_in;
  output [7:0]speed_out;
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
  output out7;

  wire \<const0> ;
  wire clk;
  wire [7:0]grid_in;
  wire out0;
  wire out1;
  wire out2;
  wire out3;
  wire out4;
  wire out5;
  wire out6;
  wire out7;
  wire rst;
  wire [6:1]\^speed_out ;

  assign speed_out[7] = \<const0> ;
  assign speed_out[6:1] = \^speed_out [6:1];
  assign speed_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  HDMI_bd_speed_detection_0_0_speed_detection U0
       (.Q({out7,out6,out5,out4,out3,out2,out1,out0}),
        .clk(clk),
        .grid_in(grid_in),
        .rst(rst),
        .speed_out(\^speed_out ));
endmodule

(* ORIG_REF_NAME = "speed_detection" *) 
module HDMI_bd_speed_detection_0_0_speed_detection
   (speed_out,
    Q,
    grid_in,
    clk,
    rst);
  output [5:0]speed_out;
  output [7:0]Q;
  input [7:0]grid_in;
  input clk;
  input rst;

  wire [7:0]Q;
  wire clk;
  wire \debug_speed[0]_i_2_n_0 ;
  wire \debug_speed[0]_i_3_n_0 ;
  wire \debug_speed[1]_i_1_n_0 ;
  wire \debug_speed[1]_i_2_n_0 ;
  wire \debug_speed[2]_i_1_n_0 ;
  wire \debug_speed[2]_i_2_n_0 ;
  wire \debug_speed[2]_i_3_n_0 ;
  wire \debug_speed[3]_i_1_n_0 ;
  wire \debug_speed[4]_i_1_n_0 ;
  wire \debug_speed[4]_i_2_n_0 ;
  wire \debug_speed[5]_i_1_n_0 ;
  wire \debug_speed[6]_i_1_n_0 ;
  wire \debug_speed[7]_i_1_n_0 ;
  wire \debug_speed[7]_i_2_n_0 ;
  wire [7:0]grid_in;
  wire p_0_in;
  wire [6:2]p_0_out;
  wire rst;
  wire [5:0]speed_out;
  wire \speed_out[1]_i_1_n_0 ;
  wire \speed_out[1]_i_2_n_0 ;
  wire \speed_out[2]_i_2_n_0 ;
  wire \speed_out[3]_i_2_n_0 ;
  wire \speed_out[4]_i_2_n_0 ;
  wire \speed_out[4]_i_3_n_0 ;
  wire \speed_out[5]_i_2_n_0 ;
  wire \speed_out[6]_i_1_n_0 ;
  wire \speed_out[6]_i_3_n_0 ;
  wire \speed_out[6]_i_4_n_0 ;
  wire \speed_out[6]_i_5_n_0 ;
  wire \speed_out[6]_i_6_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \debug_speed[0]_i_1 
       (.I0(rst),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \debug_speed[0]_i_2 
       (.I0(\debug_speed[0]_i_3_n_0 ),
        .I1(grid_in[5]),
        .I2(grid_in[2]),
        .I3(grid_in[3]),
        .I4(grid_in[0]),
        .O(\debug_speed[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \debug_speed[0]_i_3 
       (.I0(grid_in[7]),
        .I1(grid_in[6]),
        .I2(grid_in[4]),
        .I3(grid_in[1]),
        .O(\debug_speed[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \debug_speed[1]_i_1 
       (.I0(grid_in[5]),
        .I1(grid_in[6]),
        .I2(grid_in[1]),
        .I3(grid_in[7]),
        .I4(\debug_speed[1]_i_2_n_0 ),
        .O(\debug_speed[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \debug_speed[1]_i_2 
       (.I0(grid_in[2]),
        .I1(grid_in[3]),
        .I2(grid_in[0]),
        .I3(grid_in[4]),
        .O(\debug_speed[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \debug_speed[2]_i_1 
       (.I0(grid_in[1]),
        .I1(grid_in[6]),
        .I2(\debug_speed[2]_i_2_n_0 ),
        .I3(grid_in[5]),
        .I4(grid_in[0]),
        .I5(\debug_speed[2]_i_3_n_0 ),
        .O(\debug_speed[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \debug_speed[2]_i_2 
       (.I0(grid_in[4]),
        .I1(grid_in[7]),
        .O(\debug_speed[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \debug_speed[2]_i_3 
       (.I0(grid_in[3]),
        .I1(grid_in[2]),
        .O(\debug_speed[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \debug_speed[3]_i_1 
       (.I0(grid_in[0]),
        .I1(grid_in[6]),
        .I2(\debug_speed[2]_i_2_n_0 ),
        .I3(grid_in[1]),
        .I4(grid_in[5]),
        .I5(\debug_speed[2]_i_3_n_0 ),
        .O(\debug_speed[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \debug_speed[4]_i_1 
       (.I0(grid_in[2]),
        .I1(grid_in[6]),
        .I2(grid_in[4]),
        .I3(grid_in[7]),
        .I4(\debug_speed[4]_i_2_n_0 ),
        .O(\debug_speed[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \debug_speed[4]_i_2 
       (.I0(grid_in[5]),
        .I1(grid_in[3]),
        .I2(grid_in[0]),
        .I3(grid_in[1]),
        .O(\debug_speed[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \debug_speed[5]_i_1 
       (.I0(grid_in[6]),
        .I1(grid_in[4]),
        .I2(grid_in[2]),
        .I3(grid_in[7]),
        .I4(\debug_speed[4]_i_2_n_0 ),
        .O(\debug_speed[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \debug_speed[6]_i_1 
       (.I0(\debug_speed[0]_i_3_n_0 ),
        .I1(grid_in[2]),
        .I2(grid_in[0]),
        .I3(grid_in[3]),
        .I4(grid_in[5]),
        .O(\debug_speed[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \debug_speed[7]_i_1 
       (.I0(grid_in[5]),
        .I1(grid_in[4]),
        .I2(grid_in[7]),
        .I3(grid_in[6]),
        .I4(\debug_speed[7]_i_2_n_0 ),
        .I5(\debug_speed[2]_i_3_n_0 ),
        .O(\debug_speed[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \debug_speed[7]_i_2 
       (.I0(grid_in[1]),
        .I1(grid_in[0]),
        .O(\debug_speed[7]_i_2_n_0 ));
  FDRE \debug_speed_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[0]_i_2_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \debug_speed_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \debug_speed_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \debug_speed_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \debug_speed_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \debug_speed_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \debug_speed_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \debug_speed_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .D(\debug_speed[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBEFFBFFFFFBFFFFF)) 
    \speed_out[1]_i_1 
       (.I0(\speed_out[1]_i_2_n_0 ),
        .I1(grid_in[0]),
        .I2(grid_in[4]),
        .I3(grid_in[1]),
        .I4(grid_in[2]),
        .I5(grid_in[5]),
        .O(\speed_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \speed_out[1]_i_2 
       (.I0(grid_in[3]),
        .I1(grid_in[6]),
        .O(\speed_out[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \speed_out[2]_i_1 
       (.I0(grid_in[0]),
        .I1(\speed_out[2]_i_2_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h2400400000040000)) 
    \speed_out[2]_i_2 
       (.I0(grid_in[1]),
        .I1(grid_in[2]),
        .I2(grid_in[4]),
        .I3(grid_in[6]),
        .I4(grid_in[5]),
        .I5(grid_in[3]),
        .O(\speed_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7D)) 
    \speed_out[3]_i_1 
       (.I0(grid_in[0]),
        .I1(grid_in[3]),
        .I2(grid_in[6]),
        .I3(\speed_out[3]_i_2_n_0 ),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6FFFF7DF)) 
    \speed_out[3]_i_2 
       (.I0(grid_in[2]),
        .I1(grid_in[4]),
        .I2(grid_in[5]),
        .I3(grid_in[3]),
        .I4(grid_in[1]),
        .O(\speed_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \speed_out[4]_i_1 
       (.I0(\speed_out[4]_i_2_n_0 ),
        .I1(grid_in[3]),
        .I2(grid_in[1]),
        .I3(\speed_out[4]_i_3_n_0 ),
        .I4(grid_in[0]),
        .I5(\speed_out[5]_i_2_n_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \speed_out[4]_i_2 
       (.I0(grid_in[2]),
        .I1(grid_in[5]),
        .I2(grid_in[4]),
        .I3(grid_in[1]),
        .I4(grid_in[6]),
        .I5(grid_in[3]),
        .O(\speed_out[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \speed_out[4]_i_3 
       (.I0(grid_in[4]),
        .I1(grid_in[2]),
        .O(\speed_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0008000800000800)) 
    \speed_out[5]_i_1 
       (.I0(grid_in[3]),
        .I1(grid_in[1]),
        .I2(\speed_out[5]_i_2_n_0 ),
        .I3(grid_in[2]),
        .I4(grid_in[4]),
        .I5(grid_in[0]),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \speed_out[5]_i_2 
       (.I0(grid_in[5]),
        .I1(grid_in[6]),
        .O(\speed_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFA280)) 
    \speed_out[6]_i_1 
       (.I0(grid_in[3]),
        .I1(grid_in[0]),
        .I2(\speed_out[6]_i_3_n_0 ),
        .I3(\speed_out[6]_i_4_n_0 ),
        .I4(\speed_out[6]_i_5_n_0 ),
        .I5(grid_in[7]),
        .O(\speed_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F5F7E7EFFFFFFFF)) 
    \speed_out[6]_i_2 
       (.I0(grid_in[6]),
        .I1(grid_in[0]),
        .I2(grid_in[3]),
        .I3(grid_in[4]),
        .I4(grid_in[1]),
        .I5(\speed_out[6]_i_6_n_0 ),
        .O(p_0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6400800)) 
    \speed_out[6]_i_3 
       (.I0(grid_in[1]),
        .I1(grid_in[2]),
        .I2(grid_in[4]),
        .I3(grid_in[5]),
        .I4(grid_in[6]),
        .O(\speed_out[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \speed_out[6]_i_4 
       (.I0(grid_in[4]),
        .I1(grid_in[2]),
        .I2(grid_in[1]),
        .I3(grid_in[5]),
        .I4(grid_in[6]),
        .O(\speed_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \speed_out[6]_i_5 
       (.I0(grid_in[3]),
        .I1(grid_in[6]),
        .I2(grid_in[1]),
        .I3(grid_in[5]),
        .I4(grid_in[4]),
        .I5(grid_in[2]),
        .O(\speed_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAA0062006200)) 
    \speed_out[6]_i_6 
       (.I0(grid_in[5]),
        .I1(grid_in[4]),
        .I2(grid_in[3]),
        .I3(grid_in[2]),
        .I4(grid_in[0]),
        .I5(grid_in[1]),
        .O(\speed_out[6]_i_6_n_0 ));
  FDCE \speed_out_reg[1] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(\speed_out[1]_i_1_n_0 ),
        .Q(speed_out[0]));
  FDCE \speed_out_reg[2] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[2]),
        .Q(speed_out[1]));
  FDCE \speed_out_reg[3] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[3]),
        .Q(speed_out[2]));
  FDCE \speed_out_reg[4] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[4]),
        .Q(speed_out[3]));
  FDCE \speed_out_reg[5] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[5]),
        .Q(speed_out[4]));
  FDCE \speed_out_reg[6] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[6]),
        .Q(speed_out[5]));
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
