-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu May 25 14:37:55 2023
-- Host        : COJTHW101 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/HW101.COJTHW/COJT/pattern/pattern/SIM/pattern.gen/sources_1/bd/design_1/ip/design_1_dispsub_0_0/design_1_dispsub_0_0_sim_netlist.vhdl
-- Design      : design_1_dispsub_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dispsub_0_0_mmcme2_drp is
  port (
    dwe : out STD_LOGIC;
    den : out STD_LOGIC;
    rst_mmcm : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clkin_bufgout : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 14 downto 0 );
    drdy : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \current_state_reg[0]_0\ : in STD_LOGIC;
    \rom_addr_reg_rep[5]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dispsub_0_0_mmcme2_drp : entity is "mmcme2_drp";
end design_1_dispsub_0_0_mmcme2_drp;

architecture STRUCTURE of design_1_dispsub_0_0_mmcme2_drp is
  signal \DADDR[6]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[6]_i_2_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \DI[0]_i_1_n_0\ : STD_LOGIC;
  signal \DI[10]_i_1_n_0\ : STD_LOGIC;
  signal \DI[11]_i_1_n_0\ : STD_LOGIC;
  signal \DI[12]_i_1_n_0\ : STD_LOGIC;
  signal \DI[13]_i_1_n_0\ : STD_LOGIC;
  signal \DI[14]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_2_n_0\ : STD_LOGIC;
  signal \DI[15]_i_3_n_0\ : STD_LOGIC;
  signal \DI[1]_i_1_n_0\ : STD_LOGIC;
  signal \DI[2]_i_1_n_0\ : STD_LOGIC;
  signal \DI[3]_i_1_n_0\ : STD_LOGIC;
  signal \DI[4]_i_1_n_0\ : STD_LOGIC;
  signal \DI[5]_i_1_n_0\ : STD_LOGIC;
  signal \DI[6]_i_1_n_0\ : STD_LOGIC;
  signal \DI[7]_i_1_n_0\ : STD_LOGIC;
  signal \DI[8]_i_1_n_0\ : STD_LOGIC;
  signal \DI[9]_i_1_n_0\ : STD_LOGIC;
  signal RST_MMCM_i_1_n_0 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b16_n_0 : STD_LOGIC;
  signal g0_b17_n_0 : STD_LOGIC;
  signal g0_b19_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b20_n_0 : STD_LOGIC;
  signal g0_b21_n_0 : STD_LOGIC;
  signal g0_b22_n_0 : STD_LOGIC;
  signal g0_b23_n_0 : STD_LOGIC;
  signal g0_b24_n_0 : STD_LOGIC;
  signal g0_b25_n_0 : STD_LOGIC;
  signal g0_b26_n_0 : STD_LOGIC;
  signal g0_b27_n_0 : STD_LOGIC;
  signal g0_b28_n_0 : STD_LOGIC;
  signal g0_b29_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal g1_b12_n_0 : STD_LOGIC;
  signal g1_b14_n_0 : STD_LOGIC;
  signal g1_b15_n_0 : STD_LOGIC;
  signal g1_b17_n_0 : STD_LOGIC;
  signal g1_b21_n_0 : STD_LOGIC;
  signal g1_b22_n_0 : STD_LOGIC;
  signal g1_b23_n_0 : STD_LOGIC;
  signal g1_b24_n_0 : STD_LOGIC;
  signal g1_b25_n_0 : STD_LOGIC;
  signal g1_b27_n_0 : STD_LOGIC;
  signal g1_b29_n_0 : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal g1_b8_n_0 : STD_LOGIC;
  signal g1_b9_n_0 : STD_LOGIC;
  signal next_den : STD_LOGIC;
  signal next_dwe : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \rom_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \rom_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \rom_addr[5]_i_3_n_0\ : STD_LOGIC;
  signal \rom_addr[5]_i_4_n_0\ : STD_LOGIC;
  signal \rom_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[0]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[1]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[2]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[3]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[4]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[5]\ : STD_LOGIC;
  signal \rom_addr_reg_rep_n_0_[6]\ : STD_LOGIC;
  signal \rom_addr_rep[6]_i_1_n_0\ : STD_LOGIC;
  signal rom_do : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^rst_mmcm\ : STD_LOGIC;
  signal state_count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \state_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \state_count[4]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DWE_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of RST_MMCM_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_addr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_addr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_addr[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_addr[5]_i_4\ : label is "soft_lutpair3";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \rom_addr_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \rom_addr_reg_rep[6]\ : label is "no";
  attribute SOFT_HLUTNM of \rom_do[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rom_do[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rom_do[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rom_do[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rom_do[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rom_do[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rom_do[16]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rom_do[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_do[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rom_do[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rom_do[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rom_do[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_do[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rom_do[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rom_do[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rom_do[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rom_do[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_do[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rom_do[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rom_do[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_do[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rom_do[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \state_count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state_count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \state_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state_count[4]_i_3\ : label is "soft_lutpair0";
begin
  DI(15 downto 0) <= \^di\(15 downto 0);
  rst_mmcm <= \^rst_mmcm\;
\DADDR[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \DADDR[6]_i_1_n_0\
    );
\DADDR[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \DADDR[6]_i_2_n_0\
    );
\DADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(24),
      Q => DADDR(0),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(25),
      Q => DADDR(1),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(26),
      Q => DADDR(2),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(27),
      Q => DADDR(3),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(28),
      Q => DADDR(4),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(29),
      Q => DADDR(5),
      R => \DADDR[6]_i_1_n_0\
    );
\DADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DADDR[6]_i_2_n_0\,
      D => rom_do(16),
      Q => DADDR(6),
      R => \DADDR[6]_i_1_n_0\
    );
DEN_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => current_state(1),
      O => next_den
    );
DEN_reg: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_den,
      Q => den,
      R => '0'
    );
\DI[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(0),
      I2 => current_state(0),
      I3 => rom_do(0),
      I4 => \^di\(0),
      O => \DI[0]_i_1_n_0\
    );
\DI[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(19),
      I1 => DO(9),
      I2 => current_state(0),
      I3 => rom_do(10),
      I4 => \^di\(10),
      O => \DI[10]_i_1_n_0\
    );
\DI[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(20),
      I1 => DO(10),
      I2 => current_state(0),
      I3 => rom_do(11),
      I4 => \^di\(11),
      O => \DI[11]_i_1_n_0\
    );
\DI[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(21),
      I1 => DO(11),
      I2 => current_state(0),
      I3 => rom_do(12),
      I4 => \^di\(12),
      O => \DI[12]_i_1_n_0\
    );
\DI[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(19),
      I1 => DO(12),
      I2 => current_state(0),
      I3 => rom_do(13),
      I4 => \^di\(13),
      O => \DI[13]_i_1_n_0\
    );
\DI[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(22),
      I1 => DO(13),
      I2 => current_state(0),
      I3 => rom_do(14),
      I4 => \^di\(14),
      O => \DI[14]_i_1_n_0\
    );
\DI[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(1),
      O => \DI[15]_i_1_n_0\
    );
\DI[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \DI[15]_i_2_n_0\
    );
\DI[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(23),
      I1 => DO(14),
      I2 => current_state(0),
      I3 => rom_do(15),
      I4 => \^di\(15),
      O => \DI[15]_i_3_n_0\
    );
\DI[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(1),
      I2 => current_state(0),
      I3 => rom_do(1),
      I4 => \^di\(1),
      O => \DI[1]_i_1_n_0\
    );
\DI[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(2),
      I2 => current_state(0),
      I3 => rom_do(2),
      I4 => \^di\(2),
      O => \DI[2]_i_1_n_0\
    );
\DI[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(3),
      I2 => current_state(0),
      I3 => rom_do(3),
      I4 => \^di\(3),
      O => \DI[3]_i_1_n_0\
    );
\DI[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(17),
      I1 => DO(4),
      I2 => current_state(0),
      I3 => rom_do(4),
      I4 => \^di\(4),
      O => \DI[4]_i_1_n_0\
    );
\DI[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(5),
      I2 => current_state(0),
      I3 => rom_do(5),
      I4 => \^di\(5),
      O => \DI[5]_i_1_n_0\
    );
\DI[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(6),
      I2 => current_state(0),
      I3 => rom_do(6),
      I4 => \^di\(6),
      O => \DI[6]_i_1_n_0\
    );
\DI[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(17),
      I1 => DO(7),
      I2 => current_state(0),
      I3 => rom_do(7),
      I4 => \^di\(7),
      O => \DI[7]_i_1_n_0\
    );
\DI[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^di\(8),
      I1 => rom_do(8),
      I2 => current_state(0),
      O => \DI[8]_i_1_n_0\
    );
\DI[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F808"
    )
        port map (
      I0 => rom_do(16),
      I1 => DO(8),
      I2 => current_state(0),
      I3 => rom_do(9),
      I4 => \^di\(9),
      O => \DI[9]_i_1_n_0\
    );
\DI_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[0]_i_1_n_0\,
      Q => \^di\(0),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[10]_i_1_n_0\,
      Q => \^di\(10),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[11]_i_1_n_0\,
      Q => \^di\(11),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[12]_i_1_n_0\,
      Q => \^di\(12),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[13]_i_1_n_0\,
      Q => \^di\(13),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[14]_i_1_n_0\,
      Q => \^di\(14),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[15]_i_3_n_0\,
      Q => \^di\(15),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[1]_i_1_n_0\,
      Q => \^di\(1),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[2]_i_1_n_0\,
      Q => \^di\(2),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[3]_i_1_n_0\,
      Q => \^di\(3),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[4]_i_1_n_0\,
      Q => \^di\(4),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[5]_i_1_n_0\,
      Q => \^di\(5),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[6]_i_1_n_0\,
      Q => \^di\(6),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[7]_i_1_n_0\,
      Q => \^di\(7),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[8]_i_1_n_0\,
      Q => \^di\(8),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \DI[15]_i_2_n_0\,
      D => \DI[9]_i_1_n_0\,
      Q => \^di\(9),
      R => \DI[15]_i_1_n_0\
    );
DWE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(1),
      O => next_dwe
    );
DWE_reg: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_dwe,
      Q => dwe,
      R => '0'
    );
RST_MMCM_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0006"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(3),
      I4 => \^rst_mmcm\,
      O => RST_MMCM_i_1_n_0
    );
RST_MMCM_reg: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => RST_MMCM_i_1_n_0,
      Q => \^rst_mmcm\,
      R => '0'
    );
\current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFDFF0000"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => current_state(3),
      I5 => \current_state[0]_i_2_n_0\,
      O => next_state(0)
    );
\current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03034444FFCCFFFF"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => Q(0),
      I3 => \current_state_reg[0]_0\,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \current_state[0]_i_2_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => \current_state[1]_i_2_n_0\,
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(3),
      I5 => \current_state[1]_i_3_n_0\,
      O => next_state(1)
    );
\current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => drdy,
      I1 => state_count(3),
      I2 => state_count(2),
      I3 => state_count(0),
      I4 => state_count(4),
      I5 => state_count(1),
      O => \current_state[1]_i_2_n_0\
    );
\current_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03BBFF00"
    )
        port map (
      I0 => drdy,
      I1 => current_state(2),
      I2 => Q(0),
      I3 => current_state(1),
      I4 => current_state(0),
      O => \current_state[1]_i_3_n_0\
    );
\current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0338303000383030"
    )
        port map (
      I0 => \current_state[2]_i_2_n_0\,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      I4 => current_state(0),
      I5 => Q(0),
      O => next_state(2)
    );
\current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => drdy,
      I1 => state_count(3),
      I2 => state_count(2),
      I3 => state_count(0),
      I4 => state_count(4),
      I5 => state_count(1),
      O => \current_state[2]_i_2_n_0\
    );
\current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3000040C"
    )
        port map (
      I0 => drdy,
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => current_state(1),
      O => next_state(3)
    );
\current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_state(0),
      Q => current_state(0),
      S => \current_state_reg[1]_0\(0)
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => \current_state_reg[1]_0\(0)
    );
\current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_state(2),
      Q => current_state(2),
      R => \current_state_reg[1]_0\(0)
    );
\current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkin_bufgout,
      CE => '1',
      D => next_state(3),
      Q => current_state(3),
      R => \current_state_reg[1]_0\(0)
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3A82CEF5089DAAB1"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AA8421550810001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004C000098000B"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006C0000F80001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b11_n_0
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20005C4000B88001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b12_n_0
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00024C0000980001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004C0000980001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000500000E00001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b15_n_0
    );
g0_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000600000"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b16_n_0
    );
g0_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000200000"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b17_n_0
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01543202A8640550"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b19_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5002C2A008850011"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b2_n_0
    );
g0_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01540202A8040550"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b20_n_0
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BFE8297FD052FFA"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b21_n_0
    );
