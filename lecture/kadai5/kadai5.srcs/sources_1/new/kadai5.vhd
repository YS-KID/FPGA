----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/25 12:02:25
-- Design Name: 
-- Module Name: kadai5 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kadai5 is
 
end kadai5;

architecture Behavioral of kadai5 is

component kadai3
  Port( CLK_SRC : in STD_LOGIC;
        CLK_OUT : out STD_LOGIC);
end component;

signal CLK_SRC : STD_LOGIC := '0';
signal CLK_OUT : STD_LOGIC;
constant CLK_period : time := 10 ns;

begin
  uut: kadai3 port map (CLK_SRC, CLK_OUT);
  clock_process :process
  begin
    CLK_SRC <= '0';
    wait for (CLK_period / 2);
    CLK_SRC <= '1';
    wait for (CLK_period / 2);
  end process;
end Behavioral;
