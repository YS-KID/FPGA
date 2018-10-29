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
    Port ( SW_kadai2 : in STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA_kadai2 : out STD_LOGIC_VECTOR (6 downto 0));
end kadai2;

architecture Behavioral of kadai2 is

begin

   process(SW_kadai2)
   begin
     case SW_kadai2 is
       when "0000" => SEG_DATA_kadai2 <= "0000001";
       when "0001" => SEG_DATA_kadai2 <= "1001111";
       when "0010" => SEG_DATA_kadai2 <= "0010010";
       when "0011" => SEG_DATA_kadai2 <= "0000110";
       when "0100" => SEG_DATA_kadai2 <= "1001100";
       when "0101" => SEG_DATA_kadai2 <= "0100100";
       when "0110" => SEG_DATA_kadai2 <= "0100000";
       when "0111" => SEG_DATA_kadai2 <= "0001111";
       when "1000" => SEG_DATA_kadai2 <= "0000000";
       when "1001" => SEG_DATA_kadai2 <= "0000100";
       when "1010" => SEG_DATA_kadai2 <= "0001000";
       when "1011" => SEG_DATA_kadai2 <= "1100000";
       when "1100" => SEG_DATA_kadai2 <= "0110001";
       when "1101" => SEG_DATA_kadai2 <= "1000010";
       when "1110" => SEG_DATA_kadai2 <= "0110000";
       when "1111" => SEG_DATA_kadai2 <= "0111000";
       when others => SEG_DATA_kadai2 <= "1111111";
    end case;
  end process; 
end Behavioral;
