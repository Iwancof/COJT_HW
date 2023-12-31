----------------------------------------------------------------------------------
-- Company: Digilent RO
-- Engineer: Mircea Dabacan
-- 
-- Create Date:    12:57:12 03/01/2008 
-- Design Name: 
-- Module Name:    MouseRefComp - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: This is the structural VHDL code of the 
--              Digilent Mouse Reference Component.
--              It instantiates three components:
--                - ps2interface
--                - mouse_controller
--                - resolution_mouse_informer
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
-- Revision 0.02 - File Modified by Koba on 2014/9/17
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MouseRefComp is
   port ( CLK        : in    std_logic; 
          RST        : in    std_logic; 
          MOUSE_RESOL: in    std_logic_vector (1 downto 0); 
          DISP_RESOL : in    std_logic_vector (1 downto 0);
          SWITCH     : in    std_logic; 
          LEFT       : out   std_logic; 
          MIDDLE     : out   std_logic; 
          NEW_EVENT  : out   std_logic; 
          RIGHT      : out   std_logic; 
          XPOS       : out   std_logic_vector (10 downto 0); 
          YPOS       : out   std_logic_vector (10 downto 0); 
          ZPOS       : out   std_logic_vector (3 downto 0); 
          PS2CLK_I   : in    std_logic;
          PS2CLK_O   : out   std_logic;
          PS2CLK_T   : out   std_logic;
          PS2DATA_I  : in    std_logic;
          PS2DATA_O  : out   std_logic;
          PS2DATA_T  : out   std_logic);
end MouseRefComp;

architecture Structural of MouseRefComp is

   signal TX_DATA    : std_logic_vector (7 downto 0);
   signal bitSetMaxX    : std_logic;
   signal vecValue    : std_logic_vector (10 downto 0);
   signal bitRead   : std_logic;
   signal bitWrite   : std_logic;
   signal bitErr   : std_logic;
   signal bitSetX   : std_logic;
   signal bitSetY   : std_logic;
   signal bitSetMaxY   : std_logic;
   signal vecRxData   : std_logic_vector (7 downto 0);

   component mouse_controller
      port ( clk       : in    std_logic;
             rst       : in    std_logic;
             read      : in    std_logic;
             write     : out   std_logic;
             err       : in    std_logic;
             mouse_resol:in    std_logic_vector (1 downto 0); 
             setx      : in    std_logic;
             sety      : in    std_logic;
             setmax_x  : in    std_logic;
             setmax_y  : in    std_logic;
             value     : in    std_logic_vector (10 downto 0); 
             rx_data   : in    std_logic_vector (7 downto 0); 
             tx_data   : out   std_logic_vector (7 downto 0); 
             left      : out   std_logic; 
             middle    : out   std_logic; 
             right     : out   std_logic; 
             xpos      : out   std_logic_vector (10 downto 0); 
             ypos      : out   std_logic_vector (10 downto 0); 
             zpos      : out   std_logic_vector (3 downto 0); 
             new_event : out   std_logic);
   end component;
   
   component resolution_mouse_informer
      port ( clk        : in    std_logic; 
             rst        : in    std_logic; 
             disp_resol : in    std_logic_vector (1 downto 0); 
             switch     : in    std_logic; 
             setx       : out   std_logic; 
             sety       : out   std_logic; 
             setmax_x   : out   std_logic; 
             setmax_y   : out   std_logic; 
             value      : out   std_logic_vector (10 downto 0));
   end component;
   
   component ps2interface
      port ( clk      : in    std_logic; 
             rst      : in    std_logic; 
             read     : out   std_logic; 
             write    : in    std_logic; 
             rx_data  : out   std_logic_vector (7 downto 0); 
             tx_data  : in    std_logic_vector (7 downto 0); 
             busy     : out   std_logic; 
             err      : out   std_logic;
             ps2clk_i : in    std_logic;
             ps2clk_o : out   std_logic;
             ps2clk_t : out   std_logic;
             ps2data_i: in    std_logic;
             ps2data_o: out   std_logic;
             ps2data_t: out   std_logic);
   end component;

begin

   MouseCtrlInst : mouse_controller
      port map (clk=>CLK,
                rst=>RST,
                read=>bitRead,
                write=>bitWrite,
                err=>bitErr,
                mouse_resol=>MOUSE_RESOL,
                setmax_x=>bitSetMaxX,
                setmax_y=>bitSetMaxY,
                setx=>bitSetX,
                sety=>bitSetY,
                value(10 downto 0)=>vecValue(10 downto 0),
                rx_data(7 downto 0)=>vecRxData(7 downto 0),
                tx_data(7 downto 0)=>TX_DATA(7 downto 0),
                left=>LEFT,
                middle=>MIDDLE,
                right=>RIGHT,
                xpos(10 downto 0)=>XPOS(10 downto 0),
                ypos(10 downto 0)=>YPOS(10 downto 0),
                zpos(3 downto 0)=>ZPOS(3 downto 0),
                new_event=>NEW_EVENT);
   
   ResMouseInfInst : resolution_mouse_informer
      port map (clk=>CLK,
                disp_resol=>DISP_RESOL,
                rst=>RST,
                switch=>SWITCH,
                setmax_x=>bitSetMaxX,
                setmax_y=>bitSetMaxY,
                setx=>bitSetX,
                sety=>bitSetY,
                value(10 downto 0)=>vecValue(10 downto 0));
   
   Pss2Inst : ps2interface
      port map (clk=>CLK,
                rst=>RST,
                tx_data(7 downto 0)=>TX_DATA(7 downto 0),
                read=>bitRead,
                write=>bitWrite,
                busy=>open,
                err=>bitErr,
                rx_data(7 downto 0)=>vecRxData(7 downto 0),
                ps2clk_i => PS2CLK_I,
                ps2clk_o => PS2CLK_O,
                ps2clk_t => PS2CLK_T,
                ps2data_i=> PS2DATA_I,
                ps2data_o=> PS2DATA_O,
                ps2data_t=> PS2DATA_T);
   
end Structural;