g0_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3554326AA864D550"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b22_n_0
    );
g0_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B5550F6AAA1ED554"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b23_n_0
    );
g0_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555252AAA4A5554"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b24_n_0
    );
g0_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3E66387CCC70F998"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b25_n_0
    );
g0_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E67831CCF06399E0"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b26_n_0
    );
g0_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007FFE00FFFC01FF"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b27_n_0
    );
g0_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9800FF3001FE600"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b28_n_0
    );
g0_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000800001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b29_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400448800D91001B"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000042000080000B"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004A0000900011"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"600ACAC01095FFE1"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FB0483F60910001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002CA8000B50001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400048800591000B"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g0_b9_n_0
    );
g1_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001E"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b12_n_0
    );
g1_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000006"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b14_n_0
    );
g1_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000018"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b15_n_0
    );
g1_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b17_n_0
    );
g1_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b21_n_0
    );
g1_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000019"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b22_n_0
    );
g1_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b23_n_0
    );
g1_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000012"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b24_n_0
    );
g1_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001C"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b25_n_0
    );
g1_b27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[1]\,
      I1 => \rom_addr_reg_rep_n_0_[2]\,
      I2 => \rom_addr_reg_rep_n_0_[3]\,
      I3 => \rom_addr_reg_rep_n_0_[4]\,
      I4 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b27_n_0
    );
