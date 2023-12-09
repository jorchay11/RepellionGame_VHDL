----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: new_level_logic - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity new_level_logic is
      Port (Enemy_Q        : in STD_LOGIC_VECTOR (2 downto 0); 
            Enemy1_hit  : in STD_LOGIC; 
            Enemy2_hit  : in STD_LOGIC; 
            Enemy3_hit  : in STD_LOGIC; 
            clk25       : in STD_LOGIC;
            miss        : in STD_LOGIC;
            score       : out STD_LOGIC_VECTOR(7 downto 0);
            new_level   : out STD_LOGIC);
end new_level_logic;
--------------------------------------------------------
architecture Behavioral of new_level_logic is

--------------------------------------------------------
signal new_level_flag : STD_LOGIC := '0'; 
signal sync_count     : integer := 0;
signal hit_bus        : STD_LOGIC_VECTOR (2 downto 0); 
signal score_temp     : STD_LOGIC_VECTOR(7 downto 0); 

   
--------------------------------------------------------
begin
hit_bus <= Enemy1_hit & Enemy2_hit & Enemy3_hit; 
--------------------------------------------------------
--new level logic
new_level_logic_proc : process(clk25) -- Enemy_Q, miss
begin 
    if(rising_edge(clk25)) then
        if(Enemy_Q = "000") then
            new_level_flag <= '1';
            
        elsif(Enemy_Q = hit_bus) then 
            new_level_flag <= '1';
            
             case score_temp is
                when X"99" => score_temp <= X"00";
                when X"09" => score_temp <= X"10"; 
                when X"19" => score_temp <= X"20";
                when X"29" => score_temp <= X"30";
                when X"39" => score_temp <= X"40";
                when X"49" => score_temp <= X"50";
                when X"59" => score_temp <= X"60";
                when X"69" => score_temp <= X"70";
                when X"79" => score_temp <= X"80";
                when X"89" => score_temp <= X"90";
                when others => score_temp <= score_temp + 1; 
            end case; 
        
        elsif(miss = '1') then 
            new_level_flag <= '1';
            score_temp <= X"00"; 
            
        else 
            new_level_flag <= '0';
            
        end if; 
    end if;
       
end process; 

--------------------------------------------------------
--outputs
new_level <= new_level_flag; 
score <= score_temp; 

end Behavioral;
