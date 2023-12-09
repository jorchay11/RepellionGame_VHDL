----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: merge_display - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity merge_display is
Port (Red_background, Red_character, Red_Enemy, Red_Enemy2, Red_Enemy3, Red_bullet, Red_score  : in STD_LOGIC_VECTOR(3 downto 0);
      Green_background, Green_character, Green_Enemy, Green_Enemy2, Green_Enemy3, Green_bullet, Green_score : in STD_LOGIC_VECTOR(3 downto 0);
      Blue_background, Blue_character, Blue_Enemy, Blue_Enemy2, Blue_Enemy3, Blue_bullet, Blue_score        : in STD_LOGIC_VECTOR(3 downto 0);
      
      bullet_y_Pos    : in STD_LOGIC_VECTOR(10 downto 0);
      bullet_x_pos    : in STD_LOGIC_VECTOR(10 downto 0);
      Enemy1_Y_pos    : in STD_LOGIC_VECTOR(10 downto 0); 
      Enemy1_X_pos    : in STD_LOGIC_VECTOR(10 downto 0);
      Enemy2_Y_pos    : in STD_LOGIC_VECTOR(10 downto 0); 
      Enemy2_X_pos    : in STD_LOGIC_VECTOR(10 downto 0);
      Enemy3_Y_pos    : in STD_LOGIC_VECTOR(10 downto 0); 
      Enemy3_X_pos    : in STD_LOGIC_VECTOR(10 downto 0);
     
      Enemy1_displayed              : in STD_LOGIC;
      Enemy2_displayed              : in STD_LOGIC;
      Enemy3_displayed              : in STD_LOGIC;
      new_level                     : in STD_LOGIC; 
      
      reset_bullet                         : out STD_LOGIC; 
      Enemy1_hit, Enemy2_hit, Enemy3_hit   : out STD_LOGIC; 
      
      R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0  : out STD_LOGIC);
end merge_display;

--------------------------------------------------------
architecture Behavioral of merge_display is

--------------------------------------------------------
constant zero_bus : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";

constant Enemy_WIDTH : integer := 80;   
constant Bullet_WIDTH : integer := 65;    
constant bullet_HEIGHT : integer := 53;           
    
signal Enemy1_Bullet_collision : STD_LOGIC := '0'; 
signal Enemy2_Bullet_collision : STD_LOGIC := '0';
signal Enemy3_Bullet_collision : STD_LOGIC := '0';
signal reset_bullet_flag        : std_logic := '0'; 

begin
--------------------------------------------------------
--write a test bench 
 --enemy_bus <= (Red_Enemy & Green_Enemy & Blue_Enemy);
 --bullet_bus <= (Red_bullet & Green_bullet & Blue_bullet); 

 R3 <= Red_background(3) or Red_character(3) or Red_Enemy(3) or Red_Enemy2(3) or Red_Enemy3(3) or Red_bullet(3) or Red_score(3);          
 R2 <= Red_background(2) or Red_character(2) or Red_Enemy(2) or Red_Enemy2(2) or Red_Enemy3(2) or Red_bullet(2) or Red_score(2);          
 R1 <= Red_background(1) or Red_character(1) or Red_Enemy(1) or Red_Enemy2(1) or Red_Enemy3(1) or Red_bullet(1) or Red_score(1);          
 R0 <= Red_background(0) or Red_character(0) or Red_Enemy(0) or Red_Enemy2(0) or Red_Enemy3(0) or Red_bullet(0) or Red_score(0);         
 
 G3 <= Green_background(3) or Green_character(3) or Green_Enemy(3) or Green_Enemy2(3) or Green_Enemy3(3) or Green_bullet(3) or Green_score(3);     
 G2 <= Green_background(2) or Green_character(2) or Green_Enemy(2) or Green_Enemy2(2) or Green_Enemy3(2) or Green_bullet(2) or Green_score(2);     
 G1 <= Green_background(1) or Green_character(1) or Green_Enemy(1) or Green_Enemy2(1) or Green_Enemy3(1) or Green_bullet(1) or Green_score(1);       
 G0 <= Green_background(0) or Green_character(0) or Green_Enemy(0) or Green_Enemy2(0) or Green_Enemy3(0) or Green_bullet(0) or Green_score(0);       
 
 B3 <= Blue_background(3) or Blue_character(3) or Blue_Enemy(3) or Blue_Enemy2(3) or Blue_Enemy3(3) or Blue_bullet(3) or Blue_score(3);
 B2 <= Blue_background(2) or Blue_character(2) or Blue_Enemy(2) or Blue_Enemy2(2) or Blue_Enemy3(2) or Blue_bullet(2) or Blue_score(2);        
 B1 <= Blue_background(1) or Blue_character(1) or Blue_Enemy(1) or Blue_Enemy2(1) or Blue_Enemy3(1) or Blue_bullet(1) or Blue_score(1);        
 B0 <= Blue_background(0) or Blue_character(0) or Blue_Enemy(0) or Blue_Enemy2(0) or Blue_Enemy3(0) or Blue_bullet(0) or Blue_score(0);         


