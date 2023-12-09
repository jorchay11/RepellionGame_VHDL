----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2017 07:32:16 PM
-- Design Name: 
-- Module Name: CHAR_GEN - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;       -- For unsigned()

entity CHAR_GEN is
PORT(clk25, blank  : in STD_LOGIC; 
     hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); 
     ASCII_CHAR    : in STD_LOGIC_VECTOR(4 downto 0);
     Red,Green,Blue : out STD_LOGIC_VECTOR (3 downto 0));
end CHAR_GEN;

--entity CHAR_GEN is
--PORT(clk25, blank  : in STD_LOGIC; 
--     hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); 
--     ASCII_CHAR    : in STD_LOGIC_VECTOR(5 downto 0);
--     Red,Green,Blue : out STD_LOGIC_VECTOR (3 downto 0));
--end CHAR_GEN;


architecture Behavioral of CHAR_GEN is
-- --------------------------------------------------------------------------
signal pixel_row : STD_LOGIC_VECTOR(3 downto 0);
signal pixel_col : STD_LOGIC_VECTOR(4 downto 0);

signal ROM_ADDRESS : STD_LOGIC_VECTOR(8 downto 0);  --9 bits for 512
signal ROM_DATA : STD_LOGIC_VECTOR(31 downto 0); -- size of character? 
signal INTENSITY : STD_LOGIC;
signal Red_temp : STD_LOGIC_VECTOR(3 downto 0);
signal Green_temp : STD_LOGIC_VECTOR(3 downto 0);
signal Blue_temp : STD_LOGIC_VECTOR(3 downto 0);

COMPONENT Nums_gen
  PORT (clka : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0); -- length of bits of depth? 
        douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
-- -----------------------------------------------------------------------------
begin
my_rom : blk_mem_gen_2 PORT MAP (clka => clk25, addra => ROM_ADDRESS, douta => ROM_DATA);

pixel_row <= vcount(3 downto 0);    --4 bits for 0-14 
pixel_col <= hcount(4 downto 0);  -- 5 bits for 0-19
ROM_ADDRESS <= ASCII_CHAR & pixel_row;  -- Generating ROM address
--ROM is 5 + 4 = 9 bits = 512 deep

 process(clk25)
  variable col1,col2,col3 : NATURAL range 0 to 31; --this may need to be 32
  begin
   if rising_edge(clk25) then
	  col3 := col2;
	  col2 := col1;
	  col1 := conv_integer(pixel_col);
	  INTENSITY <= ROM_DATA(col3);
   end if;
end process;

--create signals? 
--change color here? 
Red <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Green <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Blue <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
        
end Behavioral;
