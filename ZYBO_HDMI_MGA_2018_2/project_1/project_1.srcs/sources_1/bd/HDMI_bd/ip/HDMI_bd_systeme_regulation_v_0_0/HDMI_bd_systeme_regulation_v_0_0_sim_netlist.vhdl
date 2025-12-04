-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Dec  4 11:21:33 2025
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/laemo10/Desktop/Labo4_FPGA/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_systeme_regulation_v_0_0/HDMI_bd_systeme_regulation_v_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_systeme_regulation_v_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse is
  port (
    vitesse_cible_valid_interne : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \vitesse_panneau_reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \vitesse_cible_reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \difference_reg[0]_0\ : out STD_LOGIC;
    \difference_reg[8]_0\ : out STD_LOGIC;
    \vitesse_actuelle_reg[5]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \difference_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \difference_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \vitesse_cible_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \vitesse_cible_reg_reg[5]_0\ : in STD_LOGIC;
    pulse_changement : in STD_LOGIC;
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse : entity is "comparateur_regulateur_vitesse";
end HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal compteur_ajustement : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \compteur_ajustement[0]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[10]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[11]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[12]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[13]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[14]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[15]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[16]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[16]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[16]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[1]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[2]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[3]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[4]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[5]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[6]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[7]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[8]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_ajustement[9]_i_1_n_0\ : STD_LOGIC;
  signal difference : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal difference0 : STD_LOGIC;
  signal difference00_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \difference0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \difference0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \difference0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \difference0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \difference0_carry__0_n_0\ : STD_LOGIC;
  signal \difference0_carry__0_n_1\ : STD_LOGIC;
  signal \difference0_carry__0_n_2\ : STD_LOGIC;
  signal \difference0_carry__0_n_3\ : STD_LOGIC;
  signal difference0_carry_i_1_n_0 : STD_LOGIC;
  signal difference0_carry_i_2_n_0 : STD_LOGIC;
  signal difference0_carry_i_3_n_0 : STD_LOGIC;
  signal difference0_carry_n_0 : STD_LOGIC;
  signal difference0_carry_n_1 : STD_LOGIC;
  signal difference0_carry_n_2 : STD_LOGIC;
  signal difference0_carry_n_3 : STD_LOGIC;
  signal \^difference_reg[0]_0\ : STD_LOGIC;
  signal \^difference_reg[8]_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal pulse_ajustement : STD_LOGIC;
  signal pulse_ajustement_i_1_n_0 : STD_LOGIC;
  signal vitesse_cible_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal vitesse_cible_reg1_carry_i_10_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_6_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_7_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_8_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_i_9_n_0 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_n_1 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_n_2 : STD_LOGIC;
  signal vitesse_cible_reg1_carry_n_3 : STD_LOGIC;
  signal \vitesse_cible_reg1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \vitesse_cible_reg1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \vitesse_cible_reg1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \vitesse_cible_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal vitesse_cible_reg_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vitesse_cible_valid_i_1_n_0 : STD_LOGIC;
  signal vitesse_cible_valid_i_3_n_0 : STD_LOGIC;
  signal vitesse_cible_valid_i_4_n_0 : STD_LOGIC;
  signal vitesse_cible_valid_i_5_n_0 : STD_LOGIC;
  signal vitesse_cible_valid_i_6_n_0 : STD_LOGIC;
  signal vitesse_cible_valid_i_7_n_0 : STD_LOGIC;
  signal \^vitesse_cible_valid_interne\ : STD_LOGIC;
  signal \^vitesse_panneau_reg_reg[7]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_difference0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_difference0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vitesse_cible_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vitesse_cible_reg1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \compteur_ajustement[0]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of pulse_ajustement_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vitesse_actuelle[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vitesse_actuelle[7]_i_2\ : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of vitesse_cible_reg1_carry : label is 11;
  attribute SOFT_HLUTNM of vitesse_cible_reg1_carry_i_10 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of vitesse_cible_reg1_carry_i_9 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD of \vitesse_cible_reg1_inferred__0/i__carry\ : label is 11;
begin
  CO(0) <= \^co\(0);
  Q(7 downto 0) <= \^q\(7 downto 0);
  \difference_reg[0]_0\ <= \^difference_reg[0]_0\;
  \difference_reg[8]_0\ <= \^difference_reg[8]_0\;
  vitesse_cible_valid_interne <= \^vitesse_cible_valid_interne\;
  \vitesse_panneau_reg_reg[7]_0\(0) <= \^vitesse_panneau_reg_reg[7]_0\(0);
\compteur_ajustement[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001FFF"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => compteur_ajustement(0),
      O => \compteur_ajustement[0]_i_1_n_0\
    );
\compteur_ajustement[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(10),
      O => \compteur_ajustement[10]_i_1_n_0\
    );
\compteur_ajustement[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(11),
      O => \compteur_ajustement[11]_i_1_n_0\
    );
\compteur_ajustement[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(12),
      O => \compteur_ajustement[12]_i_1_n_0\
    );
\compteur_ajustement[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(13),
      O => \compteur_ajustement[13]_i_1_n_0\
    );
\compteur_ajustement[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(14),
      O => \compteur_ajustement[14]_i_1_n_0\
    );
\compteur_ajustement[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(15),
      O => \compteur_ajustement[15]_i_1_n_0\
    );
\compteur_ajustement[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(16),
      O => \compteur_ajustement[16]_i_1_n_0\
    );
\compteur_ajustement[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => compteur_ajustement(13),
      I1 => compteur_ajustement(14),
      I2 => compteur_ajustement(11),
      I3 => compteur_ajustement(12),
      O => \compteur_ajustement[16]_i_2_n_0\
    );
\compteur_ajustement[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => compteur_ajustement(7),
      I1 => compteur_ajustement(6),
      I2 => compteur_ajustement(5),
      I3 => compteur_ajustement(8),
      I4 => compteur_ajustement(9),
      I5 => compteur_ajustement(10),
      O => \compteur_ajustement[16]_i_3_n_0\
    );
\compteur_ajustement[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(1),
      O => \compteur_ajustement[1]_i_1_n_0\
    );
\compteur_ajustement[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(2),
      O => \compteur_ajustement[2]_i_1_n_0\
    );
\compteur_ajustement[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(3),
      O => \compteur_ajustement[3]_i_1_n_0\
    );
\compteur_ajustement[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(4),
      O => \compteur_ajustement[4]_i_1_n_0\
    );
\compteur_ajustement[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(5),
      O => \compteur_ajustement[5]_i_1_n_0\
    );
\compteur_ajustement[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(6),
      O => \compteur_ajustement[6]_i_1_n_0\
    );
\compteur_ajustement[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(7),
      O => \compteur_ajustement[7]_i_1_n_0\
    );
\compteur_ajustement[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(8),
      O => \compteur_ajustement[8]_i_1_n_0\
    );
\compteur_ajustement[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF0000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      I4 => plusOp(9),
      O => \compteur_ajustement[9]_i_1_n_0\
    );
\compteur_ajustement_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[0]_i_1_n_0\,
      Q => compteur_ajustement(0)
    );
\compteur_ajustement_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[10]_i_1_n_0\,
      Q => compteur_ajustement(10)
    );
\compteur_ajustement_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[11]_i_1_n_0\,
      Q => compteur_ajustement(11)
    );
\compteur_ajustement_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[12]_i_1_n_0\,
      Q => compteur_ajustement(12)
    );
\compteur_ajustement_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[13]_i_1_n_0\,
      Q => compteur_ajustement(13)
    );
\compteur_ajustement_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[14]_i_1_n_0\,
      Q => compteur_ajustement(14)
    );
\compteur_ajustement_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[15]_i_1_n_0\,
      Q => compteur_ajustement(15)
    );
\compteur_ajustement_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[16]_i_1_n_0\,
      Q => compteur_ajustement(16)
    );
\compteur_ajustement_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[1]_i_1_n_0\,
      Q => compteur_ajustement(1)
    );
\compteur_ajustement_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[2]_i_1_n_0\,
      Q => compteur_ajustement(2)
    );
\compteur_ajustement_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[3]_i_1_n_0\,
      Q => compteur_ajustement(3)
    );
\compteur_ajustement_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[4]_i_1_n_0\,
      Q => compteur_ajustement(4)
    );
\compteur_ajustement_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[5]_i_1_n_0\,
      Q => compteur_ajustement(5)
    );
