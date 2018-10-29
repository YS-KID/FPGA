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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kadai4 is
    Port ( CLK_SRC : in STD_LOGIC;
           SEVENSEG_DATA_l : in STD_LOGIC_VECTOR(15 downto 0);
           DOT_SEL : in STD_LOGIC_VECTOR(3 downto 0);
           SEG_DP : out STD_LOGIC;
           SEG_SEL : out STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA : out STD_LOGIC_VECTOR (6 downto 0));
end kadai4;

architecture Behavioral of kadai4 is

component kadai3
  Port( CLK_SRC_kadai3: in STD_LOGIC;
        CLK_OUT_kadai3: out STD_LOGIC);
end component;

component kadai2
  Port( SW_kadai2: in STD_LOGIC_VECTOR(3 downto 0);
        SEG_DATA_kadai2: out STD_LOGIC_VECTOR(6 downto 0));
end component;

--signal SEVENSEG_DATA_l : STD_LOGIC_VECTOR(15 downto 0) := "0000000100100011";
signal SEG_l : STD_LOGIC_VECTOR(3 downto 0);
signal CLK1ms_l : STD_LOGIC;      
        
begin
  U1: kadai3 port map (CLK_SRC_kadai3 => CLK_SRC, CLK_OUT_kadai3 => CLK1ms_l);
  U2: kadai2 port map (SW_kadai2 => SEG_l, SEG_DATA_kadai2 => SEG_DATA);
  
  process(CLK1ms_l)
  variable COUNT : std_logic_vector(1 downto 0) := (others => '0');
  variable COUNT_A : std_logic_vector(1 downto 0) := (0 => '1', others => '0');
  begin
    if rising_edge(CLK1ms_l) then
      COUNT := std_logic_vector(unsigned(COUNT) + unsigned(COUNT_A));
      case COUNT is
        when "00" => SEG_SEL <= "0111";
        when "01" => SEG_SEL <= "1011";
        when "10" => SEG_SEL <= "1101";
        when "11" => SEG_SEL <= "1110";
        when others => SEG_SEL <= "1111";
      end case;
      case COUNT is
        when "00" => SEG_l <= SEVENSEG_DATA_l(15 downto 12);
        when "01" => SEG_l <= SEVENSEG_DATA_l(11 downto 8);
        when "10" => SEG_l <= SEVENSEG_DATA_l(7 downto 4);
        when "11" => SEG_l <= SEVENSEG_DATA_l(3 downto 0);
        when others => SEG_l <= "1111";
      end case;
      case COUNT is
        when "00" =>
          if(DOT_SEL(3) = '1') then
            SEG_DP <= '0';
          else
            SEG_DP <= '1';
          end if;
        when "01" =>
          if(DOT_SEL(2) = '1') then
            SEG_DP <= '0';
          else
            SEG_DP <= '1';
          end if;
        when "10" =>
          if(DOT_SEL(1) = '1') then
            SEG_DP <= '0';
          else
            SEG_DP <= '1';
          end if;
        when "11" =>
          if(DOT_SEL(0) = '1') then
            SEG_DP <= '0';
          else
            SEG_DP <= '1';
          end if;
        when others => SEG_DP <= '1';
      end case;
    end if;
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
