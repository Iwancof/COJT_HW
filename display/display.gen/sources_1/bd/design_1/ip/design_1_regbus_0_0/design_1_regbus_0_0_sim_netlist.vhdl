-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jun 23 16:50:10 2023
-- Host        : COJTHW101 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_regbus_0_0 -prefix
--               design_1_regbus_0_0_ design_1_regbus_0_0_sim_netlist.vhdl
-- Design      : design_1_regbus_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_regbus_0_0_regbus_v2_0_S00_AXI is
  port (
    s00_axi_awready : out STD_LOGIC;
    WRADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BYTEEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    WREN : out STD_LOGIC;
    WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_arready : out STD_LOGIC;
    RDADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RDEN : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RDATA_SOUND : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_DRAW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_CAPT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_DISP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_regbus_0_0_regbus_v2_0_S00_AXI;

architecture STRUCTURE of design_1_regbus_0_0_regbus_v2_0_S00_AXI is
  signal \^rdaddr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rden\ : STD_LOGIC;
  signal RDEN_i_1_n_0 : STD_LOGIC;
  signal axi_araddr0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pre_axi_arready : STD_LOGIC;
  signal pre_axi_arready0 : STD_LOGIC;
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RDEN_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of WREN_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
begin
  RDADDR(15 downto 0) <= \^rdaddr\(15 downto 0);
  RDEN <= \^rden\;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\BYTEEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wstrb(0),
      Q => BYTEEN(0),
      R => p_0_in
    );
\BYTEEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wstrb(1),
      Q => BYTEEN(1),
      R => p_0_in
    );
\BYTEEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wstrb(2),
      Q => BYTEEN(2),
      R => p_0_in
    );
\BYTEEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wstrb(3),
      Q => BYTEEN(3),
      R => p_0_in
    );
RDEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^rden\,
      O => RDEN_i_1_n_0
    );
RDEN_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => RDEN_i_1_n_0,
      Q => \^rden\,
      R => p_0_in
    );
\WDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(0),
      Q => WDATA(0),
      R => p_0_in
    );
\WDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(10),
      Q => WDATA(10),
      R => p_0_in
    );
\WDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(11),
      Q => WDATA(11),
      R => p_0_in
    );
\WDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(12),
      Q => WDATA(12),
      R => p_0_in
    );
\WDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(13),
      Q => WDATA(13),
      R => p_0_in
    );
\WDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(14),
      Q => WDATA(14),
      R => p_0_in
    );
\WDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(15),
      Q => WDATA(15),
      R => p_0_in
    );
\WDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(16),
      Q => WDATA(16),
      R => p_0_in
    );
\WDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(17),
      Q => WDATA(17),
      R => p_0_in
    );
\WDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(18),
      Q => WDATA(18),
      R => p_0_in
    );
\WDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(19),
      Q => WDATA(19),
      R => p_0_in
    );
\WDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(1),
      Q => WDATA(1),
      R => p_0_in
    );
\WDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(20),
      Q => WDATA(20),
      R => p_0_in
    );
\WDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(21),
      Q => WDATA(21),
      R => p_0_in
    );
\WDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(22),
      Q => WDATA(22),
      R => p_0_in
    );
\WDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(23),
      Q => WDATA(23),
      R => p_0_in
    );
\WDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(24),
      Q => WDATA(24),
      R => p_0_in
    );
\WDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(25),
      Q => WDATA(25),
      R => p_0_in
    );
\WDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(26),
      Q => WDATA(26),
      R => p_0_in
    );
\WDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(27),
      Q => WDATA(27),
      R => p_0_in
    );
\WDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(28),
      Q => WDATA(28),
      R => p_0_in
    );
\WDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(29),
      Q => WDATA(29),
      R => p_0_in
    );
\WDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(2),
      Q => WDATA(2),
      R => p_0_in
    );
\WDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(30),
      Q => WDATA(30),
      R => p_0_in
    );
\WDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(31),
      Q => WDATA(31),
      R => p_0_in
    );
\WDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(3),
      Q => WDATA(3),
      R => p_0_in
    );
\WDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(4),
      Q => WDATA(4),
      R => p_0_in
    );
\WDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(5),
      Q => WDATA(5),
      R => p_0_in
    );
\WDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(6),
      Q => WDATA(6),
      R => p_0_in
    );
\WDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(7),
      Q => WDATA(7),
      R => p_0_in
    );
\WDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(8),
      Q => WDATA(8),
      R => p_0_in
    );
\WDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => s00_axi_wdata(9),
      Q => WDATA(9),
      R => p_0_in
    );
\WRADDR[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
\WRADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(0),
      Q => WRADDR(0),
      R => p_0_in
    );
\WRADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(10),
      Q => WRADDR(10),
      R => p_0_in
    );
\WRADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(11),
      Q => WRADDR(11),
      R => p_0_in
    );
\WRADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(12),
      Q => WRADDR(12),
      R => p_0_in
    );
\WRADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(13),
      Q => WRADDR(13),
      R => p_0_in
    );
\WRADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(14),
      Q => WRADDR(14),
      R => p_0_in
    );
\WRADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(15),
      Q => WRADDR(15),
      R => p_0_in
    );
\WRADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(1),
      Q => WRADDR(1),
      R => p_0_in
    );
\WRADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(2),
      Q => WRADDR(2),
      R => p_0_in
    );
\WRADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(3),
      Q => WRADDR(3),
      R => p_0_in
    );
\WRADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(4),
      Q => WRADDR(4),
      R => p_0_in
    );
\WRADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(5),
      Q => WRADDR(5),
      R => p_0_in
    );
\WRADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(6),
      Q => WRADDR(6),
      R => p_0_in
    );
\WRADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(7),
      Q => WRADDR(7),
      R => p_0_in
    );
\WRADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(8),
      Q => WRADDR(8),
      R => p_0_in
    );
\WRADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awaddr(9),
      Q => WRADDR(9),
      R => p_0_in
    );
WREN_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s00_axi_awready\,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => slv_reg_wren
    );