\compteur_ajustement_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[6]_i_1_n_0\,
      Q => compteur_ajustement(6)
    );
\compteur_ajustement_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[7]_i_1_n_0\,
      Q => compteur_ajustement(7)
    );
\compteur_ajustement_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[8]_i_1_n_0\,
      Q => compteur_ajustement(8)
    );
\compteur_ajustement_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_ajustement[9]_i_1_n_0\,
      Q => compteur_ajustement(9)
    );
difference0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => difference0_carry_n_0,
      CO(2) => difference0_carry_n_1,
      CO(1) => difference0_carry_n_2,
      CO(0) => difference0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => difference00_in(3 downto 0),
      S(3) => difference0_carry_i_1_n_0,
      S(2) => difference0_carry_i_2_n_0,
      S(1) => difference0_carry_i_3_n_0,
      S(0) => \difference_reg[3]_0\(0)
    );
\difference0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => difference0_carry_n_0,
      CO(3) => \difference0_carry__0_n_0\,
      CO(2) => \difference0_carry__0_n_1\,
      CO(1) => \difference0_carry__0_n_2\,
      CO(0) => \difference0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => difference00_in(7 downto 4),
      S(3) => \difference0_carry__0_i_1_n_0\,
      S(2) => \difference0_carry__0_i_2_n_0\,
      S(1) => \difference0_carry__0_i_3_n_0\,
      S(0) => \difference0_carry__0_i_4_n_0\
    );
\difference0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \difference_reg[7]_0\(7),
      O => \difference0_carry__0_i_1_n_0\
    );
\difference0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \difference_reg[7]_0\(6),
      O => \difference0_carry__0_i_2_n_0\
    );
\difference0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \difference_reg[7]_0\(5),
      O => \difference0_carry__0_i_3_n_0\
    );
\difference0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \difference_reg[7]_0\(4),
      O => \difference0_carry__0_i_4_n_0\
    );
\difference0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \difference0_carry__0_n_0\,
      CO(3 downto 0) => \NLW_difference0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_difference0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => difference00_in(8),
      S(3 downto 0) => B"0001"
    );
difference0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \difference_reg[7]_0\(3),
      O => difference0_carry_i_1_n_0
    );
difference0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \difference_reg[7]_0\(2),
      O => difference0_carry_i_2_n_0
    );
difference0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \difference_reg[7]_0\(1),
      O => difference0_carry_i_3_n_0
    );
\difference[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pulse_ajustement,
      I1 => reset,
      O => difference0
    );
\difference_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(0),
      Q => difference(0),
      R => '0'
    );
\difference_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(1),
      Q => difference(1),
      R => '0'
    );
\difference_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(2),
      Q => difference(2),
      R => '0'
    );
\difference_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(3),
      Q => difference(3),
      R => '0'
    );
\difference_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(4),
      Q => difference(4),
      R => '0'
    );
\difference_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(5),
      Q => difference(5),
      R => '0'
    );
\difference_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(6),
      Q => difference(6),
      R => '0'
    );
\difference_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(7),
      Q => difference(7),
      R => '0'
    );
\difference_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => difference0,
      D => difference00_in(8),
      Q => difference(8),
      R => '0'
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E80C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \difference_reg[7]_0\(1),
      I3 => \difference_reg[7]_0\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2442"
    )
        port map (
      I0 => \^q\(0),
      I1 => \difference_reg[7]_0\(0),
      I2 => \difference_reg[7]_0\(1),
      I3 => \^q\(1),
      O => \i__carry_i_8_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => compteur_ajustement(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => compteur_ajustement(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => compteur_ajustement(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => compteur_ajustement(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => compteur_ajustement(16 downto 13)
    );
pulse_ajustement_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \compteur_ajustement[16]_i_2_n_0\,
      I1 => \compteur_ajustement[16]_i_3_n_0\,
      I2 => compteur_ajustement(15),
      I3 => compteur_ajustement(16),
      O => pulse_ajustement_i_1_n_0
    );
pulse_ajustement_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => pulse_ajustement_i_1_n_0,
      Q => pulse_ajustement
    );
\vitesse_actuelle[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^vitesse_cible_valid_interne\,
      I1 => pulse_changement,
      O => E(0)
    );
\vitesse_actuelle[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^vitesse_cible_valid_interne\,
      I1 => vitesse_cible_reg(7),
      O => D(0)
    );
vitesse_cible_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => vitesse_cible_reg1_carry_n_1,
      CO(1) => vitesse_cible_reg1_carry_n_2,
      CO(0) => vitesse_cible_reg1_carry_n_3,
      CYINIT => '1',
      DI(3) => vitesse_cible_reg1_carry_i_1_n_0,
      DI(2) => vitesse_cible_reg1_carry_i_2_n_0,
      DI(1) => vitesse_cible_reg1_carry_i_3_n_0,
      DI(0) => vitesse_cible_reg1_carry_i_4_n_0,
      O(3 downto 0) => NLW_vitesse_cible_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => vitesse_cible_reg1_carry_i_5_n_0,
      S(2) => vitesse_cible_reg1_carry_i_6_n_0,
      S(1) => vitesse_cible_reg1_carry_i_7_n_0,
      S(0) => vitesse_cible_reg1_carry_i_8_n_0
    );
vitesse_cible_reg1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2AB802A"
    )
        port map (
      I0 => \difference_reg[7]_0\(7),
      I1 => \^q\(6),
      I2 => vitesse_cible_reg1_carry_i_9_n_0,
      I3 => \^q\(7),
      I4 => \difference_reg[7]_0\(6),
      O => vitesse_cible_reg1_carry_i_1_n_0
    );
vitesse_cible_reg1_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => vitesse_cible_reg1_carry_i_10_n_0
    );
vitesse_cible_reg1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CBA08A2"
    )
        port map (
      I0 => \difference_reg[7]_0\(5),
      I1 => \^q\(4),
      I2 => vitesse_cible_reg1_carry_i_10_n_0,
      I3 => \^q\(5),
      I4 => \difference_reg[7]_0\(4),
      O => vitesse_cible_reg1_carry_i_2_n_0
    );
vitesse_cible_reg1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2AB802A"
    )
        port map (
      I0 => \difference_reg[7]_0\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \difference_reg[7]_0\(2),
      O => vitesse_cible_reg1_carry_i_3_n_0
    );
vitesse_cible_reg1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F440"
    )
        port map (
      I0 => \^q\(0),
      I1 => \difference_reg[7]_0\(0),
      I2 => \difference_reg[7]_0\(1),
      I3 => \^q\(1),
      O => vitesse_cible_reg1_carry_i_4_n_0
    );
vitesse_cible_reg1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \difference_reg[7]_0\(7),
      I2 => \^q\(6),
      I3 => vitesse_cible_reg1_carry_i_9_n_0,
      I4 => \difference_reg[7]_0\(6),
      O => vitesse_cible_reg1_carry_i_5_n_0
    );
vitesse_cible_reg1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => \^q\(5),
      I1 => \difference_reg[7]_0\(5),
      I2 => \^q\(4),
      I3 => vitesse_cible_reg1_carry_i_10_n_0,
      I4 => \difference_reg[7]_0\(4),
      O => vitesse_cible_reg1_carry_i_6_n_0
    );
vitesse_cible_reg1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => \^q\(3),
      I1 => \difference_reg[7]_0\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \difference_reg[7]_0\(2),
      O => vitesse_cible_reg1_carry_i_7_n_0
    );
vitesse_cible_reg1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => \^q\(1),
      I1 => \difference_reg[7]_0\(1),
      I2 => \^q\(0),
      I3 => \difference_reg[7]_0\(0),
      O => vitesse_cible_reg1_carry_i_8_n_0
    );
vitesse_cible_reg1_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => vitesse_cible_reg1_carry_i_9_n_0
    );
\vitesse_cible_reg1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^vitesse_panneau_reg_reg[7]_0\(0),
      CO(2) => \vitesse_cible_reg1_inferred__0/i__carry_n_1\,
      CO(1) => \vitesse_cible_reg1_inferred__0/i__carry_n_2\,
      CO(0) => \vitesse_cible_reg1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_vitesse_cible_reg1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \i__carry_i_8_n_0\
    );