g1_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b29_n_0
    );
g1_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[2]\,
      I2 => \rom_addr_reg_rep_n_0_[3]\,
      I3 => \rom_addr_reg_rep_n_0_[4]\,
      I4 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b6_n_0
    );
g1_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b8_n_0
    );
g1_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \rom_addr_reg_rep_n_0_[0]\,
      I1 => \rom_addr_reg_rep_n_0_[1]\,
      I2 => \rom_addr_reg_rep_n_0_[2]\,
      I3 => \rom_addr_reg_rep_n_0_[3]\,
      I4 => \rom_addr_reg_rep_n_0_[4]\,
      I5 => \rom_addr_reg_rep_n_0_[5]\,
      O => g1_b9_n_0
    );
\rom_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => rom_addr(0),
      I1 => current_state(2),
      I2 => \rom_addr_reg_rep[5]_0\(0),
      I3 => \rom_addr_reg_rep[5]_0\(1),
      O => \rom_addr[0]_i_1_n_0\
    );
\rom_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F6F6F60"
    )
        port map (
      I0 => rom_addr(0),
      I1 => rom_addr(1),
      I2 => current_state(2),
      I3 => \rom_addr_reg_rep[5]_0\(1),
      I4 => \rom_addr_reg_rep[5]_0\(0),
      O => \rom_addr[1]_i_1_n_0\
    );
\rom_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78FF78FF78FF7800"
    )
        port map (
      I0 => rom_addr(0),
      I1 => rom_addr(1),
      I2 => rom_addr(2),
      I3 => current_state(2),
      I4 => \rom_addr_reg_rep[5]_0\(1),
      I5 => \rom_addr_reg_rep[5]_0\(0),
      O => \rom_addr[2]_i_1_n_0\
    );
\rom_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FFFF7F800000"
    )
        port map (
      I0 => rom_addr(1),
      I1 => rom_addr(0),
      I2 => rom_addr(2),
      I3 => rom_addr(3),
      I4 => current_state(2),
      I5 => \rom_addr_reg_rep[5]_0\(1),
      O => \rom_addr[3]_i_1_n_0\
    );
