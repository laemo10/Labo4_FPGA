// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 11:22:46 2025
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
    speed_valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]grid_in;
  output [7:0]speed_out;
  output speed_valid;

  wire \<const0> ;
  wire clk;
  wire [7:0]grid_in;
  wire rst;
  wire [6:1]\^speed_out ;
  wire speed_valid;

  assign speed_out[7] = \<const0> ;
  assign speed_out[6:1] = \^speed_out [6:1];
  assign speed_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  HDMI_bd_speed_detection_0_0_speed_detection U0
       (.clk(clk),
        .grid_in(grid_in),
        .rst(rst),
        .speed_out(\^speed_out ),
        .speed_valid(speed_valid));
endmodule

(* ORIG_REF_NAME = "speed_detection" *) 
module HDMI_bd_speed_detection_0_0_speed_detection
   (speed_out,
    speed_valid,
    clk,
    rst,
    grid_in);
  output [5:0]speed_out;
  output speed_valid;
  input clk;
  input rst;
  input [7:0]grid_in;

  wire clk;
  wire [7:0]grid_in;
  wire [6:1]p_0_out;
  wire rst;
  wire [5:0]speed_out;
  wire \speed_out[1]_i_2_n_0 ;
  wire \speed_out[1]_i_3_n_0 ;
  wire \speed_out[2]_i_2_n_0 ;
  wire \speed_out[3]_i_2_n_0 ;
  wire \speed_out[4]_i_2_n_0 ;
  wire \speed_out[5]_i_2_n_0 ;
  wire \speed_out[5]_i_3_n_0 ;
  wire \speed_out[6]_i_1_n_0 ;
  wire \speed_out[6]_i_3_n_0 ;
  wire \speed_out[6]_i_4_n_0 ;
  wire \speed_out[6]_i_5_n_0 ;
  wire \speed_out[6]_i_6_n_0 ;
  wire speed_valid;

  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \speed_out[1]_i_2 
       (.I0(grid_in[3]),
        .I1(grid_in[5]),
        .I2(grid_in[4]),
        .I3(grid_in[2]),
        .I4(grid_in[6]),
        .I5(grid_in[1]),
        .O(\speed_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h77FFBFFFFFFFFFFF)) 
    \speed_out[1]_i_3 
       (.I0(grid_in[1]),
        .I1(grid_in[6]),
        .I2(grid_in[2]),
        .I3(grid_in[4]),
        .I4(grid_in[5]),
        .I5(grid_in[3]),
        .O(\speed_out[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \speed_out[2]_i_1 
       (.I0(\speed_out[2]_i_2_n_0 ),
        .I1(grid_in[0]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'h0480400000001000)) 
    \speed_out[2]_i_2 
       (.I0(grid_in[1]),
        .I1(grid_in[3]),
        .I2(grid_in[5]),
        .I3(grid_in[2]),
        .I4(grid_in[4]),
        .I5(grid_in[6]),
        .O(\speed_out[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \speed_out[3]_i_1 
       (.I0(\speed_out[3]_i_2_n_0 ),
        .I1(grid_in[0]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'h7BFFFF7FFFEFFFFF)) 
    \speed_out[3]_i_2 
       (.I0(grid_in[1]),
        .I1(grid_in[3]),
        .I2(grid_in[5]),
        .I3(grid_in[4]),
        .I4(grid_in[2]),
        .I5(grid_in[6]),
        .O(\speed_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFCFFFFFF)) 
    \speed_out[4]_i_1 
       (.I0(grid_in[0]),
        .I1(grid_in[1]),
        .I2(grid_in[6]),
        .I3(\speed_out[4]_i_2_n_0 ),
        .I4(grid_in[5]),
        .I5(grid_in[3]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \speed_out[4]_i_2 
       (.I0(grid_in[2]),
        .I1(grid_in[4]),
        .O(\speed_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7040000000000000)) 
    \speed_out[5]_i_1 
       (.I0(\speed_out[5]_i_2_n_0 ),
        .I1(grid_in[0]),
        .I2(grid_in[3]),
        .I3(\speed_out[5]_i_3_n_0 ),
        .I4(grid_in[6]),
        .I5(grid_in[1]),
        .O(p_0_out[5]));
  LUT2 #(
    .INIT(4'hB)) 
    \speed_out[5]_i_2 
       (.I0(grid_in[2]),
        .I1(grid_in[5]),
        .O(\speed_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \speed_out[5]_i_3 
       (.I0(grid_in[4]),
        .I1(grid_in[2]),
        .I2(grid_in[5]),
        .O(\speed_out[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \speed_out[6]_i_1 
       (.I0(\speed_out[6]_i_3_n_0 ),
        .I1(grid_in[0]),
        .I2(\speed_out[6]_i_4_n_0 ),
        .I3(grid_in[7]),
        .O(\speed_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \speed_out[6]_i_2 
       (.I0(\speed_out[6]_i_5_n_0 ),
        .I1(grid_in[0]),
        .I2(\speed_out[6]_i_6_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'h0800000001000000)) 
    \speed_out[6]_i_3 
       (.I0(grid_in[1]),
        .I1(grid_in[6]),
        .I2(grid_in[4]),
        .I3(grid_in[2]),
        .I4(grid_in[5]),
        .I5(grid_in[3]),
        .O(\speed_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8480408000009000)) 
    \speed_out[6]_i_4 
       (.I0(grid_in[1]),
        .I1(grid_in[3]),
        .I2(grid_in[5]),
        .I3(grid_in[2]),
        .I4(grid_in[4]),
        .I5(grid_in[6]),
        .O(\speed_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBBF7F7FFFFFFFFF)) 
    \speed_out[6]_i_5 
       (.I0(grid_in[1]),
        .I1(grid_in[6]),
        .I2(grid_in[5]),
        .I3(grid_in[4]),
        .I4(grid_in[2]),
        .I5(grid_in[3]),
        .O(\speed_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFEFFFFF)) 
    \speed_out[6]_i_6 
       (.I0(grid_in[1]),
        .I1(grid_in[6]),
        .I2(grid_in[2]),
        .I3(grid_in[4]),
        .I4(grid_in[5]),
        .I5(grid_in[3]),
        .O(\speed_out[6]_i_6_n_0 ));
  FDCE \speed_out_reg[1] 
       (.C(clk),
        .CE(\speed_out[6]_i_1_n_0 ),
        .CLR(rst),
        .D(p_0_out[1]),
        .Q(speed_out[0]));
  MUXF7 \speed_out_reg[1]_i_1 
       (.I0(\speed_out[1]_i_2_n_0 ),
        .I1(\speed_out[1]_i_3_n_0 ),
        .O(p_0_out[1]),
        .S(grid_in[0]));
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
  FDCE speed_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\speed_out[6]_i_1_n_0 ),
        .Q(speed_valid));
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