\vitesse_cible_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF50BF55AF40AA40"
    )
        port map (
      I0 => \^difference_reg[0]_0\,
      I1 => \^vitesse_panneau_reg_reg[7]_0\(0),
      I2 => \^difference_reg[8]_0\,
      I3 => \difference_reg[7]_0\(0),
      I4 => \^co\(0),
      I5 => \^q\(0),
      O => vitesse_cible_reg_0(0)
    );
\vitesse_cible_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => difference(8),
      I1 => \vitesse_cible_reg[3]_i_5_n_0\,
      I2 => difference(2),
      I3 => difference(0),
      I4 => difference(1),
      I5 => difference(7),
      O => \^difference_reg[8]_0\
    );
\vitesse_cible_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => difference(4),
      I1 => difference(3),
      I2 => difference(6),
      I3 => difference(5),
      O => \vitesse_cible_reg[3]_i_5_n_0\
    );
\vitesse_cible_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000660F"
    )
        port map (
      I0 => \difference_reg[7]_0\(5),
      I1 => \vitesse_cible_reg_reg[5]_0\,
      I2 => \^q\(5),
      I3 => \^co\(0),
      I4 => \^difference_reg[8]_0\,
      O => \vitesse_actuelle_reg[5]\
    );
\vitesse_cible_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => vitesse_cible_reg_0(0),
      Q => \vitesse_cible_reg_reg[6]_0\(0)
    );
\vitesse_cible_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(0),
      Q => \vitesse_cible_reg_reg[6]_0\(1)
    );
\vitesse_cible_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(1),
      Q => \vitesse_cible_reg_reg[6]_0\(2)
    );
\vitesse_cible_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(2),
      Q => \vitesse_cible_reg_reg[6]_0\(3)
    );
\vitesse_cible_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(3),
      Q => \vitesse_cible_reg_reg[6]_0\(4)
    );
\vitesse_cible_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(4),
      Q => \vitesse_cible_reg_reg[6]_0\(5)
    );
\vitesse_cible_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(5),
      Q => \vitesse_cible_reg_reg[6]_0\(6)
    );
\vitesse_cible_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_ajustement,
      CLR => reset,
      D => \vitesse_cible_reg_reg[7]_0\(6),
      Q => vitesse_cible_reg(7)
    );
vitesse_cible_valid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pulse_ajustement,
      I1 => \^difference_reg[0]_0\,
      O => vitesse_cible_valid_i_1_n_0
    );
vitesse_cible_valid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => vitesse_cible_valid_i_3_n_0,
      I1 => vitesse_cible_valid_i_4_n_0,
      I2 => vitesse_cible_valid_i_5_n_0,
      O => \^difference_reg[0]_0\
    );
vitesse_cible_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010333"
    )
        port map (
      I0 => difference(0),
      I1 => difference(7),
      I2 => difference(1),
      I3 => difference(2),
      I4 => difference(8),
      I5 => \vitesse_cible_reg[3]_i_5_n_0\,
      O => vitesse_cible_valid_i_3_n_0
    );
vitesse_cible_valid_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => difference(3),
      I1 => difference(6),
      I2 => difference(4),
      I3 => difference(7),
      I4 => vitesse_cible_valid_i_6_n_0,
      O => vitesse_cible_valid_i_4_n_0
    );
vitesse_cible_valid_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \^q\(5),
      I4 => vitesse_cible_valid_i_7_n_0,
      O => vitesse_cible_valid_i_5_n_0
    );
vitesse_cible_valid_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F7FFF"
    )
        port map (
      I0 => difference(0),
      I1 => difference(8),
      I2 => difference(5),
      I3 => difference(1),
      I4 => difference(2),
      O => vitesse_cible_valid_i_6_n_0
    );
vitesse_cible_valid_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(6),
      I3 => \^q\(4),
      O => vitesse_cible_valid_i_7_n_0
    );
vitesse_cible_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => vitesse_cible_valid_i_1_n_0,
      Q => \^vitesse_cible_valid_interne\
    );
\vitesse_panneau_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(0),
      Q => \^q\(0)
    );
\vitesse_panneau_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(1),
      Q => \^q\(1)
    );
\vitesse_panneau_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(2),
      Q => \^q\(2)
    );
\vitesse_panneau_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(3),
      Q => \^q\(3)
    );
\vitesse_panneau_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(4),
      Q => \^q\(4)
    );
\vitesse_panneau_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(5),
      Q => \^q\(5)
    );
\vitesse_panneau_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(6),
      Q => \^q\(6)
    );
