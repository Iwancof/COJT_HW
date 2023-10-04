-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri May 26 16:56:09 2023
-- Host        : COJTHW101 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/HW101.COJTHW/COJT/pattern/pattern/SIM/pattern.gen/sources_1/bd/design_1/ip/design_1_patgen_0_0/design_1_patgen_0_0_sim_netlist.vhdl
-- Design      : design_1_patgen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_patgen_0_0_syncgen is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DSP_HSYNC_X : out STD_LOGIC;
    DSP_VSYNC_X : out STD_LOGIC;
    DSP_preDE : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \HCNT_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[9]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \HCNT_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_6\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VCNT_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \HCNT_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VCNT_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \HCNT_reg[10]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VCNT_reg[10]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VCNT_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \HCNT_reg[0]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[0]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \HCNT_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DSP_HSYNC_X_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    DCLK : in STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_patgen_0_0_syncgen : entity is "syncgen";
end design_1_patgen_0_0_syncgen;

architecture STRUCTURE of design_1_patgen_0_0_syncgen is
  signal \^dsp_hsync_x\ : STD_LOGIC;
  signal DSP_HSYNC_X0 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_i_1_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_i_2_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_i_3_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_i_4_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_n_1 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_n_2 : STD_LOGIC;
  signal DSP_HSYNC_X0_carry_n_3 : STD_LOGIC;
  signal DSP_HSYNC_X1 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_i_1_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_i_2_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_i_3_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_i_4_n_0 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_n_1 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_n_2 : STD_LOGIC;
  signal DSP_HSYNC_X1_carry_n_3 : STD_LOGIC;
  signal DSP_HSYNC_X_i_1_n_0 : STD_LOGIC;
  signal \^dsp_vsync_x\ : STD_LOGIC;
  signal DSP_VSYNC_X0 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_i_1_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_i_2_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_i_3_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_i_4_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_n_1 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_n_2 : STD_LOGIC;
  signal DSP_VSYNC_X0_carry_n_3 : STD_LOGIC;
  signal DSP_VSYNC_X1 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_i_1_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_i_2_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_i_3_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_i_4_n_0 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_n_1 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_n_2 : STD_LOGIC;
  signal DSP_VSYNC_X1_carry_n_3 : STD_LOGIC;
  signal DSP_VSYNC_X_i_1_n_0 : STD_LOGIC;
  signal \^dsp_prede\ : STD_LOGIC;
  signal DSP_preDE0 : STD_LOGIC;
  signal DSP_preDE01_out : STD_LOGIC;
  signal DSP_preDE0_carry_i_1_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_i_2_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_i_3_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_i_4_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_i_5_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_i_6_n_0 : STD_LOGIC;
  signal DSP_preDE0_carry_n_1 : STD_LOGIC;
  signal DSP_preDE0_carry_n_2 : STD_LOGIC;
  signal DSP_preDE0_carry_n_3 : STD_LOGIC;
  signal \DSP_preDE0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \DSP_preDE0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \DSP_preDE0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal DSP_preDE_i_1_n_0 : STD_LOGIC;
  signal HCNT0 : STD_LOGIC;
  signal \HCNT0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \HCNT0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \HCNT0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal HCNT1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \HCNT[10]_i_1_n_0\ : STD_LOGIC;
  signal \HCNT[10]_i_3_n_0\ : STD_LOGIC;
  signal \HCNT[7]_i_2_n_0\ : STD_LOGIC;
  signal HCNT_reg : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal \^hcnt_reg[9]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal VCNT0 : STD_LOGIC;
  signal \VCNT0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \VCNT0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \VCNT0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal VCNT1 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \VCNT[0]_i_1_n_0\ : STD_LOGIC;
  signal \VCNT[10]_i_1_n_0\ : STD_LOGIC;
  signal \VCNT[10]_i_3_n_0\ : STD_LOGIC;
  signal \VCNT[6]_i_2_n_0\ : STD_LOGIC;
  signal VCNT_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \_inferred__6/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry_n_1\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry_n_2\ : STD_LOGIC;
  signal \_inferred__6/i___0_carry_n_3\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal NLW_DSP_HSYNC_X0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP_HSYNC_X1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP_VSYNC_X0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP_VSYNC_X1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP_preDE0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DSP_preDE0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_HCNT0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VCNT0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i___0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__6/i___0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__inferred__6/i___0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DSP_preDE0_carry_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of DSP_preDE0_carry_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \HCNT[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \HCNT[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \HCNT[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \HCNT[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \HCNT[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \HCNT[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \HCNT[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \HCNT[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \VCNT[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \VCNT[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \VCNT[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \VCNT[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \VCNT[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \VCNT[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \VCNT[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \VCNT[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i__carry_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__carry_i_5__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i__carry_i_5__9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i__carry_i_6__1\ : label is "soft_lutpair8";
begin
  DSP_HSYNC_X <= \^dsp_hsync_x\;
  DSP_VSYNC_X <= \^dsp_vsync_x\;
  DSP_preDE <= \^dsp_prede\;
  \HCNT_reg[9]_0\(4 downto 0) <= \^hcnt_reg[9]_0\(4 downto 0);
  Q(3 downto 0) <= \^q\(3 downto 0);
DSP_HSYNC_X0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_HSYNC_X0,
      CO(2) => DSP_HSYNC_X0_carry_n_1,
      CO(1) => DSP_HSYNC_X0_carry_n_2,
      CO(0) => DSP_HSYNC_X0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DSP_HSYNC_X0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DSP_HSYNC_X0_carry_i_1_n_0,
      S(2) => DSP_HSYNC_X0_carry_i_2_n_0,
      S(1) => DSP_HSYNC_X0_carry_i_3_n_0,
      S(0) => DSP_HSYNC_X0_carry_i_4_n_0
    );
DSP_HSYNC_X0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011111111111111"
    )
        port map (
      I0 => HCNT_reg(10),
      I1 => \^hcnt_reg[9]_0\(4),
      I2 => \HCNT[10]_i_3_n_0\,
      I3 => \^hcnt_reg[9]_0\(3),
      I4 => HCNT_reg(6),
      I5 => HCNT_reg(8),
      O => DSP_HSYNC_X0_carry_i_1_n_0
    );
DSP_HSYNC_X0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020009040409"
    )
        port map (
      I0 => \HCNT[10]_i_3_n_0\,
      I1 => HCNT_reg(6),
      I2 => HCNT_reg(8),
      I3 => RESOL(0),
      I4 => RESOL(1),
      I5 => \^hcnt_reg[9]_0\(3),
      O => DSP_HSYNC_X0_carry_i_2_n_0
    );
DSP_HSYNC_X0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000960009600000"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => HCNT_reg(4),
      I3 => HCNT_reg(5),
      I4 => HCNT_reg(3),
      I5 => \HCNT[7]_i_2_n_0\,
      O => DSP_HSYNC_X0_carry_i_3_n_0
    );
DSP_HSYNC_X0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(2),
      O => DSP_HSYNC_X0_carry_i_4_n_0
    );
DSP_HSYNC_X1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_HSYNC_X1,
      CO(2) => DSP_HSYNC_X1_carry_n_1,
      CO(1) => DSP_HSYNC_X1_carry_n_2,
      CO(0) => DSP_HSYNC_X1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DSP_HSYNC_X1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DSP_HSYNC_X1_carry_i_1_n_0,
      S(2) => DSP_HSYNC_X1_carry_i_2_n_0,
      S(1) => DSP_HSYNC_X1_carry_i_3_n_0,
      S(0) => DSP_HSYNC_X1_carry_i_4_n_0
    );
DSP_HSYNC_X1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011111111111111"
    )
        port map (
      I0 => HCNT_reg(10),
      I1 => \^hcnt_reg[9]_0\(4),
      I2 => \HCNT[10]_i_3_n_0\,
      I3 => \^hcnt_reg[9]_0\(3),
      I4 => HCNT_reg(6),
      I5 => HCNT_reg(8),
      O => DSP_HSYNC_X1_carry_i_1_n_0
    );
DSP_HSYNC_X1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4002"
    )
        port map (
      I0 => \HCNT[10]_i_3_n_0\,
      I1 => \^hcnt_reg[9]_0\(3),
      I2 => HCNT_reg(6),
      I3 => HCNT_reg(8),
      O => DSP_HSYNC_X1_carry_i_2_n_0
    );
DSP_HSYNC_X1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0024009024000024"
    )
        port map (
      I0 => \HCNT[7]_i_2_n_0\,
      I1 => HCNT_reg(3),
      I2 => HCNT_reg(4),
      I3 => HCNT_reg(5),
      I4 => RESOL(1),
      I5 => RESOL(0),
      O => DSP_HSYNC_X1_carry_i_3_n_0
    );
DSP_HSYNC_X1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(2),
      O => DSP_HSYNC_X1_carry_i_4_n_0
    );
DSP_HSYNC_X_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => DSP_HSYNC_X1,
      I1 => DSP_HSYNC_X0,
      I2 => \^dsp_hsync_x\,
      O => DSP_HSYNC_X_i_1_n_0
    );
DSP_HSYNC_X_reg: unisim.vcomponents.FDSE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_HSYNC_X_i_1_n_0,
      Q => \^dsp_hsync_x\,
      S => DSP_HSYNC_X_reg_0(0)
    );
DSP_VSYNC_X0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_VSYNC_X0,
      CO(2) => DSP_VSYNC_X0_carry_n_1,
      CO(1) => DSP_VSYNC_X0_carry_n_2,
      CO(0) => DSP_VSYNC_X0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DSP_VSYNC_X0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DSP_VSYNC_X0_carry_i_1_n_0,
      S(2) => DSP_VSYNC_X0_carry_i_2_n_0,
      S(1) => DSP_VSYNC_X0_carry_i_3_n_0,
      S(0) => DSP_VSYNC_X0_carry_i_4_n_0
    );
DSP_VSYNC_X0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => VCNT_reg(10),
      O => DSP_VSYNC_X0_carry_i_1_n_0
    );
DSP_VSYNC_X0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => DSP_VSYNC_X0_carry_i_2_n_0
    );
DSP_VSYNC_X0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020102"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => VCNT_reg(4),
      I2 => VCNT_reg(5),
      I3 => RESOL(1),
      I4 => RESOL(0),
      O => DSP_VSYNC_X0_carry_i_3_n_0
    );
DSP_VSYNC_X0_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0400"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => VCNT_reg(1),
      I3 => VCNT_reg(0),
      I4 => VCNT_reg(2),
      O => DSP_VSYNC_X0_carry_i_4_n_0
    );
DSP_VSYNC_X1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_VSYNC_X1,
      CO(2) => DSP_VSYNC_X1_carry_n_1,
      CO(1) => DSP_VSYNC_X1_carry_n_2,
      CO(0) => DSP_VSYNC_X1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DSP_VSYNC_X1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DSP_VSYNC_X1_carry_i_1_n_0,
      S(2) => DSP_VSYNC_X1_carry_i_2_n_0,
      S(1) => DSP_VSYNC_X1_carry_i_3_n_0,
      S(0) => DSP_VSYNC_X1_carry_i_4_n_0
    );
DSP_VSYNC_X1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => VCNT_reg(10),
      O => DSP_VSYNC_X1_carry_i_1_n_0
    );
DSP_VSYNC_X1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => DSP_VSYNC_X1_carry_i_2_n_0
    );
DSP_VSYNC_X1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10010110"
    )
        port map (
      I0 => VCNT_reg(5),
      I1 => VCNT_reg(4),
      I2 => RESOL(0),
      I3 => RESOL(1),
      I4 => VCNT_reg(3),
      O => DSP_VSYNC_X1_carry_i_3_n_0
    );
DSP_VSYNC_X1_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04104100"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => VCNT_reg(1),
      I4 => VCNT_reg(0),
      O => DSP_VSYNC_X1_carry_i_4_n_0
    );
DSP_VSYNC_X_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7740"
    )
        port map (
      I0 => DSP_VSYNC_X1,
      I1 => DSP_HSYNC_X1,
      I2 => DSP_VSYNC_X0,
      I3 => \^dsp_vsync_x\,
      O => DSP_VSYNC_X_i_1_n_0
    );
DSP_VSYNC_X_reg: unisim.vcomponents.FDSE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_VSYNC_X_i_1_n_0,
      Q => \^dsp_vsync_x\,
      S => DSP_HSYNC_X_reg_0(0)
    );
