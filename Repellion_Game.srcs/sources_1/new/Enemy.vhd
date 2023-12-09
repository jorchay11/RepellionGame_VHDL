----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: Enemy - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  
----------------------------------------------------------------------------------

--set_property PACKAGE_PIN F1 [get_ports Enemy1_hit_LED]
--set_property IOSTANDARD LVCMOS33 [get_ports Enemy1_hit_test]

--set_property PACKAGE_PIN G2 [get_ports Enemy2_hit_LED]
--set_property IOSTANDARD LVCMOS33 [get_ports Enemy2_hit_test]

--set_property PACKAGE_PIN G1 [get_ports Enemy3_hit_LED]
--set_property IOSTANDARD LVCMOS33 [get_ports Enemy3_hit_test]

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

--------------------------------------------------------
entity Enemy is
Port (clk25             : in STD_LOGIC; 
      hcount,vcount     : in STD_LOGIC_VECTOR(10 downto 0); 
      blank             : in STD_LOGIC;
      VS                : in STD_LOGIC; 
      Enemy_Q           : in STD_LOGIC_VECTOR (2 downto 0); 
      bullet_hit        : in STD_LOGIC; 
      TOP_EDGE_forEnemy : in STD_LOGIC_VECTOR (10 downto 0);      
      new_level         : in STD_LOGIC;
      
      Enemy1_X_pos      : out STD_LOGIC_VECTOR(10 downto 0);
      displayed         : out STD_LOGIC;    
      Red,Green,Blue    : out STD_LOGIC_VECTOR(3 downto 0));
end Enemy;

architecture Behavioral of Enemy is
-------------------------------------------------------------------------------------------------------------------------
-- Screen dimensions inside background 
constant RIGHT_EDGE         : STD_LOGIC_VECTOR (10 downto 0) := "01001100000";     --Right Border from background, 608
constant LEFT_EDGE          : STD_LOGIC_VECTOR (10 downto 0) := "00000100100";     --Left Border from background, 36
constant BOTTOM_EDGE        : STD_LOGIC_VECTOR (10 downto 0) := "00111000001";     --Bottom Border, 449
constant Enemy_Middle_X_pos : STD_LOGIC_VECTOR (10 downto 0) := "00100011000";     --320 - width / 2 = 280
   
     -- Image dimensions
constant WIDTH  : integer := 80;      --size of bmp file 
constant HEIGHT : integer := 80;    
constant CROP   : integer := 1;      
                                                
------------------------------------------------------------------------------------------------------------------------
-- coordinate variables 
constant speed1 : integer := 2; 
constant speed2 : integer := 4; 
   
--for all modules 
constant SCREEN_MIDDLE_X : integer := 320;
constant SCREEN_MIDDLE_Y : integer := 240;             
                
--------------------------------------------------------                
-- Character ROM Component
COMPONENT blk_mem_gen_1
  PORT (clka  : IN STD_LOGIC; 
        addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
END COMPONENT;

--------------------------------------------------------
signal rom_address  : STD_LOGIC_VECTOR(12 downto 0);                     
signal rom_data     : STD_LOGIC_VECTOR(11 downto 0);

signal rom_row      : STD_LOGIC_VECTOR(21 downto 0);
signal rom_col      : STD_LOGIC_VECTOR(10 downto 0);

signal Enemy_X_pos  : STD_LOGIC_VECTOR (10 downto 0) := Enemy_Middle_X_pos;      --320 - width / 2 = 280
signal Enemy_Y_pos  : STD_LOGIC_VECTOR (10 downto 0) := TOP_EDGE_forEnemy;       --start value irrelevant
    
signal display_flag : STD_LOGIC := '0';
signal direction    : STD_LOGIC := '0';       

signal current_speed       : integer := speed1; 
signal displayed_for_level : STD_LOGIC := '1'; 
signal is_hit              : STD_LOGIC; 


begin

--------------------------------------------------------
--instantiate enemy block memory
E1 : blk_mem_gen_1 port map(clka => clk25, addra => rom_address, douta => rom_data);

--------------------------------------------------------
-- Generate ROM address
rom_row <= std_logic_vector(unsigned(vcount - Enemy_Y_pos) * WIDTH);
rom_col <= hcount - Enemy_X_Pos;
rom_address <= rom_col + rom_row(12 downto 0);

--updating concurrently, should updates on new levels
displayed_for_level <= Enemy_Q(2); 
current_speed <= speed1 when Enemy_Q(1) = '0' else speed2; 

--------------------------------------------------------
--display enemy
draw_Enemy: process(hcount,vcount,blank, is_hit, rom_data)
begin

    if(blank = '0' and                                         --inside screen
    rom_data /= X"000" and                                     --remove background (must be a unique color), 
    ((vcount - Enemy_Y_pos + CROP) < HEIGHT) and --height
    ((Enemy_Y_pos - vcount + CROP) > HEIGHT) and
    ((hcount - Enemy_X_Pos + CROP) < WIDTH) and --width
    ((Enemy_X_Pos - hcount + CROP) > WIDTH) and 
    (displayed_for_level = '1') and 
    (is_hit = '0')) then 
        
        display_flag <= '1';
    
    else 
        display_flag <= '0';
     end if;
     
      if(display_flag = '1') then 
        Red <= rom_data(11 downto 8);
        Green <= rom_data(7 downto 4);
        Blue <= rom_data(3 downto 0); 
     
    else 
        Red <= X"0"; 
        Blue <= X"0";
        Green <= X"0";
    end if;

end process; 

-- to be more sequential, do things on the change of Q_temp, which only changes after new_level
--------------------------------------------------------
move_Enemy: process(VS, new_level) 
begin 

    if(new_level = '1') then 
        
        --direction must only set when new_level = 1
        direction <= Enemy_Q(0);  
    
        --set enemy start x position to center
        Enemy_X_Pos <= Enemy_Middle_X_pos;
  
    elsif(rising_edge(VS)) then 
        if(((Right_EDGE - Enemy_X_pos) > WIDTH) and (direction = '0')) then 	-- Move from L -> R, 40 is half of 
          Enemy_X_Pos <= Enemy_X_Pos + current_speed;
 	      direction <= '0';
 	      
 	    elsif(Right_EDGE - Enemy_X_Pos <= WIDTH) then			-- Reach extreme RIGHT POSITION
   	      Enemy_X_Pos <= Enemy_X_Pos - current_speed;			
 	      direction <= '1';
 	      
        elsif((Enemy_X_Pos > Left_EDGE) and (direction = '1')) then		-- Move from R -> L
          Enemy_X_Pos <= Enemy_X_Pos - current_speed;
 	      direction <= '1';
 	      
        elsif(Enemy_X_Pos <= Left_EDGE) then 			-- Reach extreme LEFT POSITION
          Enemy_X_Pos <= Enemy_X_Pos + current_speed;			
 	      direction <= '0';
        end if;
        
  end if;    
end process; 

enemy_hit:  process(Enemy_Q, bullet_hit)
begin
    if(new_level = '1') then 
    
        --reset is_hit flag
        is_hit <= '0';
        
    elsif(bullet_hit = '1') then 
    
         --latch a hit, reset on new_level 
         is_hit <= '1';
    end if; 
end process; 


--------------------------------------------
--outputs
Enemy1_X_pos <= Enemy_X_Pos; 
displayed <= display_flag; 
-------------------------------------------
--testing

end Behavioral;

