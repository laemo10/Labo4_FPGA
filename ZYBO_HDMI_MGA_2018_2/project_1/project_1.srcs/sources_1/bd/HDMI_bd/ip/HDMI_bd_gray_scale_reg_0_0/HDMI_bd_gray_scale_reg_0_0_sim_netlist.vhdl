-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Nov 28 00:51:20 2025
-- Host        : pcetu-139 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_gray_scale_reg_0_0/HDMI_bd_gray_scale_reg_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_gray_scale_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_gray_scale_reg_0_0_gray_scale_reg is
  port (
    grid_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rdy : in STD_LOGIC;
    grid_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_gray_scale_reg_0_0_gray_scale_reg : entity is "gray_scale_reg";
end HDMI_bd_gray_scale_reg_0_0_gray_scale_reg;

architecture STRUCTURE of HDMI_bd_gray_scale_reg_0_0_gray_scale_reg is
begin
\grid_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(0),
      Q => grid_out(0)
    );
\grid_out_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(100),
      Q => grid_out(100)
    );
\grid_out_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(101),
      Q => grid_out(101)
    );
\grid_out_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(102),
      Q => grid_out(102)
    );
\grid_out_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(103),
      Q => grid_out(103)
    );
\grid_out_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(104),
      Q => grid_out(104)
    );
\grid_out_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(105),
      Q => grid_out(105)
    );
\grid_out_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(106),
      Q => grid_out(106)
    );
\grid_out_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(107),
      Q => grid_out(107)
    );
\grid_out_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(108),
      Q => grid_out(108)
    );
\grid_out_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(109),
      Q => grid_out(109)
    );
\grid_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(10),
      Q => grid_out(10)
    );
\grid_out_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(110),
      Q => grid_out(110)
    );
\grid_out_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(111),
      Q => grid_out(111)
    );
\grid_out_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(112),
      Q => grid_out(112)
    );
\grid_out_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(113),
      Q => grid_out(113)
    );
\grid_out_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(114),
      Q => grid_out(114)
    );
\grid_out_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(115),
      Q => grid_out(115)
    );
\grid_out_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(116),
      Q => grid_out(116)
    );
\grid_out_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(117),
      Q => grid_out(117)
    );
\grid_out_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(118),
      Q => grid_out(118)
    );
\grid_out_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(119),
      Q => grid_out(119)
    );
\grid_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(11),
      Q => grid_out(11)
    );
\grid_out_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(120),
      Q => grid_out(120)
    );
\grid_out_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(121),
      Q => grid_out(121)
    );
\grid_out_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(122),
      Q => grid_out(122)
    );
\grid_out_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(123),
      Q => grid_out(123)
    );
\grid_out_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(124),
      Q => grid_out(124)
    );
\grid_out_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(125),
      Q => grid_out(125)
    );
\grid_out_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(126),
      Q => grid_out(126)
    );
\grid_out_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(127),
      Q => grid_out(127)
    );
\grid_out_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(128),
      Q => grid_out(128)
    );
\grid_out_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(129),
      Q => grid_out(129)
    );
\grid_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(12),
      Q => grid_out(12)
    );
\grid_out_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(130),
      Q => grid_out(130)
    );
\grid_out_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(131),
      Q => grid_out(131)
    );
\grid_out_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(132),
      Q => grid_out(132)
    );
\grid_out_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(133),
      Q => grid_out(133)
    );
\grid_out_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(134),
      Q => grid_out(134)
    );
\grid_out_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(135),
      Q => grid_out(135)
    );
\grid_out_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(136),
      Q => grid_out(136)
    );
\grid_out_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(137),
      Q => grid_out(137)
    );
\grid_out_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(138),
      Q => grid_out(138)
    );
\grid_out_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(139),
      Q => grid_out(139)
    );
\grid_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(13),
      Q => grid_out(13)
    );
\grid_out_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(140),
      Q => grid_out(140)
    );