DSP_preDE0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_preDE01_out,
      CO(2) => DSP_preDE0_carry_n_1,
      CO(1) => DSP_preDE0_carry_n_2,
      CO(0) => DSP_preDE0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_DSP_preDE0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => DSP_preDE0_carry_i_1_n_0,
      S(2) => DSP_preDE0_carry_i_2_n_0,
      S(1) => DSP_preDE0_carry_i_3_n_0,
      S(0) => DSP_preDE0_carry_i_4_n_0
    );
DSP_preDE0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011111111111111"
    )
        port map (
      I0 => HCNT_reg(10),
      I1 => \^hcnt_reg[9]_0\(4),
      I2 => DSP_preDE0_carry_i_5_n_0,
      I3 => \^hcnt_reg[9]_0\(3),
      I4 => HCNT_reg(6),
      I5 => HCNT_reg(8),
      O => DSP_preDE0_carry_i_1_n_0
    );
DSP_preDE0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040290000290040"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => HCNT_reg(8),
      I3 => \^hcnt_reg[9]_0\(3),
      I4 => HCNT_reg(6),
      I5 => DSP_preDE0_carry_i_5_n_0,
      O => DSP_preDE0_carry_i_2_n_0
    );
DSP_preDE0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200009049040020"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => DSP_preDE0_carry_i_6_n_0,
      I3 => HCNT_reg(3),
      I4 => HCNT_reg(4),
      I5 => HCNT_reg(5),
      O => DSP_preDE0_carry_i_3_n_0
    );
DSP_preDE0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(2),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(0),
      O => DSP_preDE0_carry_i_4_n_0
    );
DSP_preDE0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => HCNT_reg(5),
      I1 => HCNT_reg(3),
      I2 => HCNT_reg(4),
      I3 => \^hcnt_reg[9]_0\(2),
      I4 => \^hcnt_reg[9]_0\(1),
      O => DSP_preDE0_carry_i_5_n_0
    );
DSP_preDE0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(1),
      I1 => \^hcnt_reg[9]_0\(2),
      O => DSP_preDE0_carry_i_6_n_0
    );
\DSP_preDE0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => DSP_preDE0,
      CO(2) => \DSP_preDE0_inferred__0/i__carry_n_1\,
      CO(1) => \DSP_preDE0_inferred__0/i__carry_n_2\,
      CO(0) => \DSP_preDE0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_DSP_preDE0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
DSP_preDE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44440040"
    )
        port map (
      I0 => DSP_HSYNC_X_reg_0(0),
      I1 => \_inferred__6/i___0_carry__1_n_1\,
      I2 => \^dsp_prede\,
      I3 => DSP_preDE0,
      I4 => DSP_preDE01_out,
      O => DSP_preDE_i_1_n_0
    );
DSP_preDE_reg: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_preDE_i_1_n_0,
      Q => \^dsp_prede\,
      R => '0'
    );
\HCNT0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => HCNT0,
      CO(2) => \HCNT0_inferred__0/i__carry_n_1\,
      CO(1) => \HCNT0_inferred__0/i__carry_n_2\,
      CO(0) => \HCNT0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_HCNT0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\HCNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      O => HCNT1(0)
    );
\HCNT[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DSP_HSYNC_X_reg_0(0),
      I1 => HCNT0,
      O => \HCNT[10]_i_1_n_0\
    );
\HCNT[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(4),
      I1 => HCNT_reg(8),
      I2 => HCNT_reg(6),
      I3 => \^hcnt_reg[9]_0\(3),
      I4 => \HCNT[10]_i_3_n_0\,
      I5 => HCNT_reg(10),
      O => HCNT1(10)
    );
\HCNT[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => HCNT_reg(5),
      I1 => HCNT_reg(3),
      I2 => HCNT_reg(4),
      I3 => \^hcnt_reg[9]_0\(0),
      I4 => \^hcnt_reg[9]_0\(1),
      I5 => \^hcnt_reg[9]_0\(2),
      O => \HCNT[10]_i_3_n_0\
    );
\HCNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => \^hcnt_reg[9]_0\(1),
      O => HCNT1(1)
    );
\HCNT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(1),
      I1 => \^hcnt_reg[9]_0\(0),
      I2 => \^hcnt_reg[9]_0\(2),
      O => HCNT1(2)
    );
\HCNT[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(2),
      I3 => HCNT_reg(3),
      O => HCNT1(3)
    );
\HCNT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => HCNT_reg(3),
      I1 => \^hcnt_reg[9]_0\(2),
      I2 => \^hcnt_reg[9]_0\(1),
      I3 => \^hcnt_reg[9]_0\(0),
      I4 => HCNT_reg(4),
      O => HCNT1(4)
    );
\HCNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F0F0F0F0F0F0F0"
    )
        port map (
      I0 => HCNT_reg(3),
      I1 => HCNT_reg(4),
      I2 => HCNT_reg(5),
      I3 => \^hcnt_reg[9]_0\(2),
      I4 => \^hcnt_reg[9]_0\(1),
      I5 => \^hcnt_reg[9]_0\(0),
      O => HCNT1(5)
    );
\HCNT[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \HCNT[7]_i_2_n_0\,
      I1 => HCNT_reg(4),
      I2 => HCNT_reg(3),
      I3 => HCNT_reg(5),
      I4 => HCNT_reg(6),
      O => HCNT1(6)
    );
\HCNT[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => HCNT_reg(6),
      I1 => HCNT_reg(5),
      I2 => HCNT_reg(3),
      I3 => HCNT_reg(4),
      I4 => \HCNT[7]_i_2_n_0\,
      I5 => \^hcnt_reg[9]_0\(3),
      O => HCNT1(7)
    );
\HCNT[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(2),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(0),
      O => \HCNT[7]_i_2_n_0\
    );
\HCNT[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \HCNT[10]_i_3_n_0\,
      I1 => HCNT_reg(6),
      I2 => \^hcnt_reg[9]_0\(3),
      I3 => HCNT_reg(8),
      O => HCNT1(8)
    );
\HCNT[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \HCNT[10]_i_3_n_0\,
      I1 => \^hcnt_reg[9]_0\(3),
      I2 => HCNT_reg(6),
      I3 => HCNT_reg(8),
      I4 => \^hcnt_reg[9]_0\(4),
      O => HCNT1(9)
    );
\HCNT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(0),
      Q => \^hcnt_reg[9]_0\(0),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(10),
      Q => HCNT_reg(10),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(1),
      Q => \^hcnt_reg[9]_0\(1),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(2),
      Q => \^hcnt_reg[9]_0\(2),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(3),
      Q => HCNT_reg(3),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(4),
      Q => HCNT_reg(4),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(5),
      Q => HCNT_reg(5),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(6),
      Q => HCNT_reg(6),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(7),
      Q => \^hcnt_reg[9]_0\(3),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(8),
      Q => HCNT_reg(8),
      R => \HCNT[10]_i_1_n_0\
    );
\HCNT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => HCNT1(9),
      Q => \^hcnt_reg[9]_0\(4),
      R => \HCNT[10]_i_1_n_0\
    );
\VCNT0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => VCNT0,
      CO(2) => \VCNT0_inferred__0/i__carry_n_1\,
      CO(1) => \VCNT0_inferred__0/i__carry_n_2\,
      CO(0) => \VCNT0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VCNT0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\VCNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VCNT_reg(0),
      O => \VCNT[0]_i_1_n_0\
    );
\VCNT[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => HCNT0,
      I1 => VCNT0,
      I2 => DSP_HSYNC_X_reg_0(0),
      O => \VCNT[10]_i_1_n_0\
    );
\VCNT[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \VCNT[10]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => VCNT_reg(10),
      O => VCNT1(10)
    );
\VCNT[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => VCNT_reg(2),
      I2 => VCNT_reg(0),
      I3 => VCNT_reg(1),
      I4 => VCNT_reg(3),
      I5 => VCNT_reg(5),
      O => \VCNT[10]_i_3_n_0\
    );
\VCNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(0),
      O => VCNT1(1)
    );
\VCNT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(0),
      I2 => VCNT_reg(2),
      O => VCNT1(2)
    );
\VCNT[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => VCNT_reg(0),
      I2 => VCNT_reg(1),
      I3 => VCNT_reg(3),
      O => VCNT1(3)
    );
\VCNT[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => VCNT_reg(1),
      I2 => VCNT_reg(0),
      I3 => VCNT_reg(2),
      I4 => VCNT_reg(4),
      O => VCNT1(4)
    );
\VCNT[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => VCNT_reg(2),
      I2 => VCNT_reg(0),
      I3 => VCNT_reg(1),
      I4 => VCNT_reg(3),
      I5 => VCNT_reg(5),
      O => VCNT1(5)
    );
\VCNT[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => VCNT_reg(5),
      I1 => VCNT_reg(3),
      I2 => \VCNT[6]_i_2_n_0\,
      I3 => VCNT_reg(2),
      I4 => VCNT_reg(4),
      I5 => \^q\(0),
      O => VCNT1(6)
    );
\VCNT[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => VCNT_reg(1),
      O => \VCNT[6]_i_2_n_0\
    );
\VCNT[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \VCNT[10]_i_3_n_0\,
      I2 => \^q\(1),
      O => VCNT1(7)
    );
\VCNT[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(1),
      I1 => \VCNT[10]_i_3_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => VCNT1(8)
    );
\VCNT[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \VCNT[10]_i_3_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => VCNT1(9)
    );
\VCNT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => \VCNT[0]_i_1_n_0\,
      Q => VCNT_reg(0),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(10),
      Q => VCNT_reg(10),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(1),
      Q => VCNT_reg(1),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(2),
      Q => VCNT_reg(2),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(3),
      Q => VCNT_reg(3),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(4),
      Q => VCNT_reg(4),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(5),
      Q => VCNT_reg(5),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(6),
      Q => \^q\(0),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(7),
      Q => \^q\(1),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(8),
      Q => \^q\(2),
      R => \VCNT[10]_i_1_n_0\
    );
\VCNT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => HCNT0,
      D => VCNT1(9),
      Q => \^q\(3),
      R => \VCNT[10]_i_1_n_0\
    );
\_inferred__6/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__6/i___0_carry_n_0\,
      CO(2) => \_inferred__6/i___0_carry_n_1\,
      CO(1) => \_inferred__6/i___0_carry_n_2\,
      CO(0) => \_inferred__6/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => \i___0_carry_i_3_n_0\,
      DI(0) => '1',
      O(3 downto 0) => \NLW__inferred__6/i___0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry_i_4_n_0\,
      S(2) => \i___0_carry_i_5_n_0\,
      S(1) => \i___0_carry_i_6_n_0\,
      S(0) => \i___0_carry_i_7_n_0\
    );
\_inferred__6/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i___0_carry_n_0\,
      CO(3) => \_inferred__6/i___0_carry__0_n_0\,
      CO(2) => \_inferred__6/i___0_carry__0_n_1\,
      CO(1) => \_inferred__6/i___0_carry__0_n_2\,
      CO(0) => \_inferred__6/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => \^q\(1 downto 0),
      DI(1) => \i___0_carry__0_i_1_n_0\,
      DI(0) => \i___0_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW__inferred__6/i___0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry__0_i_3_n_0\,
      S(2) => \i___0_carry__0_i_4_n_0\,
      S(1) => \i___0_carry__0_i_5_n_0\,
      S(0) => \i___0_carry__0_i_6_n_0\
    );
