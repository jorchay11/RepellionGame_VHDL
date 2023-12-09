----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/31/2016 10:18:06 AM
-- Design Name: 
-- Module Name: MY_PIXEL_DRIVER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MY_PIXEL_DRIVER is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); blank : in STD_LOGIC;
      R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0 : out STD_LOGIC);
end MY_PIXEL_DRIVER;

architecture Behavioral of MY_PIXEL_DRIVER is

signal color_bus : std_logic_vector (11 downto 0); 
 
begin

 process(hcount,vcount,blank)
 VARIABLE row, col : INTEGER;
 begin
  row := conv_integer(vcount);
  col := conv_integer(hcount);

  if((col >= 0) and (col < 640) and (row >= 0) and (row < 480) and blank='0') then
      R3 <= '0'; R2 <= '0'; R1 <= '0'; R0 <= '0';       -- Blue + Green makes CYAN
      G3 <= '0'; G2 <= '0'; G1 <= '0'; G0 <= '0';
      B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '0';
--  elsif(blank = '0') then                             --blank may become project background
--      R3 <= '1'; R2 <= '1'; R1 <= '1'; R0 <= '1';      
--      G3 <= '0'; G2 <= '0'; G1 <= '0'; G0 <= '0';
--      B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '0';
  else
      R3 <= '0'; R2 <= '0'; R1 <= '0'; R0 <= '0';       -- BLANK area
      G3 <= '0'; G2 <= '0'; G1 <= '0'; G0 <= '0';
      B3 <= '0'; B2 <= '0'; B1 <= '0'; B0 <= '0';
  end if;
 end process;
 
 --R3 & R2 & R1 & R0 & G3 & G2 & G1 & G0 & B3 & B2 & B1 & B0 <= color_bus; 
 --R3 <= 
 
end Behavioral;