\rom_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60606F60"
    )
        port map (
      I0 => \rom_addr[4]_i_2_n_0\,
      I1 => rom_addr(4),
      I2 => current_state(2),
      I3 => \rom_addr_reg_rep[5]_0\(0),
      I4 => \rom_addr_reg_rep[5]_0\(1),
      O => \rom_addr[4]_i_1_n_0\
    );
\rom_addr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => rom_addr(3),
      I1 => rom_addr(1),
      I2 => rom_addr(0),
      I3 => rom_addr(2),
      O => \rom_addr[4]_i_2_n_0\
    );
\rom_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(1),
      O => \rom_addr[5]_i_1_n_0\
    );
\rom_addr[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => Q(0),
      O => \rom_addr[5]_i_2_n_0\
    );
\rom_addr[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \rom_addr[5]_i_4_n_0\,
      I1 => rom_addr(5),
      I2 => current_state(2),
      I3 => \rom_addr_reg_rep[5]_0\(1),
      O => \rom_addr[5]_i_3_n_0\
    );
\rom_addr[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => rom_addr(4),
      I1 => rom_addr(2),
      I2 => rom_addr(0),
      I3 => rom_addr(1),
      I4 => rom_addr(3),
      O => \rom_addr[5]_i_4_n_0\
    );
\rom_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => current_state(2),
      I1 => rom_addr(5),
      I2 => \rom_addr[5]_i_4_n_0\,
      I3 => \rom_addr[5]_i_2_n_0\,
      I4 => rom_addr(6),
      O => \rom_addr[6]_i_1_n_0\
    );
\rom_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[0]_i_1_n_0\,
      Q => rom_addr(0),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[1]_i_1_n_0\,
      Q => rom_addr(1),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[2]_i_1_n_0\,
      Q => rom_addr(2),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[3]_i_1_n_0\,
      Q => rom_addr(3),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[4]_i_1_n_0\,
      Q => rom_addr(4),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[5]_i_3_n_0\,
      Q => rom_addr(5),
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => \rom_addr[6]_i_1_n_0\,
      Q => rom_addr(6),
      R => '0'
    );
\rom_addr_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[0]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[0]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[1]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[1]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[2]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[2]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[3]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[3]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[4]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[4]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => \rom_addr[5]_i_2_n_0\,
      D => \rom_addr[5]_i_3_n_0\,
      Q => \rom_addr_reg_rep_n_0_[5]\,
      R => \rom_addr[5]_i_1_n_0\
    );
\rom_addr_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => \rom_addr_rep[6]_i_1_n_0\,
      Q => \rom_addr_reg_rep_n_0_[6]\,
      R => '0'
    );
\rom_addr_rep[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888FFFF28880000"
    )
        port map (
      I0 => current_state(2),
      I1 => rom_addr(6),
      I2 => rom_addr(5),
      I3 => \rom_addr[5]_i_4_n_0\,
      I4 => \rom_addr[5]_i_2_n_0\,
      I5 => \rom_addr_reg_rep_n_0_[6]\,
      O => \rom_addr_rep[6]_i_1_n_0\
    );
\rom_do[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b0_n_0,
      O => p_0_out(0)
    );
\rom_do[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b10_n_0,
      O => p_0_out(10)
    );
\rom_do[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b11_n_0,
      O => p_0_out(11)
    );
\rom_do[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b13_n_0,
      O => p_0_out(13)
    );
\rom_do[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b14_n_0,
      O => p_0_out(14)
    );
\rom_do[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b15_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b15_n_0,
      O => p_0_out(15)
    );
\rom_do[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b15_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b16_n_0,
      O => p_0_out(16)
    );
\rom_do[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b22_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b19_n_0,
      O => p_0_out(19)
    );
\rom_do[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b21_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b1_n_0,
      O => p_0_out(1)
    );
\rom_do[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b21_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b20_n_0,
      O => p_0_out(20)
    );
\rom_do[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b21_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b21_n_0,
      O => p_0_out(21)
    );
\rom_do[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b22_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b22_n_0,
      O => p_0_out(22)
    );
\rom_do[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b23_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b23_n_0,
      O => p_0_out(23)
    );
\rom_do[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b15_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b26_n_0,
      O => p_0_out(26)
    );
\rom_do[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b23_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b28_n_0,
      O => p_0_out(28)
    );
\rom_do[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b21_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b2_n_0,
      O => p_0_out(2)
    );
\rom_do[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b6_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b3_n_0,
      O => p_0_out(3)
    );
\rom_do[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b21_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b4_n_0,
      O => p_0_out(4)
    );
\rom_do[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b9_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b5_n_0,
      O => p_0_out(5)
    );
\rom_do[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b6_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b6_n_0,
      O => p_0_out(6)
    );
\rom_do[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b9_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b7_n_0,
      O => p_0_out(7)
    );
\rom_do[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => g1_b9_n_0,
      I1 => \rom_addr_reg_rep_n_0_[6]\,
      I2 => g0_b9_n_0,
      O => p_0_out(9)
    );
\rom_do_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(0),
      Q => rom_do(0),
      R => '0'
    );
\rom_do_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(10),
      Q => rom_do(10),
      R => '0'
    );
\rom_do_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(11),
      Q => rom_do(11),
      R => '0'
    );
\rom_do_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(12),
      Q => rom_do(12),
      R => '0'
    );
