----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:59:17 10/31/2023 
-- Design Name: 
-- Module Name:    FourBitAdder - Behavioral 
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

entity FourBitAdder is
    Port ( A : in  std_logic_vector (3 downto 0);
           B : in  std_logic_vector (3 downto 0);
           Switch : in  STD_LOGIC;
           Sum : out  std_logic_vector (3 downto 0);
           Cout : out  STD_LOGIC);
end FourBitAdder;


architecture Behavioural of FourBitAdder is

   component onebit_adder is 
		Port ( a_fa : in  STD_LOGIC;
             b_fa : in  STD_LOGIC;
             Cin_fa : in  STD_LOGIC;
             Sout_fa : out  STD_LOGIC;
             Cout_fa : out  STD_LOGIC);	  
	end component;
	
signal C1,C2,C3,C4: std_logic;
signal bcomp : STD_LOGIC_VECTOR(3 downto 0);
signal carries, sums : STD_LOGIC_VECTOR (3 downto 0);


begin
	bcomp(0) <= B(0) xor Switch;
	bcomp(1) <= B(1) xor Switch;
	bcomp(2) <= B(2) xor Switch;
	bcomp(3) <= B(3) xor Switch;

	
	FA0: onebit_adder port map (A(0),bcomp(0),Switch, sums(0),C1); -- So0 (LSB)
	FA1: onebit_adder port map (A(1),bcomp(1), sums(1),C2); -- So1 
	FA2: onebit_adder port map (A(2),bcomp(2), sums(2),C3); -- So2 
	FA3: onebit_adder port map (A(3),bcomp(3), sums(3),C4); -- So3 (MSB)
	
	Sum <= sums;
	Cout <= C4;

end Behavioural;

