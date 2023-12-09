----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: VGA_to_HDMI - Top Level
-- Project 2: WarioWare 
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------------------------------------------
entity VGA_To_HDMI is
Port (clk_100MHz,reset      : in STD_LOGIC; 
      RxD                   : in STD_LOGIC; 
      
      HDMI_clk_p,HDMI_clk_n : out STD_LOGIC;
      anode_out             : out STD_LOGIC_VECTOR (7 downto 0);
      LED_OUT_TEST          : out STD_LOGIC_VECTOR (15 downto 0); 
      HDMI_tx_p,HDMI_tx_n   : out STD_LOGIC_VECTOR(2 downto 0));
end VGA_To_HDMI;

architecture Behavioral of VGA_To_HDMI is
--------------------------------------------------------------------
component clk_wiz_0
port(clk_in1,reset            : in std_logic; 
     clk_out1,clk_out2,locked : out std_logic);
end component;

----------------------------------------------------------------
--vga - hdmi controller
component vga_controller_640_60 is
port(rst,pixel_clk : in std_logic; 

     HS,VS,blank   : out std_logic;
     hcount,vcount : out std_logic_vector(10 downto 0));
end component;

-----------------------------------------------------------------
--Background driver 
component static_background is
Port (hcount,vcount  : in STD_LOGIC_VECTOR(10 downto 0); 
      blank          : in STD_LOGIC;
      
      Red,Green,Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;
-------------------------------------------------------------------------
--Main Character Driver
component MY_IMAGE_DRIVER is
Port (clk25                 : in STD_LOGIC; 
      hcount,vcount         : in STD_LOGIC_VECTOR(10 downto 0); 
      blank                 : in STD_LOGIC;
      VS                    : in STD_LOGIC;
      action_ASCIIKey       : in STD_LOGIC_VECTOR(7 downto 0); 
      current_Character_X_Position : out STD_LOGIC_VECTOR(10 downto 0);
      new_level             : in STD_LOGIC; 
      
      Red,Green,Blue        : out STD_LOGIC_VECTOR(3 downto 0));
end component;

--------------------------------------------------------------------------
--Enemy Drivers
component Enemy is
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
end component;

--Psuedorandom generation of Enemy speeds and positions
component Enemy_lfsr is 
    Port ( new_level : in STD_LOGIC;
           reset     : in STD_LOGIC;
           Enemy_Q   : out STD_LOGIC_VECTOR (7 downto 0));
end component; 
------------------------------------------------------------------------------
--Bullet Driver 
component bullet is
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
end component;
----------------------------------------------------------------------
-- UART Reciever for Keyboard Input
component UART_Receive_Data is
 Port (Clk_in          : in STD_LOGIC;
       Baud_Switch     : in STD_LOGIC;
       RxD             : in STD_LOGIC; 
       action_ASCIIKey : out STD_LOGIC_VECTOR (7 downto 0)
       );
end COMPONENT;

------------------------------------------------------------------------
--merging displays and collision logic 
component merge_display is
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
     
      Enemy1_displayed  : in STD_LOGIC;
      Enemy2_displayed  : in STD_LOGIC;
      Enemy3_displayed  : in STD_LOGIC;
      new_level         : in STD_LOGIC; 
      
      reset_bullet      : out STD_LOGIC; 
      Enemy1_hit, Enemy2_hit, Enemy3_hit   : out STD_LOGIC; 
      R3,R2,R1,R0,G3,G2,G1,G0,B3,B2,B1,B0  : out STD_LOGIC);
end component;

--------------------------------------------------------
--new level logic compoenent
component new_level_logic is 
      Port (Enemy_Q        : in STD_LOGIC_VECTOR (2 downto 0); 
            Enemy1_hit  : in STD_LOGIC; 
            Enemy2_hit  : in STD_LOGIC; 
            Enemy3_hit  : in STD_LOGIC; 
            clk25       : in STD_LOGIC;
            miss        : in STD_LOGIC;
            score       : out STD_LOGIC_VECTOR(7 downto 0);
            new_level   : out STD_LOGIC);
end component;