\rom_do_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b12_n_0,
      I1 => g1_b12_n_0,
      O => p_0_out(12),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(13),
      Q => rom_do(13),
      R => '0'
    );
\rom_do_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(14),
      Q => rom_do(14),
      R => '0'
    );
\rom_do_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(15),
      Q => rom_do(15),
      R => '0'
    );
\rom_do_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(16),
      Q => rom_do(16),
      R => '0'
    );
\rom_do_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(17),
      Q => rom_do(17),
      R => '0'
    );
\rom_do_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b17_n_0,
      I1 => g1_b17_n_0,
      O => p_0_out(17),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(19),
      Q => rom_do(19),
      R => '0'
    );
\rom_do_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(1),
      Q => rom_do(1),
      R => '0'
    );
\rom_do_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(20),
      Q => rom_do(20),
      R => '0'
    );
\rom_do_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(21),
      Q => rom_do(21),
      R => '0'
    );
\rom_do_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(22),
      Q => rom_do(22),
      R => '0'
    );
\rom_do_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(23),
      Q => rom_do(23),
      R => '0'
    );
\rom_do_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(24),
      Q => rom_do(24),
      R => '0'
    );
\rom_do_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b24_n_0,
      I1 => g1_b24_n_0,
      O => p_0_out(24),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(25),
      Q => rom_do(25),
      R => '0'
    );
\rom_do_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b25_n_0,
      I1 => g1_b25_n_0,
      O => p_0_out(25),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(26),
      Q => rom_do(26),
      R => '0'
    );
\rom_do_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(27),
      Q => rom_do(27),
      R => '0'
    );
\rom_do_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b27_n_0,
      I1 => g1_b27_n_0,
      O => p_0_out(27),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(28),
      Q => rom_do(28),
      R => '0'
    );
\rom_do_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(29),
      Q => rom_do(29),
      R => '0'
    );
\rom_do_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b29_n_0,
      I1 => g1_b29_n_0,
      O => p_0_out(29),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(2),
      Q => rom_do(2),
      R => '0'
    );
\rom_do_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(3),
      Q => rom_do(3),
      R => '0'
    );
\rom_do_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(4),
      Q => rom_do(4),
      R => '0'
    );
\rom_do_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(5),
      Q => rom_do(5),
      R => '0'
    );
\rom_do_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(6),
      Q => rom_do(6),
      R => '0'
    );
\rom_do_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(7),
      Q => rom_do(7),
      R => '0'
    );
\rom_do_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(8),
      Q => rom_do(8),
      R => '0'
    );
\rom_do_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => g1_b8_n_0,
      O => p_0_out(8),
      S => \rom_addr_reg_rep_n_0_[6]\
    );
\rom_do_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkin_bufgout,
      CE => '1',
      D => p_0_out(9),
      Q => rom_do(9),
      R => '0'
    );
\state_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_count(0),
      O => \state_count[0]_i_1_n_0\
    );
\state_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state_count(0),
      I1 => state_count(1),
      O => \state_count[1]_i_1_n_0\
    );
\state_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => state_count(1),
      I1 => state_count(0),
      I2 => state_count(2),
      O => \state_count[2]_i_1_n_0\
    );
\state_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFF00020000"
    )
        port map (
      I0 => current_state(3),
      I1 => state_count(1),
      I2 => state_count(0),
      I3 => state_count(2),
      I4 => \state_count[4]_i_2_n_0\,
      I5 => state_count(3),
      O => \state_count[3]_i_1_n_0\
    );
\state_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \state_count[4]_i_1_n_0\
    );
\state_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      O => \state_count[4]_i_2_n_0\
    );
\state_count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => state_count(3),
      I1 => state_count(1),
      I2 => state_count(0),
      I3 => state_count(2),
      I4 => state_count(4),
      O => \state_count[4]_i_3_n_0\
    );
\state_count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clkin_bufgout,
      CE => \state_count[4]_i_2_n_0\,
      D => \state_count[0]_i_1_n_0\,
      Q => state_count(0),
      S => \state_count[4]_i_1_n_0\
    );
\state_count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clkin_bufgout,
      CE => \state_count[4]_i_2_n_0\,
      D => \state_count[1]_i_1_n_0\,
      Q => state_count(1),
      S => \state_count[4]_i_1_n_0\
    );
\state_count_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clkin_bufgout,
      CE => \state_count[4]_i_2_n_0\,
      D => \state_count[2]_i_1_n_0\,
      Q => state_count(2),
      S => \state_count[4]_i_1_n_0\
    );
\state_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkin_bufgout,
      CE => '1',
      D => \state_count[3]_i_1_n_0\,
      Q => state_count(3),
      R => '0'
    );
