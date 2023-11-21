--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:33:37 11/07/2023
-- Design Name:   
-- Module Name:   /home/ise/ISE/Lab6_Group14_DeBounce_Module/seq_tb.vhd
-- Project Name:  Lab6_Group14_DeBounce_Module
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sequence_recognizer_VHDL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY seq_tb IS
END seq_tb;
 
ARCHITECTURE behavior OF seq_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sequence_recognizer_VHDL
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic;
         X : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';
   signal X : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

   -- Clock period definitions
   constant clock_period : time := 100 ns;
 
BEGIN
	
	
	-- Instantiate the Unit Under Test (UUT)
   uut: Sequence_recognizer_VHDL PORT MAP (
          reset => reset,
          clock => clock,
          X => X,
          Z => Z
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold
signal state_signal: STD_LOGIC_VECTOR (2 downto 0);		reset state for 100 ns.
		reset<='1';
		X<='0';
		wait for 100ns;
		
		state_signal <= "000" when X = '0' else
						"001" when state_signal = "000" and X = '1' else
						"010" when state_signal = "001" and X = '1' else
						"011" when state_signal = "010" and X = '0' else
						"100" when state_signal = "011" and X = '1' else
						"101" when state_signal = "100" and X = '0' else
						"000";
		
		Z <= '1' when state_signal = "100" else '0';
      -- insert stimulus here 

      wait;
   end process;

END;