\_inferred__6/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__6/i___0_carry__0_n_0\,
      CO(3) => \NLW__inferred__6/i___0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__6/i___0_carry__1_n_1\,
      CO(1) => \_inferred__6/i___0_carry__1_n_2\,
      CO(0) => \_inferred__6/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => VCNT_reg(10),
      DI(1 downto 0) => \^q\(3 downto 2),
      O(3 downto 0) => \NLW__inferred__6/i___0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i___0_carry__1_i_1_n_0\,
      S(1) => \i___0_carry__1_i_2_n_0\,
      S(0) => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => VCNT_reg(5),
      I3 => \^q\(0),
      O => \i___0_carry__0_i_4_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6CC"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => VCNT_reg(5),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6336"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => VCNT_reg(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i___0_carry__0_i_6_n_0\
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VCNT_reg(10),
      O => \i___0_carry__1_i_1_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => VCNT_reg(2),
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => VCNT_reg(2),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B649"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => VCNT_reg(3),
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6CC"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(2),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i___0_carry_i_5_n_0\
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC6"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => VCNT_reg(1),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i___0_carry_i_6_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => \i___0_carry_i_7_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09902409"
    )
        port map (
      I0 => \i__carry_i_5_n_0\,
      I1 => \^hcnt_reg[9]_0\(4),
      I2 => HCNT_reg(10),
      I3 => RESOL(0),
      I4 => RESOL(1),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09902409"
    )
        port map (
      I0 => \i__carry_i_5__0_n_0\,
      I1 => \^hcnt_reg[9]_0\(4),
      I2 => HCNT_reg(10),
      I3 => RESOL(0),
      I4 => RESOL(1),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09092409"
    )
        port map (
      I0 => \i__carry_i_5__9_n_0\,
      I1 => \^q\(3),
      I2 => VCNT_reg(10),
      I3 => RESOL(1),
      I4 => RESOL(0),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200204240140200"
    )
        port map (
      I0 => HCNT_reg(8),
      I1 => \^hcnt_reg[9]_0\(3),
      I2 => RESOL(1),
      I3 => RESOL(0),
      I4 => HCNT_reg(6),
      I5 => DSP_preDE0_carry_i_5_n_0,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1041001008002408"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(3),
      I1 => HCNT_reg(6),
      I2 => \HCNT[10]_i_3_n_0\,
      I3 => RESOL(1),
      I4 => RESOL(0),
      I5 => HCNT_reg(8),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002DD2000000"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \VCNT[10]_i_3_n_0\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1008210040021008"
    )
        port map (
      I0 => DSP_preDE0_carry_i_6_n_0,
      I1 => HCNT_reg(5),
      I2 => HCNT_reg(3),
      I3 => HCNT_reg(4),
      I4 => RESOL(0),
      I5 => RESOL(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1008210040021008"
    )
        port map (
      I0 => \HCNT[7]_i_2_n_0\,
      I1 => HCNT_reg(5),
      I2 => HCNT_reg(3),
      I3 => HCNT_reg(4),
      I4 => RESOL(0),
      I5 => RESOL(1),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0409020000200409"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => VCNT_reg(4),
      I3 => VCNT_reg(5),
      I4 => VCNT_reg(3),
      I5 => \i__carry_i_6__1_n_0\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(2),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02080402"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => VCNT_reg(0),
      I2 => VCNT_reg(1),
      I3 => RESOL(1),
      I4 => RESOL(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_7\(0)
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => \^hcnt_reg[9]_0\(1),
      I2 => \^hcnt_reg[9]_0\(2),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_8\(0)
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_9\(0)
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_10\(0)
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_11\(0)
    );
\i__carry_i_4__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_12\(0)
    );
\i__carry_i_4__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_13\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => HCNT_reg(8),
      I1 => HCNT_reg(6),
      I2 => \^hcnt_reg[9]_0\(3),
      I3 => DSP_preDE0_carry_i_5_n_0,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => HCNT_reg(8),
      I1 => HCNT_reg(6),
      I2 => \^hcnt_reg[9]_0\(3),
      I3 => \HCNT[10]_i_3_n_0\,
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \VCNT[10]_i_3_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \i__carry_i_5__9_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(0),
      I2 => VCNT_reg(2),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_0\(0)
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_1\(0)
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_2\(0)
    );
\i__carry_i_8__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_3\(0)
    );
\i__carry_i_8__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_4\(0)
    );
\i__carry_i_8__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_5\(0)
    );
\i__carry_i_8__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^hcnt_reg[9]_0\(0),
      I1 => O(0),
      O => \HCNT_reg[0]_6\(0)
    );
\raw_horizontal_offset__1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"63C6"
    )
        port map (
      I0 => HCNT_reg(5),
      I1 => HCNT_reg(6),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => DI(1)
    );
\raw_horizontal_offset__1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA28"
    )
        port map (
      I0 => HCNT_reg(4),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => HCNT_reg(3),
      O => DI(0)
    );
\raw_horizontal_offset__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => HCNT_reg(8),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => \HCNT_reg[8]_0\(3)
    );
\raw_horizontal_offset__1_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45C7BA38"
    )
        port map (
      I0 => HCNT_reg(6),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => HCNT_reg(5),
      I4 => \^hcnt_reg[9]_0\(3),
      O => \HCNT_reg[8]_0\(2)
    );
\raw_horizontal_offset__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => HCNT_reg(6),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => HCNT_reg(5),
      O => \HCNT_reg[8]_0\(1)
    );
\raw_horizontal_offset__1_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78E13C78"
    )
        port map (
      I0 => HCNT_reg(3),
      I1 => HCNT_reg(4),
      I2 => HCNT_reg(5),
      I3 => RESOL(1),
      I4 => RESOL(0),
      O => \HCNT_reg[8]_0\(0)
    );
\raw_horizontal_offset__1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HCNT_reg(10),
      O => \HCNT_reg[10]_0\(1)
    );
\raw_horizontal_offset__1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => HCNT_reg(8),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => \^hcnt_reg[9]_0\(4),
      O => \HCNT_reg[10]_0\(0)
    );
\raw_horizontal_offset__1_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9C99"
    )
        port map (
      I0 => HCNT_reg(3),
      I1 => HCNT_reg(4),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \HCNT_reg[3]_0\(1)
    );
\raw_horizontal_offset__1_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => HCNT_reg(3),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \HCNT_reg[3]_0\(0)
    );
\raw_vertical_offset__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \VCNT_reg[4]_0\(1)
    );
\raw_vertical_offset__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \VCNT_reg[4]_0\(0)
    );
\raw_vertical_offset__0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \VCNT_reg[7]_0\(3)
    );
\raw_vertical_offset__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => VCNT_reg(5),
      I3 => \^q\(0),
      O => \VCNT_reg[7]_0\(2)
    );
\raw_vertical_offset__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6CC"
    )
        port map (
      I0 => VCNT_reg(4),
      I1 => VCNT_reg(5),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \VCNT_reg[7]_0\(1)
    );
\raw_vertical_offset__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6336"
    )
        port map (
      I0 => VCNT_reg(3),
      I1 => VCNT_reg(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \VCNT_reg[7]_0\(0)
    );
\raw_vertical_offset__0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => VCNT_reg(10),
      O => \VCNT_reg[10]_0\(2)
    );
\raw_vertical_offset__0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \VCNT_reg[10]_0\(1)
    );
\raw_vertical_offset__0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \VCNT_reg[10]_0\(0)
    );
\raw_vertical_offset__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \VCNT_reg[2]_0\(1)
    );
\raw_vertical_offset__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(0),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \VCNT_reg[2]_0\(0)
    );
\raw_vertical_offset__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D32C"
    )
        port map (
      I0 => VCNT_reg(2),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => VCNT_reg(3),
      O => S(3)
    );
\raw_vertical_offset__0_carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F087F0F0"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => VCNT_reg(1),
      I2 => VCNT_reg(2),
      I3 => RESOL(0),
      I4 => RESOL(1),
      O => S(2)
    );
\raw_vertical_offset__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5565"
    )
        port map (
      I0 => VCNT_reg(1),
      I1 => VCNT_reg(0),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => S(1)
    );