\state_count_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clkin_bufgout,
      CE => \state_count[4]_i_2_n_0\,
      D => \state_count[4]_i_3_n_0\,
      Q => state_count(4),
      S => \state_count[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dispsub_0_0_top_mmcme2 is
  port (
    CLK : out STD_LOGIC;
    DVI_CLK : out STD_LOGIC;
    CLK40 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rom_addr_reg_rep[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \current_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dispsub_0_0_top_mmcme2 : entity is "top_mmcme2";
end design_1_dispsub_0_0_top_mmcme2;

architecture STRUCTURE of design_1_dispsub_0_0_top_mmcme2 is
  signal clk0_bufgin : STD_LOGIC;
  signal clk1_bufgin : STD_LOGIC;
  signal clkfb_bufgin : STD_LOGIC;
  signal clkfb_bufgout : STD_LOGIC;
  signal clkin_bufgout : STD_LOGIC;
  signal daddr : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal den : STD_LOGIC;
  signal di : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drdy : STD_LOGIC;
  signal dwe : STD_LOGIC;
  signal mmcme2_test_inst_n_16 : STD_LOGIC;
  signal rst_mmcm : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcme2_test_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFG_CLK0 : label is "PRIMITIVE";
  attribute BOX_TYPE of BUFG_CLK1 : label is "PRIMITIVE";
  attribute BOX_TYPE of BUFG_FB : label is "PRIMITIVE";
  attribute BOX_TYPE of BUFG_IN : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcme2_test_inst : label is "PRIMITIVE";
begin
BUFG_CLK0: unisim.vcomponents.BUFG
     port map (
      I => clk0_bufgin,
      O => CLK
    );
BUFG_CLK1: unisim.vcomponents.BUFG
     port map (
      I => clk1_bufgin,
      O => DVI_CLK
    );
BUFG_FB: unisim.vcomponents.BUFG
     port map (
      I => clkfb_bufgin,
      O => clkfb_bufgout
    );
BUFG_IN: unisim.vcomponents.BUFG
     port map (
      I => CLK40,
      O => clkin_bufgout
    );
mmcme2_drp_inst: entity work.design_1_dispsub_0_0_mmcme2_drp
     port map (
      DADDR(6 downto 0) => daddr(6 downto 0),
      DI(15 downto 0) => di(15 downto 0),
      DO(14 downto 8) => dout(15 downto 9),
      DO(7 downto 0) => dout(7 downto 0),
      Q(0) => Q(0),
      clkin_bufgout => clkin_bufgout,
      \current_state_reg[0]_0\ => mmcme2_test_inst_n_16,
      \current_state_reg[1]_0\(0) => \current_state_reg[1]\(0),
      den => den,
      drdy => drdy,
      dwe => dwe,
      \rom_addr_reg_rep[5]_0\(1 downto 0) => \rom_addr_reg_rep[5]\(1 downto 0),
      rst_mmcm => rst_mmcm
    );
mmcme2_test_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 30.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 25.000000,
      CLKIN2_PERIOD => 25.000000,
      CLKOUT0_DIVIDE_F => 48.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 48,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => -22.500000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfb_bufgout,
      CLKFBOUT => clkfb_bufgin,
      CLKFBOUTB => NLW_mmcme2_test_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcme2_test_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => CLK40,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcme2_test_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk0_bufgin,
      CLKOUT0B => NLW_mmcme2_test_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk1_bufgin,
      CLKOUT1B => NLW_mmcme2_test_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcme2_test_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcme2_test_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcme2_test_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcme2_test_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcme2_test_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcme2_test_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcme2_test_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => daddr(6 downto 0),
      DCLK => clkin_bufgout,
      DEN => den,
      DI(15 downto 0) => di(15 downto 0),
      DO(15 downto 0) => dout(15 downto 0),
      DRDY => drdy,
      DWE => dwe,
      LOCKED => mmcme2_test_inst_n_16,
      PSCLK => '0',
      PSDONE => NLW_mmcme2_test_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => rst_mmcm
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dispsub_0_0_dclkgen is
  port (
    CLK : out STD_LOGIC;
    DVI_CLK : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK40 : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dispsub_0_0_dclkgen : entity is "dclkgen";
end design_1_dispsub_0_0_dclkgen;

architecture STRUCTURE of design_1_dispsub_0_0_dclkgen is
  signal CRST : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \crst_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resol_ff0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \resol_ff1_reg_n_0_[0]\ : STD_LOGIC;
  signal \resol_ff1_reg_n_0_[1]\ : STD_LOGIC;
  signal \resol_ff2_reg_n_0_[0]\ : STD_LOGIC;
  signal \resol_ff2_reg_n_0_[1]\ : STD_LOGIC;
  signal start : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  D(0) <= \^d\(0);
\crst_ff[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => \^d\(0)
    );
\crst_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => \^d\(0),
      Q => \crst_ff_reg_n_0_[0]\,
      R => '0'
    );
\crst_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => \crst_ff_reg_n_0_[0]\,
      Q => CRST,
      R => '0'
    );
\resol_ff0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => RESOL(0),
      Q => resol_ff0(0),
      R => CRST
    );
\resol_ff0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => RESOL(1),
      Q => resol_ff0(1),
      R => CRST
    );
\resol_ff1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => resol_ff0(0),
      Q => \resol_ff1_reg_n_0_[0]\,
      R => CRST
    );
\resol_ff1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => resol_ff0(1),
      Q => \resol_ff1_reg_n_0_[1]\,
      R => CRST
    );
\resol_ff2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => \resol_ff1_reg_n_0_[0]\,
      Q => \resol_ff2_reg_n_0_[0]\,
      R => CRST
    );
\resol_ff2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => \resol_ff1_reg_n_0_[1]\,
      Q => \resol_ff2_reg_n_0_[1]\,
      R => CRST
    );
\start[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \resol_ff2_reg_n_0_[0]\,
      I1 => \resol_ff1_reg_n_0_[0]\,
      I2 => \resol_ff2_reg_n_0_[1]\,
      I3 => \resol_ff1_reg_n_0_[1]\,
      O => p_3_out(0)
    );
\start_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => p_3_out(0),
      Q => start(0),
      R => CRST
    );
