--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: kadai56_time_impl.vhd
-- /___/   /\     Timestamp: THU 25 OCT 13:46:43 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -insert_pp_buffers true -pcf C:/VHDL/project_3/project_3.runs/impl_2/kadai3.pcf C:/VHDL/project_3/project_3.runs/impl_2/kadai3_routed.ncd C:/VHDL/project_3/project_3.sim/sim_1/impl/timing/kadai56_time_impl.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: C:/VHDL/project_3/project_3.runs/impl_2/kadai3_routed.ncd
-- Output file	: C:/VHDL/project_3/project_3.sim/sim_1/impl/timing/kadai56_time_impl.vhd
-- # of Entities	: 1
-- Design Name	: kadai3
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity kadai3 is
  port (
    CLK_SRC : in STD_LOGIC := 'X'; 
    CLK_OUT : out STD_LOGIC 
  );
end kadai3;

architecture STRUCTURE of kadai3 is
  signal CLK_OUT_OBUF_38 : STD_LOGIC; 
  signal CLK_SRC_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal CLK_SRC_BUFGP : STD_LOGIC; 
  signal STATE_44 : STD_LOGIC; 
  signal CLK_SRC_BUFGP_IBUFG_3 : STD_LOGIC; 
  signal STATE_rstpot_11 : STD_LOGIC; 
  signal CLK_OUT_rstpot_34 : STD_LOGIC; 
  signal COUNT_2_rstpot_26 : STD_LOGIC; 
  signal COUNT_1_rstpot_21 : STD_LOGIC; 
  signal COUNT_0_rstpot_17 : STD_LOGIC; 
  signal NlwBufferSignal_CLK_OUT_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_SRC_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_STATE_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CLK_OUT_CLK : STD_LOGIC; 
  signal NlwBufferSignal_COUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_COUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_COUNT_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal COUNT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  CLK_OUT_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_CLK_OUT_OBUF_I,
      O => CLK_OUT
    );
  CLK_SRC_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_SRC_BUFGP_IBUFG_3,
      I => CLK_SRC
    );
  ProtoComp1_IMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP_IBUFG_3,
      O => CLK_SRC_BUFGP_IBUFG_0
    );
  CLK_SRC_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_SRC_BUFGP_BUFG_IN,
      O => CLK_SRC_BUFGP
    );
  STATE : X_FF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_STATE_CLK,
      I => STATE_rstpot_11,
      O => STATE_44,
      RST => GND,
      SET => GND
    );
  STATE_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FFFFDDDD00002222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR0 => COUNT(2),
      ADR5 => STATE_44,
      ADR4 => COUNT(1),
      ADR1 => COUNT(0),
      O => STATE_rstpot_11
    );
  CLK_OUT_21 : X_FF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_CLK_OUT_CLK,
      I => CLK_OUT_rstpot_34,
      O => CLK_OUT_OBUF_38,
      RST => GND,
      SET => GND
    );
  CLK_OUT_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"FFFF0000FFF500A0"
    )
    port map (
      ADR1 => '1',
      ADR3 => COUNT(1),
      ADR0 => COUNT(2),
      ADR4 => CLK_OUT_OBUF_38,
      ADR5 => COUNT(0),
      ADR2 => STATE_44,
      O => CLK_OUT_rstpot_34
    );
  COUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_COUNT_2_CLK,
      I => COUNT_2_rstpot_26,
      O => COUNT(2),
      RST => GND,
      SET => GND
    );
  COUNT_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"0F0FF0F0F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => COUNT(2),
      ADR5 => COUNT(1),
      ADR2 => COUNT(0),
      O => COUNT_2_rstpot_26
    );
  COUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_COUNT_1_CLK,
      I => COUNT_1_rstpot_21,
      O => COUNT(1),
      RST => GND,
      SET => GND
    );
  COUNT_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => COUNT(1),
      ADR3 => '1',
      ADR0 => COUNT(0),
      O => COUNT_1_rstpot_21
    );
  COUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_COUNT_0_CLK,
      I => COUNT_0_rstpot_17,
      O => COUNT(0),
      RST => GND,
      SET => GND
    );
  COUNT_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"00000000AAFFAAFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => COUNT(0),
      ADR3 => COUNT(2),
      ADR0 => COUNT(1),
      O => COUNT_0_rstpot_17
    );
  NlwBufferBlock_CLK_OUT_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_OUT_OBUF_38,
      O => NlwBufferSignal_CLK_OUT_OBUF_I
    );
  NlwBufferBlock_CLK_SRC_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_SRC_BUFGP_BUFG_IN
    );
  NlwBufferBlock_STATE_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP,
      O => NlwBufferSignal_STATE_CLK
    );
  NlwBufferBlock_CLK_OUT_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP,
      O => NlwBufferSignal_CLK_OUT_CLK
    );
  NlwBufferBlock_COUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP,
      O => NlwBufferSignal_COUNT_2_CLK
    );
  NlwBufferBlock_COUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP,
      O => NlwBufferSignal_COUNT_1_CLK
    );
  NlwBufferBlock_COUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_SRC_BUFGP,
      O => NlwBufferSignal_COUNT_0_CLK
    );
  NlwBlock_kadai3_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_kadai3_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end STRUCTURE;

