----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/25 08:50:50
-- Design Name: 
-- Module Name: kadai4 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kadai4 is
    Port ( CLK_SRC_kadai4 : in STD_LOGIC;
           SEVENSEG_DATA_l_kadai4 : in STD_LOGIC_VECTOR(15 downto 0);
           SEG_SEL_kadai4 : out STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA_kadai4 : out STD_LOGIC_VECTOR (7 downto 0));
end kadai4;

architecture Behavioral of kadai4 is

component kadai3
  Port( CLK_SRC_kadai3: in STD_LOGIC;
        CLK_OUT_kadai3: out STD_LOGIC);
end component;

component kadai2
  Port( SW_kadai2: in STD_LOGIC_VECTOR(3 downto 0);
        SEG_DATA_kadai2: out STD_LOGIC_VECTOR(7 downto 0));
end component;

signal SEG_l_kadai4 : STD_LOGIC_VECTOR(3 downto 0);
signal CLK1ms_l_kadai4 : STD_LOGIC;      
        
begin
  U1: kadai3 port map (CLK_SRC_kadai3 => CLK_SRC_kadai4, CLK_OUT_kadai3 => CLK1ms_l_kadai4);
  U2: kadai2 port map (SW_kadai2 => SEG_l_kadai4, SEG_DATA_kadai2 => SEG_DATA_kadai4);
  
  process(CLK1ms_l_kadai4)
  begin
    if(CLK1ms_l_kadai4 = '1') then
      SEG_SEL_kadai4 <= "1100";
    else
      SEG_SEL_kadai4 <= "1101";
    end if;
    SEG_l_kadai4 <= SEVENSEG_DATA_l_kadai4(3 downto 0);
  end process;
  
  --process(SEVENSEG_DATA_l)
  --variable DATA_A : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  --begin
  --  if(SEVENSEG_DATA_l = DATA_A) then
  --    SEG_l <= "1110";
  --  else
  --    SEG_l <= "1111";
  --  end if;
  --end process;
  
  
end Behavioral;
