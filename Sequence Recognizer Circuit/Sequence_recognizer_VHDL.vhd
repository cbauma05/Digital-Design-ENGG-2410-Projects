----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:10 11/07/2023 
-- Design Name: 
-- Module Name:    Sequence_recognizer_VHDL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sequence_recognizer_VHDL is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           X : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Sequence_recognizer_VHDL;

architecture Behavioral of Sequence_recognizer_VHDL is

component dbounce is 
	 Port ( push_bt : in  STD_LOGIC;
           cclk : in  STD_LOGIC;
           debounce_out : out  STD_LOGIC);
end component;



type statetype is (state0, state1, state2, state3,state4);
signal present_state, next_state: statetype:= state0;



begin
	
	debounce_inst :dbounce
	Port Map(
		push_bt =>X,
		cclk => clock,
		debounce_out => Z
		);

output_process: process(present_state) is
begin
	case present_state is
		when state0 =>
			z <= '0';
		when state1 =>
			z <= '0';
		when state2 =>
			z <= '0';
		when state3 =>
			z <= '0';
		when state4 =>
			z <= '1';
	end case;
end process output_process;

next_state_process: process(present_state,x) is
begin
	case present_state is
		when state0 => 
			if x = '1' then
				next_state <= state1;
			else
				next_state <= state0;
			end if;
			
			when state1 => 
			if x = '1' then
				next_state <= state2;
			else
				next_state <= state0;
			end if;
			
			when state2 => 
			if x = '0' then
				next_state <= state3;
			else
				next_state <= state2;
			end if;
			
			when state3 => 
			if x = '1' then
				next_state <= state4;
			else
				next_state <= state0;
			end if;
			
			when state4 => 
			if x = '1' then
				next_state <= state1;
			else
				next_state <= state0;
			end if;
		end case;
end process next_state_process;	

clk_process: process is
	begin 
		wait until (rising_edge(clock));
		if reset = '1' then 
			present_state <= next_state;
		else
			present_state <= next_state;
		end if;
	end process clk_process;
		
end architecture Behavioral;

