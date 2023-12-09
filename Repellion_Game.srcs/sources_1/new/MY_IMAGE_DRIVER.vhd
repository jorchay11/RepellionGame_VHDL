----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: MY_IMAGE_DRIVER - Behavioral
-- Project 2: WarioWare 
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



entity MY_IMAGE_DRIVER is
Port (clk25                 : in STD_LOGIC; 
      hcount,vcount         : in STD_LOGIC_VECTOR(10 downto 0); 
      blank                 : in STD_LOGIC;
      VS                    : in STD_LOGIC;
      action_ASCIIKey       : in STD_LOGIC_VECTOR(7 downto 0); 
      new_level             : in STD_LOGIC; 
      
      current_Character_X_Position : out STD_LOGIC_VECTOR(10 downto 0);
      
      Red,Green,Blue        : out STD_LOGIC_VECTOR(3 downto 0));
end MY_IMAGE_DRIVER;

--------------------------------------------------------
architecture Behavioral of MY_IMAGE_DRIVER is

--------------------------------------------------------
-- Image dimensions
    constant WIDTH : integer := 53;         --size of bmp file 
    constant HEIGHT : integer := 65;    
    constant CROP : integer := 1;           -- Remove outer pixel layers
          
-- Image coordinate references 
    constant RIGHT_EDGE : STD_LOGIC_VECTOR (10 downto 0)               := "01001100000";                  --Right Border from background, 608
    constant LEFT_EDGE : STD_LOGIC_VECTOR (10 downto 0)                := "00000100100";                  --Left Border from background, 36
    constant TOP_EDGE : STD_LOGIC_VECTOR (10 downto 0)                 := "00000011110";                  --Top Border from background, 30
    constant BOTTOM_EDGE_forCharacter : STD_LOGIC_VECTOR (10 downto 0) := "00101111110";                  --Bottom Border for character, cannot go below, 449 - (HEIGHT) - 1 = 382
    constant BOTTOM_EDGE_forBounce : STD_LOGIC_VECTOR (10 downto 0)    := BOTTOM_EDGE_forCharacter - 10;  --Bottom Border for character, cannot go below, 449 - (HEIGHT) - 1 = 382
    constant COL_CENTER_forCharacter : STD_LOGIC_VECTOR (10 downto 0)  := "00100011000";  --280
                                                                                                                                                      
          
-- Image coordinates                              
    signal Character_X_pos : STD_LOGIC_VECTOR (10 downto 0) := COL_CENTER_forCharacter; --320 - width / 2 = 280
    signal Character_Y_pos : STD_LOGIC_VECTOR (10 downto 0) := BOTTOM_EDGE_forCharacter;                                         

                                                                   
-- Character ROM Component
COMPONENT blk_mem_gen_0
  PORT (clka  : IN STD_LOGIC; 
        addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
END COMPONENT;


signal rom_address : STD_LOGIC_VECTOR(11 downto 0);
signal rom_data : STD_LOGIC_VECTOR(11 downto 0);

signal rom_row : STD_LOGIC_VECTOR(21 downto 0);
signal rom_col : STD_LOGIC_VECTOR(10 downto 0);

signal display_flag : STD_LOGIC := '0';

signal move_right_flag : STD_LOGIC := '0';
signal move_left_flag : STD_LOGIC := '0';
signal bounce_flag : STD_LOGIC := '0'; 
signal bounce_count : STD_LOGIC_VECTOR (5 downto 0) := "000000"; 

begin

--------------------------------------------------------
--instantiate bullet rom memeory 
W1 : blk_mem_gen_0 port map(clka => clk25, addra => rom_address, douta => rom_data);


--------------------------------------------------------
-- Generate ROM address
rom_row <= std_logic_vector(unsigned(vcount - Character_Y_pos) * WIDTH);
rom_col <= hcount - Character_X_Pos;
rom_address <= rom_col + rom_row(11 downto 0);

--------------------------------------------------------
--concurrent assignments to constantly display main character 
display_flag <= '1' when blank = '0' and --inside screen
                         rom_data /= X"000" and --remove background (must be a unique color), IS FIRST 12 BITS OF bmp FILE, IS BLACK  
                         ((vcount - Character_Y_Pos + CROP) < HEIGHT) and --height
                         ((Character_Y_Pos - vcount + CROP) > HEIGHT) and
                         ((hcount - Character_X_Pos + CROP) < WIDTH) and --width
                         ((Character_X_Pos - hcount + CROP) > WIDTH)
                    else '0';

Red <= rom_data(11 downto 8) when display_flag = '1' else X"0";
Green <= rom_data(7 downto 4) when display_flag = '1' else X"0";
Blue <= rom_data(3 downto 0) when display_flag = '1' else X"0";

--------------------------------------------------------
--movement process
--MOVEMENT FROM 'S' AND 'F' KEYS
move_Character : process(new_level, VS, action_ASCIIKey, rom_data)
begin 


     if(new_level = '1') then 
        Character_X_pos <= COL_CENTER_forCharacter; 
        
    elsif(rising_edge(VS)) then
    
        --bounce logic 
        bounce_count <= bounce_count + 1; 
        
        --500ms, VS occurs 60 Hz 
        if(bounce_count = 30) then 
            bounce_flag <= not bounce_flag; 
            bounce_count <= "000000"; 
        end if; 
        
        --change Y-pos for bouncing 
        if(bounce_flag = '1') then 
            character_Y_Pos <= BOTTOM_EDGE_forBounce; 
        else
            character_Y_Pos <= Bottom_EDGE_forCharacter;
        end if;  
    
        --movement with ASCII_key 
        if(move_left_flag = '1' and Character_X_Pos > LEFT_EDGE) then
         Character_X_pos <= Character_X_pos - 4;
         move_left_flag <= '0';
     
        elsif(move_right_flag = '1' and Character_X_Pos + WIDTH < RIGHT_EDGE) then 
            Character_X_pos <= Character_X_pos + 4;
            move_right_flag <= '0';
        end if;
        
        if(action_ASCIIKey = X"73") then 
            move_left_flag <= '1'; 
        elsif(action_ASCIIKey = X"66") then 
            move_right_flag <= '1';
    end if; 
        
     end if;
end process; 

--------------------------------------------------------
--testing

--------------------------------------------------------
--outputs
current_Character_X_Position <= Character_X_Pos;

end Behavioral;


