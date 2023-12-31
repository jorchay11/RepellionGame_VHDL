----------------------------------------------------------------------------------
-- Company: Grand Valley State 
-- Engineer: Jordan Hayes
-- 
-- Create Date: 03/22/2022 
-- Design Name: Repellion_Game
-- Module Name: UART_Receive_Data - Behavioral
-- Project 2
-- Target Devices: Spartan 7 

-- Description: 
-- 
-- Dependencies:  Key presses on the computer's keyboard
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity UART_Receive_Data is
 Port (Clk_in               : in STD_LOGIC;
       Baud_Switch          : in STD_LOGIC;
       RxD                  : in STD_LOGIC;
       action_ASCIIKey : out STD_LOGIC_VECTOR (7 downto 0)
       );
end UART_Receive_Data;

--------------------------------------------------------
architecture Behavioral of UART_Receive_Data is

--------------------------------------------------------
signal baud_count : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
signal bit_time : INTEGER range 0 to 40000 := 0;              
signal stop_count : STD_LOGIC_VECTOR(31 downto 0) := X"00000000";      
signal bit_count : INTEGER := 0;                                    
signal Data_Out_Temp : STD_LOGIC_VECTOR(7 downto 0) := X"00";
signal State : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal Start_Counter : STD_LOGIC_VECTOR(15 downto 0) := X"0000";

begin 
    
--------------------------------------------------------    
    process(Clk_in, RxD)  
    begin
        if((Clk_in'event) and (Clk_in = '1'))then           --start state machine
           
            if (State = "0000")then                         --MARK State awaiting High to low transistion from RxD
                bit_count <= 0;
                --directional_ASCIIKey <= X"00";
                stop_count <= stop_count + 1;
                if(baud_Switch = '1')then                  --Switch for adjusting baud rate
                    bit_time <= 6900;                      --144000 Baud rate
                else
                    bit_time <= 10400;                     --9600 Baud rate
                end if;
                       
                if(RxD = '0')then                          --Checking for Transmitter to start bit    
                    State <= "0001";                       --Go to START state
                else                  
                    State <= "0000";                       --Remain in MARK State
                end if;
                
                 if(stop_count = 25000000) then                -- used to be 500k
                    stop_count <= X"00000000";
                    action_ASCIIKey <= X"00";
                end if;
                   
                         
            elsif(State = "0001")then                                   --START State
                if(Start_Counter < (bit_time /2))then                   --Waiting half bit time for greatest margin for error in receiver
                    State <= "0001";                                    --Remain in START State
                    Start_Counter <= Start_Counter + 1;                 --Counts every cycle half bit time is not reached                            
                else
                    State <= "0010";                                    --Go to DELAY State
                    Start_Counter <= X"0000";                    
                end if;
                   
                   
                   
                   
             elsif(State = "0010")then                                  --DELAY State            
                if(baud_count < bit_time)then
                    State <= "0010";                                    --Remain in Delay State when baud count has not reached bit time
                    baud_count <= baud_count + 1;                       --Increment baud count
                   
                elsif(baud_count >= bit_time and bit_count < 8)then                                  
                    bit_count <= bit_count + 1;                         --Count number of incoming bits from transmitter
                    Data_Out_Temp(bit_count) <= RxD;                    --Set Data out array = to incoming RxD line
                    baud_count <= X"0000";
                   
                elsif(baud_count >= bit_time and bit_count >= 8)then
                    State <= "0100";                                    --8 bits of Data have been received, Go to STOP State
                    baud_count <= X"0000";                              --Reset Baud Count
                end if;
                             
           
           
           
             elsif(State = "0100") then                                 --STOP State              
                if(RxD = '1') then                                      --Checking for STOP bit                  
                    action_ASCIIKey <= Data_Out_Temp;
                    Data_Out_Temp <= X"00";                             -- reset temp variable to load a new key press
                    State <= "0000";                                    --Go to MARK State
                else
                    State <= "0000";                                    --Stop bit not received, Go to MARK State
               end if;
             end if;
        end if;          
        
    end Process;  
    
end Behavioral;