\raw_vertical_offset__0_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => VCNT_reg(0),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_patgen_0_0_patgen is
  port (
    DSP_DE : out STD_LOGIC;
    DSP_R : out STD_LOGIC_VECTOR ( 0 to 0 );
    DSP_G : out STD_LOGIC_VECTOR ( 0 to 0 );
    DSP_B : out STD_LOGIC_VECTOR ( 0 to 0 );
    DSP_HSYNC_X : out STD_LOGIC;
    DSP_VSYNC_X : out STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_patgen_0_0_patgen : entity is "patgen";
end design_1_patgen_0_0_patgen;

architecture STRUCTURE of design_1_patgen_0_0_patgen is
  signal DRST : STD_LOGIC;
  signal DSP_B0 : STD_LOGIC;
  signal \DSP_B[0]_i_2_n_0\ : STD_LOGIC;
  signal \DSP_B[0]_i_3_n_0\ : STD_LOGIC;
  signal \DSP_B[0]_i_4_n_0\ : STD_LOGIC;
  signal \DSP_B[0]_i_5_n_0\ : STD_LOGIC;
  signal \DSP_B[0]_i_6_n_0\ : STD_LOGIC;
  signal DSP_G0 : STD_LOGIC;
  signal \DSP_G[0]_i_2_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_3_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_4_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_5_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_6_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_7_n_0\ : STD_LOGIC;
  signal \DSP_G[0]_i_8_n_0\ : STD_LOGIC;
  signal DSP_R0 : STD_LOGIC;
  signal \DSP_R[0]_i_10_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_11_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_2_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_3_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_4_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_5_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_6_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_7_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_8_n_0\ : STD_LOGIC;
  signal \DSP_R[0]_i_9_n_0\ : STD_LOGIC;
  signal DSP_preDE : STD_LOGIC;
  signal HCNT_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal VCNT_reg : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal \drst_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal h00 : STD_LOGIC;
  signal h00_carry_i_1_n_0 : STD_LOGIC;
  signal h00_carry_i_2_n_0 : STD_LOGIC;
  signal h00_carry_i_3_n_0 : STD_LOGIC;
  signal h00_carry_i_4_n_0 : STD_LOGIC;
  signal h00_carry_i_5_n_0 : STD_LOGIC;
  signal h00_carry_i_6_n_0 : STD_LOGIC;
  signal h00_carry_n_1 : STD_LOGIC;
  signal h00_carry_n_2 : STD_LOGIC;
  signal h00_carry_n_3 : STD_LOGIC;
  signal h10 : STD_LOGIC;
  signal h1011_in : STD_LOGIC;
  signal h10_carry_i_1_n_0 : STD_LOGIC;
  signal h10_carry_i_2_n_0 : STD_LOGIC;
  signal h10_carry_i_3_n_0 : STD_LOGIC;
  signal h10_carry_i_4_n_0 : STD_LOGIC;
  signal h10_carry_i_5_n_0 : STD_LOGIC;
  signal h10_carry_i_6_n_0 : STD_LOGIC;
  signal h10_carry_i_7_n_0 : STD_LOGIC;
  signal h10_carry_n_1 : STD_LOGIC;
  signal h10_carry_n_2 : STD_LOGIC;
  signal h10_carry_n_3 : STD_LOGIC;
  signal \h10_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h10_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h10_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h10_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h10_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h2012_in : STD_LOGIC;
  signal h20_carry_i_1_n_0 : STD_LOGIC;
  signal h20_carry_i_2_n_0 : STD_LOGIC;
  signal h20_carry_i_3_n_0 : STD_LOGIC;
  signal h20_carry_i_4_n_0 : STD_LOGIC;
  signal h20_carry_i_5_n_0 : STD_LOGIC;
  signal h20_carry_i_6_n_0 : STD_LOGIC;
  signal h20_carry_i_7_n_0 : STD_LOGIC;
  signal h20_carry_n_0 : STD_LOGIC;
  signal h20_carry_n_1 : STD_LOGIC;
  signal h20_carry_n_2 : STD_LOGIC;
  signal h20_carry_n_3 : STD_LOGIC;
  signal \h20_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h20_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h20_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h20_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h20_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h30 : STD_LOGIC;
  signal h30_carry_i_1_n_0 : STD_LOGIC;
  signal h30_carry_i_2_n_0 : STD_LOGIC;
  signal h30_carry_i_3_n_0 : STD_LOGIC;
  signal h30_carry_i_4_n_0 : STD_LOGIC;
  signal h30_carry_i_5_n_0 : STD_LOGIC;
  signal h30_carry_n_2 : STD_LOGIC;
  signal h30_carry_n_3 : STD_LOGIC;
  signal \h30_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \h30_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h30_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h30_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h30_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h30_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h40 : STD_LOGIC;
  signal h4014_in : STD_LOGIC;
  signal h40_carry_i_1_n_0 : STD_LOGIC;
  signal h40_carry_i_2_n_0 : STD_LOGIC;
  signal h40_carry_i_3_n_0 : STD_LOGIC;
  signal h40_carry_i_4_n_0 : STD_LOGIC;
  signal h40_carry_i_5_n_0 : STD_LOGIC;
  signal h40_carry_i_6_n_0 : STD_LOGIC;
  signal h40_carry_i_7_n_0 : STD_LOGIC;
  signal h40_carry_n_1 : STD_LOGIC;
  signal h40_carry_n_2 : STD_LOGIC;
  signal h40_carry_n_3 : STD_LOGIC;
  signal \h40_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h40_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h40_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h40_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h40_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h5015_in : STD_LOGIC;
  signal h50_carry_i_1_n_0 : STD_LOGIC;
  signal h50_carry_i_2_n_0 : STD_LOGIC;
  signal h50_carry_i_3_n_0 : STD_LOGIC;
  signal h50_carry_i_4_n_0 : STD_LOGIC;
  signal h50_carry_i_5_n_0 : STD_LOGIC;
  signal h50_carry_i_6_n_0 : STD_LOGIC;
  signal h50_carry_i_7_n_0 : STD_LOGIC;
  signal h50_carry_n_0 : STD_LOGIC;
  signal h50_carry_n_1 : STD_LOGIC;
  signal h50_carry_n_2 : STD_LOGIC;
  signal h50_carry_n_3 : STD_LOGIC;
  signal \h50_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h50_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h50_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h50_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h50_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h60_carry_i_1_n_0 : STD_LOGIC;
  signal h60_carry_i_2_n_0 : STD_LOGIC;
  signal h60_carry_i_3_n_0 : STD_LOGIC;
  signal h60_carry_i_4_n_0 : STD_LOGIC;
  signal h60_carry_i_5_n_0 : STD_LOGIC;
  signal h60_carry_i_6_n_0 : STD_LOGIC;
  signal h60_carry_i_7_n_0 : STD_LOGIC;
  signal h60_carry_i_8_n_0 : STD_LOGIC;
  signal h60_carry_n_0 : STD_LOGIC;
  signal h60_carry_n_1 : STD_LOGIC;
  signal h60_carry_n_2 : STD_LOGIC;
  signal h60_carry_n_3 : STD_LOGIC;
  signal \h60_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \h60_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h60_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h60_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h60_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h60_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal h70 : STD_LOGIC;
  signal h70_carry_i_1_n_0 : STD_LOGIC;
  signal h70_carry_i_2_n_0 : STD_LOGIC;
  signal h70_carry_i_3_n_0 : STD_LOGIC;
  signal h70_carry_i_4_n_0 : STD_LOGIC;
  signal h70_carry_i_5_n_0 : STD_LOGIC;
  signal h70_carry_i_6_n_0 : STD_LOGIC;
  signal h70_carry_n_2 : STD_LOGIC;
  signal h70_carry_n_3 : STD_LOGIC;
  signal \h70_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \h70_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \h70_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \h70_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \h70_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \h70_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__8_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal raw_horizontal_offset : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \raw_horizontal_offset__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry__0_n_0\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry__0_n_1\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry__0_n_2\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry__0_n_3\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry__1_n_3\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry_n_0\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry_n_1\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry_n_2\ : STD_LOGIC;
  signal \raw_horizontal_offset__1_carry_n_3\ : STD_LOGIC;
  signal raw_vertical_offset : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \raw_vertical_offset__0_carry__0_n_0\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry__0_n_1\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry__0_n_2\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry__0_n_3\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry__1_n_2\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry__1_n_3\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_n_0\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_n_1\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_n_2\ : STD_LOGIC;
  signal \raw_vertical_offset__0_carry_n_3\ : STD_LOGIC;
  signal syncgen_n_10 : STD_LOGIC;
  signal syncgen_n_11 : STD_LOGIC;
  signal syncgen_n_17 : STD_LOGIC;
  signal syncgen_n_18 : STD_LOGIC;
  signal syncgen_n_19 : STD_LOGIC;
  signal syncgen_n_20 : STD_LOGIC;
  signal syncgen_n_21 : STD_LOGIC;
  signal syncgen_n_22 : STD_LOGIC;
  signal syncgen_n_23 : STD_LOGIC;
  signal syncgen_n_24 : STD_LOGIC;
  signal syncgen_n_25 : STD_LOGIC;
  signal syncgen_n_26 : STD_LOGIC;
  signal syncgen_n_27 : STD_LOGIC;
  signal syncgen_n_28 : STD_LOGIC;
  signal syncgen_n_29 : STD_LOGIC;
  signal syncgen_n_30 : STD_LOGIC;
  signal syncgen_n_31 : STD_LOGIC;
  signal syncgen_n_32 : STD_LOGIC;
  signal syncgen_n_33 : STD_LOGIC;
  signal syncgen_n_34 : STD_LOGIC;
  signal syncgen_n_35 : STD_LOGIC;
  signal syncgen_n_36 : STD_LOGIC;
  signal syncgen_n_37 : STD_LOGIC;
  signal syncgen_n_38 : STD_LOGIC;
  signal syncgen_n_39 : STD_LOGIC;
  signal syncgen_n_40 : STD_LOGIC;
  signal syncgen_n_41 : STD_LOGIC;
  signal syncgen_n_42 : STD_LOGIC;
  signal syncgen_n_43 : STD_LOGIC;
  signal syncgen_n_44 : STD_LOGIC;
  signal syncgen_n_45 : STD_LOGIC;
  signal syncgen_n_46 : STD_LOGIC;
  signal syncgen_n_47 : STD_LOGIC;
  signal syncgen_n_48 : STD_LOGIC;
  signal syncgen_n_49 : STD_LOGIC;
  signal syncgen_n_50 : STD_LOGIC;
  signal syncgen_n_7 : STD_LOGIC;
  signal syncgen_n_8 : STD_LOGIC;
  signal syncgen_n_9 : STD_LOGIC;
  signal v00 : STD_LOGIC;
  signal \v00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal v00_carry_i_1_n_0 : STD_LOGIC;
  signal v00_carry_i_2_n_0 : STD_LOGIC;
  signal v00_carry_i_3_n_0 : STD_LOGIC;
  signal v00_carry_i_4_n_0 : STD_LOGIC;
  signal v00_carry_i_5_n_0 : STD_LOGIC;
  signal v00_carry_i_6_n_0 : STD_LOGIC;
  signal v00_carry_i_7_n_0 : STD_LOGIC;
  signal v00_carry_i_8_n_0 : STD_LOGIC;
  signal v00_carry_n_0 : STD_LOGIC;
  signal v00_carry_n_1 : STD_LOGIC;
  signal v00_carry_n_2 : STD_LOGIC;
  signal v00_carry_n_3 : STD_LOGIC;
  signal v10 : STD_LOGIC;
  signal v1019_in : STD_LOGIC;
  signal v10_carry_i_1_n_0 : STD_LOGIC;
  signal v10_carry_i_2_n_0 : STD_LOGIC;
  signal v10_carry_i_3_n_0 : STD_LOGIC;
  signal v10_carry_i_4_n_0 : STD_LOGIC;
  signal v10_carry_i_5_n_0 : STD_LOGIC;
  signal v10_carry_i_6_n_0 : STD_LOGIC;
  signal v10_carry_i_7_n_0 : STD_LOGIC;
  signal v10_carry_n_1 : STD_LOGIC;
  signal v10_carry_n_2 : STD_LOGIC;
  signal v10_carry_n_3 : STD_LOGIC;
  signal \v10_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \v10_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \v10_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \v10_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \v10_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal v20 : STD_LOGIC;
  signal v2020_in : STD_LOGIC;
  signal \v20_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v20_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v20_carry__0_n_3\ : STD_LOGIC;
  signal v20_carry_i_10_n_0 : STD_LOGIC;
  signal v20_carry_i_11_n_0 : STD_LOGIC;
  signal v20_carry_i_12_n_0 : STD_LOGIC;
  signal v20_carry_i_13_n_0 : STD_LOGIC;
  signal v20_carry_i_1_n_0 : STD_LOGIC;
  signal v20_carry_i_2_n_0 : STD_LOGIC;
  signal v20_carry_i_3_n_0 : STD_LOGIC;
  signal v20_carry_i_4_n_0 : STD_LOGIC;
  signal v20_carry_i_5_n_0 : STD_LOGIC;
  signal v20_carry_i_6_n_0 : STD_LOGIC;
  signal v20_carry_i_7_n_0 : STD_LOGIC;
  signal v20_carry_i_8_n_0 : STD_LOGIC;
  signal v20_carry_i_9_n_2 : STD_LOGIC;
  signal v20_carry_i_9_n_3 : STD_LOGIC;
  signal v20_carry_n_0 : STD_LOGIC;
  signal v20_carry_n_1 : STD_LOGIC;
  signal v20_carry_n_2 : STD_LOGIC;
  signal v20_carry_n_3 : STD_LOGIC;
  signal \v20_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \v20_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \v20_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \v20_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \v20_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal v30 : STD_LOGIC;
  signal v3021_in : STD_LOGIC;
  signal v30_carry_i_1_n_0 : STD_LOGIC;
  signal v30_carry_i_2_n_0 : STD_LOGIC;
  signal v30_carry_i_3_n_0 : STD_LOGIC;
  signal v30_carry_i_4_n_0 : STD_LOGIC;
  signal v30_carry_i_5_n_0 : STD_LOGIC;
  signal v30_carry_i_6_n_0 : STD_LOGIC;
  signal v30_carry_i_7_n_0 : STD_LOGIC;
  signal v30_carry_i_8_n_0 : STD_LOGIC;
  signal v30_carry_n_1 : STD_LOGIC;
  signal v30_carry_n_2 : STD_LOGIC;
  signal v30_carry_n_3 : STD_LOGIC;
  signal \v30_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \v30_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \v30_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \v30_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \v30_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \v30_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal v31 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal \v31__9_carry_i_1_n_0\ : STD_LOGIC;
  signal \v31__9_carry_i_2_n_0\ : STD_LOGIC;
  signal \v31__9_carry_i_3_n_0\ : STD_LOGIC;
  signal \v31__9_carry_i_4_n_0\ : STD_LOGIC;
  signal \v31__9_carry_i_5_n_0\ : STD_LOGIC;
  signal \v31__9_carry_n_1\ : STD_LOGIC;
  signal \v31__9_carry_n_3\ : STD_LOGIC;
  signal v31_carry_i_1_n_0 : STD_LOGIC;
  signal v31_carry_i_2_n_0 : STD_LOGIC;
  signal v31_carry_n_1 : STD_LOGIC;
  signal v31_carry_n_3 : STD_LOGIC;
  signal NLW_h00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h10_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h10_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h10_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h20_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h20_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h20_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h30_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_h30_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h30_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h30_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h30_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h40_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h40_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h40_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h40_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h50_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h50_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h50_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h50_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h60_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h60_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h60_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h60_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_h70_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_h70_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h70_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_h70_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h70_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_raw_horizontal_offset__1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_raw_horizontal_offset__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_raw_vertical_offset__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_raw_vertical_offset__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v10_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v10_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v10_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v20_carry_i_9_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_v20_carry_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v20_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v20_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v20_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v30_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v30_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v30_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v30_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v31__9_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_v31__9_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_v31_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_v31_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DSP_B[0]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DSP_G[0]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \DSP_G[0]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DSP_R[0]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \DSP_R[0]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \DSP_R[0]_i_7\ : label is "soft_lutpair12";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of h00_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of h10_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \h10_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h10_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h20_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h20_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of h30_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of h40_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \h40_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h40_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h50_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \h50_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of h70_carry : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \raw_horizontal_offset__1_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_horizontal_offset__1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_horizontal_offset__1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_vertical_offset__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_vertical_offset__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \raw_vertical_offset__0_carry__1\ : label is 35;
  attribute COMPARATOR_THRESHOLD of v00_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v00_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of v10_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v10_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \v10_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of v20_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v20_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \v20_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \v20_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of v30_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \v30_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \v30_inferred__0/i__carry__0\ : label is 11;
begin
\DSP_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \DSP_B[0]_i_2_n_0\,
      I1 => \DSP_B[0]_i_3_n_0\,
      I2 => \DSP_B[0]_i_4_n_0\,
      I3 => \DSP_G[0]_i_3_n_0\,
      I4 => \DSP_B[0]_i_5_n_0\,
      I5 => \DSP_B[0]_i_6_n_0\,
      O => DSP_B0
    );
\DSP_B[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h5015_in,
      I1 => h50_carry_n_0,
      O => \DSP_B[0]_i_2_n_0\
    );
\DSP_B[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => v30,
      I1 => v3021_in,
      I2 => v00,
      O => \DSP_B[0]_i_3_n_0\
    );
\DSP_B[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \DSP_R[0]_i_5_n_0\,
      I1 => \h30_inferred__0/i__carry__0_n_2\,
      I2 => h30,
      I3 => \DSP_B[0]_i_3_n_0\,
      I4 => h2012_in,
      I5 => h20_carry_n_0,
      O => \DSP_B[0]_i_4_n_0\
    );
