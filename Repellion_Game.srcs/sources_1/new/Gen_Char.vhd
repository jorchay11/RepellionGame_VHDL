----------------------------------------------------------------------------------
-- Company: Grand Valley State University
-- Engineer: Adapted from Nico Fernandez for Jordan Hayes
-- 
-- Create Date: 02/02/2017 07:32:16 PM
-- Module Name: CHAR_GEN - Behavioral
-- Project Name: Repellion_Game 
-- Description: The character generator references the static_score.coe file in the 
--              project to print pixel intensities to the screen referencing the ROM
--              address of a block ROM that contains the coe file data and will return 
--              the character corresponding to the address sent. The font size is 16x16 pix.
-- 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;       


entity GEN_CHAR is
PORT(clk25, blank : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); 
     ASCII_CHAR : in STD_LOGIC_VECTOR(7 downto 0);
     Red, Green, Blue : out STD_LOGIC_VECTOR(3 downto 0));
end GEN_CHAR;

architecture Behavioral of GEN_CHAR is
-- --------------------------------------------------------------------------
signal pixel_row : STD_LOGIC_VECTOR(3 downto 0); -- 4 bits for 16 bit font
signal pixel_col : STD_LOGIC_VECTOR(3 downto 0); -- 4 bits for 16 bit font

signal ROM_ADDRESS : STD_LOGIC_VECTOR(11 downto 0);
signal ROM_DATA : STD_LOGIC_VECTOR(15 downto 0);
signal INTENSITY : STD_LOGIC;

COMPONENT blk_mem_gen_2
  PORT (
    clka : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
-- -----------------------------------------------------------------------------
begin
my_rom : blk_mem_gen_2 PORT MAP (clka => clk25, addra => ROM_ADDRESS, douta => ROM_DATA);

pixel_row <= vcount(3 downto 0); -- take 4 LSB bits to represent pixel count changing and rolling over every 16 bits
pixel_col <= hcount(3 downto 0); -- take 4 LSB bits to represent pixel count changing and rolling over every 16 bits
ROM_ADDRESS <= ASCII_CHAR & pixel_row;  -- Generating ROM address

 -- process for loading in the correct data from the ROM block and accounting for the 2 cycle flip flop delay in recovering the data given the correct address
 process(clk25)
  variable col1,col2,col3 : NATURAL range 0 to 15; -- delay variables to hold the 16 bit data
  begin
   if rising_edge(clk25) then
	  col3 := col2;
	  col2 := col1;
	  col1 := conv_integer(pixel_col);
	  INTENSITY <= ROM_DATA(col3);
   end if;
 end process;

Red <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Green <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";
Blue <= (INTENSITY & INTENSITY & INTENSITY & INTENSITY) when (blank = '0') else X"0";

end Behavioral;
