// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Dec  4 11:21:33 2025
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_systeme_regulation_v_0_0/HDMI_bd_systeme_regulation_v_0_0_sim_netlist.v
// Design      : HDMI_bd_systeme_regulation_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_systeme_regulation_v_0_0,systeme_regulation_vitesse,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "systeme_regulation_vitesse,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_systeme_regulation_v_0_0
   (clk,
    reset,
    vitesse_panneau_camera,
    vitesse_panneau_valid,
    vitesse_vehicule);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]vitesse_panneau_camera;
  input vitesse_panneau_valid;
  output [7:0]vitesse_vehicule;

  wire clk;
  wire reset;
  wire [7:0]vitesse_panneau_camera;
  wire vitesse_panneau_valid;
  wire [7:0]vitesse_vehicule;

  HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse U0
       (.Q(vitesse_vehicule),
        .clk(clk),
        .reset(reset),
        .vitesse_panneau_camera(vitesse_panneau_camera),
        .vitesse_panneau_valid(vitesse_panneau_valid));
endmodule

(* ORIG_REF_NAME = "comparateur_regulateur_vitesse" *) 
module HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse
   (vitesse_cible_valid_interne,
    CO,
    \vitesse_panneau_reg_reg[7]_0 ,
    Q,
    D,
    \vitesse_cible_reg_reg[6]_0 ,
    \difference_reg[0]_0 ,
    \difference_reg[8]_0 ,
    \vitesse_actuelle_reg[5] ,
    E,
    clk,
    reset,
    DI,
    S,
    \difference_reg[3]_0 ,
    \difference_reg[7]_0 ,
    \vitesse_cible_reg_reg[7]_0 ,
    \vitesse_cible_reg_reg[5]_0 ,
    pulse_changement,
    vitesse_panneau_valid,
    vitesse_panneau_camera);
  output vitesse_cible_valid_interne;
  output [0:0]CO;
  output [0:0]\vitesse_panneau_reg_reg[7]_0 ;
  output [7:0]Q;
  output [0:0]D;
  output [6:0]\vitesse_cible_reg_reg[6]_0 ;
  output \difference_reg[0]_0 ;
  output \difference_reg[8]_0 ;
  output \vitesse_actuelle_reg[5] ;
  output [0:0]E;
  input clk;
  input reset;
  input [2:0]DI;
  input [2:0]S;
  input [0:0]\difference_reg[3]_0 ;
  input [7:0]\difference_reg[7]_0 ;
  input [6:0]\vitesse_cible_reg_reg[7]_0 ;
  input \vitesse_cible_reg_reg[5]_0 ;
  input pulse_changement;
  input vitesse_panneau_valid;
  input [7:0]vitesse_panneau_camera;

  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]S;
  wire clk;
  wire [16:0]compteur_ajustement;
  wire \compteur_ajustement[0]_i_1_n_0 ;
  wire \compteur_ajustement[10]_i_1_n_0 ;
  wire \compteur_ajustement[11]_i_1_n_0 ;
  wire \compteur_ajustement[12]_i_1_n_0 ;
  wire \compteur_ajustement[13]_i_1_n_0 ;
  wire \compteur_ajustement[14]_i_1_n_0 ;
  wire \compteur_ajustement[15]_i_1_n_0 ;
  wire \compteur_ajustement[16]_i_1_n_0 ;
  wire \compteur_ajustement[16]_i_2_n_0 ;
  wire \compteur_ajustement[16]_i_3_n_0 ;
  wire \compteur_ajustement[1]_i_1_n_0 ;
  wire \compteur_ajustement[2]_i_1_n_0 ;
  wire \compteur_ajustement[3]_i_1_n_0 ;
  wire \compteur_ajustement[4]_i_1_n_0 ;
  wire \compteur_ajustement[5]_i_1_n_0 ;
  wire \compteur_ajustement[6]_i_1_n_0 ;
  wire \compteur_ajustement[7]_i_1_n_0 ;
  wire \compteur_ajustement[8]_i_1_n_0 ;
  wire \compteur_ajustement[9]_i_1_n_0 ;
  wire [8:0]difference;
  wire difference0;
  wire [8:0]difference00_in;
  wire difference0_carry__0_i_1_n_0;
  wire difference0_carry__0_i_2_n_0;
  wire difference0_carry__0_i_3_n_0;
  wire difference0_carry__0_i_4_n_0;
  wire difference0_carry__0_n_0;
  wire difference0_carry__0_n_1;
  wire difference0_carry__0_n_2;
  wire difference0_carry__0_n_3;
  wire difference0_carry_i_1_n_0;
  wire difference0_carry_i_2_n_0;
  wire difference0_carry_i_3_n_0;
  wire difference0_carry_n_0;
  wire difference0_carry_n_1;
  wire difference0_carry_n_2;
  wire difference0_carry_n_3;
  wire \difference_reg[0]_0 ;
  wire [0:0]\difference_reg[3]_0 ;
  wire [7:0]\difference_reg[7]_0 ;
  wire \difference_reg[8]_0 ;
  wire i__carry_i_4_n_0;
  wire i__carry_i_8_n_0;
  wire [16:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire pulse_ajustement;
  wire pulse_ajustement_i_1_n_0;
  wire pulse_changement;
  wire reset;
  wire \vitesse_actuelle_reg[5] ;
  wire [7:7]vitesse_cible_reg;
  wire vitesse_cible_reg1_carry_i_10_n_0;
  wire vitesse_cible_reg1_carry_i_1_n_0;
  wire vitesse_cible_reg1_carry_i_2_n_0;
  wire vitesse_cible_reg1_carry_i_3_n_0;
  wire vitesse_cible_reg1_carry_i_4_n_0;
  wire vitesse_cible_reg1_carry_i_5_n_0;
  wire vitesse_cible_reg1_carry_i_6_n_0;
  wire vitesse_cible_reg1_carry_i_7_n_0;
  wire vitesse_cible_reg1_carry_i_8_n_0;
  wire vitesse_cible_reg1_carry_i_9_n_0;
  wire vitesse_cible_reg1_carry_n_1;
  wire vitesse_cible_reg1_carry_n_2;
  wire vitesse_cible_reg1_carry_n_3;
  wire \vitesse_cible_reg1_inferred__0/i__carry_n_1 ;
  wire \vitesse_cible_reg1_inferred__0/i__carry_n_2 ;
  wire \vitesse_cible_reg1_inferred__0/i__carry_n_3 ;
  wire \vitesse_cible_reg[3]_i_5_n_0 ;
  wire [0:0]vitesse_cible_reg_0;
  wire \vitesse_cible_reg_reg[5]_0 ;
  wire [6:0]\vitesse_cible_reg_reg[6]_0 ;
  wire [6:0]\vitesse_cible_reg_reg[7]_0 ;
  wire vitesse_cible_valid_i_1_n_0;
  wire vitesse_cible_valid_i_3_n_0;
  wire vitesse_cible_valid_i_4_n_0;
  wire vitesse_cible_valid_i_5_n_0;
  wire vitesse_cible_valid_i_6_n_0;
  wire vitesse_cible_valid_i_7_n_0;
  wire vitesse_cible_valid_interne;
  wire [7:0]vitesse_panneau_camera;
  wire [0:0]\vitesse_panneau_reg_reg[7]_0 ;
  wire vitesse_panneau_valid;
  wire [3:0]NLW_difference0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_difference0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_vitesse_cible_reg1_carry_O_UNCONNECTED;
  wire [3:0]\NLW_vitesse_cible_reg1_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001FFF)) 
    \compteur_ajustement[0]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(compteur_ajustement[0]),
        .O(\compteur_ajustement[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[10]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[10]),
        .O(\compteur_ajustement[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[11]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[11]),
        .O(\compteur_ajustement[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[12]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[12]),
        .O(\compteur_ajustement[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[13]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[13]),
        .O(\compteur_ajustement[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[14]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[14]),
        .O(\compteur_ajustement[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[15]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[15]),
        .O(\compteur_ajustement[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[16]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[16]),
        .O(\compteur_ajustement[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \compteur_ajustement[16]_i_2 
       (.I0(compteur_ajustement[13]),
        .I1(compteur_ajustement[14]),
        .I2(compteur_ajustement[11]),
        .I3(compteur_ajustement[12]),
        .O(\compteur_ajustement[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \compteur_ajustement[16]_i_3 
       (.I0(compteur_ajustement[7]),
        .I1(compteur_ajustement[6]),
        .I2(compteur_ajustement[5]),
        .I3(compteur_ajustement[8]),
        .I4(compteur_ajustement[9]),
        .I5(compteur_ajustement[10]),
        .O(\compteur_ajustement[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[1]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[1]),
        .O(\compteur_ajustement[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[2]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[2]),
        .O(\compteur_ajustement[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[3]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[3]),
        .O(\compteur_ajustement[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[4]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[4]),
        .O(\compteur_ajustement[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[5]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[5]),
        .O(\compteur_ajustement[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[6]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[6]),
        .O(\compteur_ajustement[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[7]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[7]),
        .O(\compteur_ajustement[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[8]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[8]),
        .O(\compteur_ajustement[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1FFF0000)) 
    \compteur_ajustement[9]_i_1 
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .I4(plusOp[9]),
        .O(\compteur_ajustement[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[0]_i_1_n_0 ),
        .Q(compteur_ajustement[0]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[10]_i_1_n_0 ),
        .Q(compteur_ajustement[10]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[11]_i_1_n_0 ),
        .Q(compteur_ajustement[11]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[12]_i_1_n_0 ),
        .Q(compteur_ajustement[12]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[13]_i_1_n_0 ),
        .Q(compteur_ajustement[13]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[14]_i_1_n_0 ),
        .Q(compteur_ajustement[14]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[15]_i_1_n_0 ),
        .Q(compteur_ajustement[15]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[16]_i_1_n_0 ),
        .Q(compteur_ajustement[16]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[1]_i_1_n_0 ),
        .Q(compteur_ajustement[1]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[2]_i_1_n_0 ),
        .Q(compteur_ajustement[2]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[3]_i_1_n_0 ),
        .Q(compteur_ajustement[3]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[4]_i_1_n_0 ),
        .Q(compteur_ajustement[4]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[5]_i_1_n_0 ),
        .Q(compteur_ajustement[5]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[6]_i_1_n_0 ),
        .Q(compteur_ajustement[6]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[7]_i_1_n_0 ),
        .Q(compteur_ajustement[7]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[8]_i_1_n_0 ),
        .Q(compteur_ajustement[8]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_ajustement_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_ajustement[9]_i_1_n_0 ),
        .Q(compteur_ajustement[9]));
  CARRY4 difference0_carry
       (.CI(1'b0),
        .CO({difference0_carry_n_0,difference0_carry_n_1,difference0_carry_n_2,difference0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(difference00_in[3:0]),
        .S({difference0_carry_i_1_n_0,difference0_carry_i_2_n_0,difference0_carry_i_3_n_0,\difference_reg[3]_0 }));
  CARRY4 difference0_carry__0
       (.CI(difference0_carry_n_0),
        .CO({difference0_carry__0_n_0,difference0_carry__0_n_1,difference0_carry__0_n_2,difference0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(difference00_in[7:4]),
        .S({difference0_carry__0_i_1_n_0,difference0_carry__0_i_2_n_0,difference0_carry__0_i_3_n_0,difference0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\difference_reg[7]_0 [7]),
        .O(difference0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\difference_reg[7]_0 [6]),
        .O(difference0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\difference_reg[7]_0 [5]),
        .O(difference0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\difference_reg[7]_0 [4]),
        .O(difference0_carry__0_i_4_n_0));
  CARRY4 difference0_carry__1
       (.CI(difference0_carry__0_n_0),
        .CO(NLW_difference0_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_difference0_carry__1_O_UNCONNECTED[3:1],difference00_in[8]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry_i_1
       (.I0(Q[3]),
        .I1(\difference_reg[7]_0 [3]),
        .O(difference0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry_i_2
       (.I0(Q[2]),
        .I1(\difference_reg[7]_0 [2]),
        .O(difference0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry_i_3
       (.I0(Q[1]),
        .I1(\difference_reg[7]_0 [1]),
        .O(difference0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \difference[8]_i_1 
       (.I0(pulse_ajustement),
        .I1(reset),
        .O(difference0));
  FDRE \difference_reg[0] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[0]),
        .Q(difference[0]),
        .R(1'b0));
  FDRE \difference_reg[1] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[1]),
        .Q(difference[1]),
        .R(1'b0));
  FDRE \difference_reg[2] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[2]),
        .Q(difference[2]),
        .R(1'b0));
  FDRE \difference_reg[3] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[3]),
        .Q(difference[3]),
        .R(1'b0));
  FDRE \difference_reg[4] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[4]),
        .Q(difference[4]),
        .R(1'b0));
  FDRE \difference_reg[5] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[5]),
        .Q(difference[5]),
        .R(1'b0));
  FDRE \difference_reg[6] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[6]),
        .Q(difference[6]),
        .R(1'b0));
  FDRE \difference_reg[7] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[7]),
        .Q(difference[7]),
        .R(1'b0));
  FDRE \difference_reg[8] 
       (.C(clk),
        .CE(difference0),
        .D(difference00_in[8]),
        .Q(difference[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE80C)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\difference_reg[7]_0 [1]),
        .I3(\difference_reg[7]_0 [0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2442)) 
    i__carry_i_8
       (.I0(Q[0]),
        .I1(\difference_reg[7]_0 [0]),
        .I2(\difference_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(i__carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(compteur_ajustement[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(compteur_ajustement[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(compteur_ajustement[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(compteur_ajustement[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3],plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(compteur_ajustement[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    pulse_ajustement_i_1
       (.I0(\compteur_ajustement[16]_i_2_n_0 ),
        .I1(\compteur_ajustement[16]_i_3_n_0 ),
        .I2(compteur_ajustement[15]),
        .I3(compteur_ajustement[16]),
        .O(pulse_ajustement_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_ajustement_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(pulse_ajustement_i_1_n_0),
        .Q(pulse_ajustement));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \vitesse_actuelle[7]_i_1 
       (.I0(vitesse_cible_valid_interne),
        .I1(pulse_changement),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \vitesse_actuelle[7]_i_2 
       (.I0(vitesse_cible_valid_interne),
        .I1(vitesse_cible_reg),
        .O(D));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 vitesse_cible_reg1_carry
       (.CI(1'b0),
        .CO({CO,vitesse_cible_reg1_carry_n_1,vitesse_cible_reg1_carry_n_2,vitesse_cible_reg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({vitesse_cible_reg1_carry_i_1_n_0,vitesse_cible_reg1_carry_i_2_n_0,vitesse_cible_reg1_carry_i_3_n_0,vitesse_cible_reg1_carry_i_4_n_0}),
        .O(NLW_vitesse_cible_reg1_carry_O_UNCONNECTED[3:0]),
        .S({vitesse_cible_reg1_carry_i_5_n_0,vitesse_cible_reg1_carry_i_6_n_0,vitesse_cible_reg1_carry_i_7_n_0,vitesse_cible_reg1_carry_i_8_n_0}));
  LUT5 #(
    .INIT(32'hC2AB802A)) 
    vitesse_cible_reg1_carry_i_1
       (.I0(\difference_reg[7]_0 [7]),
        .I1(Q[6]),
        .I2(vitesse_cible_reg1_carry_i_9_n_0),
        .I3(Q[7]),
        .I4(\difference_reg[7]_0 [6]),
        .O(vitesse_cible_reg1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    vitesse_cible_reg1_carry_i_10
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(vitesse_cible_reg1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h2CBA08A2)) 
    vitesse_cible_reg1_carry_i_2
       (.I0(\difference_reg[7]_0 [5]),
        .I1(Q[4]),
        .I2(vitesse_cible_reg1_carry_i_10_n_0),
        .I3(Q[5]),
        .I4(\difference_reg[7]_0 [4]),
        .O(vitesse_cible_reg1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hC2AB802A)) 
    vitesse_cible_reg1_carry_i_3
       (.I0(\difference_reg[7]_0 [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\difference_reg[7]_0 [2]),
        .O(vitesse_cible_reg1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hF440)) 
    vitesse_cible_reg1_carry_i_4
       (.I0(Q[0]),
        .I1(\difference_reg[7]_0 [0]),
        .I2(\difference_reg[7]_0 [1]),
        .I3(Q[1]),
        .O(vitesse_cible_reg1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    vitesse_cible_reg1_carry_i_5
       (.I0(Q[7]),
        .I1(\difference_reg[7]_0 [7]),
        .I2(Q[6]),
        .I3(vitesse_cible_reg1_carry_i_9_n_0),
        .I4(\difference_reg[7]_0 [6]),
        .O(vitesse_cible_reg1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    vitesse_cible_reg1_carry_i_6
       (.I0(Q[5]),
        .I1(\difference_reg[7]_0 [5]),
        .I2(Q[4]),
        .I3(vitesse_cible_reg1_carry_i_10_n_0),
        .I4(\difference_reg[7]_0 [4]),
        .O(vitesse_cible_reg1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    vitesse_cible_reg1_carry_i_7
       (.I0(Q[3]),
        .I1(\difference_reg[7]_0 [3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\difference_reg[7]_0 [2]),
        .O(vitesse_cible_reg1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    vitesse_cible_reg1_carry_i_8
       (.I0(Q[1]),
        .I1(\difference_reg[7]_0 [1]),
        .I2(Q[0]),
        .I3(\difference_reg[7]_0 [0]),
        .O(vitesse_cible_reg1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    vitesse_cible_reg1_carry_i_9
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(vitesse_cible_reg1_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \vitesse_cible_reg1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\vitesse_panneau_reg_reg[7]_0 ,\vitesse_cible_reg1_inferred__0/i__carry_n_1 ,\vitesse_cible_reg1_inferred__0/i__carry_n_2 ,\vitesse_cible_reg1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({DI,i__carry_i_4_n_0}),
        .O(\NLW_vitesse_cible_reg1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({S,i__carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'hBF50BF55AF40AA40)) 
    \vitesse_cible_reg[0]_i_1 
       (.I0(\difference_reg[0]_0 ),
        .I1(\vitesse_panneau_reg_reg[7]_0 ),
        .I2(\difference_reg[8]_0 ),
        .I3(\difference_reg[7]_0 [0]),
        .I4(CO),
        .I5(Q[0]),
        .O(vitesse_cible_reg_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \vitesse_cible_reg[3]_i_2 
       (.I0(difference[8]),
        .I1(\vitesse_cible_reg[3]_i_5_n_0 ),
        .I2(difference[2]),
        .I3(difference[0]),
        .I4(difference[1]),
        .I5(difference[7]),
        .O(\difference_reg[8]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vitesse_cible_reg[3]_i_5 
       (.I0(difference[4]),
        .I1(difference[3]),
        .I2(difference[6]),
        .I3(difference[5]),
        .O(\vitesse_cible_reg[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000660F)) 
    \vitesse_cible_reg[5]_i_2 
       (.I0(\difference_reg[7]_0 [5]),
        .I1(\vitesse_cible_reg_reg[5]_0 ),
        .I2(Q[5]),
        .I3(CO),
        .I4(\difference_reg[8]_0 ),
        .O(\vitesse_actuelle_reg[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[0] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(vitesse_cible_reg_0),
        .Q(\vitesse_cible_reg_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[1] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [0]),
        .Q(\vitesse_cible_reg_reg[6]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[2] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [1]),
        .Q(\vitesse_cible_reg_reg[6]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[3] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [2]),
        .Q(\vitesse_cible_reg_reg[6]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[4] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [3]),
        .Q(\vitesse_cible_reg_reg[6]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[5] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [4]),
        .Q(\vitesse_cible_reg_reg[6]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[6] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [5]),
        .Q(\vitesse_cible_reg_reg[6]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_cible_reg_reg[7] 
       (.C(clk),
        .CE(pulse_ajustement),
        .CLR(reset),
        .D(\vitesse_cible_reg_reg[7]_0 [6]),
        .Q(vitesse_cible_reg));
  LUT2 #(
    .INIT(4'h2)) 
    vitesse_cible_valid_i_1
       (.I0(pulse_ajustement),
        .I1(\difference_reg[0]_0 ),
        .O(vitesse_cible_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    vitesse_cible_valid_i_2
       (.I0(vitesse_cible_valid_i_3_n_0),
        .I1(vitesse_cible_valid_i_4_n_0),
        .I2(vitesse_cible_valid_i_5_n_0),
        .O(\difference_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000010333)) 
    vitesse_cible_valid_i_3
       (.I0(difference[0]),
        .I1(difference[7]),
        .I2(difference[1]),
        .I3(difference[2]),
        .I4(difference[8]),
        .I5(\vitesse_cible_reg[3]_i_5_n_0 ),
        .O(vitesse_cible_valid_i_3_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    vitesse_cible_valid_i_4
       (.I0(difference[3]),
        .I1(difference[6]),
        .I2(difference[4]),
        .I3(difference[7]),
        .I4(vitesse_cible_valid_i_6_n_0),
        .O(vitesse_cible_valid_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    vitesse_cible_valid_i_5
       (.I0(Q[3]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(vitesse_cible_valid_i_7_n_0),
        .O(vitesse_cible_valid_i_5_n_0));
  LUT5 #(
    .INIT(32'h3F3F7FFF)) 
    vitesse_cible_valid_i_6
       (.I0(difference[0]),
        .I1(difference[8]),
        .I2(difference[5]),
        .I3(difference[1]),
        .I4(difference[2]),
        .O(vitesse_cible_valid_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    vitesse_cible_valid_i_7
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(vitesse_cible_valid_i_7_n_0));
  FDCE vitesse_cible_valid_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(vitesse_cible_valid_i_1_n_0),
        .Q(vitesse_cible_valid_interne));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[0] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[1] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[2] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[3] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[4] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[5] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[6] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_panneau_reg_reg[7] 
       (.C(clk),
        .CE(vitesse_panneau_valid),
        .CLR(reset),
        .D(vitesse_panneau_camera[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "gen_vitesse" *) 
module HDMI_bd_systeme_regulation_v_0_0_gen_vitesse
   (pulse_changement,
    Q,
    \vitesse_actuelle_reg[0]_0 ,
    \vitesse_actuelle_reg[7]_0 ,
    DI,
    S,
    \vitesse_actuelle_reg[4]_0 ,
    clk,
    reset,
    \vitesse_cible_reg_reg[7] ,
    \vitesse_cible_reg_reg[1] ,
    \vitesse_cible_reg_reg[3] ,
    \vitesse_cible_reg_reg[5] ,
    \vitesse_cible_reg_reg[5]_0 ,
    CO,
    E,
    D,
    \vitesse_actuelle_reg[6]_0 ,
    vitesse_cible_valid_interne);
  output pulse_changement;
  output [7:0]Q;
  output [0:0]\vitesse_actuelle_reg[0]_0 ;
  output [6:0]\vitesse_actuelle_reg[7]_0 ;
  output [2:0]DI;
  output [2:0]S;
  output \vitesse_actuelle_reg[4]_0 ;
  input clk;
  input reset;
  input [7:0]\vitesse_cible_reg_reg[7] ;
  input [0:0]\vitesse_cible_reg_reg[1] ;
  input \vitesse_cible_reg_reg[3] ;
  input \vitesse_cible_reg_reg[5] ;
  input \vitesse_cible_reg_reg[5]_0 ;
  input [0:0]CO;
  input [0:0]E;
  input [0:0]D;
  input [6:0]\vitesse_actuelle_reg[6]_0 ;
  input vitesse_cible_valid_interne;

  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]DI;
  wire [0:0]E;
  wire [0:0]L;
  wire L__16_carry__0_i_1_n_0;
  wire L__16_carry__0_i_2_n_0;
  wire L__16_carry__0_i_3_n_0;
  wire L__16_carry__0_i_4_n_0;
  wire L__16_carry__0_n_1;
  wire L__16_carry__0_n_2;
  wire L__16_carry__0_n_3;
  wire L__16_carry__0_n_4;
  wire L__16_carry__0_n_5;
  wire L__16_carry__0_n_6;
  wire L__16_carry__0_n_7;
  wire L__16_carry_i_1_n_0;
  wire L__16_carry_i_2_n_0;
  wire L__16_carry_i_3_n_0;
  wire L__16_carry_i_4_n_0;
  wire L__16_carry_n_0;
  wire L__16_carry_n_1;
  wire L__16_carry_n_2;
  wire L__16_carry_n_3;
  wire L__16_carry_n_4;
  wire L__16_carry_n_5;
  wire L__16_carry_n_6;
  wire L__16_carry_n_7;
  wire L_carry__0_i_1_n_0;
  wire L_carry__0_i_2_n_0;
  wire L_carry__0_i_3_n_0;
  wire L_carry__0_i_4_n_0;
  wire L_carry__0_n_0;
  wire L_carry__0_n_1;
  wire L_carry__0_n_2;
  wire L_carry__0_n_3;
  wire L_carry__1_i_1_n_0;
  wire L_carry__1_i_2_n_0;
  wire L_carry__1_n_3;
  wire L_carry__1_n_6;
  wire L_carry__1_n_7;
  wire L_carry_i_1_n_0;
  wire L_carry_i_2_n_0;
  wire L_carry_i_3_n_0;
  wire L_carry_n_0;
  wire L_carry_n_1;
  wire L_carry_n_2;
  wire L_carry_n_3;
  wire [7:0]Q;
  wire [2:0]S;
  wire clk;
  wire \compteur_changement[0]_i_2_n_0 ;
  wire \compteur_changement[0]_i_3_n_0 ;
  wire \compteur_changement[0]_i_4_n_0 ;
  wire \compteur_changement[0]_i_5_n_0 ;
  wire \compteur_changement[0]_i_6_n_0 ;
  wire \compteur_changement[12]_i_2_n_0 ;
  wire \compteur_changement[12]_i_3_n_0 ;
  wire \compteur_changement[12]_i_4_n_0 ;
  wire \compteur_changement[12]_i_5_n_0 ;
  wire \compteur_changement[16]_i_2_n_0 ;
  wire \compteur_changement[16]_i_3_n_0 ;
  wire \compteur_changement[16]_i_4_n_0 ;
  wire \compteur_changement[16]_i_5_n_0 ;
  wire \compteur_changement[20]_i_2_n_0 ;
  wire \compteur_changement[20]_i_3_n_0 ;
  wire \compteur_changement[20]_i_4_n_0 ;
  wire \compteur_changement[20]_i_5_n_0 ;
  wire \compteur_changement[24]_i_2_n_0 ;
  wire \compteur_changement[24]_i_3_n_0 ;
  wire \compteur_changement[4]_i_2_n_0 ;
  wire \compteur_changement[4]_i_3_n_0 ;
  wire \compteur_changement[4]_i_4_n_0 ;
  wire \compteur_changement[4]_i_5_n_0 ;
  wire \compteur_changement[8]_i_2_n_0 ;
  wire \compteur_changement[8]_i_3_n_0 ;
  wire \compteur_changement[8]_i_4_n_0 ;
  wire \compteur_changement[8]_i_5_n_0 ;
  wire [25:7]compteur_changement_reg;
  wire \compteur_changement_reg[0]_i_1_n_0 ;
  wire \compteur_changement_reg[0]_i_1_n_1 ;
  wire \compteur_changement_reg[0]_i_1_n_2 ;
  wire \compteur_changement_reg[0]_i_1_n_3 ;
  wire \compteur_changement_reg[0]_i_1_n_4 ;
  wire \compteur_changement_reg[0]_i_1_n_5 ;
  wire \compteur_changement_reg[0]_i_1_n_6 ;
  wire \compteur_changement_reg[0]_i_1_n_7 ;
  wire \compteur_changement_reg[12]_i_1_n_0 ;
  wire \compteur_changement_reg[12]_i_1_n_1 ;
  wire \compteur_changement_reg[12]_i_1_n_2 ;
  wire \compteur_changement_reg[12]_i_1_n_3 ;
  wire \compteur_changement_reg[12]_i_1_n_4 ;
  wire \compteur_changement_reg[12]_i_1_n_5 ;
  wire \compteur_changement_reg[12]_i_1_n_6 ;
  wire \compteur_changement_reg[12]_i_1_n_7 ;
  wire \compteur_changement_reg[16]_i_1_n_0 ;
  wire \compteur_changement_reg[16]_i_1_n_1 ;
  wire \compteur_changement_reg[16]_i_1_n_2 ;
  wire \compteur_changement_reg[16]_i_1_n_3 ;
  wire \compteur_changement_reg[16]_i_1_n_4 ;
  wire \compteur_changement_reg[16]_i_1_n_5 ;
  wire \compteur_changement_reg[16]_i_1_n_6 ;
  wire \compteur_changement_reg[16]_i_1_n_7 ;
  wire \compteur_changement_reg[20]_i_1_n_0 ;
  wire \compteur_changement_reg[20]_i_1_n_1 ;
  wire \compteur_changement_reg[20]_i_1_n_2 ;
  wire \compteur_changement_reg[20]_i_1_n_3 ;
  wire \compteur_changement_reg[20]_i_1_n_4 ;
  wire \compteur_changement_reg[20]_i_1_n_5 ;
  wire \compteur_changement_reg[20]_i_1_n_6 ;
  wire \compteur_changement_reg[20]_i_1_n_7 ;
  wire \compteur_changement_reg[24]_i_1_n_3 ;
  wire \compteur_changement_reg[24]_i_1_n_6 ;
  wire \compteur_changement_reg[24]_i_1_n_7 ;
  wire \compteur_changement_reg[4]_i_1_n_0 ;
  wire \compteur_changement_reg[4]_i_1_n_1 ;
  wire \compteur_changement_reg[4]_i_1_n_2 ;
  wire \compteur_changement_reg[4]_i_1_n_3 ;
  wire \compteur_changement_reg[4]_i_1_n_4 ;
  wire \compteur_changement_reg[4]_i_1_n_5 ;
  wire \compteur_changement_reg[4]_i_1_n_6 ;
  wire \compteur_changement_reg[4]_i_1_n_7 ;
  wire \compteur_changement_reg[8]_i_1_n_0 ;
  wire \compteur_changement_reg[8]_i_1_n_1 ;
  wire \compteur_changement_reg[8]_i_1_n_2 ;
  wire \compteur_changement_reg[8]_i_1_n_3 ;
  wire \compteur_changement_reg[8]_i_1_n_4 ;
  wire \compteur_changement_reg[8]_i_1_n_5 ;
  wire \compteur_changement_reg[8]_i_1_n_6 ;
  wire \compteur_changement_reg[8]_i_1_n_7 ;
  wire \compteur_changement_reg_n_0_[0] ;
  wire \compteur_changement_reg_n_0_[1] ;
  wire \compteur_changement_reg_n_0_[2] ;
  wire \compteur_changement_reg_n_0_[3] ;
  wire \compteur_changement_reg_n_0_[4] ;
  wire \compteur_changement_reg_n_0_[5] ;
  wire \compteur_changement_reg_n_0_[6] ;
  wire i__carry_i_10_n_0;
  wire i__carry_i_9_n_0;
  wire load;
  wire [0:0]p_0_out;
  wire [6:0]p_1_in;
  wire pulse_changement;
  wire pulse_changement_i_2_n_0;
  wire pulse_changement_i_3_n_0;
  wire pulse_changement_i_4_n_0;
  wire pulse_changement_i_5_n_0;
  wire [7:0]reg_ale;
  wire reset;
  wire [0:0]\vitesse_actuelle_reg[0]_0 ;
  wire \vitesse_actuelle_reg[4]_0 ;
  wire [6:0]\vitesse_actuelle_reg[6]_0 ;
  wire [6:0]\vitesse_actuelle_reg[7]_0 ;
  wire [6:0]vitesse_aleatoire;
  wire \vitesse_aleatoire[0]_i_2_n_0 ;
  wire \vitesse_aleatoire[0]_i_3_n_0 ;
  wire \vitesse_aleatoire[1]_i_1_n_0 ;
  wire \vitesse_aleatoire[1]_i_2_n_0 ;
  wire \vitesse_aleatoire[1]_i_3_n_0 ;
  wire \vitesse_aleatoire[2]_i_1_n_0 ;
  wire \vitesse_aleatoire[3]_i_1_n_0 ;
  wire \vitesse_aleatoire[3]_i_2_n_0 ;
  wire \vitesse_aleatoire[3]_i_3_n_0 ;
  wire \vitesse_aleatoire[4]_i_1_n_0 ;
  wire \vitesse_aleatoire[4]_i_2_n_0 ;
  wire \vitesse_aleatoire[4]_i_3_n_0 ;
  wire \vitesse_aleatoire[4]_i_4_n_0 ;
  wire \vitesse_aleatoire[5]_i_1_n_0 ;
  wire \vitesse_aleatoire[5]_i_2_n_0 ;
  wire \vitesse_aleatoire[5]_i_3_n_0 ;
  wire \vitesse_aleatoire[5]_i_4_n_0 ;
  wire \vitesse_aleatoire[6]_i_1_n_0 ;
  wire \vitesse_aleatoire[6]_i_2_n_0 ;
  wire \vitesse_aleatoire[6]_i_3_n_0 ;
  wire \vitesse_aleatoire[6]_i_4_n_0 ;
  wire \vitesse_aleatoire[6]_i_5_n_0 ;
  wire \vitesse_cible_reg[1]_i_2_n_0 ;
  wire \vitesse_cible_reg[2]_i_2_n_0 ;
  wire \vitesse_cible_reg[2]_i_3_n_0 ;
  wire \vitesse_cible_reg[3]_i_3_n_0 ;
  wire \vitesse_cible_reg[3]_i_4_n_0 ;
  wire \vitesse_cible_reg[4]_i_2_n_0 ;
  wire \vitesse_cible_reg[4]_i_3_n_0 ;
  wire \vitesse_cible_reg[4]_i_4_n_0 ;
  wire \vitesse_cible_reg[5]_i_3_n_0 ;
  wire \vitesse_cible_reg[5]_i_5_n_0 ;
  wire \vitesse_cible_reg[6]_i_2_n_0 ;
  wire \vitesse_cible_reg[6]_i_3_n_0 ;
  wire \vitesse_cible_reg[6]_i_4_n_0 ;
  wire \vitesse_cible_reg[6]_i_5_n_0 ;
  wire \vitesse_cible_reg[7]_i_2_n_0 ;
  wire \vitesse_cible_reg[7]_i_3_n_0 ;
  wire \vitesse_cible_reg[7]_i_4_n_0 ;
  wire [0:0]\vitesse_cible_reg_reg[1] ;
  wire \vitesse_cible_reg_reg[3] ;
  wire \vitesse_cible_reg_reg[5] ;
  wire \vitesse_cible_reg_reg[5]_0 ;
  wire [7:0]\vitesse_cible_reg_reg[7] ;
  wire vitesse_cible_valid_interne;
  wire [3:3]NLW_L__16_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_L_carry_O_UNCONNECTED;
  wire [3:0]NLW_L_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_L_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_L_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW_compteur_changement_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_compteur_changement_reg[24]_i_1_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L__16_carry
       (.CI(1'b0),
        .CO({L__16_carry_n_0,L__16_carry_n_1,L__16_carry_n_2,L__16_carry_n_3}),
        .CYINIT(1'b1),
        .DI(reg_ale[3:0]),
        .O({L__16_carry_n_4,L__16_carry_n_5,L__16_carry_n_6,L__16_carry_n_7}),
        .S({L__16_carry_i_1_n_0,L__16_carry_i_2_n_0,L__16_carry_i_3_n_0,L__16_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L__16_carry__0
       (.CI(L__16_carry_n_0),
        .CO({NLW_L__16_carry__0_CO_UNCONNECTED[3],L__16_carry__0_n_1,L__16_carry__0_n_2,L__16_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,reg_ale[6:4]}),
        .O({L__16_carry__0_n_4,L__16_carry__0_n_5,L__16_carry__0_n_6,L__16_carry__0_n_7}),
        .S({L__16_carry__0_i_1_n_0,L__16_carry__0_i_2_n_0,L__16_carry__0_i_3_n_0,L__16_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry__0_i_1
       (.I0(L_carry__1_n_6),
        .I1(reg_ale[7]),
        .O(L__16_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry__0_i_2
       (.I0(reg_ale[6]),
        .I1(L_carry__1_n_7),
        .O(L__16_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry__0_i_3
       (.I0(reg_ale[5]),
        .I1(L_carry__1_n_6),
        .O(L__16_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry__0_i_4
       (.I0(reg_ale[4]),
        .I1(L_carry__1_n_7),
        .O(L__16_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    L__16_carry_i_1
       (.I0(reg_ale[3]),
        .O(L__16_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    L__16_carry_i_2
       (.I0(reg_ale[2]),
        .O(L__16_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry_i_3
       (.I0(reg_ale[1]),
        .I1(L_carry__1_n_6),
        .O(L__16_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L__16_carry_i_4
       (.I0(reg_ale[0]),
        .I1(L_carry__1_n_7),
        .O(L__16_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L_carry
       (.CI(1'b0),
        .CO({L_carry_n_0,L_carry_n_1,L_carry_n_2,L_carry_n_3}),
        .CYINIT(1'b0),
        .DI({reg_ale[1:0],1'b0,1'b1}),
        .O(NLW_L_carry_O_UNCONNECTED[3:0]),
        .S({L_carry_i_1_n_0,L_carry_i_2_n_0,L_carry_i_3_n_0,reg_ale[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L_carry__0
       (.CI(L_carry_n_0),
        .CO({L_carry__0_n_0,L_carry__0_n_1,L_carry__0_n_2,L_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(reg_ale[5:2]),
        .O(NLW_L_carry__0_O_UNCONNECTED[3:0]),
        .S({L_carry__0_i_1_n_0,L_carry__0_i_2_n_0,L_carry__0_i_3_n_0,L_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry__0_i_1
       (.I0(reg_ale[5]),
        .I1(reg_ale[7]),
        .O(L_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry__0_i_2
       (.I0(reg_ale[4]),
        .I1(reg_ale[6]),
        .O(L_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry__0_i_3
       (.I0(reg_ale[3]),
        .I1(reg_ale[5]),
        .O(L_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry__0_i_4
       (.I0(reg_ale[2]),
        .I1(reg_ale[4]),
        .O(L_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L_carry__1
       (.CI(L_carry__0_n_0),
        .CO({NLW_L_carry__1_CO_UNCONNECTED[3:1],L_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,reg_ale[6]}),
        .O({NLW_L_carry__1_O_UNCONNECTED[3:2],L_carry__1_n_6,L_carry__1_n_7}),
        .S({1'b0,1'b0,L_carry__1_i_1_n_0,L_carry__1_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    L_carry__1_i_1
       (.I0(reg_ale[7]),
        .O(L_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    L_carry__1_i_2
       (.I0(reg_ale[6]),
        .O(L_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry_i_1
       (.I0(reg_ale[1]),
        .I1(reg_ale[3]),
        .O(L_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L_carry_i_2
       (.I0(reg_ale[0]),
        .I1(reg_ale[2]),
        .O(L_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    L_carry_i_3
       (.I0(reg_ale[1]),
        .O(L_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[0]_i_2 
       (.I0(\compteur_changement_reg_n_0_[0] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[0]_i_3 
       (.I0(\compteur_changement_reg_n_0_[3] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[0]_i_4 
       (.I0(\compteur_changement_reg_n_0_[2] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[0]_i_5 
       (.I0(\compteur_changement_reg_n_0_[1] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \compteur_changement[0]_i_6 
       (.I0(\compteur_changement_reg_n_0_[0] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[12]_i_2 
       (.I0(compteur_changement_reg[15]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[12]_i_3 
       (.I0(compteur_changement_reg[14]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[12]_i_4 
       (.I0(compteur_changement_reg[13]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[12]_i_5 
       (.I0(compteur_changement_reg[12]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[16]_i_2 
       (.I0(compteur_changement_reg[19]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[16]_i_3 
       (.I0(compteur_changement_reg[18]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[16]_i_4 
       (.I0(compteur_changement_reg[17]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[16]_i_5 
       (.I0(compteur_changement_reg[16]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[20]_i_2 
       (.I0(compteur_changement_reg[23]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[20]_i_3 
       (.I0(compteur_changement_reg[22]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[20]_i_4 
       (.I0(compteur_changement_reg[21]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[20]_i_5 
       (.I0(compteur_changement_reg[20]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \compteur_changement[24]_i_2 
       (.I0(compteur_changement_reg[25]),
        .I1(pulse_changement_i_2_n_0),
        .O(\compteur_changement[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[24]_i_3 
       (.I0(compteur_changement_reg[24]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[4]_i_2 
       (.I0(compteur_changement_reg[7]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[4]_i_3 
       (.I0(\compteur_changement_reg_n_0_[6] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[4]_i_4 
       (.I0(\compteur_changement_reg_n_0_[5] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[4]_i_5 
       (.I0(\compteur_changement_reg_n_0_[4] ),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[8]_i_2 
       (.I0(compteur_changement_reg[11]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[8]_i_3 
       (.I0(compteur_changement_reg[10]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[8]_i_4 
       (.I0(compteur_changement_reg[9]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \compteur_changement[8]_i_5 
       (.I0(compteur_changement_reg[8]),
        .I1(pulse_changement_i_2_n_0),
        .I2(compteur_changement_reg[25]),
        .O(\compteur_changement[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[0]_i_1_n_7 ),
        .Q(\compteur_changement_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\compteur_changement_reg[0]_i_1_n_0 ,\compteur_changement_reg[0]_i_1_n_1 ,\compteur_changement_reg[0]_i_1_n_2 ,\compteur_changement_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\compteur_changement[0]_i_2_n_0 }),
        .O({\compteur_changement_reg[0]_i_1_n_4 ,\compteur_changement_reg[0]_i_1_n_5 ,\compteur_changement_reg[0]_i_1_n_6 ,\compteur_changement_reg[0]_i_1_n_7 }),
        .S({\compteur_changement[0]_i_3_n_0 ,\compteur_changement[0]_i_4_n_0 ,\compteur_changement[0]_i_5_n_0 ,\compteur_changement[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[8]_i_1_n_5 ),
        .Q(compteur_changement_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[8]_i_1_n_4 ),
        .Q(compteur_changement_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[12]_i_1_n_7 ),
        .Q(compteur_changement_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[12]_i_1 
       (.CI(\compteur_changement_reg[8]_i_1_n_0 ),
        .CO({\compteur_changement_reg[12]_i_1_n_0 ,\compteur_changement_reg[12]_i_1_n_1 ,\compteur_changement_reg[12]_i_1_n_2 ,\compteur_changement_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\compteur_changement_reg[12]_i_1_n_4 ,\compteur_changement_reg[12]_i_1_n_5 ,\compteur_changement_reg[12]_i_1_n_6 ,\compteur_changement_reg[12]_i_1_n_7 }),
        .S({\compteur_changement[12]_i_2_n_0 ,\compteur_changement[12]_i_3_n_0 ,\compteur_changement[12]_i_4_n_0 ,\compteur_changement[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[12]_i_1_n_6 ),
        .Q(compteur_changement_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[12]_i_1_n_5 ),
        .Q(compteur_changement_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[12]_i_1_n_4 ),
        .Q(compteur_changement_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[16]_i_1_n_7 ),
        .Q(compteur_changement_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[16]_i_1 
       (.CI(\compteur_changement_reg[12]_i_1_n_0 ),
        .CO({\compteur_changement_reg[16]_i_1_n_0 ,\compteur_changement_reg[16]_i_1_n_1 ,\compteur_changement_reg[16]_i_1_n_2 ,\compteur_changement_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\compteur_changement_reg[16]_i_1_n_4 ,\compteur_changement_reg[16]_i_1_n_5 ,\compteur_changement_reg[16]_i_1_n_6 ,\compteur_changement_reg[16]_i_1_n_7 }),
        .S({\compteur_changement[16]_i_2_n_0 ,\compteur_changement[16]_i_3_n_0 ,\compteur_changement[16]_i_4_n_0 ,\compteur_changement[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[16]_i_1_n_6 ),
        .Q(compteur_changement_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[16]_i_1_n_5 ),
        .Q(compteur_changement_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[16]_i_1_n_4 ),
        .Q(compteur_changement_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[0]_i_1_n_6 ),
        .Q(\compteur_changement_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[20]_i_1_n_7 ),
        .Q(compteur_changement_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[20]_i_1 
       (.CI(\compteur_changement_reg[16]_i_1_n_0 ),
        .CO({\compteur_changement_reg[20]_i_1_n_0 ,\compteur_changement_reg[20]_i_1_n_1 ,\compteur_changement_reg[20]_i_1_n_2 ,\compteur_changement_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\compteur_changement_reg[20]_i_1_n_4 ,\compteur_changement_reg[20]_i_1_n_5 ,\compteur_changement_reg[20]_i_1_n_6 ,\compteur_changement_reg[20]_i_1_n_7 }),
        .S({\compteur_changement[20]_i_2_n_0 ,\compteur_changement[20]_i_3_n_0 ,\compteur_changement[20]_i_4_n_0 ,\compteur_changement[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[20]_i_1_n_6 ),
        .Q(compteur_changement_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[20]_i_1_n_5 ),
        .Q(compteur_changement_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[20]_i_1_n_4 ),
        .Q(compteur_changement_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[24]_i_1_n_7 ),
        .Q(compteur_changement_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[24]_i_1 
       (.CI(\compteur_changement_reg[20]_i_1_n_0 ),
        .CO({\NLW_compteur_changement_reg[24]_i_1_CO_UNCONNECTED [3:1],\compteur_changement_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_compteur_changement_reg[24]_i_1_O_UNCONNECTED [3:2],\compteur_changement_reg[24]_i_1_n_6 ,\compteur_changement_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,\compteur_changement[24]_i_2_n_0 ,\compteur_changement[24]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[24]_i_1_n_6 ),
        .Q(compteur_changement_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[0]_i_1_n_5 ),
        .Q(\compteur_changement_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[0]_i_1_n_4 ),
        .Q(\compteur_changement_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[4]_i_1_n_7 ),
        .Q(\compteur_changement_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[4]_i_1 
       (.CI(\compteur_changement_reg[0]_i_1_n_0 ),
        .CO({\compteur_changement_reg[4]_i_1_n_0 ,\compteur_changement_reg[4]_i_1_n_1 ,\compteur_changement_reg[4]_i_1_n_2 ,\compteur_changement_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\compteur_changement_reg[4]_i_1_n_4 ,\compteur_changement_reg[4]_i_1_n_5 ,\compteur_changement_reg[4]_i_1_n_6 ,\compteur_changement_reg[4]_i_1_n_7 }),
        .S({\compteur_changement[4]_i_2_n_0 ,\compteur_changement[4]_i_3_n_0 ,\compteur_changement[4]_i_4_n_0 ,\compteur_changement[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[4]_i_1_n_6 ),
        .Q(\compteur_changement_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[4]_i_1_n_5 ),
        .Q(\compteur_changement_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[4]_i_1_n_4 ),
        .Q(compteur_changement_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[8]_i_1_n_7 ),
        .Q(compteur_changement_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \compteur_changement_reg[8]_i_1 
       (.CI(\compteur_changement_reg[4]_i_1_n_0 ),
        .CO({\compteur_changement_reg[8]_i_1_n_0 ,\compteur_changement_reg[8]_i_1_n_1 ,\compteur_changement_reg[8]_i_1_n_2 ,\compteur_changement_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\compteur_changement_reg[8]_i_1_n_4 ,\compteur_changement_reg[8]_i_1_n_5 ,\compteur_changement_reg[8]_i_1_n_6 ,\compteur_changement_reg[8]_i_1_n_7 }),
        .S({\compteur_changement[8]_i_2_n_0 ,\compteur_changement[8]_i_3_n_0 ,\compteur_changement[8]_i_4_n_0 ,\compteur_changement[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \compteur_changement_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\compteur_changement_reg[8]_i_1_n_6 ),
        .Q(compteur_changement_reg[9]));
  LUT2 #(
    .INIT(4'h9)) 
    difference0_carry_i_4
       (.I0(Q[0]),
        .I1(\vitesse_cible_reg_reg[7] [0]),
        .O(\vitesse_actuelle_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hE22B8222)) 
    i__carry_i_1
       (.I0(\vitesse_cible_reg_reg[7] [7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i__carry_i_9_n_0),
        .I4(\vitesse_cible_reg_reg[7] [6]),
        .O(DI[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__carry_i_10
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(i__carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h38AE208A)) 
    i__carry_i_2
       (.I0(\vitesse_cible_reg_reg[7] [5]),
        .I1(i__carry_i_10_n_0),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(\vitesse_cible_reg_reg[7] [4]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC02AAABF80002AAA)) 
    i__carry_i_3
       (.I0(\vitesse_cible_reg_reg[7] [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\vitesse_cible_reg_reg[7] [2]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry_i_5
       (.I0(Q[7]),
        .I1(\vitesse_cible_reg_reg[7] [7]),
        .I2(Q[6]),
        .I3(i__carry_i_9_n_0),
        .I4(\vitesse_cible_reg_reg[7] [6]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h90090960)) 
    i__carry_i_6
       (.I0(Q[5]),
        .I1(\vitesse_cible_reg_reg[7] [5]),
        .I2(Q[4]),
        .I3(i__carry_i_10_n_0),
        .I4(\vitesse_cible_reg_reg[7] [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    i__carry_i_7
       (.I0(Q[3]),
        .I1(\vitesse_cible_reg_reg[7] [3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\vitesse_cible_reg_reg[7] [2]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__carry_i_9
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(i__carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_changement_i_1
       (.I0(compteur_changement_reg[25]),
        .I1(pulse_changement_i_2_n_0),
        .O(load));
  LUT5 #(
    .INIT(32'h0000FF45)) 
    pulse_changement_i_2
       (.I0(compteur_changement_reg[18]),
        .I1(pulse_changement_i_3_n_0),
        .I2(compteur_changement_reg[17]),
        .I3(pulse_changement_i_4_n_0),
        .I4(compteur_changement_reg[24]),
        .O(pulse_changement_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    pulse_changement_i_3
       (.I0(pulse_changement_i_5_n_0),
        .I1(compteur_changement_reg[15]),
        .I2(compteur_changement_reg[14]),
        .I3(compteur_changement_reg[13]),
        .I4(compteur_changement_reg[12]),
        .I5(compteur_changement_reg[16]),
        .O(pulse_changement_i_3_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    pulse_changement_i_4
       (.I0(compteur_changement_reg[23]),
        .I1(compteur_changement_reg[20]),
        .I2(compteur_changement_reg[19]),
        .I3(compteur_changement_reg[22]),
        .I4(compteur_changement_reg[21]),
        .O(pulse_changement_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pulse_changement_i_5
       (.I0(compteur_changement_reg[8]),
        .I1(compteur_changement_reg[7]),
        .I2(compteur_changement_reg[9]),
        .I3(compteur_changement_reg[10]),
        .I4(compteur_changement_reg[11]),
        .O(pulse_changement_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pulse_changement_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(load),
        .Q(pulse_changement));
  LUT4 #(
    .INIT(16'h6996)) 
    \reg_ale[0]_i_1 
       (.I0(reg_ale[7]),
        .I1(reg_ale[3]),
        .I2(reg_ale[5]),
        .I3(reg_ale[4]),
        .O(p_0_out));
  FDPE #(
    .INIT(1'b1)) 
    \reg_ale_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out),
        .PRE(reset),
        .Q(reg_ale[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[0]),
        .Q(reg_ale[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[1]),
        .Q(reg_ale[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[2]),
        .Q(reg_ale[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[3]),
        .Q(reg_ale[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[4]),
        .Q(reg_ale[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[5]),
        .Q(reg_ale[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_ale_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(reg_ale[6]),
        .Q(reg_ale[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[0]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [0]),
        .I1(vitesse_aleatoire[0]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[1]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [1]),
        .I1(vitesse_aleatoire[1]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[2]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [2]),
        .I1(vitesse_aleatoire[2]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[3]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [3]),
        .I1(vitesse_aleatoire[3]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[4]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [4]),
        .I1(vitesse_aleatoire[4]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[5]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [5]),
        .I1(vitesse_aleatoire[5]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \vitesse_actuelle[6]_i_1 
       (.I0(\vitesse_actuelle_reg[6]_0 [6]),
        .I1(vitesse_aleatoire[6]),
        .I2(vitesse_cible_valid_interne),
        .O(p_1_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \vitesse_actuelle_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[1]),
        .PRE(reset),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \vitesse_actuelle_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_1_in[3]),
        .PRE(reset),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_1_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_1_in[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_1_in[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \vitesse_actuelle_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D),
        .Q(Q[7]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \vitesse_aleatoire[0]_i_1 
       (.I0(L__16_carry_n_4),
        .I1(\vitesse_aleatoire[0]_i_2_n_0 ),
        .I2(L__16_carry_n_5),
        .I3(\vitesse_aleatoire[0]_i_3_n_0 ),
        .O(L));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55555A6A)) 
    \vitesse_aleatoire[0]_i_2 
       (.I0(L__16_carry_n_7),
        .I1(L__16_carry__0_n_7),
        .I2(L__16_carry__0_n_5),
        .I3(L__16_carry__0_n_6),
        .I4(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0FF038F0)) 
    \vitesse_aleatoire[0]_i_3 
       (.I0(L__16_carry_n_6),
        .I1(L__16_carry__0_n_7),
        .I2(L__16_carry_n_7),
        .I3(L__16_carry__0_n_5),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \vitesse_aleatoire[1]_i_1 
       (.I0(L__16_carry_n_4),
        .I1(\vitesse_aleatoire[1]_i_2_n_0 ),
        .I2(L__16_carry_n_5),
        .I3(\vitesse_aleatoire[1]_i_3_n_0 ),
        .O(\vitesse_aleatoire[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AA99A999)) 
    \vitesse_aleatoire[1]_i_2 
       (.I0(L__16_carry_n_6),
        .I1(L__16_carry__0_n_4),
        .I2(L__16_carry__0_n_6),
        .I3(L__16_carry__0_n_5),
        .I4(L__16_carry__0_n_7),
        .I5(L__16_carry_n_7),
        .O(\vitesse_aleatoire[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333333CCCBC3C3)) 
    \vitesse_aleatoire[1]_i_3 
       (.I0(L__16_carry__0_n_7),
        .I1(L__16_carry_n_6),
        .I2(L__16_carry__0_n_4),
        .I3(L__16_carry__0_n_6),
        .I4(L__16_carry__0_n_5),
        .I5(L__16_carry_n_7),
        .O(\vitesse_aleatoire[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8CCCC)) 
    \vitesse_aleatoire[2]_i_1 
       (.I0(\vitesse_aleatoire[3]_i_3_n_0 ),
        .I1(L__16_carry_n_5),
        .I2(L__16_carry_n_7),
        .I3(\vitesse_aleatoire[3]_i_2_n_0 ),
        .I4(L__16_carry_n_6),
        .O(\vitesse_aleatoire[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF0FE00F0F0F0F0F)) 
    \vitesse_aleatoire[3]_i_1 
       (.I0(\vitesse_aleatoire[3]_i_2_n_0 ),
        .I1(L__16_carry_n_7),
        .I2(L__16_carry_n_4),
        .I3(L__16_carry_n_6),
        .I4(\vitesse_aleatoire[3]_i_3_n_0 ),
        .I5(L__16_carry_n_5),
        .O(\vitesse_aleatoire[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0037)) 
    \vitesse_aleatoire[3]_i_2 
       (.I0(L__16_carry__0_n_7),
        .I1(L__16_carry__0_n_5),
        .I2(L__16_carry__0_n_6),
        .I3(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000FAEA)) 
    \vitesse_aleatoire[3]_i_3 
       (.I0(L__16_carry__0_n_4),
        .I1(L__16_carry__0_n_6),
        .I2(L__16_carry__0_n_5),
        .I3(L__16_carry__0_n_7),
        .I4(L__16_carry_n_7),
        .O(\vitesse_aleatoire[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vitesse_aleatoire[4]_i_1 
       (.I0(\vitesse_aleatoire[4]_i_2_n_0 ),
        .I1(L__16_carry_n_4),
        .I2(\vitesse_aleatoire[4]_i_3_n_0 ),
        .I3(L__16_carry_n_5),
        .I4(\vitesse_aleatoire[4]_i_4_n_0 ),
        .O(\vitesse_aleatoire[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA9D)) 
    \vitesse_aleatoire[4]_i_2 
       (.I0(L__16_carry__0_n_7),
        .I1(L__16_carry__0_n_5),
        .I2(L__16_carry__0_n_6),
        .I3(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h87878787873C8C3C)) 
    \vitesse_aleatoire[4]_i_3 
       (.I0(L__16_carry_n_7),
        .I1(L__16_carry_n_6),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_5),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0FF010F0)) 
    \vitesse_aleatoire[4]_i_4 
       (.I0(L__16_carry_n_6),
        .I1(L__16_carry_n_7),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_5),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vitesse_aleatoire[5]_i_1 
       (.I0(\vitesse_aleatoire[5]_i_2_n_0 ),
        .I1(L__16_carry_n_4),
        .I2(\vitesse_aleatoire[5]_i_3_n_0 ),
        .I3(L__16_carry_n_5),
        .I4(\vitesse_aleatoire[5]_i_4_n_0 ),
        .O(\vitesse_aleatoire[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \vitesse_aleatoire[5]_i_2 
       (.I0(L__16_carry__0_n_4),
        .I1(L__16_carry__0_n_5),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_6),
        .O(\vitesse_aleatoire[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F80707F83F00C0)) 
    \vitesse_aleatoire[5]_i_3 
       (.I0(L__16_carry_n_7),
        .I1(L__16_carry_n_6),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_5),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA5B0)) 
    \vitesse_aleatoire[5]_i_4 
       (.I0(L__16_carry__0_n_7),
        .I1(L__16_carry__0_n_5),
        .I2(L__16_carry__0_n_6),
        .I3(L__16_carry__0_n_4),
        .O(\vitesse_aleatoire[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vitesse_aleatoire[6]_i_1 
       (.I0(reset),
        .O(\vitesse_aleatoire[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vitesse_aleatoire[6]_i_2 
       (.I0(\vitesse_aleatoire[6]_i_3_n_0 ),
        .I1(L__16_carry_n_4),
        .I2(\vitesse_aleatoire[6]_i_4_n_0 ),
        .I3(L__16_carry_n_5),
        .I4(\vitesse_aleatoire[6]_i_5_n_0 ),
        .O(\vitesse_aleatoire[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h01F8)) 
    \vitesse_aleatoire[6]_i_3 
       (.I0(L__16_carry__0_n_7),
        .I1(L__16_carry__0_n_6),
        .I2(L__16_carry__0_n_4),
        .I3(L__16_carry__0_n_5),
        .O(\vitesse_aleatoire[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000070FFFC0F800)) 
    \vitesse_aleatoire[6]_i_4 
       (.I0(L__16_carry_n_7),
        .I1(L__16_carry_n_6),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_4),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_5),
        .O(\vitesse_aleatoire[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000F1FFF00F000)) 
    \vitesse_aleatoire[6]_i_5 
       (.I0(L__16_carry_n_6),
        .I1(L__16_carry_n_7),
        .I2(L__16_carry__0_n_7),
        .I3(L__16_carry__0_n_4),
        .I4(L__16_carry__0_n_6),
        .I5(L__16_carry__0_n_5),
        .O(\vitesse_aleatoire[6]_i_5_n_0 ));
  FDRE \vitesse_aleatoire_reg[0] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(L),
        .Q(vitesse_aleatoire[0]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[1] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[1]_i_1_n_0 ),
        .Q(vitesse_aleatoire[1]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[2] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[2]_i_1_n_0 ),
        .Q(vitesse_aleatoire[2]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[3] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[3]_i_1_n_0 ),
        .Q(vitesse_aleatoire[3]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[4] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[4]_i_1_n_0 ),
        .Q(vitesse_aleatoire[4]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[5] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[5]_i_1_n_0 ),
        .Q(vitesse_aleatoire[5]),
        .R(1'b0));
  FDRE \vitesse_aleatoire_reg[6] 
       (.C(clk),
        .CE(\vitesse_aleatoire[6]_i_1_n_0 ),
        .D(\vitesse_aleatoire[6]_i_2_n_0 ),
        .Q(vitesse_aleatoire[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vitesse_cible_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg[1]_i_2_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h70BF7FBF408F4080)) 
    \vitesse_cible_reg[1]_i_2 
       (.I0(Q[0]),
        .I1(\vitesse_cible_reg_reg[1] ),
        .I2(\vitesse_cible_reg_reg[3] ),
        .I3(Q[1]),
        .I4(CO),
        .I5(\vitesse_cible_reg_reg[7] [1]),
        .O(\vitesse_cible_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \vitesse_cible_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg[2]_i_2_n_0 ),
        .I3(\vitesse_cible_reg_reg[3] ),
        .I4(\vitesse_cible_reg[2]_i_3_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \vitesse_cible_reg[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\vitesse_cible_reg_reg[1] ),
        .I4(\vitesse_cible_reg_reg[7] [2]),
        .O(\vitesse_cible_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \vitesse_cible_reg[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(CO),
        .I3(\vitesse_cible_reg_reg[7] [2]),
        .O(\vitesse_cible_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8B88BBB8)) 
    \vitesse_cible_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg_reg[3] ),
        .I3(\vitesse_cible_reg[3]_i_3_n_0 ),
        .I4(\vitesse_cible_reg[3]_i_4_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \vitesse_cible_reg[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(CO),
        .I4(\vitesse_cible_reg_reg[7] [3]),
        .O(\vitesse_cible_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h955500009555FFFF)) 
    \vitesse_cible_reg[3]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\vitesse_cible_reg_reg[1] ),
        .I5(\vitesse_cible_reg_reg[7] [3]),
        .O(\vitesse_cible_reg[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vitesse_cible_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg[4]_i_2_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \vitesse_cible_reg[4]_i_2 
       (.I0(\vitesse_cible_reg[4]_i_3_n_0 ),
        .I1(\vitesse_cible_reg_reg[1] ),
        .I2(\vitesse_cible_reg_reg[3] ),
        .I3(\vitesse_cible_reg[4]_i_4_n_0 ),
        .I4(CO),
        .I5(\vitesse_cible_reg_reg[7] [4]),
        .O(\vitesse_cible_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vitesse_cible_reg[4]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\vitesse_cible_reg[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \vitesse_cible_reg[4]_i_4 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\vitesse_cible_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8B88)) 
    \vitesse_cible_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg_reg[5]_0 ),
        .I3(\vitesse_cible_reg[5]_i_3_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [4]));
  LUT4 #(
    .INIT(16'hB8FF)) 
    \vitesse_cible_reg[5]_i_3 
       (.I0(\vitesse_cible_reg[5]_i_5_n_0 ),
        .I1(\vitesse_cible_reg_reg[1] ),
        .I2(\vitesse_cible_reg_reg[7] [5]),
        .I3(\vitesse_cible_reg_reg[3] ),
        .O(\vitesse_cible_reg[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vitesse_cible_reg[5]_i_4 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\vitesse_actuelle_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vitesse_cible_reg[5]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\vitesse_cible_reg[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \vitesse_cible_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(\vitesse_cible_reg_reg[5] ),
        .I2(\vitesse_cible_reg[6]_i_2_n_0 ),
        .O(\vitesse_actuelle_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hBFB0BFBF8F808080)) 
    \vitesse_cible_reg[6]_i_2 
       (.I0(\vitesse_cible_reg[6]_i_3_n_0 ),
        .I1(\vitesse_cible_reg_reg[1] ),
        .I2(\vitesse_cible_reg_reg[3] ),
        .I3(\vitesse_cible_reg[6]_i_4_n_0 ),
        .I4(CO),
        .I5(\vitesse_cible_reg_reg[7] [6]),
        .O(\vitesse_cible_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \vitesse_cible_reg[6]_i_3 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(\vitesse_cible_reg[6]_i_5_n_0 ),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\vitesse_cible_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \vitesse_cible_reg[6]_i_4 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\vitesse_cible_reg[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vitesse_cible_reg[6]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\vitesse_cible_reg[6]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF0EE)) 
    \vitesse_cible_reg[7]_i_1 
       (.I0(\vitesse_cible_reg[7]_i_2_n_0 ),
        .I1(\vitesse_cible_reg[7]_i_3_n_0 ),
        .I2(Q[7]),
        .I3(\vitesse_cible_reg_reg[5] ),
        .O(\vitesse_actuelle_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'h000000009A9AFF00)) 
    \vitesse_cible_reg[7]_i_2 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\vitesse_cible_reg[7]_i_4_n_0 ),
        .I3(\vitesse_cible_reg_reg[7] [7]),
        .I4(CO),
        .I5(\vitesse_cible_reg_reg[3] ),
        .O(\vitesse_cible_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A6AFF0000000000)) 
    \vitesse_cible_reg[7]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(i__carry_i_9_n_0),
        .I3(\vitesse_cible_reg_reg[7] [7]),
        .I4(\vitesse_cible_reg_reg[1] ),
        .I5(\vitesse_cible_reg_reg[3] ),
        .O(\vitesse_cible_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \vitesse_cible_reg[7]_i_4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\vitesse_cible_reg[7]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "systeme_regulation_vitesse" *) 
module HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse
   (Q,
    clk,
    reset,
    vitesse_panneau_valid,
    vitesse_panneau_camera);
  output [7:0]Q;
  input clk;
  input reset;
  input vitesse_panneau_valid;
  input [7:0]vitesse_panneau_camera;

  wire [7:0]Q;
  wire U_COMPARATEUR_n_11;
  wire U_COMPARATEUR_n_19;
  wire U_COMPARATEUR_n_20;
  wire U_COMPARATEUR_n_21;
  wire U_COMPARATEUR_n_22;
  wire U_GENERATEUR_n_17;
  wire U_GENERATEUR_n_18;
  wire U_GENERATEUR_n_19;
  wire U_GENERATEUR_n_20;
  wire U_GENERATEUR_n_21;
  wire U_GENERATEUR_n_22;
  wire U_GENERATEUR_n_23;
  wire U_GENERATEUR_n_9;
  wire clk;
  wire pulse_changement;
  wire reset;
  wire [6:0]vitesse_cible_reg;
  wire vitesse_cible_reg1;
  wire vitesse_cible_reg10_in;
  wire [7:1]vitesse_cible_reg_0;
  wire vitesse_cible_valid_interne;
  wire [7:0]vitesse_panneau_camera;
  wire [7:0]vitesse_panneau_reg;
  wire vitesse_panneau_valid;

  HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse U_COMPARATEUR
       (.CO(vitesse_cible_reg1),
        .D(U_COMPARATEUR_n_11),
        .DI({U_GENERATEUR_n_17,U_GENERATEUR_n_18,U_GENERATEUR_n_19}),
        .E(U_COMPARATEUR_n_22),
        .Q(vitesse_panneau_reg),
        .S({U_GENERATEUR_n_20,U_GENERATEUR_n_21,U_GENERATEUR_n_22}),
        .clk(clk),
        .\difference_reg[0]_0 (U_COMPARATEUR_n_19),
        .\difference_reg[3]_0 (U_GENERATEUR_n_9),
        .\difference_reg[7]_0 (Q),
        .\difference_reg[8]_0 (U_COMPARATEUR_n_20),
        .pulse_changement(pulse_changement),
        .reset(reset),
        .\vitesse_actuelle_reg[5] (U_COMPARATEUR_n_21),
        .\vitesse_cible_reg_reg[5]_0 (U_GENERATEUR_n_23),
        .\vitesse_cible_reg_reg[6]_0 (vitesse_cible_reg),
        .\vitesse_cible_reg_reg[7]_0 (vitesse_cible_reg_0),
        .vitesse_cible_valid_interne(vitesse_cible_valid_interne),
        .vitesse_panneau_camera(vitesse_panneau_camera),
        .\vitesse_panneau_reg_reg[7]_0 (vitesse_cible_reg10_in),
        .vitesse_panneau_valid(vitesse_panneau_valid));
  HDMI_bd_systeme_regulation_v_0_0_gen_vitesse U_GENERATEUR
       (.CO(vitesse_cible_reg1),
        .D(U_COMPARATEUR_n_11),
        .DI({U_GENERATEUR_n_17,U_GENERATEUR_n_18,U_GENERATEUR_n_19}),
        .E(U_COMPARATEUR_n_22),
        .Q(Q),
        .S({U_GENERATEUR_n_20,U_GENERATEUR_n_21,U_GENERATEUR_n_22}),
        .clk(clk),
        .pulse_changement(pulse_changement),
        .reset(reset),
        .\vitesse_actuelle_reg[0]_0 (U_GENERATEUR_n_9),
        .\vitesse_actuelle_reg[4]_0 (U_GENERATEUR_n_23),
        .\vitesse_actuelle_reg[6]_0 (vitesse_cible_reg),
        .\vitesse_actuelle_reg[7]_0 (vitesse_cible_reg_0),
        .\vitesse_cible_reg_reg[1] (vitesse_cible_reg10_in),
        .\vitesse_cible_reg_reg[3] (U_COMPARATEUR_n_20),
        .\vitesse_cible_reg_reg[5] (U_COMPARATEUR_n_19),
        .\vitesse_cible_reg_reg[5]_0 (U_COMPARATEUR_n_21),
        .\vitesse_cible_reg_reg[7] (vitesse_panneau_reg),
        .vitesse_cible_valid_interne(vitesse_cible_valid_interne));
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