\grid_out_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(141),
      Q => grid_out(141)
    );
\grid_out_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(142),
      Q => grid_out(142)
    );
\grid_out_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(143),
      Q => grid_out(143)
    );
\grid_out_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(144),
      Q => grid_out(144)
    );
\grid_out_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(145),
      Q => grid_out(145)
    );
\grid_out_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(146),
      Q => grid_out(146)
    );
\grid_out_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(147),
      Q => grid_out(147)
    );
\grid_out_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(148),
      Q => grid_out(148)
    );
\grid_out_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(149),
      Q => grid_out(149)
    );
\grid_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(14),
      Q => grid_out(14)
    );
\grid_out_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(150),
      Q => grid_out(150)
    );
\grid_out_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(151),
      Q => grid_out(151)
    );
\grid_out_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(152),
      Q => grid_out(152)
    );
\grid_out_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(153),
      Q => grid_out(153)
    );
\grid_out_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(154),
      Q => grid_out(154)
    );
\grid_out_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(155),
      Q => grid_out(155)
    );
\grid_out_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(156),
      Q => grid_out(156)
    );
\grid_out_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(157),
      Q => grid_out(157)
    );
\grid_out_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(158),
      Q => grid_out(158)
    );
\grid_out_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(159),
      Q => grid_out(159)
    );
\grid_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(15),
      Q => grid_out(15)
    );
\grid_out_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(160),
      Q => grid_out(160)
    );
\grid_out_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(161),
      Q => grid_out(161)
    );
\grid_out_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(162),
      Q => grid_out(162)
    );
\grid_out_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(163),
      Q => grid_out(163)
    );
\grid_out_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(164),
      Q => grid_out(164)
    );
\grid_out_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(165),
      Q => grid_out(165)
    );
\grid_out_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(166),
      Q => grid_out(166)
    );
\grid_out_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(167),
      Q => grid_out(167)
    );
\grid_out_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(168),
      Q => grid_out(168)
    );
\grid_out_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(169),
      Q => grid_out(169)
    );
\grid_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(16),
      Q => grid_out(16)
    );
\grid_out_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(170),
      Q => grid_out(170)
    );
\grid_out_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(171),
      Q => grid_out(171)
    );
\grid_out_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(172),
      Q => grid_out(172)
    );
\grid_out_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(173),
      Q => grid_out(173)
    );
\grid_out_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(174),
      Q => grid_out(174)
    );
\grid_out_reg[175]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(175),
      Q => grid_out(175)
    );
\grid_out_reg[176]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(176),
      Q => grid_out(176)
    );
\grid_out_reg[177]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(177),
      Q => grid_out(177)
    );
\grid_out_reg[178]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(178),
      Q => grid_out(178)
    );
\grid_out_reg[179]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(179),
      Q => grid_out(179)
    );
\grid_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(17),
      Q => grid_out(17)
    );
\grid_out_reg[180]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(180),
      Q => grid_out(180)
    );
\grid_out_reg[181]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(181),
      Q => grid_out(181)
    );
\grid_out_reg[182]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(182),
      Q => grid_out(182)
    );
\grid_out_reg[183]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(183),
      Q => grid_out(183)
    );
\grid_out_reg[184]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(184),
      Q => grid_out(184)
    );
\grid_out_reg[185]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(185),
      Q => grid_out(185)
    );
\grid_out_reg[186]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(186),
      Q => grid_out(186)
    );
\grid_out_reg[187]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(187),
      Q => grid_out(187)
    );
\grid_out_reg[188]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(188),
      Q => grid_out(188)
    );
\grid_out_reg[189]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(189),
      Q => grid_out(189)
    );
\grid_out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(18),
      Q => grid_out(18)
    );
\grid_out_reg[190]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(190),
      Q => grid_out(190)
    );
\grid_out_reg[191]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(191),
      Q => grid_out(191)
    );
