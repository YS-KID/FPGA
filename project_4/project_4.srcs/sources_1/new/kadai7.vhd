----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2018/10/28 17:24:50
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
           BTN : in STD_LOGIC_VECTOR(4 downto 0);
           SW : in STD_LOGIC_VECTOR(7 downto 0);
           SEG_DP : out STD_LOGIC;
           SEG_SEL : out STD_LOGIC_VECTOR (3 downto 0);
           SEG_DATA : out STD_LOGIC_VECTOR (6 downto 0));
end kadai7;

architecture Behavioral of kadai7 is

component kadai4
  Port ( CLK_SRC : in STD_LOGIC;
         SEVENSEG_DATA_l : in STD_LOGIC_VECTOR(15 downto 0);
         DOT_SEL : in STD_LOGIC_VECTOR(3 downto 0);
         SEG_DP : out STD_LOGIC;
         SEG_SEL : out STD_LOGIC_VECTOR (3 downto 0);
         SEG_DATA : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal SEVENSEG_DATA_l : STD_LOGIC_VECTOR(15 downto 0) := "0000000100100011";
signal DOT_SEL : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal BTNR_STATE : STD_LOGIC := '0';
signal BTNC_STATE : STD_LOGIC := '0';
signal BTNU_STATE : STD_LOGIC := '0';
signal BTND_STATE : STD_LOGIC := '0';
signal CLK_100HZ : STD_LOGIC := '0';
signal CLK_10HZ : STD_LOGIC := '0';
signal CLK_1HZ : STD_LOGIC := '0';


begin
  UA: kadai4 port map (CLK_SRC, SEVENSEG_DATA_l, DOT_SEL, SEG_DP, SEG_SEL, SEG_DATA);

  process(CLK_SRC)
  variable COUNT : UNSIGNED(26 downto 0) := (others => '0');
  begin
    if(rising_edge(CLK_SRC)) then
      COUNT := COUNT + 1;
      if(COUNT = 50000000) then
        COUNT := (others => '0');
        CLK_1HZ <= NOT(CLK_1HZ);
      end if;
    end if;
  end process; 

  process(CLK_SRC)
  variable COUNT : UNSIGNED(23 downto 0) := (others => '0');
  begin
    if(rising_edge(CLK_SRC)) then
      COUNT := COUNT + 1;
      if(COUNT = 5000000) then
        COUNT := (others => '0');
        CLK_10HZ <= NOT(CLK_10HZ);
      end if;
    end if;
  end process; 
 
 
  process(CLK_SRC)
  variable COUNT : UNSIGNED(18 downto 0) := (others => '0');
  begin
    if(rising_edge(CLK_SRC)) then
      COUNT := COUNT + 1;
      if(COUNT = 500000) then
        COUNT := (others => '0');
        CLK_100HZ <= NOT(CLK_100HZ);
      end if;
    end if;
  end process;
  
  process(CLK_10HZ)
  begin
    if(rising_edge(CLK_10HZ)) then
      if(BTN(3) = '1') then
        BTNR_STATE <= NOT(BTNR_STATE);
      end if;
    end if;
  end process;
  
  process(CLK_10HZ)
  begin
    if(rising_edge(CLK_10HZ)) then
      if(BTN(0) = '1') then
        BTNC_STATE <= NOT(BTNC_STATE);
      end if;
    end if;
  end process;
 
  process(CLK_10HZ)
  begin
    if(rising_edge(CLK_10HZ)) then
      if(BTN(2) = '1') then
        BTNU_STATE <= NOT(BTNU_STATE);
      end if;
    end if;
  end process;
  
  process(CLK_10HZ)
  begin
    if(rising_edge(CLK_10HZ)) then
      if(BTN(1) = '1') then
        BTND_STATE <= NOT(BTND_STATE);
      end if;
    end if;
  end process;
  
  process(CLK_100HZ)
  variable COUNT_A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  variable COUNT_B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  variable COUNT_C : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  variable COUNT_D : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  variable COUNT_E : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  variable TIME_RESET_STATE : STD_LOGIC := '0';
  variable TIME_COUNT : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
  variable TIME_SEC_D : STD_LOGIC_VECTOR(3 downto 0) := "0000";
  variable TIME_SEC_U : STD_LOGIC_VECTOR(3 downto 0) := "0000";
  variable TIME_MIN_D : STD_LOGIC_VECTOR(3 downto 0) := "0000";
  variable TIME_MIN_U : STD_LOGIC_VECTOR(3 downto 0) := "0000";
  variable TIME_H_D : STD_LOGIC_VECTOR(3 downto 0) := "0100";  
  variable TIME_H_U : STD_LOGIC_VECTOR(3 downto 0) := "0001";
  begin
    if(SW(7) = '0' and SW(6) = '0') then
    --StopWatch
    if(rising_edge(CLK_100HZ)) then
      if(BTN(0) = '1') then
        COUNT_A := (others => '0');
        COUNT_B := (others => '0');
        COUNT_C := (others => '0');
        COUNT_D := (others => '0');
        COUNT_E := (others => '0');
      end if;
      if(BTNR_STATE = '1') then
        COUNT_A := STD_LOGIC_VECTOR(unsigned(COUNT_A) + 1);
        if(unsigned(COUNT_A) = 10) then
          COUNT_B := STD_LOGIC_VECTOR(unsigned(COUNT_B) + 1);
          COUNT_A := (others => '0');
          if(unsigned(COUNT_B) = 10) then
            COUNT_C := STD_LOGIC_VECTOR(unsigned(COUNT_C) + 1);
            COUNT_B := (others => '0');
            if(unsigned(COUNT_C) = 10) then
              COUNT_D := STD_LOGIC_VECTOR(unsigned(COUNT_D) + 1);
              COUNT_C := (others => '0');
              if(unsigned(COUNT_D) = 10) then
                COUNT_E := STD_LOGIC_VECTOR(unsigned(COUNT_E) + 1);
                COUNT_D := (others => '0');
                if(unsigned(COUNT_E) = 10) then
                  COUNT_E := (others => '0');
                end if;
              end if;
            end if;
          end if;
        end if;
      end if; 
      if(SW(0) = '1') then
        SEVENSEG_DATA_l <= COUNT_D & COUNT_C & COUNT_B & COUNT_A;
        DOT_SEL <= "0100";
      else
        SEVENSEG_DATA_l <= COUNT_E & COUNT_D & COUNT_C & COUNT_B;
        DOT_SEL <= "0010";
      end if;
    end if;
    --StopWatch END
    
    --Watch
    else
      --if(BTNR_STATE = '1') then
      --  TIME_RESET_STATE := NOT(TIME_RESET_STATE);
      --end if;
      --if(TIME_RESET_STATE = '1' and BTN(2) = '1') then
      --  if(unsigned(TIME_SEC_D) < 9) then
      --    TIME_SEC_D := STD_LOGIC_VECTOR(unsigned(TIME_SEC_D) + 1);
      --  end if;
      --elsif(TIME_RESET_STATE = '1' and BTN(1) = '1') then
      --  if(unsigned(TIME_SEC_D) > 0) then
      --   TIME_SEC_D := STD_LOGIC_VECTOR(unsigned(TIME_SEC_D) + 1);
      --  end if;
      --end if;
      if(rising_edge(CLK_100HZ)) then
        --if(TIME_RESET_STATE = '0') then
        TIME_COUNT := STD_LOGIC_VECTOR(unsigned(TIME_COUNT) + 1);
        if(unsigned(TIME_COUNT) = 100) then
        TIME_SEC_D := STD_LOGIC_VECTOR(unsigned(TIME_SEC_D) + 1);
        TIME_COUNT := (others => '0');
        if(unsigned(TIME_SEC_D) = 10) then
          TIME_SEC_U := STD_LOGIC_VECTOR(unsigned(TIME_SEC_U) + 1);
          TIME_SEC_D := (others => '0');
          if(unsigned(TIME_SEC_U) = 6) then
            TIME_MIN_D := STD_LOGIC_VECTOR(unsigned(TIME_MIN_D) + 1);
            TIME_SEC_U := (others => '0');
            if(unsigned(TIME_MIN_D) = 10) then
              TIME_MIN_U := STD_LOGIC_VECTOR(unsigned(TIME_SEC_U) + 1);
              TIME_MIN_D := (others => '0');
              if(unsigned(TIME_MIN_U) = 6) then
                TIME_H_D := STD_LOGIC_VECTOR(unsigned(TIME_SEC_U) + 1);
                TIME_MIN_U := (others => '0');
                if(unsigned(TIME_H_D) = 10) then
                  TIME_H_U := STD_LOGIC_VECTOR(unsigned(TIME_SEC_U) + 1);
                  TIME_H_D := (others => '0');
                  if((TIME_H_U = "0010") and (TIME_H_D = "0100")) then
                    TIME_H_U := (others => '0');
                    TIME_H_D := (others => '0');
                  end if;
                end if;
              end if;
            end if;
          end if;
        end if;
        end if;
        --end if;
        if(SW(0) = '1') then
          SEVENSEG_DATA_l <= TIME_H_U & TIME_H_D & TIME_MIN_U & TIME_MIN_D;
          DOT_SEL <= "0100";
        else
          SEVENSEG_DATA_l <= TIME_MIN_U & TIME_MIN_D & TIME_SEC_U & TIME_SEC_D;
          DOT_SEL <= "0100";
        end if;
      end if;
    end if; 
    --Watch end
   
       
  end process;

end Behavioral;
