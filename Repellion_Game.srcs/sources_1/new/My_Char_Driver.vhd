----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2017 07:14:59 PM
-- Design Name: 
-- Module Name: MY_CHAR_DRIVER - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;       -- For unsigned()
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--entity MY_CHAR_DRIVER is
--PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
--      Score_ones    : in STD_LOGIC_VECTOR(3 downto 0); 
--      Score_tens    : in STD_LOGIC_VECTOR(3 downto 0); 
--      ASCII_CHAR : out STD_LOGIC_VECTOR(4 downto 0));
--end MY_CHAR_DRIVER;

entity MY_CHAR_DRIVER is
PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      Score_ones    : in STD_LOGIC_VECTOR(3 downto 0); 
      Score_tens    : in STD_LOGIC_VECTOR(3 downto 0); 
      ASCII_CHAR : out STD_LOGIC_VECTOR(4 downto 0));
end MY_CHAR_DRIVER;

architecture Behavioral of MY_CHAR_DRIVER is

--might have to be 6 bits? 
constant S : STD_LOGIC_VECTOR(4 downto 0) := "01010";  --10
constant C : STD_LOGIC_VECTOR(4 downto 0) := "01011";  --11
constant O : STD_LOGIC_VECTOR(4 downto 0) := "01100";  --12
constant R : STD_LOGIC_VECTOR(4 downto 0) := "01101";  --13
constant E : STD_LOGIC_VECTOR(4 downto 0) := "01110";  --14
constant colon : STD_LOGIC_VECTOR(4 downto 0) := "01111"; --15 
constant blank_space : STD_LOGIC_VECTOR(4 downto 0) := "10010"; --18
--constant blank_space : STD_LOGIC_VECTOR(5 downto 0) := "010010"; --18
 
signal char_col : std_logic_vector(4 downto 0);
signal char_row : std_logic_vector(3 downto 0);
begin
 
 --needs to be the MSBs because our maps represent the larger scale. 
char_col <= hcount(9 downto 5);  -- Character column in [0,19], NEEED 5
char_row <= vcount(8 downto 5);  -- Character row in [0,14], NEED 4

--wont print at all 
-- char_col <= hcount(4 downto 0);  -- Character column in [0,19]
-- char_row <= vcount(3 downto 0);  -- Character row in [0,14]
 
 
 print_score : process(hcount, vcount)
 begin 
                --6 bits?                   5 bits? 
    if(char_col = "01000" and char_row = "0100") then      --col section 2, row is section 12
         ASCII_CHAR <= "00000"; 
        
--    elsif(char_col = "00010" and char_row = "01100") then      --col section 2, row is section 12
--         ASCII_CHAR <= C; 
--    elsif(char_col = "00011" and char_row = "01100") then      --col section 2, row is section 12
--         ASCII_CHAR <= O; 
--    elsif(char_col = "00100" and char_row = "01100") then      --col section 2, row is section 12
--         ASCII_CHAR <= R; 
--    elsif(char_col = "00101" and char_row = "01100") then      --col section 2, row is section 12
--         ASCII_CHAR <= E;     
--    elsif(char_col = "00110" and char_row = "01100") then      --col section 2, row is section 12
--         ASCII_CHAR <= colon;     
         
--     --NUMEBRS
--    elsif(char_col <= "00111" and char_row = "01100") then
     
--       if(Score_tens = 0) then
--           ASCII_CHAR <= '0' & Score_ones;
--       else
--           ASCII_CHAR <= '0' & Score_tens;
--       end if;
     
     
--    elsif(char_col <= "01000" and char_row = "01100" and Score_tens /= 0) then
--        ASCII_CHAR <= '0' & Score_tens; 
     
    --else 
        --ASCII_CHAR <= blank_space; 
    end if; 
     
--;blank 
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
--00000000000000000000000000000000
end process; 
  
end Behavioral;
