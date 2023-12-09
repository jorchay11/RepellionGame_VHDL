----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jordan Hayes, Adapted from Nicolas Fernandez Code 
--constantly displays score with the tens and ones value of score 
-- 
-- Create Date: 02/02/2017 07:14:59 PM
-- Design Name: 
-- Module Name: MY_CHAR_DRIVER - Behavioral
-- Project Name: Repellion Game
-- Target Devices: 
-- Tool Versions: 
-- Description: Mutiplexes possible received numbers to the Char generator
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
use IEEE.STD_LOGIC_ARITH.ALL;       -- For unsigned()
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity CHAR_SELECT is
PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      ASCII_CHAR : out STD_LOGIC_VECTOR(7 downto 0);
      score: in STD_LOGIC_VECTOR(7 downto 0));
end CHAR_SELECT;

architecture Behavioral of CHAR_SELECT is
signal score_ones : std_logic_vector(3 downto 0) := X"0";
signal score_tens : std_logic_vector(3 downto 0) := X"0";
signal char_col : std_logic_vector(5 downto 0);
signal char_row : std_logic_vector(4 downto 0);
begin
 char_col <= hcount(9 downto 4);  -- Character column in [0,79] was downto 3
 char_row <= vcount(8 downto 4);  -- Character row in [0,59] was downto 3
 
 -- pixel space has been divided into 16 x 16 pixel chunks and the locations are 
 -- alwasy being assigned by hcount and vcount so use conditionals for constant SCORE text

process(hcount, vcount)
begin
if (char_row = "10100") then
    case char_col is
        when "000011" => ASCII_CHAR <= X"0E"; -- should be 13
        when "000100" => ASCII_CHAR <= X"0A"; -- should be 03
        when "000101" => ASCII_CHAR <= X"0C";
        when "000110" => ASCII_CHAR <= X"0D"; -- should be 12
        when "000111" => ASCII_CHAR <= X"0B"; -- should be 05
        when "001001" => ASCII_CHAR <= X"0" & score(7 downto 4);
        when "001010" => ASCII_CHAR <= X"0" & score(3 downto 0);
        when others => ASCII_CHAR <= X"0F";
    end case;
else
    ASCII_CHAR <= X"0F";
end if;
end process;


end Behavioral;
