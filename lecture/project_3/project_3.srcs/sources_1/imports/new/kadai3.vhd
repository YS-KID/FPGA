----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/23 14:49:47
-- Design Name: 
-- Module Name: kadai3 - Behavioral
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

entity kadai3 is
    Port ( CLK_OUT : out STD_LOGIC;
           CLK_SRC : in STD_LOGIC);
end kadai3;

architecture Behavioral of kadai3 is

begin
  process(CLK_SRC)
  variable STATE : std_logic := '0';
  variable COUNT : std_logic_vector(3 downto 0) := (others => '0');
  variable COUNT_A : std_logic_vector(3 downto 0) := (0 => '1', others => '0'); 
  begin
    if rising_edge(CLK_SRC) then
      COUNT := std_logic_vector(unsigned(COUNT) + unsigned(COUNT_A));
      if (COUNT = "0101") then
        COUNT := (others => '0');
        CLK_OUT <= STATE;
        STATE := not(STATE);
      end if;
    end if;    
  end process;

end Behavioral;
