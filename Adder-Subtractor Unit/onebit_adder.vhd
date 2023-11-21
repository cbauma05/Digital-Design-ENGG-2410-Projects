----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:51 10/31/2023 
-- Design Name: 
-- Module Name:    onebit_adder - Behavioral 
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

entity onebit_adder is
    Port ( a_fa : in  STD_LOGIC;
           b_fa : in  STD_LOGIC;
           Cin_fa : in  STD_LOGIC;
           Sout_fa : out  STD_LOGIC;
           Cout_fa : out  STD_LOGIC);
end onebit_adder;


architecture Behavioural of onebit_adder is

component half_adder is 
	port (a_ha, b_ha: in std_logic;
		s_ha, c_ha: out std_logic);
end component;

	signal hs,hc,tc: std_logic;

begin

	HA1: half_adder
		port map ( a_ha => a_fa,
					 b_ha => b_fa,
					 s_ha => hs,
					 c_ha => hc);
	
	HA2: half_adder
		port map ( a_ha => hs,
					 b_ha => Cin_fa,
					 s_ha => Sout_fa,
					 c_ha => tc);
					 
	Cout_fa <= tc or hc;
	
end Behavioural;