--------------------------------------------------------
--collision logic using image coordinates 
collision_logic: process(bullet_y_Pos,  bullet_x_Pos, new_level)
variable bullet_hit_flag : STD_LOGIC := '0';

begin 
--may have to correct for size of bullet image height
        if(new_level = '1') then 
            --total_Score <= 0; 
            Enemy1_Bullet_Collision <= '0'; 
            Enemy2_Bullet_Collision <= '0'; 
            Enemy3_Bullet_Collision <= '0'; 
        end if;
        
        if((bullet_y_pos + 10 <= enemy1_y_pos + enemy_WIDTH) and    --top bullet is higher than bottem of enemy
        (bullet_y_pos + 10 >= enemy1_y_pos) and                     --but also lower than top of enemy       
        (bullet_x_pos + 10 <= enemy1_x_pos + enemy_WIDTH) and       --left of bullet is less than right of enemy
        (bullet_x_pos + 10 >= enemy1_x_pos) and                     --left of bullet is greater than left of enemy
        (Enemy1_displayed = '1')) then                              --enemy is currently displayed
        
            Enemy1_Bullet_collision <= '1';  
            bullet_hit_flag := '1';                                 --reset bullet flag, happens for any collision for the duration of collision
     
        
        elsif((bullet_y_pos + 10 <= enemy2_y_pos + enemy_WIDTH) and    --top bullet is higher than bottem of enemy
        (bullet_y_pos + 10 >= enemy2_y_pos) and                        --but also lower than top of enemy       
        (bullet_x_pos + 10 <= enemy2_x_pos + enemy_WIDTH) and          --left of bullet is less than right of enemy
        (bullet_x_pos + 10  >= enemy2_x_pos) and 
        (Enemy2_displayed = '1')) then                                 
        
            Enemy2_Bullet_collision <= '1'; 
            bullet_hit_flag := '1';                                 
 
         
        
        elsif((bullet_y_pos + 10 <= enemy3_y_pos + enemy_WIDTH) and    
        (bullet_y_pos + 10 >= enemy3_y_pos) and                      
        (bullet_x_pos + 10 <= enemy3_x_pos + enemy_WIDTH) and        
        (bullet_x_pos + 10 >= enemy3_x_pos) and 
        (Enemy3_displayed = '1')) then                    
        
            Enemy3_Bullet_collision <= '1'; 
            bullet_hit_flag := '1'; 

        else 
            bullet_hit_flag := '0'; 
            
        end if; 
        
        --output result of variable 
        reset_bullet <= bullet_hit_flag; 
end process; 


--------------------------------------------------------
--outputs, do i need these? 
enemy1_hit <= Enemy1_Bullet_Collision; 
enemy2_hit <= Enemy2_Bullet_Collision; 
enemy3_hit <= Enemy3_Bullet_Collision; 

end Behavioral;

