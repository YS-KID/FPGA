----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/23 13:38:21
-- Design Name: 
-- Module Name: kadai1 - Behavioral
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

entity kadai1 is
    Port ( SW : in STD_LOGIC_VECTOR (1 downto 0);
           LD1 : out STD_LOGIC;
           LD2 : out STD_LOGIC;
           LD3 : out STD_LOGIC);
end kadai1;

architecture Behavioral of kadai1 is

begin

 LD1 <= SW(0) and SW(1);
 LD2 <= SW(0) or SW(1);
 LD3 <= SW(0) xor SW(1);

end Behavioral;