\vitesse_panneau_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => vitesse_panneau_valid,
      CLR => reset,
      D => vitesse_panneau_camera(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0_gen_vitesse is
  port (
    pulse_changement : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \vitesse_actuelle_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \vitesse_actuelle_reg[7]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \vitesse_actuelle_reg[4]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \vitesse_cible_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \vitesse_cible_reg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \vitesse_cible_reg_reg[3]\ : in STD_LOGIC;
    \vitesse_cible_reg_reg[5]\ : in STD_LOGIC;
    \vitesse_cible_reg_reg[5]_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \vitesse_actuelle_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    vitesse_cible_valid_interne : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_systeme_regulation_v_0_0_gen_vitesse : entity is "gen_vitesse";
end HDMI_bd_systeme_regulation_v_0_0_gen_vitesse;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0_gen_vitesse is
  signal L : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \L__16_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \L__16_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \L__16_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \L__16_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \L__16_carry__0_n_1\ : STD_LOGIC;
  signal \L__16_carry__0_n_2\ : STD_LOGIC;
  signal \L__16_carry__0_n_3\ : STD_LOGIC;
  signal \L__16_carry__0_n_4\ : STD_LOGIC;
  signal \L__16_carry__0_n_5\ : STD_LOGIC;
  signal \L__16_carry__0_n_6\ : STD_LOGIC;
  signal \L__16_carry__0_n_7\ : STD_LOGIC;
  signal \L__16_carry_i_1_n_0\ : STD_LOGIC;
  signal \L__16_carry_i_2_n_0\ : STD_LOGIC;
  signal \L__16_carry_i_3_n_0\ : STD_LOGIC;
  signal \L__16_carry_i_4_n_0\ : STD_LOGIC;
  signal \L__16_carry_n_0\ : STD_LOGIC;
  signal \L__16_carry_n_1\ : STD_LOGIC;
  signal \L__16_carry_n_2\ : STD_LOGIC;
  signal \L__16_carry_n_3\ : STD_LOGIC;
  signal \L__16_carry_n_4\ : STD_LOGIC;
  signal \L__16_carry_n_5\ : STD_LOGIC;
  signal \L__16_carry_n_6\ : STD_LOGIC;
  signal \L__16_carry_n_7\ : STD_LOGIC;
  signal \L_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \L_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \L_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \L_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \L_carry__0_n_0\ : STD_LOGIC;
  signal \L_carry__0_n_1\ : STD_LOGIC;
  signal \L_carry__0_n_2\ : STD_LOGIC;
  signal \L_carry__0_n_3\ : STD_LOGIC;
  signal \L_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \L_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \L_carry__1_n_3\ : STD_LOGIC;
  signal \L_carry__1_n_6\ : STD_LOGIC;
  signal \L_carry__1_n_7\ : STD_LOGIC;
  signal L_carry_i_1_n_0 : STD_LOGIC;
  signal L_carry_i_2_n_0 : STD_LOGIC;
  signal L_carry_i_3_n_0 : STD_LOGIC;
  signal L_carry_n_0 : STD_LOGIC;
  signal L_carry_n_1 : STD_LOGIC;
  signal L_carry_n_2 : STD_LOGIC;
  signal L_carry_n_3 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \compteur_changement[0]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[0]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[0]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[0]_i_5_n_0\ : STD_LOGIC;
  signal \compteur_changement[0]_i_6_n_0\ : STD_LOGIC;
  signal \compteur_changement[12]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[12]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[12]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[12]_i_5_n_0\ : STD_LOGIC;
  signal \compteur_changement[16]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[16]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[16]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[16]_i_5_n_0\ : STD_LOGIC;
  signal \compteur_changement[20]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[20]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[20]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[20]_i_5_n_0\ : STD_LOGIC;
  signal \compteur_changement[24]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[24]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[4]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[4]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[4]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[4]_i_5_n_0\ : STD_LOGIC;
  signal \compteur_changement[8]_i_2_n_0\ : STD_LOGIC;
  signal \compteur_changement[8]_i_3_n_0\ : STD_LOGIC;
  signal \compteur_changement[8]_i_4_n_0\ : STD_LOGIC;
  signal \compteur_changement[8]_i_5_n_0\ : STD_LOGIC;
  signal compteur_changement_reg : STD_LOGIC_VECTOR ( 25 downto 7 );
  signal \compteur_changement_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \compteur_changement_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[0]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[1]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[2]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[3]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[4]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[5]\ : STD_LOGIC;
  signal \compteur_changement_reg_n_0_[6]\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pulse_changement_i_2_n_0 : STD_LOGIC;
  signal pulse_changement_i_3_n_0 : STD_LOGIC;
  signal pulse_changement_i_4_n_0 : STD_LOGIC;
  signal pulse_changement_i_5_n_0 : STD_LOGIC;
  signal reg_ale : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vitesse_aleatoire : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \vitesse_aleatoire[0]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[0]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[1]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[1]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[1]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[2]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[3]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[3]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[3]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[4]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[4]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[4]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[4]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[5]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[5]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[5]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[5]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[6]_i_1_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[6]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[6]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[6]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_aleatoire[6]_i_5_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \vitesse_cible_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_L__16_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_L_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_L_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_L_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_compteur_changement_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_compteur_changement_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \L__16_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \L__16_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of L_carry : label is 35;
  attribute ADDER_THRESHOLD of \L_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \L_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \compteur_changement_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vitesse_actuelle[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vitesse_actuelle[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vitesse_actuelle[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vitesse_actuelle[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vitesse_actuelle[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vitesse_actuelle[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[5]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vitesse_aleatoire[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[4]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[4]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[6]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vitesse_cible_reg[7]_i_4\ : label is "soft_lutpair4";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\L__16_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \L__16_carry_n_0\,
      CO(2) => \L__16_carry_n_1\,
      CO(1) => \L__16_carry_n_2\,
      CO(0) => \L__16_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => reg_ale(3 downto 0),
      O(3) => \L__16_carry_n_4\,
      O(2) => \L__16_carry_n_5\,
      O(1) => \L__16_carry_n_6\,
      O(0) => \L__16_carry_n_7\,
      S(3) => \L__16_carry_i_1_n_0\,
      S(2) => \L__16_carry_i_2_n_0\,
      S(1) => \L__16_carry_i_3_n_0\,
      S(0) => \L__16_carry_i_4_n_0\
    );
\L__16_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \L__16_carry_n_0\,
      CO(3) => \NLW_L__16_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \L__16_carry__0_n_1\,
      CO(1) => \L__16_carry__0_n_2\,
      CO(0) => \L__16_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => reg_ale(6 downto 4),
      O(3) => \L__16_carry__0_n_4\,
      O(2) => \L__16_carry__0_n_5\,
      O(1) => \L__16_carry__0_n_6\,
      O(0) => \L__16_carry__0_n_7\,
      S(3) => \L__16_carry__0_i_1_n_0\,
      S(2) => \L__16_carry__0_i_2_n_0\,
      S(1) => \L__16_carry__0_i_3_n_0\,
      S(0) => \L__16_carry__0_i_4_n_0\
    );
\L__16_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \L_carry__1_n_6\,
      I1 => reg_ale(7),
      O => \L__16_carry__0_i_1_n_0\
    );
\L__16_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(6),
      I1 => \L_carry__1_n_7\,
      O => \L__16_carry__0_i_2_n_0\
    );
\L__16_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(5),
      I1 => \L_carry__1_n_6\,
      O => \L__16_carry__0_i_3_n_0\
    );
\L__16_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(4),
      I1 => \L_carry__1_n_7\,
      O => \L__16_carry__0_i_4_n_0\
    );
\L__16_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_ale(3),
      O => \L__16_carry_i_1_n_0\
    );
\L__16_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_ale(2),
      O => \L__16_carry_i_2_n_0\
    );
\L__16_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(1),
      I1 => \L_carry__1_n_6\,
      O => \L__16_carry_i_3_n_0\
    );
\L__16_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(0),
      I1 => \L_carry__1_n_7\,
      O => \L__16_carry_i_4_n_0\
    );
L_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => L_carry_n_0,
      CO(2) => L_carry_n_1,
      CO(1) => L_carry_n_2,
      CO(0) => L_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => reg_ale(1 downto 0),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => NLW_L_carry_O_UNCONNECTED(3 downto 0),
      S(3) => L_carry_i_1_n_0,
      S(2) => L_carry_i_2_n_0,
      S(1) => L_carry_i_3_n_0,
      S(0) => reg_ale(0)
    );
\L_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => L_carry_n_0,
      CO(3) => \L_carry__0_n_0\,
      CO(2) => \L_carry__0_n_1\,
      CO(1) => \L_carry__0_n_2\,
      CO(0) => \L_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_ale(5 downto 2),
      O(3 downto 0) => \NLW_L_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \L_carry__0_i_1_n_0\,
      S(2) => \L_carry__0_i_2_n_0\,
      S(1) => \L_carry__0_i_3_n_0\,
      S(0) => \L_carry__0_i_4_n_0\
    );
\L_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(5),
      I1 => reg_ale(7),
      O => \L_carry__0_i_1_n_0\
    );
\L_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(4),
      I1 => reg_ale(6),
      O => \L_carry__0_i_2_n_0\
    );
\L_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(3),
      I1 => reg_ale(5),
      O => \L_carry__0_i_3_n_0\
    );
\L_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(2),
      I1 => reg_ale(4),
      O => \L_carry__0_i_4_n_0\
    );
\L_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \L_carry__0_n_0\,
      CO(3 downto 1) => \NLW_L_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \L_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => reg_ale(6),
      O(3 downto 2) => \NLW_L_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \L_carry__1_n_6\,
      O(0) => \L_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \L_carry__1_i_1_n_0\,
      S(0) => \L_carry__1_i_2_n_0\
    );
\L_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_ale(7),
      O => \L_carry__1_i_1_n_0\
    );
\L_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_ale(6),
      O => \L_carry__1_i_2_n_0\
    );
L_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(1),
      I1 => reg_ale(3),
      O => L_carry_i_1_n_0
    );
L_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_ale(0),
      I1 => reg_ale(2),
      O => L_carry_i_2_n_0
    );
L_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_ale(1),
      O => L_carry_i_3_n_0
    );
\compteur_changement[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[0]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[0]_i_2_n_0\
    );
\compteur_changement[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[3]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[0]_i_3_n_0\
    );
\compteur_changement[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[2]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[0]_i_4_n_0\
    );
\compteur_changement[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[1]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[0]_i_5_n_0\
    );
\compteur_changement[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[0]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[0]_i_6_n_0\
    );
\compteur_changement[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(15),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[12]_i_2_n_0\
    );
\compteur_changement[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(14),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[12]_i_3_n_0\
    );
\compteur_changement[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(13),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[12]_i_4_n_0\
    );
\compteur_changement[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(12),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[12]_i_5_n_0\
    );
\compteur_changement[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(19),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[16]_i_2_n_0\
    );
\compteur_changement[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(18),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[16]_i_3_n_0\
    );
\compteur_changement[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(17),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[16]_i_4_n_0\
    );
\compteur_changement[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(16),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[16]_i_5_n_0\
    );
\compteur_changement[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(23),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[20]_i_2_n_0\
    );
\compteur_changement[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(22),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[20]_i_3_n_0\
    );
\compteur_changement[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(21),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[20]_i_4_n_0\
    );
\compteur_changement[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(20),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[20]_i_5_n_0\
    );
\compteur_changement[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => compteur_changement_reg(25),
      I1 => pulse_changement_i_2_n_0,
      O => \compteur_changement[24]_i_2_n_0\
    );
\compteur_changement[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(24),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[24]_i_3_n_0\
    );
\compteur_changement[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(7),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[4]_i_2_n_0\
    );
\compteur_changement[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[6]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[4]_i_3_n_0\
    );
\compteur_changement[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[5]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[4]_i_4_n_0\
    );
\compteur_changement[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \compteur_changement_reg_n_0_[4]\,
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[4]_i_5_n_0\
    );
\compteur_changement[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(11),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[8]_i_2_n_0\
    );
\compteur_changement[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(10),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[8]_i_3_n_0\
    );
