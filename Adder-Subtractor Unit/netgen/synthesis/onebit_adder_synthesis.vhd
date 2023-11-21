--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: onebit_adder_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 31 14:18:55 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm onebit_adder -w -dir netgen/synthesis -ofmt vhdl -sim FourBitAdder.ngc onebit_adder_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: FourBitAdder.ngc
-- Output file	: /home/ise/ISE/LAB5_GROUP14/netgen/synthesis/onebit_adder_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: FourBitAdder
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity onebit_adder is
  port (
    Switch : in STD_LOGIC := 'X'; 
    Cout : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Sum : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end onebit_adder;

architecture Structure of onebit_adder is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_3_IBUF_1 : STD_LOGIC; 
  signal B_0_IBUF_2 : STD_LOGIC; 
  signal B_3_IBUF_3 : STD_LOGIC; 
  signal Switch_IBUF_4 : STD_LOGIC; 
  signal Sum_0_OBUF_5 : STD_LOGIC; 
  signal Cout_OBUF_6 : STD_LOGIC; 
  signal Sum_1_OBUF_7 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => Sum_1_OBUF_7
    );
  FA3_HA2_Mxor_s_ha_xo_0_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => A_3_IBUF_1,
      I1 => B_3_IBUF_3,
      I2 => Switch_IBUF_4,
      O => Cout_OBUF_6
    );
  FA0_HA2_Mxor_s_ha_xo_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => A_0_IBUF_0,
      I1 => B_0_IBUF_2,
      O => Sum_0_OBUF_5
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_1
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_0
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_3
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_2
    );
  Switch_IBUF : IBUF
    port map (
      I => Switch,
      O => Switch_IBUF_4
    );
  Sum_3_OBUF : OBUF
    port map (
      I => Sum_1_OBUF_7,
      O => Sum(3)
    );
  Sum_2_OBUF : OBUF
    port map (
      I => Sum_1_OBUF_7,
      O => Sum(2)
    );
  Sum_1_OBUF : OBUF
    port map (
      I => Sum_1_OBUF_7,
      O => Sum(1)
    );
  Sum_0_OBUF : OBUF
    port map (
      I => Sum_0_OBUF_5,
      O => Sum(0)
    );
  Cout_OBUF : OBUF
    port map (
      I => Cout_OBUF_6,
      O => Cout
    );

end Structure;

