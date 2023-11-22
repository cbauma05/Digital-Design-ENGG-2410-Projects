--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:37 10/24/2023
-- Design Name:   
-- Module Name:   /home/ise/ISE/ENGG2410_GROUP14_LAB4/SEVENSEGMENT_TB.vhd
-- Project Name:  ENGG2410_GROUP14_LAB4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEVENSEGMENT_VHDL
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
 
ENTITY SEVENSEGMENT_TB IS
END SEVENSEGMENT_TB;
 
ARCHITECTURE behavior OF SEVENSEGMENT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEVENSEGMENT_VHDL
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         segs : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal segs : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEVENSEGMENT_VHDL PORT MAP (
          x => x,
          segs => segs
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		x <= "0000";
		wait for 100 ns;
		x <= "0001";
		wait for 100 ns;
		x <= "0010";
		wait for 100 ns;
		x <= "0011";
		
		wait for 100 ns;
		
		x <= "0100";
		wait for 100 ns;
		x <= "0101";
		wait for 100 ns;
		x <= "0110";
		wait for 100 ns;
		x <= "0111";
		
		wait for 100 ns;
		
		x <= "1000";
		wait for 100 ns;
		x <= "1001";
		wait for 100 ns;
		x <= "1010";
		wait for 100 ns;
		x <= "1011";
		
		wait for 100 ns;
		
		x <= "1100";
		wait for 100 ns;
		x <= "1101";
		wait for 100 ns;
		x <= "1110";
		wait for 100 ns;
		x <= "1111";
		
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