component GEN_CHAR is
PORT(clk25, blank     : in STD_LOGIC; hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0); 
     ASCII_CHAR       : in STD_LOGIC_VECTOR(7 downto 0);
     
     Red, Green, Blue : out STD_LOGIC_VECTOR(3 downto 0));
end component;

component CHAR_SELECT is
PORT( hcount,vcount : in STD_LOGIC_VECTOR(10 downto 0);
      score         : in STD_LOGIC_VECTOR(7 downto 0);
      ASCII_CHAR    : out STD_LOGIC_VECTOR(7 downto 0));
end component;

---------------------------------------------------------------------------------
--hdmi driver
COMPONENT hdmi_tx_0
  PORT (
    pix_clk         : IN STD_LOGIC;
    pix_clkx5       : IN STD_LOGIC;
    pix_clk_locked  : IN STD_LOGIC;
    rst             : IN STD_LOGIC;
    red             : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    green           : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    blue            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    hsync           : IN STD_LOGIC;
    vsync           : IN STD_LOGIC;
    vde             : IN STD_LOGIC;
    aux0_din        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    aux1_din        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    aux2_din        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ade             : IN STD_LOGIC;
    TMDS_CLK_P      : OUT STD_LOGIC;
    TMDS_CLK_N      : OUT STD_LOGIC;
    TMDS_DATA_P     : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    TMDS_DATA_N     : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;
-- --------------------------------------------------------------------
signal CLK_25MHz,CLK_125MHz,blank,locked : STD_LOGIC;
signal hcount,vcount                : STD_LOGIC_VECTOR(10 downto 0);
signal HSYNC, VSYNC                 : STD_LOGIC;
signal vde                          : STD_LOGIC;
signal RED3,RED2,RED1,RED0          : STD_LOGIC;
signal GREEN3,GREEN2,GREEN1,GREEN0  : STD_LOGIC;
signal BLUE3,BLUE2,BLUE1,BLUE0      : STD_LOGIC;
signal RED, GREEN, BLUE             : STD_LOGIC_VECTOR(3 downto 0);
signal RED_b,GREEN_b,BLUE_b         : STD_LOGIC_VECTOR(3 downto 0);     --background color busses
signal RED_c,GREEN_c,BLUE_c         : STD_LOGIC_VECTOR(3 downto 0);     --main character color busses
signal RED_e,GREEN_e,BLUE_e         : STD_LOGIC_VECTOR(3 downto 0);     --enemy color busses
signal RED_e2,GREEN_e2,BLUE_e2      : STD_LOGIC_VECTOR(3 downto 0);     --enemy color busses
signal RED_e3,GREEN_e3,BLUE_e3      : STD_LOGIC_VECTOR(3 downto 0);     --enemy color busses
signal RED_blt,GREEN_blt,BLUE_blt   : STD_LOGIC_VECTOR(3 downto 0);
signal RED_s,GREEN_s,BLUE_s   : STD_LOGIC_VECTOR(3 downto 0);
constant ANODES_OFF                 : STD_LOGIC_VECTOR (7 downto 0) := X"FF"; 
constant LEDs_OFF                   : STD_LOGIC_VECTOR(15 downto 0) := X"0000"; 
constant TOP_EDGE_forEnemy1 : STD_LOGIC_VECTOR (10 downto 0) := "00000011111";    --top of background, 31                                                                      --that wass too low still so 100
constant TOP_EDGE_forEnemy2 : STD_LOGIC_VECTOR (10 downto 0) := "00001110100";    --116                                                                      --that wass too low still so 100
constant TOP_EDGE_forEnemy3 : STD_LOGIC_VECTOR (10 downto 0) := "00011001000";    --200                                                                      --that wass too low still so 100
         
signal new_level_top : STD_LOGIC; 
signal current_Character_X_Position_top : STD_LOGIC_VECTOR(10 downto 0);

signal bullet_x_pos_top : STD_LOGIC_VECTOR(10 downto 0);
signal bullet_y_pos_top : STD_LOGIC_VECTOR(10 downto 0);
signal enemy1_x_pos_top : STD_LOGIC_VECTOR(10 downto 0);
signal enemy2_x_pos_top : STD_LOGIC_VECTOR(10 downto 0);
signal enemy3_x_pos_top : STD_LOGIC_VECTOR(10 downto 0);


signal Enemy_Q_top : STD_LOGIC_VECTOR(7 downto 0); 
signal action_ASCIIKey_top : STD_LOGIC_VECTOR(7 downto 0) := X"00";
signal Enemy1_hit_top    : STD_LOGIC;
signal Enemy2_hit_top    : STD_LOGIC;
signal Enemy3_hit_top    : STD_LOGIC; 
signal bullet_hit_top   : STD_LOGIC;
signal Enemy1_displayed_top : STD_LOGIC; 
signal Enemy2_displayed_top : STD_LOGIC; 
signal Enemy3_displayed_top : STD_LOGIC; 

signal score_top : STD_LOGIC_VECTOR(7 downto 0); 

signal miss_top : STD_LOGIC; 
signal ASCII_CHAR_top : STD_LOGIC_VECTOR(7 downto 0); 

begin

anode_out <= ANODES_OFF;
LED_OUT_TEST <= LEDs_OFF;  

-- ------ Cannot pass these directly during instantiation ------
vde <= not blank;
RED <= (RED3 & RED2 & RED1 & RED0);
GREEN <= (GREEN3 & GREEN2 & GREEN1 & GREEN0);
BLUE <= (BLUE3 & BLUE2 & BLUE1 & BLUE0);
-- --------------------------------------------------------------

C1: clk_wiz_0 PORT MAP (clk_out1 => CLK_25MHz, clk_out2 => CLK_125MHz, reset => reset, locked => locked, clk_in1 => clk_100MHz);  

V1 : vga_controller_640_60 PORT MAP (pixel_clk => CLK_25MHz, rst => reset, HS => HSYNC, VS => VSYNC, 
                        blank => blank, hcount => hcount, vcount => vcount);

Background0 : static_background PORT MAP (hcount => hcount, vcount => vcount, blank => blank, 
                         RED => RED_b, GREEN => GREEN_b, BLUE => BLUE_b);


MainCharacter0 : MY_IMAGE_DRIVER PORT MAP (clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, VS => VSYNC, 
                         RED => RED_c, GREEN => GREEN_c, BLUE => BLUE_c, 
                         current_Character_X_Position => current_Character_X_Position_top, 
                         action_ASCIIKey => action_ASCIIKey_top, new_level => new_level_top);


Enemy1 : Enemy PORT MAP (clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, RED => RED_e, GREEN => GREEN_e, 
                        BLUE => BLUE_e, VS => VSYNC, Enemy_Q => Enemy_Q_top(7 downto 5), bullet_hit => Enemy1_hit_top, 
                        TOP_EDGE_forEnemy => TOP_EDGE_forEnemy1, new_level => new_level_top, Enemy1_X_pos => enemy1_x_pos_top, 
                        displayed => Enemy1_displayed_top);

Enemy2 : Enemy PORT MAP (clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, RED => RED_e2, GREEN => GREEN_e2, 
                        BLUE => BLUE_e2, VS => VSYNC, Enemy_Q => Enemy_Q_top(6 downto 4), bullet_hit => Enemy2_hit_top, 
                        TOP_EDGE_forEnemy => TOP_EDGE_forEnemy2, new_level => new_level_top, Enemy1_X_pos => enemy2_x_pos_top,
                        displayed => Enemy2_displayed_top);
            
Enemy3 : Enemy PORT MAP (clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, RED => RED_e3, GREEN => GREEN_e3, 
                        BLUE => BLUE_e3, VS => VSYNC, Enemy_Q => Enemy_Q_top(5 downto 3), bullet_hit => Enemy3_hit_top, 
                        TOP_EDGE_forEnemy => TOP_EDGE_forEnemy3, new_level => new_level_top, Enemy1_X_pos => enemy3_x_pos_top, 
                        displayed => Enemy3_displayed_top);


Enemy_lfsr0 : Enemy_lfsr PORT MAP (new_level => new_level_top, reset => reset, Enemy_Q => Enemy_Q_top); 

M1 : merge_display PORT MAP (Red_background => RED_b, Red_character => RED_c, Red_Enemy => RED_e, 
                             Red_Enemy2 => RED_e2, Red_Enemy3 => RED_e3, Red_bullet => RED_blt, Red_score => Red_s,
                             Green_background => GREEN_b, Green_character => GREEN_c, Green_Enemy => Green_e, 
                             Green_Enemy2 => Green_e2, Green_Enemy3 => Green_e3, Green_bullet => Green_blt, Green_score => Green_s,
                             Blue_background => BLUE_b, Blue_character => BLUE_c, Blue_Enemy => Blue_e, 
                             Blue_Enemy2 => Blue_e2, Blue_Enemy3 => Blue_e3, Blue_bullet => Blue_blt, Blue_score => Blue_s,
                             R3 => RED3, R2 => RED2, R1 => RED1, R0 => RED0, 
                             G3 => GREEN3, G2 => GREEN2, G1 => GREEN1, G0 => GREEN0, 
                             B3 => BLUE3, B2 => BLUE2, B1 => BLUE1, B0 => BLUE0, 
                             Enemy1_hit =>  Enemy1_hit_top,  
                             Enemy2_hit =>  Enemy2_hit_top,
                             Enemy3_hit =>  Enemy3_hit_top,
                             reset_bullet => bullet_hit_top,
                             Enemy1_displayed => Enemy1_displayed_top, 
                             Enemy2_displayed => Enemy2_displayed_top, 
                             Enemy3_displayed => Enemy3_displayed_top, 
                             new_level => new_level_top,
                             bullet_y_Pos => bullet_y_pos_top,  bullet_x_Pos => bullet_x_pos_top,  
                             enemy1_y_Pos => TOP_EDGE_forEnemy1, enemy1_x_Pos => enemy1_x_pos_top,
                             enemy2_y_Pos => TOP_EDGE_forEnemy2, enemy2_x_Pos => enemy2_x_pos_top, 
                             enemy3_y_Pos => TOP_EDGE_forEnemy3, enemy3_x_Pos => enemy3_x_pos_top);
                             

Bullet0 : bullet PORT MAP (clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, 
                            RED => RED_blt, GREEN => GREEN_blt, BLUE => BLUE_blt, VS => VSYNC, 
                            current_Character_X_Position => current_Character_X_Position_top, 
                            action_ASCIIKey => action_ASCIIKey_top, new_level => new_level_top, 
                            current_bullet_x_pos => bullet_x_pos_top, current_bullet_y_pos => bullet_y_pos_top,
                            bullet_hit => bullet_hit_top,
                            miss => miss_top);

UART1 : UART_Receive_Data port map(Clk_in => clk_100MHz, Baud_Switch => '0', RxD => RxD, action_ASCIIKey => action_ASCIIKey_top);

new_level_logic0 : new_level_logic PORT MAP(new_level => new_level_top, Enemy_Q => Enemy_Q_top(7 downto 5), miss => miss_top, 
                    Enemy1_hit => Enemy1_hit_top, Enemy2_hit => Enemy2_hit_top, Enemy3_hit => Enemy3_hit_top, clk25 => CLK_25MHz,
                    score => score_top);

H1 : hdmi_tx_0 PORT MAP (pix_clk => CLK_25MHz, pix_clkx5 => CLK_125MHz, pix_clk_locked => locked, rst => reset,
                         red => RED, green => GREEN, blue => BLUE, hsync => HSYNC, vsync => VSYNC, vde => vde,
                         aux0_din => X"0", aux1_din => X"0", aux2_din => X"0", ade => '0',
                         TMDS_CLK_P => HDMI_clk_p, TMDS_CLK_N => HDMI_clk_n, TMDS_DATA_P => HDMI_tx_p, TMDS_DATA_N => HDMI_tx_n);

Display_Score : GEN_CHAR PORT MAP(clk25 => CLK_25MHz, hcount => hcount, vcount => vcount, blank => blank, ASCII_CHAR => ASCII_CHAR_top, 
                        Red => Red_s, Blue => Blue_s, Green => Green_s); 

Scorekeeper : Char_Select PORT MAP(hcount => hcount, vcount => vcount, ASCII_CHAR => ASCII_CHAR_top, score => score_top);


end Behavioral;