\DSP_B[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => h5015_in,
      I1 => h50_carry_n_0,
      I2 => \DSP_R[0]_i_10_n_0\,
      I3 => \DSP_G[0]_i_8_n_0\,
      I4 => h4014_in,
      I5 => h40,
      O => \DSP_B[0]_i_5_n_0\
    );
\DSP_B[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => v00,
      I1 => \h70_inferred__0/i__carry__0_n_2\,
      I2 => h70,
      I3 => \DSP_G[0]_i_7_n_0\,
      I4 => \h60_inferred__0/i__carry__0_n_2\,
      I5 => h60_carry_n_0,
      O => \DSP_B[0]_i_6_n_0\
    );
\DSP_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_B0,
      Q => DSP_B(0),
      R => DRST
    );
DSP_DE_reg: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_preDE,
      Q => DSP_DE,
      R => DRST
    );
\DSP_G[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DSP_G[0]_i_2_n_0\,
      I1 => \DSP_G[0]_i_3_n_0\,
      I2 => \DSP_R[0]_i_6_n_0\,
      I3 => \DSP_G[0]_i_4_n_0\,
      I4 => \DSP_G[0]_i_5_n_0\,
      O => DSP_G0
    );
\DSP_G[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \DSP_R[0]_i_5_n_0\,
      I1 => h5015_in,
      I2 => h50_carry_n_0,
      I3 => \h30_inferred__0/i__carry__0_n_2\,
      I4 => h30,
      I5 => \DSP_R[0]_i_10_n_0\,
      O => \DSP_G[0]_i_2_n_0\
    );
\DSP_G[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF800F800F800"
    )
        port map (
      I0 => h70,
      I1 => \h70_inferred__0/i__carry__0_n_2\,
      I2 => \DSP_G[0]_i_6_n_0\,
      I3 => \DSP_R[0]_i_10_n_0\,
      I4 => h00,
      I5 => \DSP_G[0]_i_7_n_0\,
      O => \DSP_G[0]_i_3_n_0\
    );
\DSP_G[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \DSP_G[0]_i_7_n_0\,
      I1 => h2012_in,
      I2 => h20_carry_n_0,
      I3 => v00,
      I4 => h1011_in,
      I5 => h10,
      O => \DSP_G[0]_i_4_n_0\
    );
\DSP_G[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => \DSP_G[0]_i_8_n_0\,
      I1 => \h60_inferred__0/i__carry__0_n_2\,
      I2 => h60_carry_n_0,
      I3 => \DSP_B[0]_i_3_n_0\,
      I4 => h4014_in,
      I5 => h40,
      O => \DSP_G[0]_i_5_n_0\
    );
\DSP_G[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h1011_in,
      I1 => h10,
      O => \DSP_G[0]_i_6_n_0\
    );
\DSP_G[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => v30,
      I1 => v3021_in,
      I2 => v10,
      I3 => v1019_in,
      O => \DSP_G[0]_i_7_n_0\
    );
\DSP_G[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => v20,
      I1 => v2020_in,
      I2 => v10,
      I3 => v1019_in,
      O => \DSP_G[0]_i_8_n_0\
    );
\DSP_G_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_G0,
      Q => DSP_G(0),
      R => DRST
    );
\DSP_R[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFAFA"
    )
        port map (
      I0 => \DSP_R[0]_i_2_n_0\,
      I1 => h00,
      I2 => \DSP_R[0]_i_3_n_0\,
      I3 => \DSP_R[0]_i_4_n_0\,
      I4 => \DSP_R[0]_i_5_n_0\,
      I5 => \DSP_R[0]_i_6_n_0\,
      O => DSP_R0
    );
\DSP_R[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v2020_in,
      I1 => v20,
      O => \DSP_R[0]_i_10_n_0\
    );
\DSP_R[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => h60_carry_n_0,
      I1 => \h60_inferred__0/i__carry__0_n_2\,
      I2 => h20_carry_n_0,
      I3 => h2012_in,
      O => \DSP_R[0]_i_11_n_0\
    );
\DSP_R[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFC8FFC8"
    )
        port map (
      I0 => \DSP_R[0]_i_7_n_0\,
      I1 => \DSP_R[0]_i_8_n_0\,
      I2 => v00,
      I3 => \DSP_R[0]_i_9_n_0\,
      I4 => \DSP_R[0]_i_10_n_0\,
      I5 => \DSP_R[0]_i_11_n_0\,
      O => \DSP_R[0]_i_2_n_0\
    );
\DSP_R[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800080008000"
    )
        port map (
      I0 => h50_carry_n_0,
      I1 => h5015_in,
      I2 => v1019_in,
      I3 => v10,
      I4 => v2020_in,
      I5 => v20,
      O => \DSP_R[0]_i_3_n_0\
    );
\DSP_R[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => h4014_in,
      I1 => h40,
      O => \DSP_R[0]_i_4_n_0\
    );
\DSP_R[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => v10,
      I1 => v1019_in,
      I2 => v00,
      O => \DSP_R[0]_i_5_n_0\
    );
\DSP_R[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => h70,
      I1 => \h70_inferred__0/i__carry__0_n_2\,
      I2 => v00,
      I3 => v3021_in,
      I4 => v30,
      O => \DSP_R[0]_i_6_n_0\
    );
\DSP_R[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => v3021_in,
      I1 => v30,
      O => \DSP_R[0]_i_7_n_0\
    );
\DSP_R[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \h30_inferred__0/i__carry__0_n_2\,
      I1 => h30,
      O => \DSP_R[0]_i_8_n_0\
    );
\DSP_R[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888800080008000"
    )
        port map (
      I0 => h10,
      I1 => h1011_in,
      I2 => v1019_in,
      I3 => v10,
      I4 => v2020_in,
      I5 => v20,
      O => \DSP_R[0]_i_9_n_0\
    );
\DSP_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => DSP_R0,
      Q => DSP_R(0),
      R => DRST
    );
\drst_ff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => p_1_out(0)
    );
\drst_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => p_1_out(0),
      Q => \drst_ff_reg_n_0_[0]\,
      R => '0'
    );
\drst_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => DCLK,
      CE => '1',
      D => \drst_ff_reg_n_0_[0]\,
      Q => DRST,
      R => '0'
    );
h00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h00,
      CO(2) => h00_carry_n_1,
      CO(1) => h00_carry_n_2,
      CO(0) => h00_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => h00_carry_i_1_n_0,
      DI(0) => h00_carry_i_2_n_0,
      O(3 downto 0) => NLW_h00_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h00_carry_i_3_n_0,
      S(2) => h00_carry_i_4_n_0,
      S(1) => h00_carry_i_5_n_0,
      S(0) => h00_carry_i_6_n_0
    );
h00_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1331"
    )
        port map (
      I0 => raw_horizontal_offset(6),
      I1 => raw_horizontal_offset(7),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h00_carry_i_1_n_0
    );
h00_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1051"
    )
        port map (
      I0 => raw_horizontal_offset(5),
      I1 => raw_horizontal_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h00_carry_i_2_n_0
    );
h00_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h00_carry_i_3_n_0
    );
h00_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => raw_horizontal_offset(8),
      O => h00_carry_i_4_n_0
    );
h00_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4128"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_horizontal_offset(6),
      O => h00_carry_i_5_n_0
    );
h00_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2412"
    )
        port map (
      I0 => raw_horizontal_offset(4),
      I1 => raw_horizontal_offset(5),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h00_carry_i_6_n_0
    );
h10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h10,
      CO(2) => h10_carry_n_1,
      CO(1) => h10_carry_n_2,
      CO(0) => h10_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => h10_carry_i_1_n_0,
      DI(1) => h10_carry_i_2_n_0,
      DI(0) => h10_carry_i_3_n_0,
      O(3 downto 0) => NLW_h10_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h10_carry_i_4_n_0,
      S(2) => h10_carry_i_5_n_0,
      S(1) => h10_carry_i_6_n_0,
      S(0) => h10_carry_i_7_n_0
    );
h10_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => raw_horizontal_offset(8),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h10_carry_i_1_n_0
    );
h10_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5015"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h10_carry_i_2_n_0
    );
h10_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      O => h10_carry_i_3_n_0
    );
h10_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h10_carry_i_4_n_0
    );
h10_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1221"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h10_carry_i_5_n_0
    );
h10_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0492"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => h10_carry_i_6_n_0
    );
h10_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => h10_carry_i_7_n_0
    );
\h10_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h10_inferred__0/i__carry_n_0\,
      CO(2) => \h10_inferred__0/i__carry_n_1\,
      CO(1) => \h10_inferred__0/i__carry_n_2\,
      CO(0) => \h10_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__10_n_0\,
      DI(2) => \i__carry_i_2__8_n_0\,
      DI(1) => \i__carry_i_3__6_n_0\,
      DI(0) => syncgen_n_41,
      O(3 downto 0) => \NLW_h10_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__10_n_0\,
      S(2) => \i__carry_i_6__6_n_0\,
      S(1) => \i__carry_i_7__3_n_0\,
      S(0) => syncgen_n_17
    );
\h10_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h10_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h10_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => h1011_in,
      CO(0) => \h10_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__2_n_0\,
      O(3 downto 0) => \NLW_h10_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__4_n_0\,
      S(0) => \i__carry__0_i_3__6_n_0\
    );
h20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h20_carry_n_0,
      CO(2) => h20_carry_n_1,
      CO(1) => h20_carry_n_2,
      CO(0) => h20_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => h20_carry_i_1_n_0,
      DI(1) => h20_carry_i_2_n_0,
      DI(0) => h20_carry_i_3_n_0,
      O(3 downto 0) => NLW_h20_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h20_carry_i_4_n_0,
      S(2) => h20_carry_i_5_n_0,
      S(1) => h20_carry_i_6_n_0,
      S(0) => h20_carry_i_7_n_0
    );
h20_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0110"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => raw_horizontal_offset(8),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h20_carry_i_1_n_0
    );
h20_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7757"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h20_carry_i_2_n_0
    );
h20_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09DD"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => h20_carry_i_3_n_0
    );
h20_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h20_carry_i_4_n_0
    );
h20_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1221"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h20_carry_i_5_n_0
    );
h20_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8288"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h20_carry_i_6_n_0
    );
h20_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9024"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => h20_carry_i_7_n_0
    );
\h20_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h20_inferred__0/i__carry_n_0\,
      CO(2) => \h20_inferred__0/i__carry_n_1\,
      CO(1) => \h20_inferred__0/i__carry_n_2\,
      CO(0) => \h20_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__9_n_0\,
      DI(1) => \i__carry_i_3__7_n_0\,
      DI(0) => syncgen_n_42,
      O(3 downto 0) => \NLW_h20_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__7_n_0\,
      S(1) => \i__carry_i_7__4_n_0\,
      S(0) => syncgen_n_18
    );
\h20_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h20_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h20_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => h2012_in,
      CO(0) => \h20_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__3_n_0\,
      O(3 downto 0) => \NLW_h20_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__5_n_0\,
      S(0) => \i__carry__0_i_3__8_n_0\
    );
h30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_h30_carry_CO_UNCONNECTED(3),
      CO(2) => h30,
      CO(1) => h30_carry_n_2,
      CO(0) => h30_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => h30_carry_i_1_n_0,
      DI(0) => h30_carry_i_2_n_0,
      O(3 downto 0) => NLW_h30_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => h30_carry_i_3_n_0,
      S(1) => h30_carry_i_4_n_0,
      S(0) => h30_carry_i_5_n_0
    );
h30_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1331"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h30_carry_i_1_n_0
    );
h30_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1051"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h30_carry_i_2_n_0
    );
h30_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h30_carry_i_3_n_0
    );
h30_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => h30_carry_i_4_n_0
    );
h30_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4124"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_horizontal_offset(6),
      O => h30_carry_i_5_n_0
    );
\h30_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h30_inferred__0/i__carry_n_0\,
      CO(2) => \h30_inferred__0/i__carry_n_1\,
      CO(1) => \h30_inferred__0/i__carry_n_2\,
      CO(0) => \h30_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__7_n_0\,
      DI(2) => \i__carry_i_2__10_n_0\,
      DI(1) => \i__carry_i_3__8_n_0\,
      DI(0) => syncgen_n_43,
      O(3 downto 0) => \NLW_h30_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__4_n_0\,
      S(2) => \i__carry_i_6__8_n_0\,
      S(1) => \i__carry_i_7__5_n_0\,
      S(0) => syncgen_n_19
    );
