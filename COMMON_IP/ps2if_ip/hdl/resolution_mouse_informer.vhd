------------------------------------------------------------------------
-- resolution_mouse_informer.vhd
------------------------------------------------------------------------
-- Author : Ulrich Zolt疣
--          Copyright 2006 Digilent, Inc.
------------------------------------------------------------------------
-- Software version : Xilinx ISE 7.1.04i
--                    WebPack
-- Device           : 3s200ft256-4
------------------------------------------------------------------------
-- This file contains the logic that send the mouse_controller new
-- position of the mouse and new maximum values for the position
-- when resolution changes, so that the mouse will be centered on the
-- screen and the bounds for the new resolution are properly set.
------------------------------------------------------------------------
--  Behavioral description
------------------------------------------------------------------------
-- This module implements the logic that sets the position of the mouse
-- when the fpga is powered-up and when the resolution changes. It
-- also sets the bounds of the mouse corresponding to the currently used
-- resolution.
-- The mouse is centered for the currently selected resolution and the
-- bounds are set appropriately. This way the mouse will first appear
-- in the center in the screen at start-up and when resolution is
-- changed and cannot leave the screen.
-- The position (and similarly the bounds) is set by placing and number
-- representing the middle of the screen dimension on the value output
-- and activation the corresponding set signal (setx for horizontal
-- position, sety for vertical position, setmax_x for horizontal
-- maximum value, setmax_y for the veritcal maximum value).
------------------------------------------------------------------------
--  Port definitions
------------------------------------------------------------------------
-- clk         - global clock signal
-- rst         - reset signal
-- resolution  - input pin, from resolution_switcher
--             - 0 for 640x480 selected resolution
--             - 1 for 800x600 selected resolution
-- switch      - input pin, from resolution_switcher
--             - active for one clock period when resolution changes
-- value       - output pin, 10 bits, to mouse_controller
--             - position on x or y, max value for x or y
--             - that is sent to the mouse_controller
-- setx        - output pin, to mouse_controller
--             - active for one clock period when the horizontal
--             - position of the mouse cursor is valid on value output
-- sety        - output pin, to mouse_controller
--             - active for one clock period when the vertical
--             - position of the mouse cursor is valid on value output
-- setmax_x    - output pin, to mouse_controller
--             - active for one clock period when the horizontal
--             - maximum position of the mouse cursor is valid on
--             - value output
-- setmax_y    - output pin, to mouse_controller
--             - active for one clock period when the vertical
--             - maximum position of the mouse cursor is valid on
--             - value output
------------------------------------------------------------------------
-- Revision History:
-- 09/18/2006(UlrichZ): created
-- 09/17/2014(Koba)   : modified 表示解像度をVGA、XGA、SXGAの3種に変更
------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- simulation library
library UNISIM;
use UNISIM.VComponents.all;

-- the resolution_mouse_informer entity declaration
-- read above for behavioral description and port definitions.
entity resolution_mouse_informer is
port (
   clk         : in std_logic;
   rst         : in std_logic;

   disp_resol  : in std_logic_vector (1 downto 0);
   switch      : in std_logic;

   value       : out std_logic_vector(10 downto 0);
   setx        : out std_logic;
   sety        : out std_logic;
   setmax_x    : out std_logic;
   setmax_y    : out std_logic
);
end resolution_mouse_informer;

architecture Behavioral of resolution_mouse_informer is

------------------------------------------------------------------------
-- CONSTANTS
------------------------------------------------------------------------

-- center horizontal position of the mouse
constant POS_X_VGA : std_logic_vector(10 downto 0) := "00101000000"; -- 320
constant POS_X_XGA : std_logic_vector(10 downto 0) := "01000000000"; -- 512
constant POS_X_SXGA: std_logic_vector(10 downto 0) := "01010000000"; -- 640

-- center vertical position of the mouse
constant POS_Y_VGA : std_logic_vector(10 downto 0) := "00011110000"; -- 240
constant POS_Y_XGA : std_logic_vector(10 downto 0) := "00110000000"; -- 384
constant POS_Y_SXGA: std_logic_vector(10 downto 0) := "01000000000"; -- 512
                                                 