\start_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(0),
      Q => start(1),
      R => CRST
    );
\start_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(1),
      Q => start(2),
      R => CRST
    );
\start_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(2),
      Q => start(3),
      R => CRST
    );
\start_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(3),
      Q => start(4),
      R => CRST
    );
\start_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(4),
      Q => start(5),
      R => CRST
    );
\start_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(5),
      Q => start(6),
      R => CRST
    );
\start_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK40,
      CE => '1',
      D => start(6),
      Q => start(7),
      R => CRST
    );
top_mmcme2: entity work.design_1_dispsub_0_0_top_mmcme2
     port map (
      CLK => CLK,
      CLK40 => CLK40,
      DVI_CLK => DVI_CLK,
      Q(0) => start(7),
      \current_state_reg[1]\(0) => CRST,
      \rom_addr_reg_rep[5]\(1) => \resol_ff1_reg_n_0_[1]\,
      \rom_addr_reg_rep[5]\(0) => \resol_ff1_reg_n_0_[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dispsub_0_0_dispsub is
  port (
    DCLK : out STD_LOGIC;
    DVI_CLK : out STD_LOGIC;
    DVI_DATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DVI_HSYNC : out STD_LOGIC;
    DVI_VSYNC : out STD_LOGIC;
    DVI_DE : out STD_LOGIC;
    CLK40 : in STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DSP_HSYNC_X : in STD_LOGIC;
    DSP_VSYNC_X : in STD_LOGIC;
    DSP_DE : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_dispsub_0_0_dispsub : entity is "dispsub";
end design_1_dispsub_0_0_dispsub;

architecture STRUCTURE of design_1_dispsub_0_0_dispsub is
  signal \^dclk\ : STD_LOGIC;
  signal DRST : STD_LOGIC;
  signal de0 : STD_LOGIC;
  signal din2 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \drst_ff_reg_n_0_[0]\ : STD_LOGIC;
  signal hsync0 : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rgb_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rgb_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal vsync0 : STD_LOGIC;
  signal \NLW_genblk1[0].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[0].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[10].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[10].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[11].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[11].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[1].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[1].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[2].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[2].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[3].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[3].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[4].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[4].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[5].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[5].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[6].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[6].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[7].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[7].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[8].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[8].od_i_S_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[9].od_i_R_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_genblk1[9].od_i_S_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \genblk1[0].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \genblk1[0].od_i\ : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \genblk1[0].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[10].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[10].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[10].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[11].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[11].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[11].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[1].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[1].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[1].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[2].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[2].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[2].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[3].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[3].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[3].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[4].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[4].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[4].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[5].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[5].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[5].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[6].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[6].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[6].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[7].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[7].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[7].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[8].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[8].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[8].od_i\ : label is "TRUE";
  attribute BOX_TYPE of \genblk1[9].od_i\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \genblk1[9].od_i\ : label is "MLO";
  attribute \__SRVAL\ of \genblk1[9].od_i\ : label is "TRUE";
begin
  DCLK <= \^dclk\;
DVI_DE_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => de0,
      Q => DVI_DE,
      R => DRST
    );
DVI_HSYNC_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => hsync0,
      Q => DVI_HSYNC,
      R => DRST
    );
DVI_VSYNC_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => vsync0,
      Q => DVI_VSYNC,
      R => DRST
    );
dclkgen: entity work.design_1_dispsub_0_0_dclkgen
     port map (
      ARESETN => ARESETN,
      CLK => \^dclk\,
      CLK40 => CLK40,
      D(0) => p_1_out(0),
      DVI_CLK => DVI_CLK,
      RESOL(1 downto 0) => RESOL(1 downto 0)
    );
de0_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => DSP_DE,
      Q => de0,
      R => DRST
    );
\drst_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => p_1_out(0),
      Q => \drst_ff_reg_n_0_[0]\,
      R => '0'
    );
\drst_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => \drst_ff_reg_n_0_[0]\,
      Q => DRST,
      R => '0'
    );
\genblk1[0].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[0]\,
      D2 => din2(0),
      Q => DVI_DATA(0),
      R => \NLW_genblk1[0].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[0].od_i_S_UNCONNECTED\
    );
\genblk1[10].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[10]\,
      D2 => din2(10),
      Q => DVI_DATA(10),
      R => \NLW_genblk1[10].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[10].od_i_S_UNCONNECTED\
    );
\genblk1[11].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[11]\,
      D2 => din2(11),
      Q => DVI_DATA(11),
      R => \NLW_genblk1[11].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[11].od_i_S_UNCONNECTED\
    );
\genblk1[1].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[1]\,
      D2 => din2(1),
      Q => DVI_DATA(1),
      R => \NLW_genblk1[1].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[1].od_i_S_UNCONNECTED\
    );
\genblk1[2].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[2]\,
      D2 => din2(2),
      Q => DVI_DATA(2),
      R => \NLW_genblk1[2].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[2].od_i_S_UNCONNECTED\
    );
\genblk1[3].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[3]\,
      D2 => din2(3),
      Q => DVI_DATA(3),
      R => \NLW_genblk1[3].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[3].od_i_S_UNCONNECTED\
    );
\genblk1[4].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[4]\,
      D2 => din2(4),
      Q => DVI_DATA(4),
      R => \NLW_genblk1[4].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[4].od_i_S_UNCONNECTED\
    );