\h30_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h30_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h30_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h30_inferred__0/i__carry__0_n_2\,
      CO(0) => \h30_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__1_n_0\,
      O(3 downto 0) => \NLW_h30_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__6_n_0\,
      S(0) => \i__carry__0_i_3__4_n_0\
    );
h40_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h40,
      CO(2) => h40_carry_n_1,
      CO(1) => h40_carry_n_2,
      CO(0) => h40_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => h40_carry_i_1_n_0,
      DI(1) => h40_carry_i_2_n_0,
      DI(0) => h40_carry_i_3_n_0,
      O(3 downto 0) => NLW_h40_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h40_carry_i_4_n_0,
      S(2) => h40_carry_i_5_n_0,
      S(1) => h40_carry_i_6_n_0,
      S(0) => h40_carry_i_7_n_0
    );
h40_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"064F"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(9),
      I3 => raw_horizontal_offset(8),
      O => h40_carry_i_1_n_0
    );
h40_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      O => h40_carry_i_2_n_0
    );
h40_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1051"
    )
        port map (
      I0 => raw_horizontal_offset(5),
      I1 => raw_horizontal_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h40_carry_i_3_n_0
    );
h40_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h40_carry_i_4_n_0
    );
h40_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4290"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => h40_carry_i_5_n_0
    );
h40_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => h40_carry_i_6_n_0
    );
h40_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2412"
    )
        port map (
      I0 => raw_horizontal_offset(4),
      I1 => raw_horizontal_offset(5),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h40_carry_i_7_n_0
    );
\h40_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h40_inferred__0/i__carry_n_0\,
      CO(2) => \h40_inferred__0/i__carry_n_1\,
      CO(1) => \h40_inferred__0/i__carry_n_2\,
      CO(0) => \h40_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__4_n_0\,
      DI(2) => \i__carry_i_2__5_n_0\,
      DI(1) => \i__carry_i_3__9_n_0\,
      DI(0) => syncgen_n_44,
      O(3 downto 0) => \NLW_h40_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__5_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__6_n_0\,
      S(0) => syncgen_n_20
    );
\h40_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h40_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h40_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => h4014_in,
      CO(0) => \h40_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__5_n_0\,
      O(3 downto 0) => \NLW_h40_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__7_n_0\,
      S(0) => \i__carry__0_i_3__5_n_0\
    );
h50_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h50_carry_n_0,
      CO(2) => h50_carry_n_1,
      CO(1) => h50_carry_n_2,
      CO(0) => h50_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => h50_carry_i_1_n_0,
      DI(1) => h50_carry_i_2_n_0,
      DI(0) => h50_carry_i_3_n_0,
      O(3 downto 0) => NLW_h50_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h50_carry_i_4_n_0,
      S(2) => h50_carry_i_5_n_0,
      S(1) => h50_carry_i_6_n_0,
      S(0) => h50_carry_i_7_n_0
    );
h50_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"066F"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => h50_carry_i_1_n_0
    );
h50_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7077"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h50_carry_i_2_n_0
    );
h50_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      O => h50_carry_i_3_n_0
    );
h50_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => h50_carry_i_4_n_0
    );
h50_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(9),
      I3 => raw_horizontal_offset(8),
      O => h50_carry_i_5_n_0
    );
h50_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D002"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => h50_carry_i_6_n_0
    );
h50_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => h50_carry_i_7_n_0
    );
\h50_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h50_inferred__0/i__carry_n_0\,
      CO(2) => \h50_inferred__0/i__carry_n_1\,
      CO(1) => \h50_inferred__0/i__carry_n_2\,
      CO(0) => \h50_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__8_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__10_n_0\,
      DI(0) => syncgen_n_45,
      O(3 downto 0) => \NLW_h50_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__8_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7__7_n_0\,
      S(0) => syncgen_n_21
    );
\h50_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h50_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h50_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => h5015_in,
      CO(0) => \h50_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__4_n_0\,
      O(3 downto 0) => \NLW_h50_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__8_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
h60_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h60_carry_n_0,
      CO(2) => h60_carry_n_1,
      CO(1) => h60_carry_n_2,
      CO(0) => h60_carry_n_3,
      CYINIT => '0',
      DI(3) => h60_carry_i_1_n_0,
      DI(2) => h60_carry_i_2_n_0,
      DI(1) => h60_carry_i_3_n_0,
      DI(0) => h60_carry_i_4_n_0,
      O(3 downto 0) => NLW_h60_carry_O_UNCONNECTED(3 downto 0),
      S(3) => h60_carry_i_5_n_0,
      S(2) => h60_carry_i_6_n_0,
      S(1) => h60_carry_i_7_n_0,
      S(0) => h60_carry_i_8_n_0
    );
h60_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(10),
      O => h60_carry_i_1_n_0
    );
h60_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04DD"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => h60_carry_i_2_n_0
    );
h60_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0310"
    )
        port map (
      I0 => raw_horizontal_offset(6),
      I1 => raw_horizontal_offset(7),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h60_carry_i_3_n_0
    );
h60_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09DD"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => h60_carry_i_4_n_0
    );
h60_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => h60_carry_i_5_n_0
    );
h60_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(9),
      I3 => raw_horizontal_offset(8),
      O => h60_carry_i_6_n_0
    );
h60_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0249"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => h60_carry_i_7_n_0
    );
h60_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9024"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => h60_carry_i_8_n_0
    );
\h60_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h60_inferred__0/i__carry_n_0\,
      CO(2) => \h60_inferred__0/i__carry_n_1\,
      CO(1) => \h60_inferred__0/i__carry_n_2\,
      CO(0) => \h60_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__4_n_0\,
      DI(1) => \i__carry_i_3__11_n_0\,
      DI(0) => syncgen_n_46,
      O(3 downto 0) => \NLW_h60_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__3_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__8_n_0\,
      S(0) => syncgen_n_22
    );
\h60_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h60_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h60_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h60_inferred__0/i__carry__0_n_2\,
      CO(0) => \h60_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_horizontal_offset(10),
      DI(0) => \i__carry__0_i_1__8_n_0\,
      O(3 downto 0) => \NLW_h60_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__3_n_0\,
      S(0) => \i__carry__0_i_3__3_n_0\
    );
h70_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_h70_carry_CO_UNCONNECTED(3),
      CO(2) => h70,
      CO(1) => h70_carry_n_2,
      CO(0) => h70_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => h70_carry_i_1_n_0,
      DI(1) => h70_carry_i_2_n_0,
      DI(0) => h70_carry_i_3_n_0,
      O(3 downto 0) => NLW_h70_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => h70_carry_i_4_n_0,
      S(1) => h70_carry_i_5_n_0,
      S(0) => h70_carry_i_6_n_0
    );
h70_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(10),
      O => h70_carry_i_1_n_0
    );
h70_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5015"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => raw_horizontal_offset(8),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => h70_carry_i_2_n_0
    );
h70_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      O => h70_carry_i_3_n_0
    );
h70_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => h70_carry_i_4_n_0
    );
h70_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4214"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => h70_carry_i_5_n_0
    );
h70_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0096"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => h70_carry_i_6_n_0
    );
\h70_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h70_inferred__0/i__carry_n_0\,
      CO(2) => \h70_inferred__0/i__carry_n_1\,
      CO(1) => \h70_inferred__0/i__carry_n_2\,
      CO(0) => \h70_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__9_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__5_n_0\,
      DI(0) => syncgen_n_40,
      O(3 downto 0) => \NLW_h70_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => syncgen_n_11
    );
\h70_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \h70_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_h70_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h70_inferred__0/i__carry__0_n_2\,
      CO(0) => \h70_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__6_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_h70_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => raw_vertical_offset(8),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_vertical_offset(9),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E8AE"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => raw_vertical_offset(8),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF82"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_horizontal_offset(9),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C08C"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F900"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(10),
      O => \i__carry__0_i_1__6_n_0\
    );
\i__carry__0_i_1__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => raw_vertical_offset(10),
      I1 => \v31__9_carry_n_1\,
      I2 => v31(10),
      O => \i__carry__0_i_1__7_n_0\
    );
\i__carry__0_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => RESOL(0),
      I2 => RESOL(1),
      O => \i__carry__0_i_1__8_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80E8"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(10),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => v31(8),
      I2 => raw_vertical_offset(8),
      I3 => v31(9),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(10),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_2__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__5_n_0\
    );
\i__carry__0_i_2__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__6_n_0\
    );
\i__carry__0_i_2__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__7_n_0\
    );
\i__carry__0_i_2__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      O => \i__carry__0_i_2__8_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4290"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => raw_horizontal_offset(10),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(8),
      I3 => raw_vertical_offset(9),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1241"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => raw_vertical_offset(8),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6900"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(9),
      I3 => raw_horizontal_offset(8),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1221"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry__0_i_3__4_n_0\
    );
\i__carry__0_i_3__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(8),
      I3 => raw_horizontal_offset(9),
      O => \i__carry__0_i_3__5_n_0\
    );
\i__carry__0_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(9),
      I1 => raw_horizontal_offset(8),
      O => \i__carry__0_i_3__6_n_0\
    );
\i__carry__0_i_3__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => raw_vertical_offset(10),
      I1 => v31(10),
      I2 => \v31__9_carry_n_1\,
      O => \i__carry__0_i_3__7_n_0\
    );
\i__carry__0_i_3__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1221"
    )
        port map (
      I0 => raw_horizontal_offset(8),
      I1 => raw_horizontal_offset(9),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry__0_i_3__8_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(9),
      I3 => raw_horizontal_offset(8),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => raw_vertical_offset(8),
      I1 => v31(8),
      I2 => raw_vertical_offset(9),
      I3 => v31(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08E0"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => raw_vertical_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F900"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(6),
      I3 => raw_horizontal_offset(7),
      O => \i__carry_i_1__10_n_0\
    );
\i__carry_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => v31(6),
      I2 => raw_vertical_offset(6),
      I3 => v31(7),
      O => \i__carry_i_1__11_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(6),
      I3 => raw_horizontal_offset(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA28"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAA2"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0EC"
    )
        port map (
      I0 => raw_vertical_offset(6),
      I1 => raw_vertical_offset(7),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(6),
      I3 => raw_horizontal_offset(7),
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD90"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(6),
      I3 => raw_horizontal_offset(7),
      O => \i__carry_i_1__9_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6220"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6220"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => \i__carry_i_2__10_n_0\
    );
\i__carry_i_2__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => raw_vertical_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_2__11_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAA2"
    )
        port map (
      I0 => raw_horizontal_offset(5),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F660"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(4),
      I1 => raw_horizontal_offset(5),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => raw_vertical_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A0"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => v31(4),
      I2 => v31_carry_n_1,
      I3 => raw_vertical_offset(4),
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAA2"
    )
        port map (
      I0 => raw_horizontal_offset(5),
      I1 => RESOL(1),
      I2 => RESOL(0),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_2__8_n_0\
    );
\i__carry_i_2__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F660"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_2__9_n_0\
    );
\i__carry_i_3__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__10_n_0\
    );
\i__carry_i_3__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__11_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F660"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(2),
      I3 => raw_vertical_offset(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => v31(3),
      I1 => raw_vertical_offset(3),
      I2 => raw_vertical_offset(2),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_vertical_offset(2),
      I1 => raw_vertical_offset(3),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__8_n_0\
    );
\i__carry_i_3__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_3__9_n_0\
    );
\i__carry_i_4__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_4__10_n_0\
    );
\i__carry_i_4__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_4__11_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0492"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4128"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__10_n_0\
    );
\i__carry_i_5__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => raw_vertical_offset(6),
      I1 => v31(6),
      I2 => raw_vertical_offset(7),
      I3 => v31(7),
      O => \i__carry_i_5__11_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0249"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D002"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8288"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => raw_horizontal_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_5__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4124"
    )
        port map (
      I0 => raw_horizontal_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__5_n_0\
    );
\i__carry_i_5__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4814"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => raw_vertical_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => \i__carry_i_5__6_n_0\
    );
\i__carry_i_5__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8218"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_vertical_offset(6),
      O => \i__carry_i_5__7_n_0\
    );