\compteur_changement[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(9),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[8]_i_4_n_0\
    );
\compteur_changement[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => compteur_changement_reg(8),
      I1 => pulse_changement_i_2_n_0,
      I2 => compteur_changement_reg(25),
      O => \compteur_changement[8]_i_5_n_0\
    );
\compteur_changement_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[0]_i_1_n_7\,
      Q => \compteur_changement_reg_n_0_[0]\
    );
\compteur_changement_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \compteur_changement_reg[0]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[0]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[0]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \compteur_changement[0]_i_2_n_0\,
      O(3) => \compteur_changement_reg[0]_i_1_n_4\,
      O(2) => \compteur_changement_reg[0]_i_1_n_5\,
      O(1) => \compteur_changement_reg[0]_i_1_n_6\,
      O(0) => \compteur_changement_reg[0]_i_1_n_7\,
      S(3) => \compteur_changement[0]_i_3_n_0\,
      S(2) => \compteur_changement[0]_i_4_n_0\,
      S(1) => \compteur_changement[0]_i_5_n_0\,
      S(0) => \compteur_changement[0]_i_6_n_0\
    );
\compteur_changement_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[8]_i_1_n_5\,
      Q => compteur_changement_reg(10)
    );
\compteur_changement_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[8]_i_1_n_4\,
      Q => compteur_changement_reg(11)
    );
\compteur_changement_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[12]_i_1_n_7\,
      Q => compteur_changement_reg(12)
    );
\compteur_changement_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[8]_i_1_n_0\,
      CO(3) => \compteur_changement_reg[12]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[12]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[12]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \compteur_changement_reg[12]_i_1_n_4\,
      O(2) => \compteur_changement_reg[12]_i_1_n_5\,
      O(1) => \compteur_changement_reg[12]_i_1_n_6\,
      O(0) => \compteur_changement_reg[12]_i_1_n_7\,
      S(3) => \compteur_changement[12]_i_2_n_0\,
      S(2) => \compteur_changement[12]_i_3_n_0\,
      S(1) => \compteur_changement[12]_i_4_n_0\,
      S(0) => \compteur_changement[12]_i_5_n_0\
    );
\compteur_changement_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[12]_i_1_n_6\,
      Q => compteur_changement_reg(13)
    );
\compteur_changement_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[12]_i_1_n_5\,
      Q => compteur_changement_reg(14)
    );
\compteur_changement_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[12]_i_1_n_4\,
      Q => compteur_changement_reg(15)
    );
\compteur_changement_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[16]_i_1_n_7\,
      Q => compteur_changement_reg(16)
    );
\compteur_changement_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[12]_i_1_n_0\,
      CO(3) => \compteur_changement_reg[16]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[16]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[16]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \compteur_changement_reg[16]_i_1_n_4\,
      O(2) => \compteur_changement_reg[16]_i_1_n_5\,
      O(1) => \compteur_changement_reg[16]_i_1_n_6\,
      O(0) => \compteur_changement_reg[16]_i_1_n_7\,
      S(3) => \compteur_changement[16]_i_2_n_0\,
      S(2) => \compteur_changement[16]_i_3_n_0\,
      S(1) => \compteur_changement[16]_i_4_n_0\,
      S(0) => \compteur_changement[16]_i_5_n_0\
    );
\compteur_changement_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[16]_i_1_n_6\,
      Q => compteur_changement_reg(17)
    );
\compteur_changement_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[16]_i_1_n_5\,
      Q => compteur_changement_reg(18)
    );
\compteur_changement_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[16]_i_1_n_4\,
      Q => compteur_changement_reg(19)
    );
\compteur_changement_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[0]_i_1_n_6\,
      Q => \compteur_changement_reg_n_0_[1]\
    );
\compteur_changement_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[20]_i_1_n_7\,
      Q => compteur_changement_reg(20)
    );
\compteur_changement_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[16]_i_1_n_0\,
      CO(3) => \compteur_changement_reg[20]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[20]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[20]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \compteur_changement_reg[20]_i_1_n_4\,
      O(2) => \compteur_changement_reg[20]_i_1_n_5\,
      O(1) => \compteur_changement_reg[20]_i_1_n_6\,
      O(0) => \compteur_changement_reg[20]_i_1_n_7\,
      S(3) => \compteur_changement[20]_i_2_n_0\,
      S(2) => \compteur_changement[20]_i_3_n_0\,
      S(1) => \compteur_changement[20]_i_4_n_0\,
      S(0) => \compteur_changement[20]_i_5_n_0\
    );
\compteur_changement_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[20]_i_1_n_6\,
      Q => compteur_changement_reg(21)
    );
\compteur_changement_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[20]_i_1_n_5\,
      Q => compteur_changement_reg(22)
    );
\compteur_changement_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[20]_i_1_n_4\,
      Q => compteur_changement_reg(23)
    );
\compteur_changement_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[24]_i_1_n_7\,
      Q => compteur_changement_reg(24)
    );
\compteur_changement_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_compteur_changement_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \compteur_changement_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_compteur_changement_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \compteur_changement_reg[24]_i_1_n_6\,
      O(0) => \compteur_changement_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \compteur_changement[24]_i_2_n_0\,
      S(0) => \compteur_changement[24]_i_3_n_0\
    );
\compteur_changement_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[24]_i_1_n_6\,
      Q => compteur_changement_reg(25)
    );
\compteur_changement_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[0]_i_1_n_5\,
      Q => \compteur_changement_reg_n_0_[2]\
    );
\compteur_changement_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[0]_i_1_n_4\,
      Q => \compteur_changement_reg_n_0_[3]\
    );
\compteur_changement_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[4]_i_1_n_7\,
      Q => \compteur_changement_reg_n_0_[4]\
    );
\compteur_changement_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[0]_i_1_n_0\,
      CO(3) => \compteur_changement_reg[4]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[4]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[4]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \compteur_changement_reg[4]_i_1_n_4\,
      O(2) => \compteur_changement_reg[4]_i_1_n_5\,
      O(1) => \compteur_changement_reg[4]_i_1_n_6\,
      O(0) => \compteur_changement_reg[4]_i_1_n_7\,
      S(3) => \compteur_changement[4]_i_2_n_0\,
      S(2) => \compteur_changement[4]_i_3_n_0\,
      S(1) => \compteur_changement[4]_i_4_n_0\,
      S(0) => \compteur_changement[4]_i_5_n_0\
    );
\compteur_changement_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[4]_i_1_n_6\,
      Q => \compteur_changement_reg_n_0_[5]\
    );
\compteur_changement_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[4]_i_1_n_5\,
      Q => \compteur_changement_reg_n_0_[6]\
    );
\compteur_changement_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[4]_i_1_n_4\,
      Q => compteur_changement_reg(7)
    );
\compteur_changement_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[8]_i_1_n_7\,
      Q => compteur_changement_reg(8)
    );
\compteur_changement_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \compteur_changement_reg[4]_i_1_n_0\,
      CO(3) => \compteur_changement_reg[8]_i_1_n_0\,
      CO(2) => \compteur_changement_reg[8]_i_1_n_1\,
      CO(1) => \compteur_changement_reg[8]_i_1_n_2\,
      CO(0) => \compteur_changement_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \compteur_changement_reg[8]_i_1_n_4\,
      O(2) => \compteur_changement_reg[8]_i_1_n_5\,
      O(1) => \compteur_changement_reg[8]_i_1_n_6\,
      O(0) => \compteur_changement_reg[8]_i_1_n_7\,
      S(3) => \compteur_changement[8]_i_2_n_0\,
      S(2) => \compteur_changement[8]_i_3_n_0\,
      S(1) => \compteur_changement[8]_i_4_n_0\,
      S(0) => \compteur_changement[8]_i_5_n_0\
    );
\compteur_changement_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \compteur_changement_reg[8]_i_1_n_6\,
      Q => compteur_changement_reg(9)
    );
