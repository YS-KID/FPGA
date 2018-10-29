----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/25 11:40:39
-- Design Name: 
-- Module Name: kadai7 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kadai7 is
    Port ( CLK_SRC : in STD_LOGIC;
           SEG_SEL : out STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA : out STD_LOGIC_VECTOR (7 downto 0));
end kadai7;

architecture Behavioral of kadai7 is

--component kadai4
  --Port( CLK_SRC_kadai4 : in STD_LOGIC;
        --SEVENSEG_DATA_l_kadai4 : in STD_LOGIC_VECTOR(15 downto 0);
        --SEG_SEL_kadai4 : out STD_LOGIC_VECTOR(3 downto 0);
        --SEG_DATA_kadai4 : out STD_LOGIC_VECTOR(7 downto 0));
--end component;

--signal SEVENSEG_DATA_l : STD_LOGIC_VECTOR(15 downto 0) := "0000001100100011";
 
begin
 -- UA: kadai4 port map (CLK_SRC_kadai4 => CLK_SRC, SEVENSEG_DATA_l_kadai4 => SEVENSEG_DATA_l, SEG_SEL_kadai4 => SEG_SEL, SEG_DATA_kadai4 => SEG_DATA);

end Behavioral;