\i__carry_i_5__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(7),
      I3 => raw_horizontal_offset(6),
      O => \i__carry_i_5__8_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2412"
    )
        port map (
      I0 => raw_horizontal_offset(4),
      I1 => raw_horizontal_offset(5),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9024"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(5),
      I1 => raw_horizontal_offset(4),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9006"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(5),
      I3 => raw_vertical_offset(4),
      O => \i__carry_i_6__4_n_0\
    );
\i__carry_i_6__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => raw_vertical_offset(4),
      I1 => v31(4),
      I2 => raw_vertical_offset(5),
      I3 => v31_carry_n_1,
      O => \i__carry_i_6__5_n_0\
    );
\i__carry_i_6__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2412"
    )
        port map (
      I0 => raw_horizontal_offset(4),
      I1 => raw_horizontal_offset(5),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => \i__carry_i_6__6_n_0\
    );
\i__carry_i_6__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_horizontal_offset(4),
      I3 => raw_horizontal_offset(5),
      O => \i__carry_i_6__7_n_0\
    );
\i__carry_i_6__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9024"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_horizontal_offset(5),
      I3 => raw_horizontal_offset(4),
      O => \i__carry_i_6__8_n_0\
    );
\i__carry_i_6__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9006"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(5),
      I3 => raw_vertical_offset(4),
      O => \i__carry_i_6__9_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(2),
      I3 => raw_vertical_offset(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => v31(3),
      I1 => raw_vertical_offset(2),
      I2 => raw_vertical_offset(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(3),
      I1 => raw_vertical_offset(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_7__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__4_n_0\
    );
\i__carry_i_7__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__5_n_0\
    );
\i__carry_i_7__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__6_n_0\
    );
\i__carry_i_7__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__7_n_0\
    );
\i__carry_i_7__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_horizontal_offset(2),
      I1 => raw_horizontal_offset(3),
      O => \i__carry_i_7__8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_8__7_n_0\
    );
\i__carry_i_8__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(0),
      I1 => raw_vertical_offset(1),
      O => \i__carry_i_8__8_n_0\
    );
\raw_horizontal_offset__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_horizontal_offset__1_carry_n_0\,
      CO(2) => \raw_horizontal_offset__1_carry_n_1\,
      CO(1) => \raw_horizontal_offset__1_carry_n_2\,
      CO(0) => \raw_horizontal_offset__1_carry_n_3\,
      CYINIT => HCNT_reg(0),
      DI(3) => \raw_horizontal_offset__1_carry_i_1_n_0\,
      DI(2 downto 0) => B"100",
      O(3 downto 0) => raw_horizontal_offset(4 downto 1),
      S(3) => syncgen_n_27,
      S(2) => syncgen_n_28,
      S(1 downto 0) => HCNT_reg(2 downto 1)
    );
\raw_horizontal_offset__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_horizontal_offset__1_carry_n_0\,
      CO(3) => \raw_horizontal_offset__1_carry__0_n_0\,
      CO(2) => \raw_horizontal_offset__1_carry__0_n_1\,
      CO(1) => \raw_horizontal_offset__1_carry__0_n_2\,
      CO(0) => \raw_horizontal_offset__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \raw_horizontal_offset__1_carry__0_i_1_n_0\,
      DI(2) => HCNT_reg(7),
      DI(1) => syncgen_n_23,
      DI(0) => syncgen_n_24,
      O(3 downto 0) => raw_horizontal_offset(8 downto 5),
      S(3) => syncgen_n_47,
      S(2) => syncgen_n_48,
      S(1) => syncgen_n_49,
      S(0) => syncgen_n_50
    );
\raw_horizontal_offset__1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => \raw_horizontal_offset__1_carry__0_i_1_n_0\
    );
\raw_horizontal_offset__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_horizontal_offset__1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_raw_horizontal_offset__1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \raw_horizontal_offset__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => HCNT_reg(9),
      O(3 downto 2) => \NLW_raw_horizontal_offset__1_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => raw_horizontal_offset(10 downto 9),
      S(3 downto 2) => B"00",
      S(1) => syncgen_n_31,
      S(0) => syncgen_n_32
    );
\raw_horizontal_offset__1_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => \raw_horizontal_offset__1_carry_i_1_n_0\
    );
\raw_vertical_offset__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \raw_vertical_offset__0_carry_n_0\,
      CO(2) => \raw_vertical_offset__0_carry_n_1\,
      CO(1) => \raw_vertical_offset__0_carry_n_2\,
      CO(0) => \raw_vertical_offset__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => syncgen_n_25,
      DI(2) => syncgen_n_26,
      DI(1) => \raw_vertical_offset__0_carry_i_3_n_0\,
      DI(0) => \raw_vertical_offset__0_carry_i_4_n_0\,
      O(3 downto 0) => raw_vertical_offset(3 downto 0),
      S(3) => syncgen_n_7,
      S(2) => syncgen_n_8,
      S(1) => syncgen_n_9,
      S(0) => syncgen_n_10
    );
\raw_vertical_offset__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_vertical_offset__0_carry_n_0\,
      CO(3) => \raw_vertical_offset__0_carry__0_n_0\,
      CO(2) => \raw_vertical_offset__0_carry__0_n_1\,
      CO(1) => \raw_vertical_offset__0_carry__0_n_2\,
      CO(0) => \raw_vertical_offset__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => VCNT_reg(7 downto 6),
      DI(1) => syncgen_n_29,
      DI(0) => syncgen_n_30,
      O(3 downto 0) => raw_vertical_offset(7 downto 4),
      S(3) => syncgen_n_36,
      S(2) => syncgen_n_37,
      S(1) => syncgen_n_38,
      S(0) => syncgen_n_39
    );
\raw_vertical_offset__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \raw_vertical_offset__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_raw_vertical_offset__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \raw_vertical_offset__0_carry__1_n_2\,
      CO(0) => \raw_vertical_offset__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => VCNT_reg(9 downto 8),
      O(3) => \NLW_raw_vertical_offset__0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => raw_vertical_offset(10 downto 8),
      S(3) => '0',
      S(2) => syncgen_n_33,
      S(1) => syncgen_n_34,
      S(0) => syncgen_n_35
    );
\raw_vertical_offset__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => \raw_vertical_offset__0_carry_i_3_n_0\
    );
\raw_vertical_offset__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => \raw_vertical_offset__0_carry_i_4_n_0\
    );
syncgen: entity work.design_1_patgen_0_0_syncgen
     port map (
      DCLK => DCLK,
      DI(1) => syncgen_n_23,
      DI(0) => syncgen_n_24,
      DSP_HSYNC_X => DSP_HSYNC_X,
      DSP_HSYNC_X_reg_0(0) => DRST,
      DSP_VSYNC_X => DSP_VSYNC_X,
      DSP_preDE => DSP_preDE,
      \HCNT_reg[0]_0\(0) => syncgen_n_11,
      \HCNT_reg[0]_1\(0) => syncgen_n_17,
      \HCNT_reg[0]_10\(0) => syncgen_n_43,
      \HCNT_reg[0]_11\(0) => syncgen_n_44,
      \HCNT_reg[0]_12\(0) => syncgen_n_45,
      \HCNT_reg[0]_13\(0) => syncgen_n_46,
      \HCNT_reg[0]_2\(0) => syncgen_n_18,
      \HCNT_reg[0]_3\(0) => syncgen_n_19,
      \HCNT_reg[0]_4\(0) => syncgen_n_20,
      \HCNT_reg[0]_5\(0) => syncgen_n_21,
      \HCNT_reg[0]_6\(0) => syncgen_n_22,
      \HCNT_reg[0]_7\(0) => syncgen_n_40,
      \HCNT_reg[0]_8\(0) => syncgen_n_41,
      \HCNT_reg[0]_9\(0) => syncgen_n_42,
      \HCNT_reg[10]_0\(1) => syncgen_n_31,
      \HCNT_reg[10]_0\(0) => syncgen_n_32,
      \HCNT_reg[3]_0\(1) => syncgen_n_27,
      \HCNT_reg[3]_0\(0) => syncgen_n_28,
      \HCNT_reg[8]_0\(3) => syncgen_n_47,
      \HCNT_reg[8]_0\(2) => syncgen_n_48,
      \HCNT_reg[8]_0\(1) => syncgen_n_49,
      \HCNT_reg[8]_0\(0) => syncgen_n_50,
      \HCNT_reg[9]_0\(4) => HCNT_reg(9),
      \HCNT_reg[9]_0\(3) => HCNT_reg(7),
      \HCNT_reg[9]_0\(2 downto 0) => HCNT_reg(2 downto 0),
      O(0) => raw_horizontal_offset(1),
      Q(3 downto 0) => VCNT_reg(9 downto 6),
      RESOL(1 downto 0) => RESOL(1 downto 0),
      S(3) => syncgen_n_7,
      S(2) => syncgen_n_8,
      S(1) => syncgen_n_9,
      S(0) => syncgen_n_10,
      \VCNT_reg[10]_0\(2) => syncgen_n_33,
      \VCNT_reg[10]_0\(1) => syncgen_n_34,
      \VCNT_reg[10]_0\(0) => syncgen_n_35,
      \VCNT_reg[2]_0\(1) => syncgen_n_25,
      \VCNT_reg[2]_0\(0) => syncgen_n_26,
      \VCNT_reg[4]_0\(1) => syncgen_n_29,
      \VCNT_reg[4]_0\(0) => syncgen_n_30,
      \VCNT_reg[7]_0\(3) => syncgen_n_36,
      \VCNT_reg[7]_0\(2) => syncgen_n_37,
      \VCNT_reg[7]_0\(1) => syncgen_n_38,
      \VCNT_reg[7]_0\(0) => syncgen_n_39
    );
v00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v00_carry_n_0,
      CO(2) => v00_carry_n_1,
      CO(1) => v00_carry_n_2,
      CO(0) => v00_carry_n_3,
      CYINIT => '0',
      DI(3) => v00_carry_i_1_n_0,
      DI(2) => v00_carry_i_2_n_0,
      DI(1) => v00_carry_i_3_n_0,
      DI(0) => v00_carry_i_4_n_0,
      O(3 downto 0) => NLW_v00_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v00_carry_i_5_n_0,
      S(2) => v00_carry_i_6_n_0,
      S(1) => v00_carry_i_7_n_0,
      S(0) => v00_carry_i_8_n_0
    );
\v00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v00_carry_n_0,
      CO(3 downto 1) => \NLW_v00_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => v00,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_v00_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \v00_carry__0_i_1_n_0\
    );
\v00_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(10),
      O => \v00_carry__0_i_1_n_0\
    );
v00_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => raw_vertical_offset(8),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v00_carry_i_1_n_0
    );
v00_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(6),
      I3 => raw_vertical_offset(7),
      O => v00_carry_i_2_n_0
    );
v00_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7007"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => raw_vertical_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v00_carry_i_3_n_0
    );
v00_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_vertical_offset(3),
      O => v00_carry_i_4_n_0
    );
v00_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(8),
      I3 => raw_vertical_offset(9),
      O => v00_carry_i_5_n_0
    );
v00_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4814"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => raw_vertical_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v00_carry_i_6_n_0
    );
v00_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9006"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(5),
      I3 => raw_vertical_offset(4),
      O => v00_carry_i_7_n_0
    );
v00_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(2),
      I3 => raw_vertical_offset(3),
      O => v00_carry_i_8_n_0
    );
v10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v10,
      CO(2) => v10_carry_n_1,
      CO(1) => v10_carry_n_2,
      CO(0) => v10_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => v10_carry_i_1_n_0,
      DI(1) => v10_carry_i_2_n_0,
      DI(0) => v10_carry_i_3_n_0,
      O(3 downto 0) => NLW_v10_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v10_carry_i_4_n_0,
      S(2) => v10_carry_i_5_n_0,
      S(1) => v10_carry_i_6_n_0,
      S(0) => v10_carry_i_7_n_0
    );
v10_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0026"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_vertical_offset(8),
      I3 => raw_vertical_offset(9),
      O => v10_carry_i_1_n_0
    );
v10_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7507"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => raw_vertical_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v10_carry_i_2_n_0
    );
v10_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7007"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => raw_vertical_offset(4),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v10_carry_i_3_n_0
    );
v10_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_vertical_offset(10),
      O => v10_carry_i_4_n_0
    );
v10_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1241"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => raw_vertical_offset(8),
      I2 => RESOL(0),
      I3 => RESOL(1),
      O => v10_carry_i_5_n_0
    );
v10_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8218"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => RESOL(0),
      I2 => RESOL(1),
      I3 => raw_vertical_offset(6),
      O => v10_carry_i_6_n_0
    );
