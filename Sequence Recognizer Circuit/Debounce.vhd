----------------------------------------------------------------
-- This VHDL code can be used to debounce a key 
-- (switch or push button)in other words get
-- rid of the oscillations that might occur due 
-- to the mechanical nature of the switch.
-- One problem with using a mechanical switch 
-- is that when it is closed, it bounces for a 
-- few milliseconds (i.e it makes a number of 
-- very rapid make and break actions before the  
-- contacts become stable), which lets the CPU or FPGA 
-- see that it has been pressed several   
-- times, and gives the wrong information.
--
-- You can use the VHDL code by synthesizing it,
-- creating a symbol and using it within your    
-- schematics. 
-- The UFC file to be used should put the 
-- following in consideration:
-- 
-- The push_bt should be connected to the 
-- PUSH BUTTON ON THE FPGA e.g., C9 
-- The cclk should be connected to V10 
-- the main clock on the NEXYS3 FPGA Board
-- The debounce_out should be connected as a source
-- of the stable clock to run the machine
--
--
----------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dbounce is
    Port ( push_bt : in  STD_LOGIC;
           cclk : in  STD_LOGIC;
           debounce_out : out  STD_LOGIC);
end dbounce;

architecture Behavioral of dbounce is
signal d1, d2, reset, cout : std_logic;
signal count : std_logic_vector(20 downto 0);
begin

reset <= d1 xor d2;

FF: process(cclk)
begin
if(cclk'event and cclk = '1') then
d1 <= push_bt;
d2 <= d1;
if(cout = '1') then
debounce_out <= d2;
end if;
end if;
end process;

CNTR: process(cclk, reset)
begin
if(reset='1') then
count <= (others=>'0');
elsif (cclk'event and cclk='1') then
if (cout = '0') then
count <= count + 1;
end if;
end if;
end process;

cout <= count(20);

end Behavioral;