----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: bullet - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  X Position of Character, VS, 
-- Y Pos of current bullet
----------------------------------------------------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

---------------------------------------------------------------------
--ENTITY
entity bullet is
Port (clk25                         : in STD_LOGIC; 
      hcount,vcount                 : in STD_LOGIC_VECTOR(10 downto 0); 
      blank                         : in STD_LOGIC;
      VS                            : in STD_LOGIC; 
      action_ASCIIKey               : in STD_LOGIC_VECTOR(7 downto 0); 
      current_Character_X_Position  : in STD_LOGIC_VECTOR(10 downto 0);
      new_level                     : in STD_LOGIC;
      bullet_hit                    : in STD_LOGIC;  
      current_bullet_y_Pos          : out STD_LOGIC_VECTOR(10 downto 0);
      current_bullet_x_pos          : out STD_LOGIC_VECTOR(10 downto 0);
      miss                          : out STD_LOGIC; 
      Red, Green, Blue              : out STD_LOGIC_VECTOR(3 downto 0));
 
end bullet;
-----------------------------------------------------------------------

architecture Behavioral of bullet is

------------------------------------------------------------                
-- Bullet ROM Component
COMPONENT bullet_rom
   PORT (clka : IN STD_LOGIC; addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
END COMPONENT;
--------------------------------------------------------------------      
-- Image dimensions
constant WIDTH  : integer :=  53;         --THIS IS SIZE OF bmp FILE
constant HEIGHT : integer := 65;    
constant CROP   : integer :=   1;           -- Remove outer pixel layers
                                           
--bullet position references
constant x_start_forFiredBullet : STD_LOGIC_VECTOR (10 downto 0) :=  "00100011000";     --equal to character x pos 294
constant y_start_forFiredBullet : STD_LOGIC_VECTOR (10 downto 0) :=  "00101101000";     --top of character (382) - Height/2 +10 = 360
                                                                                        --included a bit of overlap to make the tip of ship look green ish for a slit second                                                                                                                                                    
constant TOP_EDGE_forBullet : STD_LOGIC_VECTOR (10 downto 0) :=        "00000011111";  --Top Border from background, 30 + 1 = 31                                                                          
constant BOTTOM_EDGE_unusedBullet : STD_LOGIC_VECTOR (10 downto 0) :=  "00110100010";  --Bottom Border for unused bullet, cannot go below 449, subtract height: 449 - (HEIGHT) - 1 = 418                                                                                   

constant x_start_forUnusedBullet : STD_LOGIC_VECTOR (10 downto 0) := "00000100110";     --36 + some room = 38
constant y_start_forUnusedBullet : STD_LOGIC_VECTOR (10 downto 0) := "00110011111";     --bottom of background is 449, subtract 30, add some for room

signal bullet_Y_Pos : STD_LOGIC_VECTOR (10 downto 0) := y_start_forFiredBullet;      
signal bullet_X_Pos : STD_LOGIC_VECTOR (10 downto 0) := x_start_forFiredBullet;               
                
-------------------------------------------------------
signal rom_address : STD_LOGIC_VECTOR(11 downto 0);
signal rom_data : STD_LOGIC_VECTOR(11 downto 0);

signal rom_row : STD_LOGIC_VECTOR(21 downto 0);
signal rom_col : STD_LOGIC_VECTOR(10 downto 0);

--display logic 
signal display_flag     : STD_LOGIC;
signal shooting_flag    : std_logic := '0'; 

--new level logic 
signal hit              : STD_LOGIC := '0'; 
signal miss_temp        : STD_LOGIC := '0';
signal entered_reset    : STD_LOGIC := '0';


signal bullet_hit_temp : std_logic := '0'; 
--signal score_temp      : integer := 0; 
signal score_temp      : std_logic_vector(7 downto 0) := X"00"; 

--------------------------------------------------------
begin

--instantiate bullet rom memeory 
Bullet0 : bullet_rom port map(clka => clk25, addra => rom_address, douta => rom_data);
------------------------------------------------------------------------------
-- Generate ROM address
rom_row <= std_logic_vector(unsigned(vcount - bullet_Y_Pos) * WIDTH);
rom_col <= hcount - bullet_X_Pos;
rom_address <= rom_col + rom_row(11 downto 0);


--------------------------------------------------------
--non concurrent drawing of bullet
draw_Bullet: process(hcount,vcount,blank, rom_data)
begin
 --if on the screen and currently shooting
 if(blank = '0' and                                         --inside screen
    rom_data /= X"000" and                                     --remove background (must be a unique color), IS FIRST 12 BITS OF bmp FILE, IS BLACK  
    ((vcount - bullet_Y_Pos + CROP) < HEIGHT) and --height
    ((bullet_Y_Pos - vcount + CROP) > HEIGHT) and
    ((hcount - bullet_X_Pos + CROP) < WIDTH) and --width
    ((bullet_X_Pos - hcount + CROP) > WIDTH) and 
    shooting_flag = '1' ) then 
  
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

--------------------------------------------------------------------    
--could separate process and set shooting flag individually 
move_Bullet: process(VS, new_level, bullet_hit)
begin 
    if(new_level = '1') then
        miss_temp <= '0';
        
        --needs to be outside of VS to not miss colision 
    elsif(bullet_hit = '1') then 
        bullet_Y_Pos <= y_start_forFiredBullet; 
        shooting_flag <= '0';

    elsif(rising_edge(VS)) then 
        
        if((shooting_flag = '0') and (action_ASCIIKey = X"20")) then           --spacebar
                bullet_X_Pos <= current_Character_X_Position;
                shooting_flag <= '1';  
         
        elsif(shooting_flag = '1') then 
        
           if(TOP_EDGE_forBullet >= bullet_Y_Pos) then 
                bullet_Y_Pos <= y_start_forFiredBullet; 
                miss_temp <= '1'; 
                shooting_flag <= '0';  
                
         
           elsif(TOP_EDGE_forBullet < bullet_Y_Pos) then 	                    -- Move from up  and 
                bullet_Y_Pos <= bullet_Y_Pos - 6;    
           end if;
           
        end if; --end shooting flag
        
    end if;--ends VS
      
      
end process; 


--------------------------------------------------------
--outputs
current_bullet_x_pos <= bullet_X_Pos; 
current_bullet_y_pos <= bullet_Y_Pos;  

--OUTPUT BULLET_MISS
miss <= miss_temp;  


--testing LED for shooting
--shooting_flag_LED <= display_flag;
end Behavioral;