\grid_out_reg[192]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(192),
      Q => grid_out(192)
    );
\grid_out_reg[193]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(193),
      Q => grid_out(193)
    );
\grid_out_reg[194]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(194),
      Q => grid_out(194)
    );
\grid_out_reg[195]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(195),
      Q => grid_out(195)
    );
\grid_out_reg[196]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(196),
      Q => grid_out(196)
    );
\grid_out_reg[197]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(197),
      Q => grid_out(197)
    );
\grid_out_reg[198]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(198),
      Q => grid_out(198)
    );
\grid_out_reg[199]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(199),
      Q => grid_out(199)
    );
\grid_out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(19),
      Q => grid_out(19)
    );
\grid_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(1),
      Q => grid_out(1)
    );
\grid_out_reg[200]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(200),
      Q => grid_out(200)
    );
\grid_out_reg[201]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(201),
      Q => grid_out(201)
    );
\grid_out_reg[202]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(202),
      Q => grid_out(202)
    );
\grid_out_reg[203]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(203),
      Q => grid_out(203)
    );
\grid_out_reg[204]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(204),
      Q => grid_out(204)
    );
\grid_out_reg[205]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(205),
      Q => grid_out(205)
    );
\grid_out_reg[206]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(206),
      Q => grid_out(206)
    );
\grid_out_reg[207]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(207),
      Q => grid_out(207)
    );
\grid_out_reg[208]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(208),
      Q => grid_out(208)
    );
\grid_out_reg[209]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(209),
      Q => grid_out(209)
    );
\grid_out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(20),
      Q => grid_out(20)
    );
\grid_out_reg[210]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(210),
      Q => grid_out(210)
    );
\grid_out_reg[211]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(211),
      Q => grid_out(211)
    );
\grid_out_reg[212]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(212),
      Q => grid_out(212)
    );
\grid_out_reg[213]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(213),
      Q => grid_out(213)
    );
\grid_out_reg[214]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(214),
      Q => grid_out(214)
    );
\grid_out_reg[215]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(215),
      Q => grid_out(215)
    );
\grid_out_reg[216]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(216),
      Q => grid_out(216)
    );
\grid_out_reg[217]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(217),
      Q => grid_out(217)
    );
\grid_out_reg[218]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(218),
      Q => grid_out(218)
    );
\grid_out_reg[219]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(219),
      Q => grid_out(219)
    );
\grid_out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(21),
      Q => grid_out(21)
    );
\grid_out_reg[220]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(220),
      Q => grid_out(220)
    );
\grid_out_reg[221]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(221),
      Q => grid_out(221)
    );
\grid_out_reg[222]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(222),
      Q => grid_out(222)
    );
\grid_out_reg[223]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(223),
      Q => grid_out(223)
    );
\grid_out_reg[224]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(224),
      Q => grid_out(224)
    );
\grid_out_reg[225]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(225),
      Q => grid_out(225)
    );
\grid_out_reg[226]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(226),
      Q => grid_out(226)
    );
\grid_out_reg[227]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(227),
      Q => grid_out(227)
    );
\grid_out_reg[228]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(228),
      Q => grid_out(228)
    );
\grid_out_reg[229]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(229),
      Q => grid_out(229)
    );
\grid_out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(22),
      Q => grid_out(22)
    );
\grid_out_reg[230]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(230),
      Q => grid_out(230)
    );
\grid_out_reg[231]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(231),
      Q => grid_out(231)
    );
\grid_out_reg[232]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(232),
      Q => grid_out(232)
    );
\grid_out_reg[233]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(233),
      Q => grid_out(233)
    );
\grid_out_reg[234]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(234),
      Q => grid_out(234)
    );
\grid_out_reg[235]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(235),
      Q => grid_out(235)
    );
\grid_out_reg[236]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(236),
      Q => grid_out(236)
    );
\grid_out_reg[237]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(237),
      Q => grid_out(237)
    );