\genblk1[5].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[5]\,
      D2 => din2(5),
      Q => DVI_DATA(5),
      R => \NLW_genblk1[5].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[5].od_i_S_UNCONNECTED\
    );
\genblk1[6].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[6]\,
      D2 => din2(6),
      Q => DVI_DATA(6),
      R => \NLW_genblk1[6].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[6].od_i_S_UNCONNECTED\
    );
\genblk1[7].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[7]\,
      D2 => din2(7),
      Q => DVI_DATA(7),
      R => \NLW_genblk1[7].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[7].od_i_S_UNCONNECTED\
    );
\genblk1[8].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[8]\,
      D2 => din2(8),
      Q => DVI_DATA(8),
      R => \NLW_genblk1[8].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[8].od_i_S_UNCONNECTED\
    );
\genblk1[9].od_i\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^dclk\,
      CE => '1',
      D1 => \rgb_reg_reg_n_0_[9]\,
      D2 => din2(9),
      Q => DVI_DATA(9),
      R => \NLW_genblk1[9].od_i_R_UNCONNECTED\,
      S => \NLW_genblk1[9].od_i_S_UNCONNECTED\
    );
hsync0_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => DSP_HSYNC_X,
      Q => hsync0,
      R => DRST
    );
\rgb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(0),
      Q => \rgb_reg_reg_n_0_[0]\,
      R => DRST
    );
\rgb_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(10),
      Q => \rgb_reg_reg_n_0_[10]\,
      R => DRST
    );
\rgb_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(11),
      Q => \rgb_reg_reg_n_0_[11]\,
      R => DRST
    );
\rgb_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(12),
      Q => din2(0),
      R => DRST
    );
\rgb_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(13),
      Q => din2(1),
      R => DRST
    );
\rgb_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(14),
      Q => din2(2),
      R => DRST
    );
\rgb_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(15),
      Q => din2(3),
      R => DRST
    );
\rgb_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(16),
      Q => din2(4),
      R => DRST
    );
\rgb_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(17),
      Q => din2(5),
      R => DRST
    );
\rgb_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(18),
      Q => din2(6),
      R => DRST
    );
\rgb_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(19),
      Q => din2(7),
      R => DRST
    );
\rgb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(1),
      Q => \rgb_reg_reg_n_0_[1]\,
      R => DRST
    );
\rgb_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(20),
      Q => din2(8),
      R => DRST
    );
\rgb_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(21),
      Q => din2(9),
      R => DRST
    );
\rgb_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(22),
      Q => din2(10),
      R => DRST
    );
\rgb_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(23),
      Q => din2(11),
      R => DRST
    );
\rgb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(2),
      Q => \rgb_reg_reg_n_0_[2]\,
      R => DRST
    );
\rgb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(3),
      Q => \rgb_reg_reg_n_0_[3]\,
      R => DRST
    );
\rgb_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(4),
      Q => \rgb_reg_reg_n_0_[4]\,
      R => DRST
    );
\rgb_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(5),
      Q => \rgb_reg_reg_n_0_[5]\,
      R => DRST
    );
\rgb_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(6),
      Q => \rgb_reg_reg_n_0_[6]\,
      R => DRST
    );
\rgb_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(7),
      Q => \rgb_reg_reg_n_0_[7]\,
      R => DRST
    );
\rgb_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(8),
      Q => \rgb_reg_reg_n_0_[8]\,
      R => DRST
    );
\rgb_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => D(9),
      Q => \rgb_reg_reg_n_0_[9]\,
      R => DRST
    );
vsync0_reg: unisim.vcomponents.FDRE
     port map (
      C => \^dclk\,
      CE => '1',
      D => DSP_VSYNC_X,
      Q => vsync0,
      R => DRST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dispsub_0_0 is
  port (
    ARESETN : in STD_LOGIC;
    CLK40 : in STD_LOGIC;
    DCLK : out STD_LOGIC;
    RESOL : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DSP_R : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_G : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_DE : in STD_LOGIC;
    DSP_HSYNC_X : in STD_LOGIC;
    DSP_VSYNC_X : in STD_LOGIC;
    DVI_CLK : out STD_LOGIC;
    DVI_HSYNC : out STD_LOGIC;
    DVI_VSYNC : out STD_LOGIC;
    DVI_DE : out STD_LOGIC;
    DVI_DATA : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dispsub_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dispsub_0_0 : entity is "design_1_dispsub_0_0,dispsub,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_dispsub_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_dispsub_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_dispsub_0_0 : entity is "dispsub,Vivado 2022.2";
end design_1_dispsub_0_0;

architecture STRUCTURE of design_1_dispsub_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ARESETN : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ARESETN : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_dispsub_0_0_dispsub
     port map (
      ARESETN => ARESETN,
      CLK40 => CLK40,
      D(23 downto 16) => DSP_R(7 downto 0),
      D(15 downto 8) => DSP_G(7 downto 0),
      D(7 downto 0) => DSP_B(7 downto 0),
      DCLK => DCLK,
      DSP_DE => DSP_DE,
      DSP_HSYNC_X => DSP_HSYNC_X,
      DSP_VSYNC_X => DSP_VSYNC_X,
      DVI_CLK => DVI_CLK,
      DVI_DATA(11 downto 0) => DVI_DATA(11 downto 0),
      DVI_DE => DVI_DE,
      DVI_HSYNC => DVI_HSYNC,
      DVI_VSYNC => DVI_VSYNC,
      RESOL(1 downto 0) => RESOL(1 downto 0)
    );
end STRUCTURE;