WREN_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg_wren,
      Q => WREN,
      R => p_0_in
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_araddr0
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(0),
      Q => \^rdaddr\(0),
      R => p_0_in
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(10),
      Q => \^rdaddr\(10),
      R => p_0_in
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(11),
      Q => \^rdaddr\(11),
      R => p_0_in
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(12),
      Q => \^rdaddr\(12),
      R => p_0_in
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(13),
      Q => \^rdaddr\(13),
      R => p_0_in
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(14),
      Q => \^rdaddr\(14),
      R => p_0_in
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(15),
      Q => \^rdaddr\(15),
      R => p_0_in
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(1),
      Q => \^rdaddr\(1),
      R => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(2),
      Q => \^rdaddr\(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(3),
      Q => \^rdaddr\(3),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(4),
      Q => \^rdaddr\(4),
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(5),
      Q => \^rdaddr\(5),
      R => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(6),
      Q => \^rdaddr\(6),
      R => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(7),
      Q => \^rdaddr\(7),
      R => p_0_in
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(8),
      Q => \^rdaddr\(8),
      R => p_0_in
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_araddr0,
      D => s00_axi_araddr(9),
      Q => \^rdaddr\(9),
      R => p_0_in
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pre_axi_arready,
      Q => \^s00_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => axi_awaddr(0),
      R => p_0_in
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(10),
      Q => axi_awaddr(10),
      R => p_0_in
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(11),
      Q => axi_awaddr(11),
      R => p_0_in
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(12),
      Q => axi_awaddr(12),
      R => p_0_in
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(13),
      Q => axi_awaddr(13),
      R => p_0_in
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(14),
      Q => axi_awaddr(14),
      R => p_0_in
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(15),
      Q => axi_awaddr(15),
      R => p_0_in
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => axi_awaddr(1),
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => axi_awaddr(3),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => axi_awaddr(4),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => axi_awaddr(5),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(6),
      Q => axi_awaddr(6),
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(7),
      Q => axi_awaddr(7),
      R => p_0_in
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(8),
      Q => axi_awaddr(8),
      R => p_0_in
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(9),
      Q => axi_awaddr(9),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(0),
      I1 => RDATA_DRAW(0),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(0),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(0),
      I1 => RDATA_OPT2(0),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(0),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[10]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(10),
      I1 => RDATA_DRAW(10),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(10),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(10),
      I1 => RDATA_OPT2(10),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(10),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[11]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(11),
      I1 => RDATA_DRAW(11),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(11),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(11),
      I1 => RDATA_OPT2(11),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(11),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[12]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(12),
      I1 => RDATA_DRAW(12),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(12),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(12),
      I1 => RDATA_OPT2(12),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(12),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[13]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(13),
      I1 => RDATA_DRAW(13),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(13),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(13),
      I1 => RDATA_OPT2(13),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(13),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[14]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(14),
      I1 => RDATA_DRAW(14),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(14),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(14),
      I1 => RDATA_OPT2(14),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(14),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[15]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(15),
      I1 => RDATA_DRAW(15),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(15),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(15),
      I1 => RDATA_OPT2(15),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(15),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[16]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(16),
      I1 => RDATA_DRAW(16),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(16),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(16),
      I1 => RDATA_OPT2(16),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(16),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[17]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(17),
      I1 => RDATA_DRAW(17),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(17),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(17),
      I1 => RDATA_OPT2(17),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(17),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[18]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(18),
      I1 => RDATA_DRAW(18),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(18),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(18),
      I1 => RDATA_OPT2(18),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(18),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[19]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(19),
      I1 => RDATA_DRAW(19),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(19),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(19),
      I1 => RDATA_OPT2(19),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(19),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[1]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(1),
      I1 => RDATA_DRAW(1),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(1),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(1),
      I1 => RDATA_OPT2(1),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(1),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[20]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(20),
      I1 => RDATA_DRAW(20),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(20),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(20),
      I1 => RDATA_OPT2(20),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(20),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[21]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(21),
      I1 => RDATA_DRAW(21),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(21),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(21),
      I1 => RDATA_OPT2(21),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(21),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[22]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(22),
      I1 => RDATA_DRAW(22),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(22),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(22),
      I1 => RDATA_OPT2(22),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(22),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[23]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(23),
      I1 => RDATA_DRAW(23),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(23),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(23),
      I1 => RDATA_OPT2(23),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(23),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[24]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(24),
      I1 => RDATA_DRAW(24),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(24),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(24),
      I1 => RDATA_OPT2(24),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(24),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[25]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(25),
      I1 => RDATA_DRAW(25),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(25),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(25),
      I1 => RDATA_OPT2(25),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(25),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[26]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(26),
      I1 => RDATA_DRAW(26),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(26),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(26),
      I1 => RDATA_OPT2(26),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(26),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[27]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(27),
      I1 => RDATA_DRAW(27),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(27),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(27),
      I1 => RDATA_OPT2(27),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(27),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[28]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(28),
      I1 => RDATA_DRAW(28),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(28),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(28),
      I1 => RDATA_OPT2(28),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(28),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[29]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(29),
      I1 => RDATA_DRAW(29),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(29),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(29),
      I1 => RDATA_OPT2(29),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(29),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(2),
      I1 => RDATA_DRAW(2),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(2),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(2),
      I1 => RDATA_OPT2(2),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(2),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[30]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(30),
      I1 => RDATA_DRAW(30),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(30),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(30),
      I1 => RDATA_OPT2(30),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(30),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[31]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(31),
      I1 => RDATA_DRAW(31),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(31),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(31),
      I1 => RDATA_OPT2(31),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(31),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[3]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(3),
      I1 => RDATA_DRAW(3),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(3),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(3),
      I1 => RDATA_OPT2(3),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(3),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[4]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(4),
      I1 => RDATA_DRAW(4),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(4),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(4),
      I1 => RDATA_OPT2(4),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(4),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[5]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(5),
      I1 => RDATA_DRAW(5),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(5),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(5),
      I1 => RDATA_OPT2(5),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(5),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[6]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(6),
      I1 => RDATA_DRAW(6),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(6),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(6),
      I1 => RDATA_OPT2(6),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(6),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[7]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(7),
      I1 => RDATA_DRAW(7),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(7),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(7),
      I1 => RDATA_OPT2(7),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(7),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[8]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(8),
      I1 => RDATA_DRAW(8),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(8),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(8),
      I1 => RDATA_OPT2(8),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(8),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \^rdaddr\(14),
      I2 => \axi_rdata[9]_i_3_n_0\,
      I3 => \^rdaddr\(15),
      O => p_1_in(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_SOUND(9),
      I1 => RDATA_DRAW(9),
      I2 => \^rdaddr\(13),
      I3 => RDATA_CAPT(9),
      I4 => \^rdaddr\(12),
      I5 => RDATA_DISP(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RDATA_OPT3(9),
      I1 => RDATA_OPT2(9),
      I2 => \^rdaddr\(13),
      I3 => RDATA_OPT1(9),
      I4 => \^rdaddr\(12),
      I5 => RDATA_OPT0(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => p_1_in(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => p_0_in
    );
pre_axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => pre_axi_arready,
      O => pre_axi_arready0
    );
pre_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pre_axi_arready0,
      Q => pre_axi_arready,
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_regbus_0_0_regbus_v2_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    WRADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BYTEEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    WREN : out STD_LOGIC;
    WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RDEN : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    RDATA_SOUND : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_DRAW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_CAPT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_DISP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end design_1_regbus_0_0_regbus_v2_0;

architecture STRUCTURE of design_1_regbus_0_0_regbus_v2_0 is
begin
regbus_v2_0_S00_AXI_inst: entity work.design_1_regbus_0_0_regbus_v2_0_S00_AXI
     port map (
      BYTEEN(3 downto 0) => BYTEEN(3 downto 0),
      RDADDR(15 downto 0) => Q(15 downto 0),
      RDATA_CAPT(31 downto 0) => RDATA_CAPT(31 downto 0),
      RDATA_DISP(31 downto 0) => RDATA_DISP(31 downto 0),
      RDATA_DRAW(31 downto 0) => RDATA_DRAW(31 downto 0),
      RDATA_OPT0(31 downto 0) => RDATA_OPT0(31 downto 0),
      RDATA_OPT1(31 downto 0) => RDATA_OPT1(31 downto 0),
      RDATA_OPT2(31 downto 0) => RDATA_OPT2(31 downto 0),
      RDATA_OPT3(31 downto 0) => RDATA_OPT3(31 downto 0),
      RDATA_SOUND(31 downto 0) => RDATA_SOUND(31 downto 0),
      RDEN => RDEN,
      WDATA(31 downto 0) => WDATA(31 downto 0),
      WRADDR(15 downto 0) => WRADDR(15 downto 0),
      WREN => WREN,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(15 downto 0) => s00_axi_araddr(15 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => S_AXI_ARREADY,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(15 downto 0) => s00_axi_awaddr(15 downto 0),
      s00_axi_awready => S_AXI_AWREADY,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => S_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_regbus_0_0 is
  port (
    WRADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    BYTEEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WREN : out STD_LOGIC;
    WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RDADDR : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RDEN : out STD_LOGIC;
    RDATA_DISP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_CAPT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_DRAW : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_SOUND : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RDATA_OPT3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_regbus_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_regbus_0_0 : entity is "design_1_regbus_0_0,regbus_v2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_regbus_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_regbus_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_regbus_0_0 : entity is "regbus_v2_0,Vivado 2022.2";
end design_1_regbus_0_0;

architecture STRUCTURE of design_1_regbus_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_regbus_0_0_regbus_v2_0
     port map (
      BYTEEN(3 downto 0) => BYTEEN(3 downto 0),
      Q(15 downto 0) => RDADDR(15 downto 0),
      RDATA_CAPT(31 downto 0) => RDATA_CAPT(31 downto 0),
      RDATA_DISP(31 downto 0) => RDATA_DISP(31 downto 0),
      RDATA_DRAW(31 downto 0) => RDATA_DRAW(31 downto 0),
      RDATA_OPT0(31 downto 0) => RDATA_OPT0(31 downto 0),
      RDATA_OPT1(31 downto 0) => RDATA_OPT1(31 downto 0),
      RDATA_OPT2(31 downto 0) => RDATA_OPT2(31 downto 0),
      RDATA_OPT3(31 downto 0) => RDATA_OPT3(31 downto 0),
      RDATA_SOUND(31 downto 0) => RDATA_SOUND(31 downto 0),
      RDEN => RDEN,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      WDATA(31 downto 0) => WDATA(31 downto 0),
      WRADDR(15 downto 0) => WRADDR(15 downto 0),
      WREN => WREN,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(15 downto 0) => s00_axi_araddr(15 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(15 downto 0) => s00_axi_awaddr(15 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