\grid_out_reg[238]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(238),
      Q => grid_out(238)
    );
\grid_out_reg[239]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(239),
      Q => grid_out(239)
    );
\grid_out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(23),
      Q => grid_out(23)
    );
\grid_out_reg[240]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(240),
      Q => grid_out(240)
    );
\grid_out_reg[241]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(241),
      Q => grid_out(241)
    );
\grid_out_reg[242]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(242),
      Q => grid_out(242)
    );
\grid_out_reg[243]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(243),
      Q => grid_out(243)
    );
\grid_out_reg[244]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(244),
      Q => grid_out(244)
    );
\grid_out_reg[245]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(245),
      Q => grid_out(245)
    );
\grid_out_reg[246]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(246),
      Q => grid_out(246)
    );
\grid_out_reg[247]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(247),
      Q => grid_out(247)
    );
\grid_out_reg[248]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(248),
      Q => grid_out(248)
    );
\grid_out_reg[249]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(249),
      Q => grid_out(249)
    );
\grid_out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(24),
      Q => grid_out(24)
    );
\grid_out_reg[250]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(250),
      Q => grid_out(250)
    );
\grid_out_reg[251]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(251),
      Q => grid_out(251)
    );
\grid_out_reg[252]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(252),
      Q => grid_out(252)
    );
\grid_out_reg[253]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(253),
      Q => grid_out(253)
    );
\grid_out_reg[254]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(254),
      Q => grid_out(254)
    );
\grid_out_reg[255]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(255),
      Q => grid_out(255)
    );
\grid_out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(25),
      Q => grid_out(25)
    );
\grid_out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(26),
      Q => grid_out(26)
    );
\grid_out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(27),
      Q => grid_out(27)
    );
\grid_out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(28),
      Q => grid_out(28)
    );
\grid_out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(29),
      Q => grid_out(29)
    );
\grid_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(2),
      Q => grid_out(2)
    );
\grid_out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(30),
      Q => grid_out(30)
    );
\grid_out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(31),
      Q => grid_out(31)
    );
\grid_out_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(32),
      Q => grid_out(32)
    );
\grid_out_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(33),
      Q => grid_out(33)
    );
\grid_out_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(34),
      Q => grid_out(34)
    );
\grid_out_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(35),
      Q => grid_out(35)
    );
\grid_out_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(36),
      Q => grid_out(36)
    );
\grid_out_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(37),
      Q => grid_out(37)
    );
\grid_out_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(38),
      Q => grid_out(38)
    );
\grid_out_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(39),
      Q => grid_out(39)
    );
\grid_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(3),
      Q => grid_out(3)
    );
\grid_out_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(40),
      Q => grid_out(40)
    );
\grid_out_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(41),
      Q => grid_out(41)
    );
\grid_out_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(42),
      Q => grid_out(42)
    );
\grid_out_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(43),
      Q => grid_out(43)
    );
\grid_out_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(44),
      Q => grid_out(44)
    );
\grid_out_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(45),
      Q => grid_out(45)
    );
\grid_out_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(46),
      Q => grid_out(46)
    );
\grid_out_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(47),
      Q => grid_out(47)
    );
\grid_out_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(48),
      Q => grid_out(48)
    );
\grid_out_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(49),
      Q => grid_out(49)
    );
\grid_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(4),
      Q => grid_out(4)
    );
\grid_out_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(50),
      Q => grid_out(50)
    );
\grid_out_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(51),
      Q => grid_out(51)
    );
\grid_out_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(52),
      Q => grid_out(52)
    );
\grid_out_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(53),
      Q => grid_out(53)
    );
\grid_out_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(54),
      Q => grid_out(54)
    );
\grid_out_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(55),
      Q => grid_out(55)
    );
\grid_out_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(56),
      Q => grid_out(56)
    );
\grid_out_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(57),
      Q => grid_out(57)
    );
\grid_out_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(58),
      Q => grid_out(58)
    );