difference0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \vitesse_cible_reg_reg[7]\(0),
      O => \vitesse_actuelle_reg[0]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E22B8222"
    )
        port map (
      I0 => \vitesse_cible_reg_reg[7]\(7),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \i__carry_i_9_n_0\,
      I4 => \vitesse_cible_reg_reg[7]\(6),
      O => DI(2)
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38AE208A"
    )
        port map (
      I0 => \vitesse_cible_reg_reg[7]\(5),
      I1 => \i__carry_i_10_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \vitesse_cible_reg_reg[7]\(4),
      O => DI(1)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C02AAABF80002AAA"
    )
        port map (
      I0 => \vitesse_cible_reg_reg[7]\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \vitesse_cible_reg_reg[7]\(2),
      O => DI(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09906009"
    )
        port map (
      I0 => \^q\(7),
      I1 => \vitesse_cible_reg_reg[7]\(7),
      I2 => \^q\(6),
      I3 => \i__carry_i_9_n_0\,
      I4 => \vitesse_cible_reg_reg[7]\(6),
      O => S(2)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => \^q\(5),
      I1 => \vitesse_cible_reg_reg[7]\(5),
      I2 => \^q\(4),
      I3 => \i__carry_i_10_n_0\,
      I4 => \vitesse_cible_reg_reg[7]\(4),
      O => S(1)
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990909060090909"
    )
        port map (
      I0 => \^q\(3),
      I1 => \vitesse_cible_reg_reg[7]\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \vitesse_cible_reg_reg[7]\(2),
      O => S(0)
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \i__carry_i_9_n_0\
    );
pulse_changement_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => compteur_changement_reg(25),
      I1 => pulse_changement_i_2_n_0,
      O => load
    );
pulse_changement_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF45"
    )
        port map (
      I0 => compteur_changement_reg(18),
      I1 => pulse_changement_i_3_n_0,
      I2 => compteur_changement_reg(17),
      I3 => pulse_changement_i_4_n_0,
      I4 => compteur_changement_reg(24),
      O => pulse_changement_i_2_n_0
    );
pulse_changement_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => pulse_changement_i_5_n_0,
      I1 => compteur_changement_reg(15),
      I2 => compteur_changement_reg(14),
      I3 => compteur_changement_reg(13),
      I4 => compteur_changement_reg(12),
      I5 => compteur_changement_reg(16),
      O => pulse_changement_i_3_n_0
    );
pulse_changement_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => compteur_changement_reg(23),
      I1 => compteur_changement_reg(20),
      I2 => compteur_changement_reg(19),
      I3 => compteur_changement_reg(22),
      I4 => compteur_changement_reg(21),
      O => pulse_changement_i_4_n_0
    );
pulse_changement_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => compteur_changement_reg(8),
      I1 => compteur_changement_reg(7),
      I2 => compteur_changement_reg(9),
      I3 => compteur_changement_reg(10),
      I4 => compteur_changement_reg(11),
      O => pulse_changement_i_5_n_0
    );
pulse_changement_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => load,
      Q => pulse_changement
    );
\reg_ale[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ale(7),
      I1 => reg_ale(3),
      I2 => reg_ale(5),
      I3 => reg_ale(4),
      O => p_0_out(0)
    );
\reg_ale_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_out(0),
      PRE => reset,
      Q => reg_ale(0)
    );
\reg_ale_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(0),
      Q => reg_ale(1)
    );
\reg_ale_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(1),
      Q => reg_ale(2)
    );
\reg_ale_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(2),
      Q => reg_ale(3)
    );
\reg_ale_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(3),
      Q => reg_ale(4)
    );
\reg_ale_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(4),
      Q => reg_ale(5)
    );
\reg_ale_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(5),
      Q => reg_ale(6)
    );
\reg_ale_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => reg_ale(6),
      Q => reg_ale(7)
    );
\vitesse_actuelle[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(0),
      I1 => vitesse_aleatoire(0),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(0)
    );
\vitesse_actuelle[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(1),
      I1 => vitesse_aleatoire(1),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(1)
    );
\vitesse_actuelle[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(2),
      I1 => vitesse_aleatoire(2),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(2)
    );
\vitesse_actuelle[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(3),
      I1 => vitesse_aleatoire(3),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(3)
    );
\vitesse_actuelle[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(4),
      I1 => vitesse_aleatoire(4),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(4)
    );
\vitesse_actuelle[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(5),
      I1 => vitesse_aleatoire(5),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(5)
    );
\vitesse_actuelle[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \vitesse_actuelle_reg[6]_0\(6),
      I1 => vitesse_aleatoire(6),
      I2 => vitesse_cible_valid_interne,
      O => p_1_in(6)
    );
\vitesse_actuelle_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_1_in(0),
      Q => \^q\(0)
    );
\vitesse_actuelle_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(1),
      PRE => reset,
      Q => \^q\(1)
    );
\vitesse_actuelle_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_1_in(2),
      Q => \^q\(2)
    );
\vitesse_actuelle_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_1_in(3),
      PRE => reset,
      Q => \^q\(3)
    );
\vitesse_actuelle_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_1_in(4),
      Q => \^q\(4)
    );
\vitesse_actuelle_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_1_in(5),
      Q => \^q\(5)
    );
\vitesse_actuelle_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_1_in(6),
      Q => \^q\(6)
    );
\vitesse_actuelle_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(0),
      Q => \^q\(7)
    );
\vitesse_aleatoire[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \L__16_carry_n_4\,
      I1 => \vitesse_aleatoire[0]_i_2_n_0\,
      I2 => \L__16_carry_n_5\,
      I3 => \vitesse_aleatoire[0]_i_3_n_0\,
      O => L(0)
    );
\vitesse_aleatoire[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555A6A"
    )
        port map (
      I0 => \L__16_carry_n_7\,
      I1 => \L__16_carry__0_n_7\,
      I2 => \L__16_carry__0_n_5\,
      I3 => \L__16_carry__0_n_6\,
      I4 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[0]_i_2_n_0\
    );
\vitesse_aleatoire[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0FF038F0"
    )
        port map (
      I0 => \L__16_carry_n_6\,
      I1 => \L__16_carry__0_n_7\,
      I2 => \L__16_carry_n_7\,
      I3 => \L__16_carry__0_n_5\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[0]_i_3_n_0\
    );
\vitesse_aleatoire[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => \L__16_carry_n_4\,
      I1 => \vitesse_aleatoire[1]_i_2_n_0\,
      I2 => \L__16_carry_n_5\,
      I3 => \vitesse_aleatoire[1]_i_3_n_0\,
      O => \vitesse_aleatoire[1]_i_1_n_0\
    );
\vitesse_aleatoire[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AA99A999"
    )
        port map (
      I0 => \L__16_carry_n_6\,
      I1 => \L__16_carry__0_n_4\,
      I2 => \L__16_carry__0_n_6\,
      I3 => \L__16_carry__0_n_5\,
      I4 => \L__16_carry__0_n_7\,
      I5 => \L__16_carry_n_7\,
      O => \vitesse_aleatoire[1]_i_2_n_0\
    );
\vitesse_aleatoire[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333333CCCBC3C3"
    )
        port map (
      I0 => \L__16_carry__0_n_7\,
      I1 => \L__16_carry_n_6\,
      I2 => \L__16_carry__0_n_4\,
      I3 => \L__16_carry__0_n_6\,
      I4 => \L__16_carry__0_n_5\,
      I5 => \L__16_carry_n_7\,
      O => \vitesse_aleatoire[1]_i_3_n_0\
    );
\vitesse_aleatoire[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8CCCC"
    )
        port map (
      I0 => \vitesse_aleatoire[3]_i_3_n_0\,
      I1 => \L__16_carry_n_5\,
      I2 => \L__16_carry_n_7\,
      I3 => \vitesse_aleatoire[3]_i_2_n_0\,
      I4 => \L__16_carry_n_6\,
      O => \vitesse_aleatoire[2]_i_1_n_0\
    );
\vitesse_aleatoire[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF0FE00F0F0F0F0F"
    )
        port map (
      I0 => \vitesse_aleatoire[3]_i_2_n_0\,
      I1 => \L__16_carry_n_7\,
      I2 => \L__16_carry_n_4\,
      I3 => \L__16_carry_n_6\,
      I4 => \vitesse_aleatoire[3]_i_3_n_0\,
      I5 => \L__16_carry_n_5\,
      O => \vitesse_aleatoire[3]_i_1_n_0\
    );
\vitesse_aleatoire[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0037"
    )
        port map (
      I0 => \L__16_carry__0_n_7\,
      I1 => \L__16_carry__0_n_5\,
      I2 => \L__16_carry__0_n_6\,
      I3 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[3]_i_2_n_0\
    );
