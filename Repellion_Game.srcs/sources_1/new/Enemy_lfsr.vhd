----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: Enemy_lfsr - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_TEXTIO.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

library std; 
use std.textio.all; 

--------------------------------------------------------
entity Enemy_lfsr is
    Port ( new_level : in STD_LOGIC;
           reset     : in STD_LOGIC;
           Enemy_Q   : out STD_LOGIC_VECTOR (7 downto 0));
end Enemy_lfsr;

--------------------------------------------------------
architecture Behavioral of Enemy_lfsr is

--------------------------------------------------------
signal Q_temp : std_logic_vector (7 downto 0) := X"FF"; 

begin
--------------------------------------------------------
--psuedorandom generation of bits for Enemy characteristics
randomize: process(new_level, reset) 
begin 
    --reset to all enemies displayed if reset = 1 on board
    if(reset = '1') then 
        Q_temp <= X"FF"; 
        
    --generate new bit values for characteristics        
    elsif(new_level = '1') then 
    
        --taps after 1, 2,3,7
        Q_temp(7) <= Q_temp(6);
        Q_temp(6) <= Q_temp(5);
        Q_temp(5) <= Q_temp(4);          
        Q_temp(4) <= Q_temp(3) xor Q_temp(7);
        Q_temp(3) <= Q_temp(2) xor Q_temp(7);          --tap 
        Q_temp(2) <= Q_temp(1) xor Q_temp(7);          --tap 
        Q_temp(1) <= Q_temp(0);
        Q_temp(0) <= Q_temp(7);                         --tap 7
            
    end if; 
        
        
end process;

--------------------------------------------------------
--outputs    
Enemy_Q <= Q_temp; 

end Behavioral;