v10_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9006"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(5),
      I3 => raw_vertical_offset(4),
      O => v10_carry_i_7_n_0
    );
\v10_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v10_inferred__0/i__carry_n_0\,
      CO(2) => \v10_inferred__0/i__carry_n_1\,
      CO(1) => \v10_inferred__0/i__carry_n_2\,
      CO(0) => \v10_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \i__carry_i_2__11_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__10_n_0\,
      O(3 downto 0) => \NLW_v10_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__6_n_0\,
      S(2) => \i__carry_i_6__9_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8__7_n_0\
    );
\v10_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v10_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_v10_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => v1019_in,
      CO(0) => \v10_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_vertical_offset(10),
      DI(0) => \i__carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_v10_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__2_n_0\,
      S(0) => \i__carry__0_i_3__1_n_0\
    );
v20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v20_carry_n_0,
      CO(2) => v20_carry_n_1,
      CO(1) => v20_carry_n_2,
      CO(0) => v20_carry_n_3,
      CYINIT => '0',
      DI(3) => v20_carry_i_1_n_0,
      DI(2) => v20_carry_i_2_n_0,
      DI(1) => v20_carry_i_3_n_0,
      DI(0) => v20_carry_i_4_n_0,
      O(3 downto 0) => NLW_v20_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v20_carry_i_5_n_0,
      S(2) => v20_carry_i_6_n_0,
      S(1) => v20_carry_i_7_n_0,
      S(0) => v20_carry_i_8_n_0
    );
\v20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v20_carry_n_0,
      CO(3 downto 2) => \NLW_v20_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => v20,
      CO(0) => \v20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => v31(12),
      DI(0) => \v20_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_v20_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \v31__9_carry_n_1\,
      S(0) => \v20_carry__0_i_3_n_0\
    );
\v20_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v31__9_carry_n_1\,
      O => v31(12)
    );
\v20_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => raw_vertical_offset(10),
      I1 => v31(10),
      I2 => \v31__9_carry_n_1\,
      O => \v20_carry__0_i_2_n_0\
    );
\v20_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => raw_vertical_offset(10),
      I1 => v31(10),
      I2 => \v31__9_carry_n_1\,
      O => \v20_carry__0_i_3_n_0\
    );
v20_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => v31(8),
      I2 => v31(9),
      I3 => raw_vertical_offset(8),
      O => v20_carry_i_1_n_0
    );
v20_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => v20_carry_i_10_n_0
    );
v20_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => v20_carry_i_11_n_0
    );
v20_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => v20_carry_i_12_n_0
    );
v20_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => v20_carry_i_13_n_0
    );
v20_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => v31(7),
      I1 => raw_vertical_offset(7),
      I2 => v31(6),
      I3 => raw_vertical_offset(6),
      O => v20_carry_i_2_n_0
    );
v20_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"054D"
    )
        port map (
      I0 => raw_vertical_offset(5),
      I1 => v31(4),
      I2 => v31_carry_n_1,
      I3 => raw_vertical_offset(4),
      O => v20_carry_i_3_n_0
    );
v20_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v31(3),
      I1 => raw_vertical_offset(3),
      O => v20_carry_i_4_n_0
    );
v20_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => raw_vertical_offset(8),
      I1 => v31(8),
      I2 => raw_vertical_offset(9),
      I3 => v31(9),
      O => v20_carry_i_5_n_0
    );
v20_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => raw_vertical_offset(6),
      I1 => v31(6),
      I2 => raw_vertical_offset(7),
      I3 => v31(7),
      O => v20_carry_i_6_n_0
    );
v20_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0990"
    )
        port map (
      I0 => raw_vertical_offset(4),
      I1 => v31(4),
      I2 => raw_vertical_offset(5),
      I3 => v31_carry_n_1,
      O => v20_carry_i_7_n_0
    );
v20_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => v31(3),
      I1 => raw_vertical_offset(2),
      I2 => raw_vertical_offset(3),
      O => v20_carry_i_8_n_0
    );
v20_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v31(8),
      CO(2) => NLW_v20_carry_i_9_CO_UNCONNECTED(2),
      CO(1) => v20_carry_i_9_n_2,
      CO(0) => v20_carry_i_9_n_3,
      CYINIT => v31_carry_n_1,
      DI(3) => '0',
      DI(2) => v20_carry_i_10_n_0,
      DI(1) => v20_carry_i_11_n_0,
      DI(0) => '0',
      O(3) => NLW_v20_carry_i_9_O_UNCONNECTED(3),
      O(2 downto 1) => v31(7 downto 6),
      O(0) => NLW_v20_carry_i_9_O_UNCONNECTED(0),
      S(3) => '1',
      S(2) => v20_carry_i_12_n_0,
      S(1) => v20_carry_i_13_n_0,
      S(0) => '1'
    );
\v20_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v20_inferred__0/i__carry_n_0\,
      CO(2) => \v20_inferred__0/i__carry_n_1\,
      CO(1) => \v20_inferred__0/i__carry_n_2\,
      CO(0) => \v20_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__6_n_0\,
      DI(1) => \i__carry_i_3__4_n_0\,
      DI(0) => \i__carry_i_4__11_n_0\,
      O(3 downto 0) => \NLW_v20_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__7_n_0\,
      S(2) => \i__carry_i_6__4_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__8_n_0\
    );
\v20_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v20_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_v20_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => v2020_in,
      CO(0) => \v20_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => raw_vertical_offset(10),
      DI(0) => \i__carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_v20_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2__0_n_0\,
      S(0) => \i__carry__0_i_3__2_n_0\
    );
v30_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v30,
      CO(2) => v30_carry_n_1,
      CO(1) => v30_carry_n_2,
      CO(0) => v30_carry_n_3,
      CYINIT => '0',
      DI(3) => v30_carry_i_1_n_0,
      DI(2) => v30_carry_i_2_n_0,
      DI(1) => v30_carry_i_3_n_0,
      DI(0) => v30_carry_i_4_n_0,
      O(3 downto 0) => NLW_v30_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v30_carry_i_5_n_0,
      S(2) => v30_carry_i_6_n_0,
      S(1) => v30_carry_i_7_n_0,
      S(0) => v30_carry_i_8_n_0
    );
v30_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_vertical_offset(10),
      O => v30_carry_i_1_n_0
    );
v30_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"022B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(8),
      I3 => raw_vertical_offset(9),
      O => v30_carry_i_2_n_0
    );
v30_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7007"
    )
        port map (
      I0 => raw_vertical_offset(7),
      I1 => raw_vertical_offset(6),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v30_carry_i_3_n_0
    );
v30_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      I2 => raw_vertical_offset(5),
      O => v30_carry_i_4_n_0
    );
v30_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => raw_vertical_offset(10),
      I1 => RESOL(1),
      I2 => RESOL(0),
      O => v30_carry_i_5_n_0
    );
v30_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4814"
    )
        port map (
      I0 => raw_vertical_offset(9),
      I1 => raw_vertical_offset(8),
      I2 => RESOL(1),
      I3 => RESOL(0),
      O => v30_carry_i_6_n_0
    );
v30_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9006"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(6),
      I3 => raw_vertical_offset(7),
      O => v30_carry_i_7_n_0
    );
v30_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0906"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      I2 => raw_vertical_offset(4),
      I3 => raw_vertical_offset(5),
      O => v30_carry_i_8_n_0
    );
\v30_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v30_inferred__0/i__carry_n_0\,
      CO(2) => \v30_inferred__0/i__carry_n_1\,
      CO(1) => \v30_inferred__0/i__carry_n_2\,
      CO(0) => \v30_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__11_n_0\,
      DI(2) => \i__carry_i_2__7_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_v30_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__11_n_0\,
      S(2) => \i__carry_i_6__5_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\v30_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \v30_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_v30_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => v3021_in,
      CO(1) => \v30_inferred__0/i__carry__0_n_2\,
      CO(0) => \v30_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__7_n_0\,
      DI(0) => \i__carry__0_i_2__1_n_0\,
      O(3 downto 0) => \NLW_v30_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \v31__9_carry_n_1\,
      S(1) => \i__carry__0_i_3__7_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\v31__9_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_v31__9_carry_CO_UNCONNECTED\(3),
      CO(2) => \v31__9_carry_n_1\,
      CO(1) => \NLW_v31__9_carry_CO_UNCONNECTED\(1),
      CO(0) => \v31__9_carry_n_3\,
      CYINIT => \v31__9_carry_i_1_n_0\,
      DI(3 downto 2) => B"00",
      DI(1) => \v31__9_carry_i_2_n_0\,
      DI(0) => \v31__9_carry_i_3_n_0\,
      O(3 downto 2) => \NLW_v31__9_carry_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => v31(10 downto 9),
      S(3 downto 2) => B"01",
      S(1) => \v31__9_carry_i_4_n_0\,
      S(0) => \v31__9_carry_i_5_n_0\
    );
\v31__9_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => \v31__9_carry_i_1_n_0\
    );
\v31__9_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => \v31__9_carry_i_2_n_0\
    );
\v31__9_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => \v31__9_carry_i_3_n_0\
    );
\v31__9_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => \v31__9_carry_i_4_n_0\
    );
\v31__9_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => \v31__9_carry_i_5_n_0\
    );
v31_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_v31_carry_CO_UNCONNECTED(3),
      CO(2) => v31_carry_n_1,
      CO(1) => NLW_v31_carry_CO_UNCONNECTED(1),
      CO(0) => v31_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => NLW_v31_carry_O_UNCONNECTED(3 downto 2),
      O(1 downto 0) => v31(4 downto 3),
      S(3 downto 2) => B"01",
      S(1) => v31_carry_i_1_n_0,
      S(0) => v31_carry_i_2_n_0
    );
v31_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RESOL(1),
      I1 => RESOL(0),
      O => v31_carry_i_1_n_0
    );
v31_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => RESOL(0),
      I1 => RESOL(1),
      O => v31_carry_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_patgen_0_0 is
  port (
    DCLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DSP_HSYNC_X : out STD_LOGIC;
    DSP_VSYNC_X : out STD_LOGIC;
    DSP_DE : out STD_LOGIC;
    DSP_R : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_G : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_B : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_patgen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_patgen_0_0 : entity is "design_1_patgen_0_0,patgen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_patgen_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_patgen_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_patgen_0_0 : entity is "patgen,Vivado 2022.2";
end design_1_patgen_0_0;

architecture STRUCTURE of design_1_patgen_0_0 is
  signal \^dsp_b\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^dsp_g\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^dsp_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  DSP_B(7) <= \^dsp_b\(0);
  DSP_B(6) <= \^dsp_b\(0);
  DSP_B(5) <= \^dsp_b\(0);
  DSP_B(4) <= \^dsp_b\(0);
  DSP_B(3) <= \^dsp_b\(0);
  DSP_B(2) <= \^dsp_b\(0);
  DSP_B(1) <= \^dsp_b\(0);
  DSP_B(0) <= \^dsp_b\(0);
  DSP_G(7) <= \^dsp_g\(0);
  DSP_G(6) <= \^dsp_g\(0);
  DSP_G(5) <= \^dsp_g\(0);
  DSP_G(4) <= \^dsp_g\(0);
  DSP_G(3) <= \^dsp_g\(0);
  DSP_G(2) <= \^dsp_g\(0);
  DSP_G(1) <= \^dsp_g\(0);
  DSP_G(0) <= \^dsp_g\(0);
  DSP_R(7) <= \^dsp_r\(0);
  DSP_R(6) <= \^dsp_r\(0);
  DSP_R(5) <= \^dsp_r\(0);
  DSP_R(4) <= \^dsp_r\(0);
  DSP_R(3) <= \^dsp_r\(0);
  DSP_R(2) <= \^dsp_r\(0);
  DSP_R(1) <= \^dsp_r\(0);
  DSP_R(0) <= \^dsp_r\(0);
inst: entity work.design_1_patgen_0_0_patgen
     port map (
      ARESETN => ARESETN,
      DCLK => DCLK,
      DSP_B(0) => \^dsp_b\(0),
      DSP_DE => DSP_DE,
      DSP_G(0) => \^dsp_g\(0),
      DSP_HSYNC_X => DSP_HSYNC_X,
      DSP_R(0) => \^dsp_r\(0),
      DSP_VSYNC_X => DSP_VSYNC_X,
      RESOL(1 downto 0) => RESOL(1 downto 0)
    );
end STRUCTURE;