\grid_out_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(59),
      Q => grid_out(59)
    );
\grid_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(5),
      Q => grid_out(5)
    );
\grid_out_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(60),
      Q => grid_out(60)
    );
\grid_out_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(61),
      Q => grid_out(61)
    );
\grid_out_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(62),
      Q => grid_out(62)
    );
\grid_out_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(63),
      Q => grid_out(63)
    );
\grid_out_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(64),
      Q => grid_out(64)
    );
\grid_out_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(65),
      Q => grid_out(65)
    );
\grid_out_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(66),
      Q => grid_out(66)
    );
\grid_out_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(67),
      Q => grid_out(67)
    );
\grid_out_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(68),
      Q => grid_out(68)
    );
\grid_out_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(69),
      Q => grid_out(69)
    );
\grid_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(6),
      Q => grid_out(6)
    );
\grid_out_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(70),
      Q => grid_out(70)
    );
\grid_out_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(71),
      Q => grid_out(71)
    );
\grid_out_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(72),
      Q => grid_out(72)
    );
\grid_out_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(73),
      Q => grid_out(73)
    );
\grid_out_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(74),
      Q => grid_out(74)
    );
\grid_out_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(75),
      Q => grid_out(75)
    );
\grid_out_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(76),
      Q => grid_out(76)
    );
\grid_out_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(77),
      Q => grid_out(77)
    );
\grid_out_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(78),
      Q => grid_out(78)
    );
\grid_out_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(79),
      Q => grid_out(79)
    );
\grid_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(7),
      Q => grid_out(7)
    );
\grid_out_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(80),
      Q => grid_out(80)
    );
\grid_out_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(81),
      Q => grid_out(81)
    );
\grid_out_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(82),
      Q => grid_out(82)
    );
\grid_out_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(83),
      Q => grid_out(83)
    );
\grid_out_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(84),
      Q => grid_out(84)
    );
\grid_out_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(85),
      Q => grid_out(85)
    );
\grid_out_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(86),
      Q => grid_out(86)
    );
\grid_out_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(87),
      Q => grid_out(87)
    );
\grid_out_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(88),
      Q => grid_out(88)
    );
\grid_out_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(89),
      Q => grid_out(89)
    );
\grid_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(8),
      Q => grid_out(8)
    );
\grid_out_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(90),
      Q => grid_out(90)
    );
\grid_out_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(91),
      Q => grid_out(91)
    );
\grid_out_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(92),
      Q => grid_out(92)
    );
\grid_out_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(93),
      Q => grid_out(93)
    );
\grid_out_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(94),
      Q => grid_out(94)
    );
\grid_out_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(95),
      Q => grid_out(95)
    );
\grid_out_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(96),
      Q => grid_out(96)
    );
\grid_out_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(97),
      Q => grid_out(97)
    );
\grid_out_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(98),
      Q => grid_out(98)
    );
\grid_out_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(99),
      Q => grid_out(99)
    );
\grid_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => rdy,
      CLR => rst,
      D => grid_in(9),
      Q => grid_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_gray_scale_reg_0_0 is
  port (
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rdy : in STD_LOGIC;
    grid_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    grid_out : out STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_gray_scale_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_gray_scale_reg_0_0 : entity is "HDMI_bd_gray_scale_reg_0_0,gray_scale_reg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_gray_scale_reg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_gray_scale_reg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_gray_scale_reg_0_0 : entity is "gray_scale_reg,Vivado 2023.1";
end HDMI_bd_gray_scale_reg_0_0;

architecture STRUCTURE of HDMI_bd_gray_scale_reg_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.HDMI_bd_gray_scale_reg_0_0_gray_scale_reg
     port map (
      clk => clk,
      grid_in(255 downto 0) => grid_in(255 downto 0),
      grid_out(255 downto 0) => grid_out(255 downto 0),
      rdy => rdy,
      rst => rst
    );
end STRUCTURE;