\vitesse_aleatoire[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FAEA"
    )
        port map (
      I0 => \L__16_carry__0_n_4\,
      I1 => \L__16_carry__0_n_6\,
      I2 => \L__16_carry__0_n_5\,
      I3 => \L__16_carry__0_n_7\,
      I4 => \L__16_carry_n_7\,
      O => \vitesse_aleatoire[3]_i_3_n_0\
    );
\vitesse_aleatoire[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \vitesse_aleatoire[4]_i_2_n_0\,
      I1 => \L__16_carry_n_4\,
      I2 => \vitesse_aleatoire[4]_i_3_n_0\,
      I3 => \L__16_carry_n_5\,
      I4 => \vitesse_aleatoire[4]_i_4_n_0\,
      O => \vitesse_aleatoire[4]_i_1_n_0\
    );
\vitesse_aleatoire[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9D"
    )
        port map (
      I0 => \L__16_carry__0_n_7\,
      I1 => \L__16_carry__0_n_5\,
      I2 => \L__16_carry__0_n_6\,
      I3 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[4]_i_2_n_0\
    );
\vitesse_aleatoire[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87878787873C8C3C"
    )
        port map (
      I0 => \L__16_carry_n_7\,
      I1 => \L__16_carry_n_6\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_5\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[4]_i_3_n_0\
    );
\vitesse_aleatoire[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0FF010F0"
    )
        port map (
      I0 => \L__16_carry_n_6\,
      I1 => \L__16_carry_n_7\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_5\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[4]_i_4_n_0\
    );
\vitesse_aleatoire[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \vitesse_aleatoire[5]_i_2_n_0\,
      I1 => \L__16_carry_n_4\,
      I2 => \vitesse_aleatoire[5]_i_3_n_0\,
      I3 => \L__16_carry_n_5\,
      I4 => \vitesse_aleatoire[5]_i_4_n_0\,
      O => \vitesse_aleatoire[5]_i_1_n_0\
    );
\vitesse_aleatoire[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => \L__16_carry__0_n_4\,
      I1 => \L__16_carry__0_n_5\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_6\,
      O => \vitesse_aleatoire[5]_i_2_n_0\
    );
\vitesse_aleatoire[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F80707F83F00C0"
    )
        port map (
      I0 => \L__16_carry_n_7\,
      I1 => \L__16_carry_n_6\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_5\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[5]_i_3_n_0\
    );
\vitesse_aleatoire[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A5B0"
    )
        port map (
      I0 => \L__16_carry__0_n_7\,
      I1 => \L__16_carry__0_n_5\,
      I2 => \L__16_carry__0_n_6\,
      I3 => \L__16_carry__0_n_4\,
      O => \vitesse_aleatoire[5]_i_4_n_0\
    );
\vitesse_aleatoire[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \vitesse_aleatoire[6]_i_1_n_0\
    );
\vitesse_aleatoire[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \vitesse_aleatoire[6]_i_3_n_0\,
      I1 => \L__16_carry_n_4\,
      I2 => \vitesse_aleatoire[6]_i_4_n_0\,
      I3 => \L__16_carry_n_5\,
      I4 => \vitesse_aleatoire[6]_i_5_n_0\,
      O => \vitesse_aleatoire[6]_i_2_n_0\
    );
\vitesse_aleatoire[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01F8"
    )
        port map (
      I0 => \L__16_carry__0_n_7\,
      I1 => \L__16_carry__0_n_6\,
      I2 => \L__16_carry__0_n_4\,
      I3 => \L__16_carry__0_n_5\,
      O => \vitesse_aleatoire[6]_i_3_n_0\
    );
\vitesse_aleatoire[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070FFFC0F800"
    )
        port map (
      I0 => \L__16_carry_n_7\,
      I1 => \L__16_carry_n_6\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_4\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_5\,
      O => \vitesse_aleatoire[6]_i_4_n_0\
    );
\vitesse_aleatoire[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F1FFF00F000"
    )
        port map (
      I0 => \L__16_carry_n_6\,
      I1 => \L__16_carry_n_7\,
      I2 => \L__16_carry__0_n_7\,
      I3 => \L__16_carry__0_n_4\,
      I4 => \L__16_carry__0_n_6\,
      I5 => \L__16_carry__0_n_5\,
      O => \vitesse_aleatoire[6]_i_5_n_0\
    );
\vitesse_aleatoire_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => L(0),
      Q => vitesse_aleatoire(0),
      R => '0'
    );
\vitesse_aleatoire_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[1]_i_1_n_0\,
      Q => vitesse_aleatoire(1),
      R => '0'
    );
\vitesse_aleatoire_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[2]_i_1_n_0\,
      Q => vitesse_aleatoire(2),
      R => '0'
    );
\vitesse_aleatoire_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[3]_i_1_n_0\,
      Q => vitesse_aleatoire(3),
      R => '0'
    );
\vitesse_aleatoire_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[4]_i_1_n_0\,
      Q => vitesse_aleatoire(4),
      R => '0'
    );
\vitesse_aleatoire_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[5]_i_1_n_0\,
      Q => vitesse_aleatoire(5),
      R => '0'
    );
\vitesse_aleatoire_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \vitesse_aleatoire[6]_i_1_n_0\,
      D => \vitesse_aleatoire[6]_i_2_n_0\,
      Q => vitesse_aleatoire(6),
      R => '0'
    );
\vitesse_cible_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg[1]_i_2_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(0)
    );
\vitesse_cible_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70BF7FBF408F4080"
    )
        port map (
      I0 => \^q\(0),
      I1 => \vitesse_cible_reg_reg[1]\(0),
      I2 => \vitesse_cible_reg_reg[3]\,
      I3 => \^q\(1),
      I4 => CO(0),
      I5 => \vitesse_cible_reg_reg[7]\(1),
      O => \vitesse_cible_reg[1]_i_2_n_0\
    );
\vitesse_cible_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^q\(2),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg[2]_i_2_n_0\,
      I3 => \vitesse_cible_reg_reg[3]\,
      I4 => \vitesse_cible_reg[2]_i_3_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(1)
    );
\vitesse_cible_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \vitesse_cible_reg_reg[1]\(0),
      I4 => \vitesse_cible_reg_reg[7]\(2),
      O => \vitesse_cible_reg[2]_i_2_n_0\
    );
\vitesse_cible_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => CO(0),
      I3 => \vitesse_cible_reg_reg[7]\(2),
      O => \vitesse_cible_reg[2]_i_3_n_0\
    );
\vitesse_cible_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B88BBB8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg_reg[3]\,
      I3 => \vitesse_cible_reg[3]_i_3_n_0\,
      I4 => \vitesse_cible_reg[3]_i_4_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(2)
    );
\vitesse_cible_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => CO(0),
      I4 => \vitesse_cible_reg_reg[7]\(3),
      O => \vitesse_cible_reg[3]_i_3_n_0\
    );
\vitesse_cible_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"955500009555FFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \vitesse_cible_reg_reg[1]\(0),
      I5 => \vitesse_cible_reg_reg[7]\(3),
      O => \vitesse_cible_reg[3]_i_4_n_0\
    );
\vitesse_cible_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg[4]_i_2_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(3)
    );
\vitesse_cible_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => \vitesse_cible_reg[4]_i_3_n_0\,
      I1 => \vitesse_cible_reg_reg[1]\(0),
      I2 => \vitesse_cible_reg_reg[3]\,
      I3 => \vitesse_cible_reg[4]_i_4_n_0\,
      I4 => CO(0),
      I5 => \vitesse_cible_reg_reg[7]\(4),
      O => \vitesse_cible_reg[4]_i_2_n_0\
    );
\vitesse_cible_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \vitesse_cible_reg[4]_i_3_n_0\
    );
\vitesse_cible_reg[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \vitesse_cible_reg[4]_i_4_n_0\
    );
\vitesse_cible_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => \^q\(5),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg_reg[5]_0\,
      I3 => \vitesse_cible_reg[5]_i_3_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(4)
    );
\vitesse_cible_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8FF"
    )
        port map (
      I0 => \vitesse_cible_reg[5]_i_5_n_0\,
      I1 => \vitesse_cible_reg_reg[1]\(0),
      I2 => \vitesse_cible_reg_reg[7]\(5),
      I3 => \vitesse_cible_reg_reg[3]\,
      O => \vitesse_cible_reg[5]_i_3_n_0\
    );
