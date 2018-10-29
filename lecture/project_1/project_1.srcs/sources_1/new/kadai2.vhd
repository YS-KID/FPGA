----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/23 13:57:27
-- Design Name: 
-- Module Name: kadai2 - Behavioral
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

entity kadai2 is
    Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
           SEG_SEL : out STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA : out STD_LOGIC_VECTOR (7 downto 0));
end kadai2;

architecture Behavioral of kadai2 is

begin

   SEG_SEL <= "1110";
   process(SW)
   begin
     case SW is
       when "0000" => SEG_DATA <= "00000011";
       when "0001" => SEG_DATA <= "10011111";
       when "0010" => SEG_DATA <= "00100101";
       when "0011" => SEG_DATA <= "00001101";
       when "0100" => SEG_DATA <= "10011001";
       when "0101" => SEG_DATA <= "01001001";
       when "0110" => SEG_DATA <= "01000001";
       when "0111" => SEG_DATA <= "00011111";
       when "1000" => SEG_DATA <= "00000001";
       when "1001" => SEG_DATA <= "00001001";
       when "1010" => SEG_DATA <= "00010001";
       when "1011" => SEG_DATA <= "11000001";
       when "1100" => SEG_DATA <= "01100011";
       when "1101" => SEG_DATA <= "10000101";
       when "1110" => SEG_DATA <= "01100001";
       when "1111" => SEG_DATA <= "01110001";
       when others => SEG_DATA <= "11111111";
    end case;
  end process; 
end Behavioral;
