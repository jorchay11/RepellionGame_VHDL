----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2022 02:33:01 PM
-- Design Name: 
-- Module Name: static_background - Behavioral
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

entity static_background is
Port (hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); blank : in STD_LOGIC;
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end static_background;



architecture Behavioral of static_background is

constant ROW_MAX : STD_LOGIC_VECTOR (10 downto 0) := "00111011111"; --479
constant COL_MAX : STD_LOGIC_VECTOR (10 downto 0) := "01001111111"; --639

begin
 process(hcount,vcount,blank)
 begin
  if((hcount >= 0 and hcount <= COL_MAX and blank = '0') and                                                    -- Upper/Lower Horizontal border 0-640
     ((vcount >= 0 and vcount <= 20) or (vcount >= ROW_MAX - 20 and vcount <= ROW_MAX))) then                   --0-20 & 459-47
     Green <= X"0";		                                                                                        --Brighter Purple  
  	 Blue <= X"F";
  	 Red <= X"8";
  	 
  elsif((vcount >= 21 and vcount <= ROW_MAX - 21 and blank = '0') and                                           -- Left/Right Vertical border 21-458 high
        ((hcount >= 0 and hcount <= 25) or (hcount >= COL_MAX - 20 and hcount <= COL_MAX))) then                --0-25 wide & 619-639
     Green <= X"0";		                                                                                        -- Brighter purple 
     Blue <= X"F";
     Red <= X"8";
     
   elsif((hcount >= 26 and hcount <= COL_MAX - 21 and blank = '0') and                                          -- Upper/Lower Horizontal border 26-618
     ((vcount >= 21 and vcount <= 30) or (vcount >= ROW_MAX - 30 and vcount <= ROW_MAX - 21))) then             --21-30 wide & 449-458
     Green <= X"F";		                                                                                        -- White  
  	 Blue <= X"F";
  	 Red <= X"F";
     
  elsif((vcount >= 31 and vcount <= ROW_MAX - 31 and blank = '0') and                                           -- Left/Right Vertical border 31-448
        ((hcount >= 26 and hcount <= 36) or (hcount >= COL_MAX - 31 and hcount <= COL_MAX - 21))) then          --26-36 & 608-618
     Green <= X"F";		                                                                                        -- white 
     Blue <= X"F";
     Red <= X"F";
        
  else
     Green <= X"0";                                                                                             -- ELSE black background
     Blue <= X"0";
     Red <= X"0";
  end if;
 end process;

end Behavioral;