\vitesse_cible_reg[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \vitesse_actuelle_reg[4]_0\
    );
\vitesse_cible_reg[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \vitesse_cible_reg[5]_i_5_n_0\
    );
\vitesse_cible_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \vitesse_cible_reg_reg[5]\,
      I2 => \vitesse_cible_reg[6]_i_2_n_0\,
      O => \vitesse_actuelle_reg[7]_0\(5)
    );
\vitesse_cible_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF8F808080"
    )
        port map (
      I0 => \vitesse_cible_reg[6]_i_3_n_0\,
      I1 => \vitesse_cible_reg_reg[1]\(0),
      I2 => \vitesse_cible_reg_reg[3]\,
      I3 => \vitesse_cible_reg[6]_i_4_n_0\,
      I4 => CO(0),
      I5 => \vitesse_cible_reg_reg[7]\(6),
      O => \vitesse_cible_reg[6]_i_2_n_0\
    );
\vitesse_cible_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(3),
      I2 => \vitesse_cible_reg[6]_i_5_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \vitesse_cible_reg[6]_i_3_n_0\
    );
\vitesse_cible_reg[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \vitesse_cible_reg[6]_i_4_n_0\
    );
\vitesse_cible_reg[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \vitesse_cible_reg[6]_i_5_n_0\
    );
\vitesse_cible_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0EE"
    )
        port map (
      I0 => \vitesse_cible_reg[7]_i_2_n_0\,
      I1 => \vitesse_cible_reg[7]_i_3_n_0\,
      I2 => \^q\(7),
      I3 => \vitesse_cible_reg_reg[5]\,
      O => \vitesse_actuelle_reg[7]_0\(6)
    );
\vitesse_cible_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000009A9AFF00"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \vitesse_cible_reg[7]_i_4_n_0\,
      I3 => \vitesse_cible_reg_reg[7]\(7),
      I4 => CO(0),
      I5 => \vitesse_cible_reg_reg[3]\,
      O => \vitesse_cible_reg[7]_i_2_n_0\
    );
\vitesse_cible_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6AFF0000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \i__carry_i_9_n_0\,
      I3 => \vitesse_cible_reg_reg[7]\(7),
      I4 => \vitesse_cible_reg_reg[1]\(0),
      I5 => \vitesse_cible_reg_reg[3]\,
      O => \vitesse_cible_reg[7]_i_3_n_0\
    );
\vitesse_cible_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => \vitesse_cible_reg[7]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse : entity is "systeme_regulation_vitesse";
end HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal U_COMPARATEUR_n_11 : STD_LOGIC;
  signal U_COMPARATEUR_n_19 : STD_LOGIC;
  signal U_COMPARATEUR_n_20 : STD_LOGIC;
  signal U_COMPARATEUR_n_21 : STD_LOGIC;
  signal U_COMPARATEUR_n_22 : STD_LOGIC;
  signal U_GENERATEUR_n_17 : STD_LOGIC;
  signal U_GENERATEUR_n_18 : STD_LOGIC;
  signal U_GENERATEUR_n_19 : STD_LOGIC;
  signal U_GENERATEUR_n_20 : STD_LOGIC;
  signal U_GENERATEUR_n_21 : STD_LOGIC;
  signal U_GENERATEUR_n_22 : STD_LOGIC;
  signal U_GENERATEUR_n_23 : STD_LOGIC;
  signal U_GENERATEUR_n_9 : STD_LOGIC;
  signal pulse_changement : STD_LOGIC;
  signal vitesse_cible_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vitesse_cible_reg1 : STD_LOGIC;
  signal vitesse_cible_reg10_in : STD_LOGIC;
  signal vitesse_cible_reg_0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal vitesse_cible_valid_interne : STD_LOGIC;
  signal vitesse_panneau_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
U_COMPARATEUR: entity work.HDMI_bd_systeme_regulation_v_0_0_comparateur_regulateur_vitesse
     port map (
      CO(0) => vitesse_cible_reg1,
      D(0) => U_COMPARATEUR_n_11,
      DI(2) => U_GENERATEUR_n_17,
      DI(1) => U_GENERATEUR_n_18,
      DI(0) => U_GENERATEUR_n_19,
      E(0) => U_COMPARATEUR_n_22,
      Q(7 downto 0) => vitesse_panneau_reg(7 downto 0),
      S(2) => U_GENERATEUR_n_20,
      S(1) => U_GENERATEUR_n_21,
      S(0) => U_GENERATEUR_n_22,
      clk => clk,
      \difference_reg[0]_0\ => U_COMPARATEUR_n_19,
      \difference_reg[3]_0\(0) => U_GENERATEUR_n_9,
      \difference_reg[7]_0\(7 downto 0) => \^q\(7 downto 0),
      \difference_reg[8]_0\ => U_COMPARATEUR_n_20,
      pulse_changement => pulse_changement,
      reset => reset,
      \vitesse_actuelle_reg[5]\ => U_COMPARATEUR_n_21,
      \vitesse_cible_reg_reg[5]_0\ => U_GENERATEUR_n_23,
      \vitesse_cible_reg_reg[6]_0\(6 downto 0) => vitesse_cible_reg(6 downto 0),
      \vitesse_cible_reg_reg[7]_0\(6 downto 0) => vitesse_cible_reg_0(7 downto 1),
      vitesse_cible_valid_interne => vitesse_cible_valid_interne,
      vitesse_panneau_camera(7 downto 0) => vitesse_panneau_camera(7 downto 0),
      \vitesse_panneau_reg_reg[7]_0\(0) => vitesse_cible_reg10_in,
      vitesse_panneau_valid => vitesse_panneau_valid
    );
U_GENERATEUR: entity work.HDMI_bd_systeme_regulation_v_0_0_gen_vitesse
     port map (
      CO(0) => vitesse_cible_reg1,
      D(0) => U_COMPARATEUR_n_11,
      DI(2) => U_GENERATEUR_n_17,
      DI(1) => U_GENERATEUR_n_18,
      DI(0) => U_GENERATEUR_n_19,
      E(0) => U_COMPARATEUR_n_22,
      Q(7 downto 0) => \^q\(7 downto 0),
      S(2) => U_GENERATEUR_n_20,
      S(1) => U_GENERATEUR_n_21,
      S(0) => U_GENERATEUR_n_22,
      clk => clk,
      pulse_changement => pulse_changement,
      reset => reset,
      \vitesse_actuelle_reg[0]_0\(0) => U_GENERATEUR_n_9,
      \vitesse_actuelle_reg[4]_0\ => U_GENERATEUR_n_23,
      \vitesse_actuelle_reg[6]_0\(6 downto 0) => vitesse_cible_reg(6 downto 0),
      \vitesse_actuelle_reg[7]_0\(6 downto 0) => vitesse_cible_reg_0(7 downto 1),
      \vitesse_cible_reg_reg[1]\(0) => vitesse_cible_reg10_in,
      \vitesse_cible_reg_reg[3]\ => U_COMPARATEUR_n_20,
      \vitesse_cible_reg_reg[5]\ => U_COMPARATEUR_n_19,
      \vitesse_cible_reg_reg[5]_0\ => U_COMPARATEUR_n_21,
      \vitesse_cible_reg_reg[7]\(7 downto 0) => vitesse_panneau_reg(7 downto 0),
      vitesse_cible_valid_interne => vitesse_cible_valid_interne
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_systeme_regulation_v_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    vitesse_panneau_camera : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vitesse_panneau_valid : in STD_LOGIC;
    vitesse_vehicule : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_systeme_regulation_v_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_systeme_regulation_v_0_0 : entity is "HDMI_bd_systeme_regulation_v_0_0,systeme_regulation_vitesse,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_systeme_regulation_v_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_systeme_regulation_v_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_systeme_regulation_v_0_0 : entity is "systeme_regulation_vitesse,Vivado 2023.1";
end HDMI_bd_systeme_regulation_v_0_0;

architecture STRUCTURE of HDMI_bd_systeme_regulation_v_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.HDMI_bd_systeme_regulation_v_0_0_systeme_regulation_vitesse
     port map (
      Q(7 downto 0) => vitesse_vehicule(7 downto 0),
      clk => clk,
      reset => reset,
      vitesse_panneau_camera(7 downto 0) => vitesse_panneau_camera(7 downto 0),
      vitesse_panneau_valid => vitesse_panneau_valid
    );
end STRUCTURE;