-- maximum horizontal position of the mouse
constant MAX_X_VGA : std_logic_vector(10 downto 0) := "01001111111"; -- 639
constant MAX_X_XGA : std_logic_vector(10 downto 0) := "01111111111"; -- 1023
constant MAX_X_SXGA: std_logic_vector(10 downto 0) := "10011111111"; -- 1279

-- maximum vertical position of the mouse
constant MAX_Y_VGA : std_logic_vector(10 downto 0) := "00111011111"; -- 479
constant MAX_Y_XGA : std_logic_vector(10 downto 0) := "01011111111"; -- 767
constant MAX_Y_SXGA: std_logic_vector(10 downto 0) := "01111111111"; -- 1023

constant RES_VGA  : std_logic_vector(1 downto 0) := "00";
constant RES_XGA  : std_logic_vector(1 downto 0) := "01";
constant RES_SXGA : std_logic_vector(1 downto 0) := "10";

------------------------------------------------------------------------
-- SIGNALS
------------------------------------------------------------------------

type fsm_state is (sReset,sIdle,sSetX,sSetY,sSetMaxX,sSetMaxY);
-- signal that holds the current state of the FSM
signal state: fsm_state := sIdle;

begin

   -- value receives the horizontal position of the mouse, the vertical
   -- position, the maximum horizontal value and maximum vertical
   -- value for the active resolution when in the apropriate state

   process ( state, disp_resol ) begin
      case state is
         when sSetX => if disp_resol=RES_VGA then
                          value <= POS_X_VGA;
                       elsif disp_resol=RES_XGA then
                          value <= POS_X_XGA;
                       else
                          value <= POS_X_SXGA;
                       end if;
         when sSetY => if disp_resol=RES_VGA then
                          value <= POS_Y_VGA;
                       elsif disp_resol=RES_XGA then
                          value <= POS_Y_XGA;
                       else
                          value <= POS_Y_SXGA;
                       end if;

         when sSetMaxX =>
                       if disp_resol=RES_VGA then
                          value <= MAX_X_VGA;
                       elsif disp_resol=RES_XGA then
                          value <= MAX_X_XGA;
                       else
                          value <= MAX_X_SXGA;
                       end if;

         when sSetMaxY =>
                       if disp_resol=RES_VGA then
                          value <= MAX_Y_VGA;
                       elsif disp_resol=RES_XGA then
                          value <= MAX_Y_XGA;
                       else
                          value <= MAX_Y_SXGA;
                       end if;
         when others => value <= (others => '0');
       end case;
   end process;

   -- when in state sSetX, set the horizontal value for the mouse
   setx <= '1' when state = sSetX else '0';
   -- when in state sSetY, set the vertical value for the mouse
   sety <= '1' when state = sSetY else '0';
   -- when in state sSetMaxX, set the horizontal max value for the mouse
   setmax_x <= '1' when state = sSetMaxX else '0';
   -- when in state sSetMaxX, set the vertical max value for the mouse
   setmax_y <= '1' when state = sSetMaxY else '0';

   -- when a resolution switch occurs (even to the same resolution)
   -- leave the idle state
   -- if just powered up or reset occures go to reset state and
   -- from there set the position and bounds for the mouse
   manage_fsm: process(clk,rst)
   begin
      if(rst = '1') then
         state <= sReset;

      elsif(rising_edge(clk)) then
         
         case state is

            -- when reset occurs (or power-up) set the position
            -- and bounds for the mouse.
            when sReset => 
               state <= sSetX;         

            -- remain in idle while switch is not active.
            when sIdle =>
               if(switch = '1') then
                  state <= sSetX;
               else
                  state <= sIdle;
               end if;

            when sSetX =>
               state <= sSetY;
               
            when sSetY =>
               state <= sSetMaxX;

            when sSetMaxX =>
               state <= sSetMaxY;

            when sSetMaxY =>
               state <= sIdle;

            when others =>
               state <= sIdle;

         end case;
      end if;
   end process;

end Behavioral;
