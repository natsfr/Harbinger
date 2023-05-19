-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 16 22:11:12 2023
-- Host        : Hellgate running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/nats/data/projects/Harbinger/HDL_v2/vivado_crap/harb_v2/harb_v2.gen/sources_1/ip/SPI_FIFO/SPI_FIFO_sim_netlist.vhdl
-- Design      : SPI_FIFO
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_FIFO_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of SPI_FIFO_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of SPI_FIFO_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of SPI_FIFO_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of SPI_FIFO_xpm_cdc_async_rst : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SPI_FIFO_xpm_cdc_async_rst : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of SPI_FIFO_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of SPI_FIFO_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of SPI_FIFO_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of SPI_FIFO_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of SPI_FIFO_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of SPI_FIFO_xpm_cdc_async_rst : entity is "ASYNC_RST";
end SPI_FIFO_xpm_cdc_async_rst;

architecture STRUCTURE of SPI_FIFO_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SPI_FIFO_xpm_cdc_async_rst__1\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \SPI_FIFO_xpm_cdc_async_rst__1\ : entity is "ASYNC_RST";
end \SPI_FIFO_xpm_cdc_async_rst__1\;

architecture STRUCTURE of \SPI_FIFO_xpm_cdc_async_rst__1\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_FIFO_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of SPI_FIFO_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of SPI_FIFO_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SPI_FIFO_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of SPI_FIFO_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of SPI_FIFO_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of SPI_FIFO_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of SPI_FIFO_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of SPI_FIFO_xpm_cdc_gray : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of SPI_FIFO_xpm_cdc_gray : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of SPI_FIFO_xpm_cdc_gray : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of SPI_FIFO_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of SPI_FIFO_xpm_cdc_gray : entity is "GRAY";
end SPI_FIFO_xpm_cdc_gray;

architecture STRUCTURE of SPI_FIFO_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair5";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SPI_FIFO_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SPI_FIFO_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \SPI_FIFO_xpm_cdc_gray__2\ : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \SPI_FIFO_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \SPI_FIFO_xpm_cdc_gray__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \SPI_FIFO_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \SPI_FIFO_xpm_cdc_gray__2\ : entity is "GRAY";
end \SPI_FIFO_xpm_cdc_gray__2\;

architecture STRUCTURE of \SPI_FIFO_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => binval(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(6),
      Q => async_path(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_FIFO_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of SPI_FIFO_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of SPI_FIFO_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SPI_FIFO_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of SPI_FIFO_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of SPI_FIFO_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of SPI_FIFO_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of SPI_FIFO_xpm_cdc_single : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of SPI_FIFO_xpm_cdc_single : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of SPI_FIFO_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of SPI_FIFO_xpm_cdc_single : entity is "SINGLE";
end SPI_FIFO_xpm_cdc_single;

architecture STRUCTURE of SPI_FIFO_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SPI_FIFO_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \SPI_FIFO_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \SPI_FIFO_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SPI_FIFO_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \SPI_FIFO_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \SPI_FIFO_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \SPI_FIFO_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \SPI_FIFO_xpm_cdc_single__2\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \SPI_FIFO_xpm_cdc_single__2\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \SPI_FIFO_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \SPI_FIFO_xpm_cdc_single__2\ : entity is "SINGLE";
end \SPI_FIFO_xpm_cdc_single__2\;

architecture STRUCTURE of \SPI_FIFO_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 139472)
`protect data_block
WLaqhaWyKATh35u9dBC6BD7gU02ymZBFNpcI/f+w8U4HMWRGyVn1IxYUL3GFsPAu7ZWOCPP5dZWN
pe7zwVwpdeBTZxNw8k2MQiAkGLznFojmLkEl55DbDQGjLXQGrb5fJC6sIyB5nLxKKbM6HI9wkRRm
KLMOpGt/EP4NUcM7BVhE/U7RHfoIAJrel1BMkED4vCk+hVHyDCsdyduQT8v0FVQvHcS+SP56Ydwj
jZRmL68d6T2iOSCnoiluYDc1aniW3YUZS2dLFJsrwcDEzjhp9DHICVlsp0vBwGpeFrKsJo/UvvKO
YKhsryTUvqPwFEfwuM1q1vqm4lnDyFqJv2CwqEdJt0nzeA4PAatl8BbIRwkzvEQNsP/ptUH66qWC
AXrlfIp9N8pzCxhchfJ7YwmIYWwVk+naEldnpy0eoEBxoOFGwQIpb6iFnvPhZvA9iFmcpeo1QDOW
/NwfS8lh4k/RmLwi4A5x8pf1fUYhlS4YBAxCdH0eIGGk3zjDTEMjc/OqCkHr8MoOpRnOKtB+rxVf
//o/B4rymp4rR6GqkN8gg5M38vPbR3tPLHajsMnDQqxncDHK2gTfJWvuro5Uk97w9gawTMp0Fjyn
R8ASePJOsCyp2g3n6f/IM8uvgXKivmI7rWyXR234tz0PXBHM9BFQY17Cz4FDxb3N6qRXZsq9cjLb
Dz5m8JKecSWsgOyLMwc2I8xqFeJMAgcVLbVF47wZfUF+zxYJo8B1ishcQ9buzaSBkEJfNJ/vOM1C
SVzsDdexyVH++WRm9RIZ9hloC7R1vMqpquFG1Mxby21/A5nWoHhV7XT6zLjYW9bn7hQ6iYE5FFvT
Y7XSZkBKrv/Rd0EQev6kYzCaSOa/PGwONt8a3+ZvXbzoO3eYZkRRVrQdPo3FaINJ2yEVpb39YA6b
/Yb5Stt+6IGeT7/0iPUB8RV3S8TvXfmjLSkl9igLNynFfJeDGQwWtY+d6+lRIwUVy87Zc/9Xz5GB
EgtO46/6X9BKcM0LRPoRakpk7KxgoDpoRoPTvSyO14HoTdKlndLKbXG2iR43UWYLCVraPtVWplyq
/lFk5T2x6ycMwE2g1lv2EH4CDj1KLnaPi+koLJds42m/y8uCM/4igJMffuxIpp+E2fGYbCIuPSvj
cUVUCB0ReLz/anEE8rW5lYNrl+OfEHY5qabGQYIQjLQzc9+xjuaQxNiBYvKJYyAejFHrfXv0ad6F
17RCPA74UtnY8bMG6s4rcXgOkjcNEe3zbeljQnMUELQQFWoeLKrPB69NY4EOH0K0qymmc4e/DmR8
JWhq+ISeCI+c8EY/39BK8DuDVhJjSg8F0ErvU8VI0eGH3bCdFjwfT8qC77oSlWisJIs6W37dmIUx
/Zyi5iUegFMOUqr400uMzUkhQ5MD65IdCcsOD1jpWJNcYGVFmGzXdbVDxV6qC/A/5bZzAp4A9e7G
7KumvFGjupcD5Bd7Vf9dWGHZpDTl6Uc3coY7J/BMqze8Lbr/dtd8lPqOMgUGZTkrI0o/qs9FJZpW
eaVcPlqJrYlrE+rhhQV4Xut6dQj+eL22gAEPLqSiRQQz7PAE0MlsX8SWJOq/9gh2g67pSsaYumcK
CGf8Ws+pWsOtHMTTFl8GqFswGgoCWIYpWSTAb+Q8GsWlzMpcGqUKZFr78hH6uU7pghdppnZRrlDD
5GE6CUWymRFQr3zw+e+CufLXwSL6RQ4kwROIR/ybn7AmJZy6lgjHCv0gr07sV8a0fqyUiFO//seB
wnm5iTy/73YW7Pyi5xQyrHgQYcLQzjXZibS2pYiS8utjo72VWCXGuZqBsLKxC7FvpB0FPc9j8IFD
BAOZy4J5KY0c0wVqPc/p0GIbmvyHUtWqtDc3MQknuUoOWSFfUUCRazKdiyncACYBT8tAyPn6hPCH
Lw64YIYFPrmznD8qCEfIgW+N8Sxth/qaBlbc910Oes81Fw5sUTBCMPy1OjggsL0OZfmj9gjCpFo/
7F0pflvGWNo3SCN0lzEaqetwDLUBqux8gmg68mYA+Mtjv8QlA8wcfNRgsJIGl6iNWwPCtdsA+mHP
DzDQWO2YWYv5XAWkvXCIBjvxCiyQnBhGMmwBrDvZFCIEBzZrj6YmPK18VZMkif1OEkTjvSU7oIi/
oqP+t/SRdPdpR+KmW28F79dnJPLCW8jmHUjGLoNs/SeA1AF+Spz1xj6GQaQnW7Nn2uyAUjmk8B55
W4Al6bn9m/qf2Y+cHEBurAOhnKhznFkS2OgTbcaYiFbJeStedeUTOxKvv8HzfPfAYLzechgFe2l+
MiWYnwwFPytuorMPNGnz6zvPVyG/EXWFggB+o1E21xa34uEDPaOfdxnTRxCx45pliNqew7sZo5bc
0OH8Kk/oyEMl6Mu4wnLjk0FjhIQO/EuQ/jNzmyD+jXFPqlXRNDqVTHvOiozGaejT+wZq43133iEH
tI5iTEPOP9z86v/bMcVYgwrk+qQcgWXOKhpcVNbR0HXjxX9DfZaieuQZavxdF7esPueRkECEobv/
2Vcu5b1O1k96xUiyv5iSAJW62aoZ6BFzgLuwPnMTGrA1Gn2IUFWxGjCmL7wePSWMFvBX7WBiee4e
afU2AeOefzDrk1jEYgzbIRjdSnGlkrZHgG0bUByEGtdY+7cbrm8PK6fS6q1BNJi715weicUfCOm1
fSj+A0g030N/4AOMz5Jng8OFzTrDCDR6ZoiZz52ccpa13Ex/7LhlVaM7y6xgP13NbO5Zux6RH8mw
0JOYpIjCCh0hiMg32YXQCOWRXKq7w+AYNxC7iM42nFBdo2+az/j4aptwRGAmM6DhtlvDfjNxeDn8
R96dgdnEVlJu3x1lrcgJUuVrk3G7b+TMGpAJ4/yo89d7j5Fu9iJu8FdOM7ataLs1GOHT21njqsJb
WJRW5AWS3mMKeU6Uhhnecypw0cZJ/28gkWGdDF0L7TSFfClyQjkcN773hasgLRCyhM03EU1FO9S5
fXM1kNuJ70miyKLF4Uy+Tw4N5V+B+NrG7EdwPSQAR+8a9gQU1dztHUj1XezvBMy7K87hnwvLLuQH
tvUjSK4aLbUaOff8pQCjDH5kY8ZOLD+PSB2VXeLFuoiKOF1fWwXdltVBOMwieeBx6LPuJl/sREjW
nI+uq9GMRE9DkN1L6ybJ5wk6vnweNwH924asJbtaYC/xSBG4Asnp18VIUeLeV6YXp2o/8fXqSCoH
00xlJVJXttE5kzfSNAPkLzRX3uNTRsQzxyBswIxL9uyVLZGO4HuGlNNDJXVx2TLT0dXewauPc+Bn
wU31RkH8NIQX2F9PH9pFOr7FXC0bQeMDoGu0jTUlhtak+4BVR7Sfxtd2jyaBJx1vaYhCjTF9CHBd
ELPhkXURK6UEX9KbCCUPMW5HK0oTHTXdBHgz4056to4K/uLIV0n9S4Kk43ZdRhSLPCdHU/Mp73+k
cuoqgQzTXUG1yQfP2r/gVS2NRlOf7SKZbvFG96c54ByutuGlbj/5HNHsJ31MyNZQYOfaUfaufP0I
BnGx4/4sP7CWQ187F20Qu34t5yBxtlm8WkG9YjJm1UgLG+Qupsd1EaqPwIYrkm7Uoez7MzMPIEDm
RlGj3sm9i7z3NHSGIFVhHleHLep1yQGVqGN/SY9I6EoIXVeQ+ESpN/Fv/zW6zfzcp1j5RzwhyHof
kITzktlgLK55EUm6pylTAsUEDPWfWeNR37lPw9FGcTk3z1wgyHuuhk59gfLLMqL7n93djR6cVPVX
TK+ySNXAEVVJ6iJ30bhE5Zd5lBfrJZKlKcl1QIVQkDtrKvvMUl21rB+96YLWPRJpa/tbKGgVI2IE
l+RnRqLvkFXmJLryRui0+lpm+wp7Z359Vevly2ek4nZ0IPCmIRFofjjM9nkREJAuWwpXgdlC/Ux+
XbUEccR7Dltw73qC0PU9uM7G+nwBWLwTIs2AOatb5KuEMakBT23Lpv1Uw6DEiSf837Yse6RtiQDF
ioEuM8IpjaRE9rKdXEv6oZt7KizZPlo4ltJRQ7p8E4kLUdyaCiU6SPahiPXZkgFhL+xyLPlQnPyp
FBlY1XGpbaTNwAu1O3nM7D8ViKDttC7M3h8BCCRSQ4CaZIL/un0wh+4EkpQtyUqWp3Gx8hpV6Un4
Leu3arrcCdd3pjLVMGfc0lBUpt3lZQQVPZHDEkfHuBEHbWRt7Xjar2UTkH4SqPklepKftP7v9LCt
UyPqH5g0YIXGby46KINXt4K2KbUXTi4C2t5kEKhXOEpD8gi/oYa/dTvllRQojHXsz/gZtuUox3JA
BA5ZNKQlcbqNlJXZwCxrQzGDm3jcCpbC6klx4z3Zdsa/unQjGD3LCpZBqEZNJLlggUn1X6zE/J44
E/dT7VBY3v59u1ZszvXOdknoWpkjBb5x0BiKiU2x8HFsHmszMi5NJ0R2NGWwy3v6qitTF25Jt8qV
YKPfiP1LdLUBNkr44NjEoKnOQWHIglul8qHfXhMcH1c+eBzt9PousdCwg7giUD1cuwGms9TmKI3g
u/+XNboBG4NdqQHH8Ym9hfIdYJYTE0EQY2ZvZMFNwjirt9tiOQ68Q7rPCHR6BQQKNI1EMkddIzGw
qJq3E2uVP9bs/ps+pjt/ePeSLS2xfkRVR6ju/U7NBHcCaV2q7PRWmhJZTAjXiScYuqqp/xERv99W
PGj2IAhOXkSToccMcVeKooTNmjFZCjEhOJJPNEm+ZJ5q4y6Vox/FUyikotMWrv0uo9IrlbEXhakL
lBdcXtJl/zZgoAZ7dNCX7BwfJxF3MJjD79TYDTS/PpqXc6XXIvbLj0oBN7qoyUN7+meQ6PT1yQg6
HwMDqEfAQuDL+9RmVVs3mwdTuOITJPG4Gy3MhC1f2UW51D4jP9Ucnx1twCS55KpkvhT3u06kUGQn
KFfpDkkC0BCSfKWBQte4go1vdgQdN7IkGoQzJRYKAbv0FyzLjDYezjTQPlKOBCUgbsoP3f59HY+p
LU23Ybac9alItDCJYbztF61DHNWVdQw+Jgocrb2Upn5VkmWJsGOf6m8eogT0tCBbrg5yPnqNdyTY
+yNMs5dAbxGInFmaXf+UFNG0WhdT2YWCxnty2Y1HpfQfxyr9u/WyrQniT/mTzwq638urEry4A1uc
OziahNBQpySPPIPtcsiSXijV1NGnvsHqVdd6zVZVvpU3NOKYdQA7FIY0azJfNloZRQwEH1zZHng1
0BCEhJ2zzBtujG2AYG5xl71fYrx8fxYj+i+QBMIvYJqTdlK+QnB2HolLclUcvUhtzt6dmiR6FsJU
nGbHMJ5bEU/bmB6i/vjvuQPw2DgidTKd9d5BXbsJR853yddoRs7HL2MIB0Y/gl+KtVwS5ie0BOPd
KfnX/uZY+isDHrxaf+6jOgyPya/KU2+s1aNsrZL1j9jRd/3Vub3ptjWg2q/qMLh1+cqIg0fHdM6K
nAez4Gn5fpmAkC4fQdU9tlutVznmYItcZu7imhvTYHxFhu9571J2nc4XqFQyfcmsa0WDsu+4bBg8
mqNtNlQbgF/qUEETJMYqoclodQn7Fb+uh9E5FmcR2qsIYj4tRkNDdkkTmxvO8y3OLaSJYVGi7/Os
ZYkbG25vYPwLoC8qZG8A1jKNt/YCRM5XiLUw3l0kdnRY1Kn1Wkf7eQzg28wuPsN/ZPv4VPSYvBub
x7GmsVcCTDuGyY+kjwA7KfzsfssVh0zuznvfsUW6OkGERfBpjNDdXjKJfvtZExqIXh0vbyfBaQ4m
uY0BNYWd49u1O3ZTCsdGGBPNI9rAoFV/dyI1sLhGbZkJHxiGhkXbeTl2lypTuznUz7dN2b8AYlrc
pSo4k8Nf5JmEoAO/Wm99+PJDAQw14IBfz2fw0YWE0OXLagsbARus9AcfjjY3miDTalStcosEdZTP
+jYFvlI9ztHTXPZZbuVi6C7ISoUnVYxZJ/KHI2I4CKIKojoPmvaaZSzBL+x5LxZCiFmvxxm4MnEE
t+CBNis2F4pW/gC5KQNt/MWCtHqRGCk6E71VUuPEo0Ub/YfJIhaxZtGLTTOqhu6ptIJJJ3lhSCjb
WqcgVYFwk9fqzYWjSJczvUNeDcI4+Q+wmfhWtbp+4usqDcrYQw5bfUDGtgVRLWNeOJa9rT+wgnwj
1wOTZ+iGofZLc++XOUeKmZmh1EGaeV2wO1lvc6p9uGj2pKXyKTzr/9Liz3EbL2llJGOySZIAgBNG
dP4DT5rhhYW7EJ5BTxdVTbW8zjoLgOnD5Yew9CpRGKCH/V4w4p6th0cqmH2o+u1Zqrew9tC5y5/Y
gb6FeVc7sMR0twCRnwrDY4pgE3Z1HDx6SmC9FvvWFJqN3vhB5uR/AMUGwkdXm3SnghlAb6uMmnwf
qFQvn3qiMkTjibKtwq1/b6IQ6mVwh8fTUuHQgT1dBRQmF2XgmEOW4kByd7WgBf+MSOH3z2fOvumd
orA/sS7MIGJvf49jGtG3DfNLsqMk7aox+keL+HqeDfzSMxwoyE+lL/Qqa1pUOkn6G+fvITpfQB7D
jEL/NsqqUMBC9jb8+Tu6Jyt3FGafAHLFm+hA5ehwSvRWJ/OTbPE86bVb0ei1BC11oCPqUvFSk7iH
a2Likym3+C+niLadygqAds1Nrrytc9V/ab1XbKl2rugz7Ufl0IJu6CLL/t/aT4zbIC1QZvwQP1SP
ZmQ1D2kObPl8Duaxs+ckIbf0ImB36NDEGD/3FhU5E3lu6QcEr/REzRXg9GrRdBEwQDCsQYVaHqVl
iZgtEW7gbjKfHXT0zNPhZ21/FN9fKJvDL/9CVO1kGqaoKOlsUZcU+LoWpeewymBEoL9fe8R/HXqO
OcZ6gX3YCoZBHdpDP0ariPvtUFWofdfHIwRYOx6rOYRM2vuCBcnz8zeKQDSO9gtrHsAe/e6yVLWR
TX5QTumF1YIZiGZJ7vyU6ioHNUHQQ5d3NvoLIijbHXyHMUsD56OMlGuKa2aUbSay40vKUIxq9nyO
NcmRNZ0Yerzu6dVv4FUeygiPGkKzoiwb5QZGiiA1lmAFncDUIHyTJilQ7anZoa2xyqWx701h+MSw
RWk5G0Zg67+GazRKSTBhT9/04E7xIPVz+OP1zWlxhjvf7AGCPh5nnagdJA787s5njlBbuSk/H3rU
UR0e5eAH4Vs1BOb9ofkQ1TJ0SH34wJODYEutKsZ1xLSAtJD/RqzaiA5WWZuyTJegsG92RrehyqH2
X9lHvXi5jT9runpTgaVH/Z1UAYB3YDMhR2uOqYGJtU6XqkFGuuT69OKhGgXUMHXr72ROMzknpda4
WFMMbRQX3xsAKxe2zbdQW4JjPX54+CYSTztVS/Y1tb5gnaWU9WQy37xVWL2sigM4et5dqC9Y4UY0
bdxeqt1tGf6ZzbNa2QIttwA+RNgxC/NizEcxZu8DNqXn4dzhceF4V5Jx/uf2lwxslkUjjhUogydF
S6w4OFXAcLsNdsqP/qixVf6MtI2ul/TreX3RCyQMBGP8xsr3IBcxt/DuU6R1AwviE4hTVqrRvT5C
p5/XhngLxhYem599tKSFAuAc6MGCmBMTXP8Mzz24ROikw8pxKrATve8jZnMC3ShuYnSbCfsmPm1r
cOeSFbDOEDwqQKqJswiSc1+qror4YKRFQ3BYWA3L6iPM4B15uTK0clp6E8/SuLL/UVK8NShPGrUX
/AvLA4v3B1n5ToK63aj31RG8d6BCv+ruD/uG9nUVcyRiTRMW0UfA81HvRT29c9uFJc+LSSWtnrV8
T18NOeNAwO/UCBPgnyhhrCwSXOYJClMKZVVISurFULIm0A+o/Y/rExn+KAXqs9SGlHHFsPDoE6l3
f6WGaEh1jmkHQeVmOewb7YdXxPg7ZPZQJqrhFPmTLL8HwgHqrELB7RfcZAjF7L1+6q+eXFNjVd0R
mXPRy4OCh/R0rDYdPvLPNgrc1uB/Tqj/eSsHTRupnRJ/aeY9XUEXdHiUjlucV8rePKUfh01Ocb5c
+b2Sjm37FYas4CQll3ftIofp1BZJtU/sZv1awyT/Ew/Zz7jrS5aqX5ZFi86AwlND+4hKrsMNBiuF
lW77DKAThWwafG4LiFRfCRC+7WeXFj4knuL4FChlq5jDHSBrZA0Sl8C/Rpv93BfWtsiXuL7xcMpH
ukrcrKPhOi5W9Vv6cV0kwp8417vcRAG98E+UbVqTx1OPXcABgtvLXcFqidK/LQ7/LCZFSc47Z9DS
7HbyHlj1F9PMgPbLkSE2r9pcfew4qhhuycbIYx9/xdCP3rwu0sdNofQ6cWYjTvPO+73j+8D1dOKx
wcV5pkB2ZIzpvZ5XZ+GqZa9iNjUKx1ZXTfApqnudNr88zk90LPBfXTQykQxewD6eOmzCqdLdcXzt
o/vi0+LiPkkDkNqnObH4GDtgX3KWSR1sU8LItQbX5Xrr2lo2zj9dAUtERYf4g2gIH/DHW61uQnTo
oLcbG+rwnzgafsJM+TiJVI24OMVft8oLvkXPzzzRY4FpvE4p7LqjZFufEW7h+KuprKi+nu05WuAc
gfbfderBJB42TiDscoscyoYkKcQuh5VtxvZRcRiXkJdn8MGIJg5eWy1zlEBxJdcSR4d/l0VfO03R
lzskjDTJ6s2nvWj+vnYCU23Hx1q1a86eTkZH82STi9BujyL+q4TGR0SRZcCAtH4onkH9vatqKW/U
AADMe14feMfW5ckjKxkf79TYR3Fh/Rfw63yDGy9vMRzhzKg8iYFGiCy2skZpPI2bgHnTkjl29WgE
0CU22H8UzWByZ4XMLqlBTFIPytPJ4SUJ+8a9yfunFoMb/NeeUrAJjKucX8VM/LhKap9+//XYR2mm
3uvdbAz3NupPKQAtY3cYtWdCXrz56bhEr+Za1enR4Ba6O3m/8OTjrQmv5g04AhB/fuea/bu5Ars6
i9K/5WV4jECU5iszlm4a05vJUW3S6d/I7WzNA97P8BND2Spjw5RBVWRfiKUrPaq4TbyXg8q5uHp6
WzST3ld+rRE4SVTD5ObhvbJLQXqFNfACuF5dXA3XE5XizT99h4bwbdqhHvJK3JkNdOzuW1pPwjBb
pmXvHJxzupX8p/IX0WtQ31rXcgq1x5C4HhasFkQMKy2C/3vWj76YXI8wLbinBYnWb4rHgBabTfZ3
JCGeqhpD/yr9oAZqotTlVMSpHGzfGmXjLLNHj2Husx+ayqFJjiLrPoBaisiDy+uoFVg8DZCilHs7
ABBhCvgAdZhQbVuxbZS3XjouOCPOlbjv6AJgN9Dpd9whRSJ3OeCMD9UbGukVGHFFe3+Yh6yL3KZU
5I7Jui9SHAfcl88tXdI7ZsB2siCWzP+4iJts8IRYImNoI+fb1b8oNZRO3RElEkGPbbT92DeWw9va
FAg+hj5BeT2A8stz7t+2k5HQRu4sSULKqQNz+Ewcfdyd/MDz9AgK8ibBTuSSRsz+Zsrb6Y5IswVu
FT27gSPJntVi738L95YT21Q53pt80vfXuvnGBg52jfbgzlgRcLBxQwSr9KX59zn6ZSD7ifXCCoRn
SoG3fRNIeswwfkziQ3b9PXF/klKt3O/WxVmioSiJSvu5bYiZqpPH/PCkQXZJN28/iD/2P0f/rWPn
bF2Wjk7pkCXVdle9buUG8YlcNu8ERJB1UOQtGi81ZzR4XI3Yxbe4WpntKeLFR2GcwFgK2P3RURxL
NuRQxTVlPTDUVKe/LdtBgZHgFDLlgABOjP3RRjgg1Dedp2a5vGeSHMmmVIatvd3ov81GqFQkP2cK
vAbbeJkDXUqX+kbD+AKc8EOxV/W0NXUNLjmGTM50jptQUsnJBPktj0b5J8ATB6wSYNJTR0YbuadJ
Jz2pulcu9kDtnrxDem87Nd2DoiGzKBX/9ocCZngYWWaqPtil4VIB3kv411yUsM9U2rBWpreE0WW1
TZGbGf5OTXbuEAfsxpMiC7ocllCzVS7vpbfsGc5xpxpXZKLARqpqXEmIRrqzN6UCt28L/pJP7uoZ
RrVALUNdlEqFCZ3rhYtiUj+iii53kvvubl6rEoVXQu/2H5i7A2SJDwZ1h4py4+hKg1O5r6xZJORw
ItNJLIXSpilat6Rcx0K7dpX+yAoPLK2j9WeGQefErrG7ZCBGCdcmLtIwRuBBIt6fKcfTh5BxUwFR
ekEdUP4IRJN+GeyCPfox/tjqGNvIkdFNHXyoPwsST4gMakSMnVvTBK2L9rF/c0W4I2PEmhF+Sbpl
K28SsxAHX1gd7kE/n4yj9qRMLb0VEpPo5F4LeuK45KZoXIfa2NC6lh6TD5BUECyIVdxKhnnGBWX4
KwfkGKUMQSPTbVkhtDYZRzJpMNUh9oCfp+85X1sWG9RA5+nUl3Fz8IS5T6s0fIQyGXKIOGklN9kY
3HDP4Uz1EYho8D58Zdl4Xt2WJAsmbDCvB/qs46bhn5ZDLop1eSQt3xto0nv6tiGGYQyAuxyffLkR
jg/rsy24WnaQWaPHNgU0eOXonGUcjzbjlIpcCKFPJ5RAQsu79zyafT5MsC7u6eDPEmHnB8j9TjJW
eGccZTd2wijcTuTH8yz5I2ndSpO0BpKWoIcIuGYRF6UKxPAxXrrdyhdmy2HRyOZpOHqtBsoR/DOx
2zfiNKZulyRu82IQY7+UClJ4dEYBvprtsR7c3NVos6WBlu60JEFnYRy7556zLMX1l80UJGgJVGJC
y8E/d7JbXFh/b1IYvpYMipufvtipmqV5gm9QGeLPJP9g6zsPwMo+uCiIN6/T9Ivq3NSH1jbCxCaT
NUhzZdXaiYbcDVlEIhi73qnu4NOAGlGbB6l38eXCMhrPcaRhMHi7liegSVZAT7Tzx0+Erq7uPqNL
/Tw6y8KTMesUKRsqAFvGUaSspr9vvNpjlMfeZzLIk1S0eozGykYPX5l/KkP1OvOmF0lU+Fan9i+6
0ZjoffimE+gbjfMDm9qvoHgk7UjfHAUxlykYeVvsrTxKN51YPHtbQr+M5CCPFjjdErxZ/K4bkFtH
6Xu/+hJLReWbO5Q2HBC6hV+CW5j5O7T/CfCtPalSiFNjpKHPf5caJZT5ZwLm3VyDzT0/A3IG2wLF
hRGC2/zruHKyVg9AYpEQh/FlqHZHy5/gQFHnWOezxN8MqRnz1Ox3qf4A0lWE80sSiScLmMQWbNJ3
QUfiI5zlvyHXPGxSiFyeCSHTFP3QGmrLDSglUo9CAtfn/6+EJho3baaARAxKBbBLbKhqz+wdt6X2
cuKk1IWbooUG0OBQJyeUPETJGLi1nBz/jXOIhNZQ5+P4kxxrzPel0qu0+9OVNCsX2wHmYfRiVNyL
JX+hLleHGF87SudXbFCBmH7I1rHH85/ZOwaCORT28iw6AsOGp/sEqQcMZmoAS7nMTclBkZlK4NRs
mblIlrer34bnT3lmWEC4qktzPUtXjOo3/k+TtSXOThchCN77WKH3gz4wRLTPBs7WN9ffmTrc/EOJ
Ph6zW8qZeRvljx0GfpmoFoDeo/GdNaBFC9cq/bnrLCpfd0OQC/Eiq8wLC62w51gY580ORbYbp/Eg
SkZYLmet/p8YBv7YPFBGPivw1MTRfs7qYip0f/Ca0k4Y1qEsUvhPWLCrQpF85WgISGhLgGCYRaq8
37CZhNpkXK2eC9FjVsKquKvpOFQzT3hmnEUtWiBI5Iq/g8YGdtc+JQnbcCdA2VFSb6hOgS8m0zbE
MMjHE6kJg4G7v9dEHe/azmQO77mJm54rJx2q3dEIdIYkKqremOdhrHC3O7u+xwaNftMzBfTqwfvG
lqyFS4RsxgKTsTQJlPP00Lp7OXGpV6jbaoh1mju9MuKT80AxsItwiVN9fEjIsyDFsbd2Ylp8Nv3v
tK5gcEyh6tuhKip6Kt+XPLra3OcpkfRk1kCd8uvzDwb2v5A35QICxn6iEzVgVubRouDIBPFMKRd2
w+aXa4jjKfhDdrshk+8EQunMcDtaji1lwRb3WrWNtxLZ3XstFrYAZ4a7kje7+i4xCqkkQWEOHAwb
SVPqWuSPBxPISKk+wbAuv5wG/Fo9zPm1zjdGqKZDnpXhaU4sqbG6dwO02OfZq84g3DVKd7mA5tGh
ZfGHQk+u6RTFvmqTawfpTkfO2nsQO0+FXhhj3XrQxxgrWWUr+McWafx7d5BVsJlbqPG/PI10Y4gM
OGOhRRkSqt+00XJI1VnD+8neYSudXRSiirK5/Xj8Hr8yaBKZ3+v8SYsuua97GofjLqnWqFvGq0Au
GT/SboDV6upIgeA/uVzb8qWFiSGRg0gIzgNh/F2qu5p8cVASnTqjqo4djL8W+uAuYHj+8WOPvR5/
me3+6AxUv9lNYti7Jou7FDtLDRup+upg+iwihvUT75M07oaAS4ghEhf3LdjPmepZ+WdO8oxtxNsV
WBj9CDxK1ZbRE6VOFpsL05iSm9RbyblcbUOx1KXYVBo7s6WYdwLiR2/SFPNGy+FUjCiIwNdFvpWF
BGxxM6ssf188QEEtRTvfkD6JVkpcJ0w+vrcqHtT9jbYc8NOYUFigERcCE/Hb4ikGJ3+dV3ZeKj1S
lqx0UfLydw7WI1smP3aXsV74qNUeoZra/dxbgIUmGXlUiboMFJp0c89ILaPLpH+RpVLf1bsnTSj0
FQ151I0BY680n0Ec9M7LHTBd04g8YJ1c5VCCuQD7ag03mL4kp68n7fuI8oCk3Ipv38GsYBQNbBRF
kYbQ/u05XOuxGwxMAQ4QT6Sz/r5GC6EkCnQbRwGV2x4bv5B6EeVQul0hGOK08Su60Jy2mSgoiy3s
o4UmtI8K01qeQ9YPQsXaODME9kfg3eIJ9JMS+MXUEgOxfv6KrB05jQJ2JYlQ19qkaa5IfeT7g1Ki
8pbG7IekPK66UACRm36765B7oV3k215T2EwCcnoQj6s0AH7jVgmgZvd9mKho805GIfIkM91cUrhI
fronIyK5SpBGKrSgG+Z4c3hiL4cWqkxhjv20D7LdKMGch6x8D4VTsEq8kwbEVRHL6Oh/pAUfEncn
07rMY7gzt0mLlGggfzFiHLLURCsZfH32R/OeKLWpRXaHxtrAeviBfXe8ajmrYVnnbgfUGxczIdvB
iR1TmMzANViXj+mgE3WTwk/ASlQ/PtFB6E48xVGSK6LQc/bs1eL4vvuI8o4bnHebrlD1pSrWBaAf
Zm429Jgy6ZG4T+byIEhMKhueJyzTN0WDMasPSU3tQRs+W7ExyX63AZnlbqw9yYLNITXzjtkW3v+H
RMza0JZBYeSPsmY2FXZwjmqGm8RTNhjgud3DWMejaHdd17hTP8g4FJJ/3CyJmb2zRlCUwI+6bzi5
y7kZynpWUlToSTLA4HGSPmTBdwccj+q+vwQo8Puc/fluRLDy2qePKZfhlcE52Z0079seE4/as/0t
C9rNJchWk3Z3XdarYcSkFWjiOKGXZ3n9O0WYRl8f6RcB7bk0sPttUXDHd0p2D0AVYybkFwdGhVrC
HumDmTPt6vxDuNqIrlZG53nM7+G3lNECLU/4S1YeiPOJFCqNVZcWT2PkteI1xc5vQuq9OwZ/zYse
763e2vCOa1ZlDIf3/B9gMe8FE0h79SHXZiOLTPG2k3rYkXy3sRHjXRhPoRoS1u8SPCIAtmywIRJh
bIT7c7O3W/5KEJnqn9S9w2NpG9fI75buYh09HaI6THUgJ6qKLmbAwStLYqLgn2uj31SEfXxW1F0s
Ftow+TL8rBPZpNCIKudZAC0nxCJnNRtbWDT1Gi0730g6ecRM+mUNOczHf3K/8VBdT8Hls2sEM2Jb
toPUpfv59zWP283fR3+ZsJufN5auYELGCmULmWWicO268jpC2FgQTok3szk+ctJlJChjL1XCNpnR
I8s4iOy9sPH1/kvEwuf8wjzOZRVakNZMvHVMBcybMtEl6A8KbOe0P8J2jvb5cSt4+aJo93+HSd8X
EsKYD6oIUE2o91UC7Cde8OlglfqitJ4N4KHgyIMHkRbjPqHGc/LRwM5ndAZi6/8JsF0VteiTk2Wg
Oip+Ai0blgPCSDOoH38cwTPDj/2K1GF9UPFd1EJRx0xga+SLP+lQluZeu4oZgfIkIbP4f3oTfs7J
3IrrlSFtU9E4QeHZJFE8+bfXBMgPH4p9AvDO+W7rZaXEi6X9VWv0KPo39qU7UEmWAAxFO1nIVtx0
KkWqoF0BSo/ef0X841OIjHfH9EDWl1usB20AL2xLHoiIBi2gHVlJeL19a0eh+gG/bzibgqpH3dEK
c5EdScEaQHMAtQQ6E/MYXhDT1J7Dj0qQ5802l7v4NAGujA0DMqSpb+j0IiIqG7i9n3Io0ZpYPUiF
zFM012k28LPLTFDe1QX8HwUAAkZoIUwIVKJNIKpRyfjL5CP0xh3WVxbKy74ahEd3qVxTYQOlg/oa
a2UhxSHzfro8YJrtcFv9hNR4OwKMSXbB9HzIXCmy8Z+3jLdTQ4M30eSFbH9wB1uE23mUQ6sBFLLI
CqA3Wgy32egDiLejJ5xF9hs/eFbdGN+uCTbRPCCWRNRNHaRTfW0pPPhoy83lsA/TSeExqKcPlHBO
T4lYsLlxBiW2bi41JxtRKd2ujtjtROYsyJgsubBlMPsdjlSDSA4M1S2dmh82ozeSkBmFiS6zvcNX
yVAPvFGbVUZEDC9+ivHutGJLUmT2q1oxP3gTkBu0hghD/Wzudh/Fmi7uir04yjEZ3tdphF+ofjyw
MYC2R6KaFx3JW9EvW6sTODyLkThQR+Xf6m7QblyjMRwey2s56MzWA7Vpz6uDXhGuGEqcIMkkjQGk
TJDHZyT5ERrruafQVutJKApYCZRKzaZ+Y1guFOtVq3tVXR+gAHDQygWgbYGwHZSdEQX/b8TucduS
gUR2NMcndoo8oxeo49UBGkqLMN9PYQlWThCkG1SZUsXRBxChzq0NgwG12mg4mYmKFTrWt9XKogry
1PN0tTi4i+byiqACi89H9Rx0aQjJGG0OxPyJ4raUZhQBFCkoJEyNxKIjVrKSuRRynXoN69Pp66O7
WsGELvEsbS3+c0RfDVB/8P9QriLH44f9kU2Sl9iCV6XOC3cFDVpcDaJrslAnKVd/aO0dir4SSe3W
VzAFVmEsCBt0VduKhLvnA7Fp9Lci3e0+Qz0rLyXb5BfuwKv4tPyvhes17HtECHz5noeGm3vCwe3r
w/cOiP7qOj8VkqEbIgeNCKhlJQTwDbkihuWvlHDRWAdtGqfgUQKxCe8Y+BpTCKV9dgcyxaK/30uU
sswB/AmjFzYr3BAdkiQXUr2rkt6Qh7nDj2dc9jYxU50Fzx1+SdpEZIvqHYYf62Qcqw60KBdVe7dY
kJMWRYQMtJlrTyy5OtNFD+5M+tVgvR3TryZrryGMhs/RzUX4bBlctKPDwcNjjbP+4jPLwtZxJP3E
mQz3hJv0/ezdXxyjXLO9ml3tmiEPMjzlKEoTThekXiXaB2mK4u3FvQUUkFslq+deeAA10hn2o5lK
PrSleutuwo9DymZNoZ8uhgypsLMFfYiK8zbHQicvjnJBWCUoItebn5NhPhsxGq8wo+i3SlsDDl34
JxhU7Oyuxknflrg0syFAigWBqHXl067z1V8Z0bQirOs+7RLqP2XAjyjKWn//S+g2SqFef43npF7o
P4zEg8anhLfRwQmZwZAEQ4u27FUQyaVD6KRYPQ5vVzKlbBcYle/Ec5gezemGO3fCHBkuUid7gCXi
JqyOWVANJT5FXZ6i1XiEb2eLgKTj+aeV46Ps7bQXpZKikKpjgmIRkiIqZomvLl/9WGKAnszYUzV6
VnflfPJM07xOb35/9y0iJXa4Z+b8i6Of678QyX/RO+CMLHpocWKJwTVQW86aJDWTGYdqY/2cId80
h8o3eAt0JUE+E2yurupj+2DTJ2UXIhOadWisoycKxCFhptcd42Ue9mouJ1VnB1pk+oSPszwvsbQ7
RD0yb8Fo1LEuayCoT9Hdsy+KNSwZPY5fBblsNFoRc0wGkmGCschd8lw05ruaN6JHU66eCVYOFzTF
tisZonzTSLyLEVF0wHfm1IIaJDXkBYUUb7UKo7ejOIlUrQvFHK0T04NjbGQSz7yL9+ZIwuP5w10L
Pb/S3GJtIVdBwH4eZHtHwWNBVftoSL+PWb2kj5jubkMmTgjVe+gH0dnJDGaOatxpFany9rtRYGNG
QeABRYYx2aaglslp4tmCsl9RgqGeeBN0sVDNXZYHNmGRrRCpFX0nVRSC0hmZEIEeqtwHWZM+zOz7
sQXVhVOf+JEx/Bhee4vUdQ6J6oWFwWvE7XiMlwhNgZ8m2Sugwvu98yvUB1x/3X8eTsAZlWhkba7l
FE9xGjGZjgyRRmgc/8ZSol9Dbo5zXxiVReFUi26fmns5b1Hd8bPf5Zb7FXgb9072oF64MXEDbljB
o0vvCbgk7N++kPjnrPgFbn39sagS4qyt4c7JFkztLP62+X1aNTcKAZAiARS/FeL0Sc4TPgYU0gW5
7H0i/h2XdSTnkl7MzIpSP3He2FWQOQMf9eYduj3/kzyuFQAFa5eLuFkPN2ODaHdWl2mwDakwSUqR
htG5gxiDrupCib9V0WOoxt9HdKfvP0jVV2I70/IcxxygvYUYV2jFpdQggo4ZygZzm0ZKKl6TCB6W
O779gC7lScP+F9wj4Cg+5ZlVgmRS1rciBzCUMJ626sSmTqkUKJlk5O13BTs9UVq52YT1cX+4ugj2
BOzpaYPxk8XJdijC4X7bLJTt6H9aGOWFZpiNy8BclUbkOrID8OMH/RU3GcafZ3d3w+hJ99gblBV6
mhRB1OKNxbHNuEeEFz4oNRtJI1isCEkj1qDC7fi7yH2asJLzF5eOXAjWjMAvjfDpxFxUf8KQXKq/
E1lKBqzAwmgq96GOWGBCA2kg+PPWsEI3oInXtso1JJGIll0TiePVyTjyF+p55dWvE9ce+vQH1sMU
bjgCZz4AHJtp5IA2jccYAEa1ezT5OhJNCPOu1mwgB0JuOkIhMyYr5w9xMkEp5dncYxZ81JKaTOgF
ZYNAQcVTNtqWWMVOcoGf/KDRDPmvCUtFF6lDutBLlKaD2C+s1y8tPh0vh7NQhbywN6OhS+68CBvp
PsB0oyGviJj5Bc06yDJETdT4SGHnkVcN3rT5Sh3iTXafc9RdocZNw/nDKvYFuoqgK7g5HGTQXSGv
UX9hyh+OTtjMfvFwM7AHVvH4gn/+sm8GKtgY2r6K+PZYt8swtrP26jBEmEGGYu/XAC5nWhd/gYMi
+oh02KN7+rOD+Al1QnA+E0vJmrAkc0L1dztPxfQtpEvbtO/Fa2s2sbsPXf5EJqiU5vUFWPUgUW1I
WZJfpTkvcQHSicaliABY61jlXNG6UCHr5fEQuzFSDZm9VeYFMNIwN0J663Y2YMa5ADivQ9f0vDOG
MrmxubsUxyn00xDq/d2lO3cmclaF8u6QTk8I8VE6Orao1gmKlgAkqtLoxD9+jOrJV8NRra9FjRwz
JoU37Ic88u9MawaZMxtDZQH1nf2bsOb/CGE5xp/m9RAXjJOAUOWM3vciCawljkUN21iwo7hCVfU9
65cM+320sJLdb03gADDojgwRqvZqDawl6v3mmF5BcaaI0piGWeODIxqy+E15oR92qhDK/gr8IYKz
6TymRJtweq8SEeXzYpVMlrlJmCunTQXw2QqBkNUxjoY2+MZXB52nSATjEnD1XRpFC1bqGdjfWKRE
1oFy+ejYYf4UIl0czL+JZJIJoU44WBrYrvtG5Im/29J/3csi1rF6z8kEqmoi1vHlu2B6Kmg7soyX
5ciNYt6nOudiSsUdwDmLvnMhQZpVOlduI2hVgG3MU/SLYlKmtBUDMh2GlWbHmCXntdkbeamk5ax/
JH7gQjK8vxdPEKFtoX6LULSQxuNWVMjASUA3XJskZK421NfrCGDl+zktfKN78SHgCxBmgMGPgC2p
ke8qrPKnrk92jWyNx74KjsD2uGbhpikRL7RnIz58x7LCzSCq3k2Px2J7JGpBSwxR9j+Ni0gTOOnG
fNFQaMeN3YPoFvlz9irXtUXszr630zWrXIEOUpGvN08NLhcJaMNYvDCEg/eo6CBl6WtaNkvVvyiy
tLrckd9aSt0XH6L0EQmomt5BYxMAngpQfluco6GOdgP9zfM1fYQHA2IgCKa4M+5P+tLA5vDP1zh/
8DNB7+0VrOQB/KwzccgfEEZ4sK/Vhw5JqTjPb9hLet1Z1/1ZXcEKUWkGbRmpo1UzTpCyHIMk/aK6
NJ3wTUCq1T4vwY0CG94+IW2jBGBo0Qa5hnlOLcEeTMMdVM7xAX2KqcF/nhINfnheSDY1wIVWJkyv
vAP7hL0qvIagqFntLueMB/OMDOVRl8yTuUf/RkqfWW9QevkKcYE1j8xjAm1kePlRv9St6E/8Ueah
AgKplRIPiK6mhUxagwPY+2AdgeCfTO48kvUa51sZWsWudWQVdVo/lUcH57laxhvaiZ4ZYsuOxpm8
AsSIZxtKDxXb1ioLTw0VR4HPCHmqUTJrvrkA3Wwf16gzVt+/YJdHO6vBX5G2OSrPazJaJO1uCkN9
cseO9VK9BZfIkJARhIZ54Jp0LXyxYbojyw4tOmMU5D/5boYpzsrbpgDHPtuhwT23cpJyQkw/UHZl
L0yF4sOpBb1nR8VE+YW/BRi3wfkYwtXm1OXymgmnBCgI+TgzHeiFk5chLZYUYWBMtuIcVEl2nC96
qho6Lpz0yG829a7WuPNAEA2al1zKiETkzwtOHkbLtkI1uddSzaEkVKnq/HPV8Q08BuyhgoXQLVUF
KwDsYLzKdDw7ToN/hReYdnClUWi/Kqf33JJWb7bZ4ML4EZ4LNFXFGAZL/vyKyMfxwxL9ZJqqBGSd
peCX5x8b5tsUqzaARvTanbHYaXv4BJsLHutZkAGO6TBXW5M60zT1R2EpbSeYu66ATr3MH0qM3HW9
w2Cl+E2/nZLOXbjXnBolwczzOTguKB+XieJz7F8kgZrRce0CxpwA5kUeBVm+rAufbHwY2QDvMgUZ
iTJdFDPID/6GPqfGRdBSY89UMhmtasPFvJ5OJcBn3ukivKs/4uKvjYid9d5oh3PKUfHtpirVgSj2
k7YAXretJCli6Ewy3QZ76ia8FeLYboqw9pVfWNyQf+UaTRcDM/6LUxbVClDYSIKy7X8pHUkUflOM
iEIpKYbo1XhR8QZz1lzUBhGXEIi2TrhDcIwh5iIHen08Oe4TZV70Q1+Az6g4DHRLHxS+zf9fPKjm
W43rWvmcEukDQCIAn3Ybuw3k5IqFaeNy1QfPqZT18+eIm4kVxnMgMLD0b1cHpUSxFEhiPZp8AwLD
aLR4cuQii2PiwvcvDlQVb3+sKj6J3oeISuy9QjiskproopaeZYAPfT0euECbsWg2XzcZ/cyka96d
u/Cv+znCGE2GMPCZab4jwz358PwBuCr+F6cFSp2L11F90ElQsf/C4o3iM1kPGYfXrpE/t6ictoV9
7HbpBvZKbkR4TKkVlF/2gBSavrYw8reEt6nTFc4ONuMOdjjcXk1PViMMfPpegyuKHbMEH57AOWNf
Tez+Ctd7tPCjdz7UrHKwNC3uIaIRz7FkP68dWH0WjSgAVSYchDh6VtJTGKAXOu8TntGwmCzQxhgV
FcPpZHnGGOvbE5kDHmtVCFY81+PRUK6Sk5kWyAp2uqwknAzfDjvdL582UiVgd9n7qOiw8r0jIgkq
D9ls7yNjpHdiZwPJd3kScAxPMC1WXieBGUTaKaejjqC2t7WsVmsfa82l0i+oVkpG8B0ALAh5xNAa
eiDyoXYXB60QU5GQg3SMljT7HC2zVDH7UgtiUJ5NiFvwm8nDBG1+vL3/EwYglJRomCLPrJ5nA/ip
x56TEDyv6gaGdJQqP6PF1HpSgQsHg1v+IlObClgTsh/ukS83KjoUGwRmFQwPAPkbm9biUJl3JO/5
unNMmud6F9R+oT/wmU2FoD347NJ6jmn5PNkfbB6iUSBVXCKoHRW+g3d6R+2o5oW+taxjIqlegrF/
A/TDF3nKPw2tfbd1bq5buG2flmAlC4q2j6ibQSY9rgvW8HnG5gWM6WsanwAL/oE/pyYqxUGrpYtD
RVzjzq//BwoN7vdzgc2siS2H4ZBCEinHHKSn3c3tEGPxPMrVEUcG1N0qoXTqgq5VL4PrAVaRwvUP
4Krj3X9O+5b4iuszhipifwpZj4DW2xjoeRW0FOT4pkRPGbsbUzj1cVYTfsDZJbeEUY8DOX/yz+2o
aMEyrFzZYhIz7+XekoYvYWpREKGtL0bgd9rubSsAzU9M8ofCk0VIRfc3YBvGyHJlSpWnKBBqDFuH
6qj82GFHh/FeWjgWl9PN3/ghOJZEcYu6AyqBZGN07llNcABuEO/jqHwBI1TVEtkKHHWq2ryEK/Ea
gj74GtKr54U11MQedJKQWgmRf1Jd8PwIvohYdhtM0tjOY0fa0rSQGOHfP3jrrbmlfmNLlzXoJ4YM
ENWEVJ2Q6nDg8x4yzbVbfOhUVyiffFdsf4wYfaSgKNa1SSVd0YwNmQDlrGoMriP1ChRscgkLCx68
nYu5oO3ejm/8J5KhmEMmX62fL8vRC7sIit/OjoMzx1VMg+kCJu3R8j3xL7xeUKgtMPg7owluqx1y
4+gf3+mpabZaZnxiZaCsEW/60nrSNPBqsAvUx2lhNv/BQVN7Lj3YxGWuq79LBESJYEkljMYS4prm
5Kp5IWa2GYnDLG2sNtqEyKHml4Pe1log3905RKz365IKsjRAyRhnaxN4jK3QqRaFwd//jMb8Mw7x
+RnCeE1hsTRwSc+vQ1MExHSVx3q4xTsu2fNMk/bhfq0JKUlAe/Ut6cWZKrCV6bCXbnugJwKfiXpV
btzNQ+KS59Tip/CxlXmN8YUEQJyV+wgUuXooZPQMn/JnvVHc9H44RjcMCWxwhs2gNj6t8/y2Diaz
Qmyns3OjwDFWtpr1jJi8QZuu8UafDNSfq1yNbNyOApxAo8vMu6X71ODrT9he8Wi9iAR9Uci6DSiB
B2jkyK77sqJq3J2nyHTwjIMg8XQ4nuFrm1rbqQ6Usy5jyhUCgeI21zsqdMlrtFUZchU/Do2kF/rH
WZ2yOUNoMCbWFkuMOclHUGS3CuktwfIMKBAsUcVM7L9eknq0uTz3+sILTQh9k3IUMl0VoRWb4q1p
RQbKQmK9348M/RLMNKch2Af/MZdbhpYkYO3A3eRM+QF8AcNcGf8vEaliqmACJSvCUiKyuNcU9pX5
8ffrFQUVYgPH40Lxu0PoVWhEr7yZRWtFPHG+O3nmwGCLc2zXTASZDHcPzB6BzjHpUJ4kB9mkQARY
ZIwkQCGgO7knlCrsEP+wph/CkCnEgq8y7sKqnaiZnP87dMUP9jE9i9jbQYDDocGeUv8NwbEMP/CD
cOaDvDMmTETiKl5dzm4s92/YqJxNtS2V4jZW1UbPyHEhwnakJPoe2Ugh1uyxqK2pDr/cXmMRHzZv
ADG459AERsRMX/Bg+4R+b0ZNQYcmd4me+uMwMVPRQkIrDWJtkeAGItR/TnvgF+WB8QlRIn39Q5jk
Z1Bb248A3YT0iSn4/77LA2AndxYRbWJCFDXwM4tjrC69brU9rRxhMWnVDYXtj/doI3z68PHPQ0aO
SSZZriO21dKy9Z+AjEVs2gyVQ5GRL4zzLPH6/wHolAp0w5co9hYsxfVE7iAT4vbgBhF/1PxhdsYl
63u/4GKFM7xMgLZr/HuAuZRivXn3r3etMsm7T3zMJcrlHIIa9YKXvGZi20AOKIpuygbtTxX6IKz1
IlmM19t3V87ujLg8lc6Vi9A8U7Y7f4nS42mzJvp42fACgBzNbuO/2uNC5jIfjroFDp8cfHu1Iti4
H1rxeCx0Djq7spMLaEV1PYccbHIUaehtKTg5fd8+7FXATup9YG5VxNrPXd3r+s66aUXDSSL20mHn
lfFV/J6NBV9hM15hPvxod3o4uBa9kxngbIq0qO6ISlNAi07QnqkycK8IJHGpesM4NcF0DrGTbusO
P2f1hUblNXi0L9H5iQeBZQTWYRFFAOxmhzCL6m6CaCFd+DSH0aDDHbnqPRZZB603XyoJh/FoQHgA
e9kAwS3TJJkoEap4F1M7iD1NzQfpdCC86B4XKjTesTeFG34CCSPep2T6csh5kiLgWIzz96eiR7XT
Emq8xbitijb12OrCazdXnaq3d8cLNQKSVy0kr0csKmGl8qtxupxgyQpAwb/fBBwYvZ8LIgmzYDRt
d3IQn2qsECX3PR0s7cVlkGgm6UaDusz4slO2LepVZNIBRy/UWH579b+0BWvMJNaT5otL8HNdMCMw
JLzLJyH7eykPzlZmblZNPTVN/Cm0wEmA956hhOe2r3izhLdkSdWcPO0uuepVCRMs6JQJpXGtQKEO
+a5ArPlVcGzWSttZvreDD+7TbCMD6cLiF06norP5wf2Prufm+CBAlEuB76RBuKPino41nktNgCbg
Tcrz1R9CmEtV1B9SKI52q5dubYuET2FRKqtBTMHQMkDuATlk8I/r7u9CAIPZ1zdyXD1SeVriLe0L
oCzXFBC66ouaJ/1dYA1rnm+KofLoGUlvDCnZnXJmD2dIuh8zGasyp9k5Mj2qjgmTTLzVeywSNNsf
cERdcboGfovl75Btni3h0daBQEsvpYGJk4kgWUFqRwRbhSVGe7NVtN6HdU6T4c2Y/dPdFvZC/txY
g0sypF+wqnvmDukMr4G1xsN/wOm4jWHK4R1qJIcO8NsXKc2PYVl0Puzxrr8ea7yosMMKf7IymiUA
KLEbiqIOvgsMgyOoXal4sR5ZZ0wB9WPUA/up447GPHbXaf4CQxnlRvQLvDHRrNNN/aDDdsKQXzEo
xdRXW7e7CKJjuz6lCJiRPTO0NXsYk1LzBXEqwargEeLSICjN8pHY7v1Gbjsqtk22Tu7KxtBCU910
vJ3NF0m4PaCl2FBWZEGVvgoSiaa6ub4/mZ8V3p3TqZ7xj0Zd83V7ehabm+W68qmj7K5z/iiUOUse
ybYgiKQN0c1VoYE6LBE4MvAmRHDjHPiodAch3db6HtA/hyJ1p3NaebBV2yFhp4LQi/ub0SZ+1TZm
50GsB8GgeyLDKsgZMBCUNrs+fSrtQms9OGUSRbcMit1Op9Nlo/3SRX4WKrSAp2c9+vkiZ7t8qm9j
5o8AEIzERpEtHQo0kXXRBD7NrcauC4AsuRPSgCplGQkTjnrxG4umN2D69/N1TZbHFvi8M1qaOJP2
mzFIva/aVvMB0YPWbNO5jwl60ndx60010EKgQg8xaX89GG5L6rnEkRIDG1DQR2rCOp7ecHW/ljMR
JLhuNDEqQvuARReRRRlgZPfvKXker8Ewge3uduOH0qZg9wcXODoeFdKhrrCFmWZDfbk9S08r/3mu
lPRMfEKD03V6NmkDDs51tke1WTi+UI12arvna7mPNqplK2gp7gsXhKIkVhV/cWYJchojrzbsBEBi
5KTI2FgdF07rppbw8lbxKiGPbUMkGFZ7foT6faZY/mIqBRMpbEiJm/C2y1SvuXbUL4tMJ/XQSW9A
d2BgXi6TKG1iYsJWWxVKNNXM/FXkakNwp00Sf5lM4F52QIxeMeP1vpn9RdJmnrzk1XCSZED6JAwx
7WcqZSk7RKQ4Ce+OEgFWJCvJlsgiJtdBW9rc29b673I8ALnnHsggJy4XlA+TccXeGz2ZT656HT7G
py/mD3iaXcEbXvT1NeUmHnbaZuol70htyFJFFPmXVVQqplnE22MuFdk45BqN5Qpe9G4zyLrEK/TY
DwhRJzxRFbyikBg9wnmpu1xObOjUMieC0umKFAXo5wgn9rEsdKjN6ZOig8apQoF+qbHsRqVYmUnY
fdBSRXhAftHCo6Fl2A8csIGJLCoBP6fDTPrBZxEVLf3hoaTXi/vsr52PqL6TMfWUuME9Hlq+sCUy
fUcBA32KbXQaB0/YzqIanS6tienthrJAL22NW2eu49vlWizdgiquWAHj4LzjXy+Jsply6tEgfLOs
Q60fnVk/s8kq5M9JMwacx+XxX4h1I7Tnz3mOeLooRVhfY0wqLwgUwUsinIwzsKjiuK51EatqZ4wO
jQ3Uo9Xkdgs/T2qWok+bUBxaNpHoybHr/zdbfHqmpTrl1W8lc2p96fXPSB4woL8uM5/yzQLQHn12
ZOHyul2eZfKX6ozcdyrtmu2rYT9xoezvijHOM4l97Xom9Hp0BwokF26EEkcSpDSJL2VHWn1dwDHD
492KhaeIZrHNrHj9pDAvpKyY2VHI6XXCpBsLBo5KmhBoawBT7YD1Q6fQIY6hUGHRQjXWXkNDhjFP
OANx8Quu1EMwtmHSDBKJkTQCg/t0/Omjdh4YVvmlPHoVKQuDAylHhUM5RyND22Z0+5ohIdUv6tV6
ogBA/bFZTLil6o7g9HbWY9ok6HeD8J7a2dZ6IjTkBBM1hnpygvzCVaL2KtvYoGphBrjvNPC4+JgR
dCfj+mEjkpGAI84Du/62oSNZeJvd0jEa2mazv3wWh5hx7cIv95wd3gHFPpv2REzR6TWzOEW06m8T
awZ5llSVluBjiAG+NKfLpedRUeJmcpwnE0MoMLBsFgY624URw45jSsYxUuUJa3Hf+kiAFIgTM9fD
EapLs3gfEyneDtf1vZP5XLiNhv+rLP+ePPdhR1zqEbQWQzf1Y5RmoDsae+DtvZkYWkv2ORANKlS1
qc3JWT2AE/emWKId952Bk2YNWCV/yt8ywk+jO9wyz14To9DBCQPJ3dIGg3JOx0D2SkVlsRzbKNpN
2JupDH55kVusn2GM4EJSqUB0TJOsdW3/1VqD1cJUGO4tDTG6kN1xwi9js8C+kePoVHQRQp2ZfVaz
mJzyV4LoNK814eohfcgBuSrLfjtCqAeQjBqH/LuKbxYerLD/e9gVeBureIQPt52DQPneCtg8G0ax
ohW0Nq8fAiffcuaCpiSPUQp9y7TQ/X9GsoQg9fDpOFCvaKgVcjk/S3zOY4laThqkXIsU0i06+odF
PPAGWc7V5Ugaz4H66DsvRAqZuwE701qhxZoPtCYdaOLKRRmuKB0ZqIF/fbPBDcD6piaUdqvnOFDd
Nd2WwO30zGE6fiJZcbiIgz4nJHm3m1RQSDzEj1ORMR45Xn1lCjNbfRDjFbPmUIzKIx2kP0PQ8z3F
2rFUcjHlnJZA+2PhjDxHrJ0TL2Z4LaqT+MHGTj51yyjx9RsP3K1D5krAkOxg0Xk8IiPPbjztN8iU
EaBmNRTaIyn8svulN1BB7z6HmQzTumhrc7JcE8sBPv2c8wi9gamdAhQccFxBdVjYoXadWyRR05J1
gOw4RAtR3D0tRDMEA/KHqANPZaaZ4TphYPnXDYUoh5R7CnozUpGolInzt3xl8rJfKFiwC/WZS6UR
dnDgfS35PC9gCJyTI3kqhEsoSok9wCGgyEHZyR9zm5rHpakzjwK31ufHbBYPJN6dC54YMXnSofU4
s0UxbsxWTIe5qbjRgj9HsX4me6TsWSQKY/IdEIGtm5UEKZAimfUbB3XTmalepJoPWXgONpqEP7jP
g0FRORu3Af7bwmtWj0HBUqeFoAtcZzAkDqC6XjIlaqL40Tq9dJl9xOr/EchADNH3LvikT+9TmXd8
0a3UGa177Npm6cKWPGdh32VDqB57CFuD3vw9lncjZVByBhqM4AdZ8s3Yu2dkP8yKD4b+YnoSIX8d
PYmBH3zvI+fBm469dGZF/hQtksbv5xaiKf8nZdPgtfR14lVZjgLnLQkKgT1QzxCISvK9GZVryA0D
awMOCFOc1ZGgkyvbIfO5SZ+szxCmkY9dz4l2rrdv9WJzEQDMjW5N6Tq+y+JeiBuCdFhfkUigAwMl
9EnLqXNN7qE/6oqH2ZDqZZJU81UhmkuyFNbgDMTor2FVxit3JCpaxTFi0JT4GMCw+SqD9HGVVY1P
l1gABnYALIXH6lYWmmNBDiFsh0GiT8EOA10s84PRO1iwTsfFDupdk/1+LLgFYK+sJYsQHY/pksy4
mqghhtRmHL7YH4HmoPAYzsfdu7Be29z7NhYsKHWNF1UiPpc4/2sBbR/wlgVWxk2PNaTz+5/Kkjsj
QLQ5Qjyuf5a6kV7D5+TzlPdlhcVdnRvIqg+0BIUm/bRPayYbb0xAmo4u/pSj8J86LuteI+m28Myf
0eJDY+Uzu/MREPAeiYuSFV4yx0uotRwUQYLXRgOglTEw8eKfVjIB3PhZ80JHyV4RtPmOEVSpvOgE
bR1dsdOn7m9HqJfIprnVVRaQ74ZcvxrBWDoPoxFsPT2h/B0OfK/J3StmEGAkKO7uL/ZWJucgpwJA
eDSXjsVxwqJ4IUnbMhJPtGBv6A+N4bQaMttCEUD6Ws4PCQbaPJXCj0HqT8pzzkhvfWcXWSs2hrsI
+Gpo+5Y71XF3e0AUPt3wNGK8HFWAdmvtu9xvQN0SDzcR+oSpdobj+ycpA8ESOYhVydRBHVNrgYLd
oTaquWMhQyvOTgAZbiF2XZjUYM9OIQBEpheTTd+yHCa+BT7ns/kW5agbYd6RAOaJU2R7wdMrUQ2x
FObbGvYo1HIkOqeX364TZdgCFnqDue0Bmgzga4wonKffDaMvXQYD1dGPjPiz6VKmS1rc9/yumoTv
1mZgmxCxH0jziO4u+j6p+TEDuu6P6/Ak3glBGQec25hcJNlRz5TIatihuCaQetd8moSsTh2mNokL
G4geEaRu1VueEXqu8x8VbEL3wx7fbxtaa2+dv5+PNxgcdCECdhbusJN1DZ6IiwBmrkBu17JPs+xM
NXFWI+5VDFXCjcDlU4R3H0v3f193RiC7batMQSmahHnrDVFnnDfQM18d0TFEwrEwNTkBbwuzrK3n
dLk/mcEN2P6Imz5pTXI3yaoWqsZpAWpnCMr9aHRbSp2X0zbY78xgGwz4xLoIfrqDgaf3K1QV+BDX
QXiU+fNrnvSFttS8m1aJZkd7absKiR8NwNlCij6SOfYahwWXuluQaLa8XqVEh/Lj5kJbDthLCp4P
A1IFhFU4WyQz748+4bsZghur9WHSwU9mFaRbdsYMp/JaGUzlqrNm3yUYcxPYCBPO+3T5o1dF+hbd
FQ+IEJjuthkV03HrkZ283TDZJWwZSFEXP8HVoRz9nGX+9wM2V2lEozaQ6OeiLl8314i66UOR0iGd
JzC8RHgNCPHtzg08aAJ4TgSH9nWX6sHFDyz/lteyJJHp52tQTBmGiIwBqSYZkKYoJsAy7rtVGQbh
4c6ySxg57uk7smwCQi0YomldGByilhBPLzUIckmNX5RgSZshswiJ+28benX0OyHzyaQhErGQ8x0P
/0UpXif7bVyNJdRHe7Ie2ysF/jd3XABensyU6Rm1bIhBuKf2A3ogjHRhDRcXkECDhYkJkgqyG6VJ
eTTEu6ErGqVI/QEKzZi0v3ozZ8RE2jEWzwMxifVP941uC84ItE1jL/w25ws1UNiiZth+O7fnjDWM
Etk5Vh/YYqSd+kN0nsdEQ8I2KJUFizzVdqtBmQPs9hTbVOatJe4Om+F2VgXNxjPD6l8uLQ8sKUqF
+tFM/yKO9Na5tFXjr9oZKw/80EFLs87+eihthlilJxRAfXSJIGDo0BTCuG+jcnlOnlh3z1tCg/ry
qoj8j31J7xincGrqxCNV768I8TjgGXwqtxlBOZbqGmRn/6ZJZ5JUfXqlzVT0gTg15X1rulJ1TUS/
qdh46sDmLn1UWiuzK+YASLt7VHwPV1pCx8ldpDiUEVUOCOd4X6pG9RLnF9f6L638Eex5IqDpe9sA
aqPHKBB6a8+qUReWLro2nkMB4dOVQmTmB65PUe+RSNBgiJdh+rtAmFm0c3gmQfCnYf0wK8qnnAdi
EAVF6IaWdKGxOXFi6PJAwyZ3G8nNXkp3VOlh0p/ISEhWlmH1vjxGKXuoczZuoMRR8Pss9R/6Saah
cXzZqxX0fDwOAbCcXjRojX2SUVWNOSB9DYdNg3stUWjl00TJlTIumhGTY3VHE7fV/YJyH+TaPvPJ
ZX4vimED0o/TULvK+idz+5fQ11QpeM2lDOjeFpbcUB54ForHXAsFFOpyB6h4iE+x1Xmgt9kZdRWN
VCZDvf/6bbcw728ipJHtuc8Yf6n0s0iIv6a2zIGup+wR8HZq4raP0S3wck1T1tNsZjo6K8ocSGxJ
V0MurxZbsW7fLmAgZnz95g1BQeVB1gPfHuO5Br8q6s4VYr0xZhKCp4uu0UrM1tqlPNxlc9UBLCOo
lBhnljeGR+LGxid2E4pTHvCEqxt4f8JL9q35E2tnBCTKFC5QcsG/Bhb0NaKnNJJPRLz17G00KlEo
ieuYkWGaWSRoqKRAxQrET38uOQiDj4eiKYj/KRsh/L+6MF7Pz8y+ioUR+q4qrQt6xMu0tG3yyvST
kCH5Yw+e/3KcSCUAi0D1wh6t6eQhesKaQwfhfIKQtDF38RvRUVy/mpPI2qYVGEKqKGr/P2pRiVHC
Q7avi2uPgYD1b8Vc7S2IERCi3sGnsKIu4u7s7iy2/DqEVX6Trrt2UndGUWgM54xaJxr0DALn29zT
MZP7K4VLnDJIQgfFPscih14PX6jY0/MpjX53MJzwJtxLP4O5SegmRnbDGDhaiJbsEB3KOB/QsmIU
nABBnoaMDPeijLDpLQZipVdaJ4hMfw2G6VSWnlLURuwhl3r4vP1Ef5HW1HbSjSlPPb2Z/XW0g1PZ
QmgmQPGkipqYcSyQFt+816C26kRdntYd7cQh9NOuILIQ3AahoiplfbCW2VrARYvz/QelCi72tmVy
/IPVLIEO828sydod3kaVrs4A5/2KU/sMwzhxsnowisYhvSku2nwaFURh89igzBK4+UQtLZOMugJi
2jL2F48yDLGfFjiA2BrKN1JLOyB1k5wn539+0xeg3bAGO/Xz6pjZQq0MrIlKRWSDl+Y0N+7GU7KC
lphlMoz6D09o3mGb8IIRgJ8A6EpNWA2RgSJd/OgLMdw7CtYMkgSiYRQTyUFqH+3b8DxIccQoCCJq
lqXuz5UNG6J0iOzztNt1XIHXxp88r1XxdffScBZ3xMB2p+eBCJAxxGZvmV77UZalISwne5AnAeH7
WXegwJ5t1732Z8X+gJrtN1ndjFIHVSoIp3KU10n61gHJoFjcbuDOXoSWnFH+3EXWTFsk/IqoQyem
7dUyynNWR9mFwHGva6zPxgSWKqqeDkGx+EJoYsy65MRtT8YdD+4A3Qsz/VgGlpLn4/EdVBJSH+Tl
2W14lsUQKmjMJ/xiDSa+6UQXSGtcl/OGMNbqOq72O72dlxzKDtxLP18Y54orn3djBKXLe2s8aiGk
ZnuB8ccN7RRCrdEhoypSHGGqKaeStqiOc3Fu31Yw2X1KamLIUwzO+hROGiKbY64r0Ls2XrNzFYYM
r+86u/2heaNfqp8kdLPw4sfIrD3v4/JBw3Lbw6oz993kAfvD/nRAdu2IGla7BQXd8l7bpMK1qFbC
56l879150DuJUXckzh/t8yZG7AT6p3LpDVsGIQIAALwYgohhS0g2Po9WcN2YB5gKoEIv8k6kwg0O
YbeTXTkawLmYLRJEUqf9I66SxuHjShZqEnb3wcIUPUlHNnmi19aKSNpgZyrhzoONVXqPNjBx2y+5
VAbZpUMeI4dBREWnylHW1nnKMsuf//mDDhyQD2C1iiebiLz9RNlsmidKdN5ulwGCDhXLtJGhAVNO
R5jWersojc400msj0xVLv3fjy6VrMh6XGBzbNfbM49zQ8n+xC8c+9B+sOe7O6r3/AY9vgzGnVM6B
L+KWwFwsQzGl7c46sPb294WxqIXJGKnYMCeuzK6VLOp+kTfg7gpQRjSs9z/GQt9WEakCn5wVwv+9
X6L653B15Pa7XEDPauNC30Ar7Y0HvVFHtblD+LsX6ku9xJig+i7QeBsRa6rUgE05d3P3GRtKEXWL
K9fc40m9sW4LFD2fQLLgz6QWCwCqTfcaFA+GaXebRAZlCADKYUaeUCK9bB99ipKMiks+YHPEtB+f
tAyoLydwdSwpKIfJ3RFiBAkrdHto7DeCIqLGzl8MOs+HP2U2j8ZV8aDkvr48nyIy1H+Z7UQwrBm5
dSrbn8s5iaxzzOkJxZjzLQairZPiFpwebe0yc0yKci/jQVEzRxOxmIBA+bEN/rfaV2ly+qRU0zqV
iHvazlyw1ObQnq4dBz8+3MJjB67lEDq2Tsqn/o41+fzYNujDJf9EDahHLU+YsewmkIAoKS4N6W72
WsgIFjmVzAvRZuuFCCjt1OT1BQkeW+HfHwOjKh8p/PmMYbLvu0WKFtyrDKUXES/x4fuJkm9hWJrW
fODYObpri08IEtu/ODII0FDowYdX3j8Zmpu8jtPmWxuEsqOCcfo86lN8+XDai2Xc6YTJNmFCwa14
6OmNWBEanM+4luE3VHX6NdrRViZ6KCuE4nO9k6TsAWeMgyB9fmY83hfFPiB7gH4oQ7kThfEJQOh8
RQ8Ai+qsQad5R1eR9SWghIC/96jvVRglEfVQ/E52ieLMhD+yq8/7x9PpdvGGMtU3/UCXAroO3P+P
UCKlsdrj6wSsfO/uDKr2Xs0qqhN03feuyYQF5oBamgX4q9J1OQHjhGL2kPxL0lL9WwLzcdEAqw/t
ShKJwxnwTMkpivODvHXFKni7j9CZOXd6O+zUmeITO83xfryeOsxjx18rk8g/Yqa8I/mMIIuO0Z/Q
PjzhLmBRPHCCAwi25aVygmiPCf0JaHHnfFYazn3syOIWYUSySk5CY3x5HDqORmGn+HO4pk7LTsfC
ue+gmJ1XwOU5FQeXlJewHDYhoFpcXjLiuJM+w1f9wvupMosXpla2OKMClUO4uTWl2tGw/W8PoASy
+akK4GPRQdbXOX4UYVyjtITtrgkYHSoutdg9WYe7Dp7vLnKPzDS5R6KaytIf70thKEKddh/5vaC/
PbDxBEJWRAXJcUk++3SbnvD8CMTKyEfZrAkAWqf6zP2imZAkm3Lbma3ttYEKTw2RpkJNhnsZtGmz
oF0wSrUk1mSGvl2eOe+dQFCIEh8FPb5XMTzHyWya+Sp+XgOSFysO8FEjSMUNB8jVtfiHEUSYWzLR
W8UEXP7+DXJkCOtWEDGtTvMUgfOvSLrzx368D8N1Wppr4cY+kNkli0jx1Ozlb4A2xeAXfy/soZ4F
P/GsWpEbdEmMfCzytMYeVIu0wgOQ4fkhePQ6khBuupBijDRLS2VOfcj8lkZTe/4hsmKZKRyGUL3Q
FqRZxrUlGKwWjH141jDGiZiPOVDVhSRXRmrkKPYhUhk2Q7LVTZROJdSrItlqws26z1Yz7y426o4g
7ijRFLmPV8fGdlc38O7d8gdyV0/973l44oFrRj9IEsLpi/YJw2Wv7Q3OF8fqC5dzoy8yk4uK6qBQ
mddT4CxMIjAg/bhbPGu8Vr9EPf9DZSRqfLd2hH+/H+uKXjIdyiyxfHYW+sI8EpiWu9nYCcn+KkCU
szjxDLkNDJ47fyrW4u/ngGIMTIAgSzwedmCtv3QyLPD6D892ouR68UPfG2QvQWkyFR2VQ4oIyhGe
VFqENWn4oVBM3r69T1KW6pGv1fZBwHmWUnRNcqyY8VTauV1GJ/R9aknpdvpr9BSpeXRZaT+NfBSi
YowqT1PMgASfEd/7rtq7LXXLVIIf9IhnWBGADUpcdxoZuWtC+smQxV6CClDDESm895Kj89pDAzNQ
mp4TnWdBTNosB5eYaN1nuQazv7Kq+lo9U1sQt5l3dYOm1q6SQBsVHzLj/xCWrVm8TrzC+Ys/y3w2
wa+jKrQIUSa7dzvBtqc92uKTSBJyt0R0Wg3wwTq7PjJMzwLsNh6NjOvP4cAMb6dIo4e+Eg5DMclM
U5syenlIeP+kUuJvemKqKwornxiJ6EYI8wIU854mPZtVcc8yyoqctkhA+KAl55RfXdi9GDAlm3Ky
eYICJMSsIZ9590piUjkZXLIBulerrZW3FpHjNyW3/K+520gpcFGkAmxxgq+DY5cfaMCSxdFN5nNA
HGvFFa+Z0N2k8HbUQ3VLwjk/brT9MyzT+HeuUiXab99AXzKs0mS3tjM6Aou8dMajau4w4jBbOXPi
qbFbVMoAo8UlHXlTrR/iBGWFMYMBSwJfWv0Uv+Tqbp3lRPd2cgAYvzCsEd4FS7waQMeOwI0ed4Th
Jqxlfzm/1X7Tn+yhU94O3lLswp9SjfP3uWbTIe0GeAB1b4f4Vj3bp1tgmnkm2bwg4r3PvF6Q9Ecv
mH9vDFWltRzf9pE4V1CKNcmD9+m0zHGP/1SxlcPA6S0+vOLcssyjWsV1a8lkIlMJlJbWoWIpSqPM
JeFEjRACTtt58zWJC1/PoyRhC9von1EulJ4BftnqJ4wO7RiAhYkAuvND5gQADXlMGbgxuZfwgDTJ
4Hzr7R+l3Y9Q/7xd71DWLIFzQUsHlRSDpYUwthAEvCayaC82vWZgmQ13XLa0VBk1EOEIIhvV1b9w
2IiTxn18hP4pd5EtAFqdvzkV+nCcqyqrqC28LlNA+A120J0v9pzNbZ/AVEtEEaHp58blqzkTLPOF
4yw4Ogwd3FPnvw6wg2huGqZPZZLPUmJXlYwedPCvhXnvAWbrCEruIr6hbJtbgs/0A1qA2Vg8s4pp
ksrbQs/elNEQnl5ixwQpUFeGREZijefjBb1STakKfoawrqNQC4HCGl17ptPH/8OfllKlZRKn5rMz
5gNgNkr2YnonKu8zbEatZwwDemQTkDx0A4NgZE2uGHWKvqebbALPXDp57MOaNo6oy8DZY2/UUXYJ
RObz9En6qzAQbvgkq7hKyYc4MpDf/7TsCmoe4JB2xBWmKmmCvQpXi1vrcTwd8ZY2JOQeW97AX/F/
p6OBfCahNWqYzqNf6XbznTXurIIqasbWBKV9RC8Xt+s/ARSrlpsBvFuapnSE4D2pHHhnP49NAGHS
fqO8Ozz7B/PPSx7fe3988ur3kN6rs2kepL0GgaNYz/CCw/e4cxIUMqIMWvnf6GFTNJxtCFBF1EaI
graXFtgoCSL0VJfs/kl+Wo/7PK6VG84n6QhO8ukojQvAGkCEu283o5oilhm3L9nq7y0MgaDZ1Z2Y
YO+Dm2YmdCr/0O9aNz66hChJpfGUkhC5bZQ0S5TyyfW0a04niCDzJ/SDLKlHllhaCDCYQsd7FGmI
+eP/7lDK3mHEk7VpYwtQ97pRJKRJRNJcNOo1w8SlWAsAm/D78YbYx2t4k1xIap6uh/A/I2CvWwr5
AA9g/1RZ8fsfcQvmo8zatVcQdKxfjjmb55WaLwEaibfLopHx6sUHptSShfdGdKSLsS8aeVZKa1a8
SkTyisom1N4kecMEyiJxVBCoOTxCr4XqXPkVgD2M0v3aLHPUtsygLmOx6oVWx/J+qjpE+1SbhZyu
rmzbYoPYV+7eSLJqOyQN4yPlVyD5CtKqxEEVZQrtCCeRVCtryH1J/h9CrWmdzNy2e3Nlp5W+TUYv
jvnq6qw6cZrQPjJvfYttEGHVgH/BMHyHchLVvetLqxGyPgKcj9wVAMNFzd+oSoULRUMC/IXKBhWr
WcGdbdnU3JuvgJW6I6RDlkVF9JmJmjueuiq1mJGaXzZhMcEaJURIn+IgmqPBgvHdCclywnudNp0s
NM9uPAeyVp0ozVxmHHWHzj/92Zz9sl+DKl7FrPtv3Y06OB+cQ3aAPc+89pAMPDjL3bhqsloGN966
LU6VK8I9CwbBrhkRrq7M94KlD0sFVwVqPEbBZq041DhWOjQWq919JJd4r9StKabz54eO0xy+v546
thX9erEmYpmK1or8PUDpbbYunvvc0wMeW9hn43L41IlHCb9pfp8r0ZjiIp6In6fKcQD18jizNGSA
KKl98yDLRHxUdQZNZ7kvAI1aJADqHT25H3PpiIrGihaN5bYsZ/2WqMusCcNo2BvHw8tt7baW6t9v
hj1Wbegljbl8zmQngMcOQxTlH0i0cUKkoPxpumzH5WOrmaljye26yTIkKSYGv2Gkq+36qcXcPtcV
rx5cjPyqaaJwzHrOvGdihBK+4IyqW3ktL8S0qECT+9jYAoPyxFmeRNuau2NcgJVdeotdZzzjKFnO
l5TjtUufagtaEcys+4MgapSls+wXa+Ttb+Al7Sn4p0JM1O6JH5jE93LSB+ME8E4ZyE9tbGIDFdhS
6U5Rtx4puqtdNJl8iwj5SLsJxEN0YPo7LLU33b89YuNBuPIwRM7BgffwJDmDGEVXI6oDXaBIpbyV
KMb1BIdXSujht1UatxU/DjV//ntRJr7Jwcnq9OBxO8AUFPv1C59z4Ud0bo71vMeaQHvy58SLr7tw
WKylsjGXVT2jLcyFXSGHkTBI5gMua+881ByhVycnH2gTwsSEvU1krPZ8lYtfIXYm1hD/4qS1nUKf
DE6STBl7q+fQ/UQfLC5Jvm4GXx+adwpn4qcvivN1LKLXQer55q7bLj+dAEPAyv7hnE1lI1iIbKOq
wunOTKK/DDzjOJy1Oi0mzrFYNLAXYk8Nex/+UJRsPYK+1NHvyfGyQX2gsWyuOTsr9Xt/vg7X0GDc
+08ERIBU7zs2NGBNQsizYyxfXQ1sqLKN21WQ3CRAaPM917aEUI//k4zb6fPKTKpXRV3iI1+BTR89
FySpGDz2kPd1MFa+sGeAAJ+HkrPxF0iF1dukTn1sQsKrCnqDFW2uBOdZ5Fu1gmLn09/o+wBor0UL
kgCinEKeDbsNuz9yzYVYjAAZPyRiJDxOzlfsJf8o3zDqxDrz7BXdspxVGqqBq9OCEdLzkbsLOD/s
yxq7cIKu5/0C5FTgmWsyE9AfbC6vCQx33scSgwRnIVXMuU/ZEYjnbtJtxQqIjUnAhapa1DjpIJ/R
d5GSdBrMJ/fMPZwQUUiJXLn0lxp+W+F0RXv4DLvFwWgvcmDpEi6+pJ9GAmNj+MjMhEEZgX4y6tfL
lYmUG5xTsv2MLIHGYYhjpPRwmEnXJawdYHrul5/E2h5n1Z6ceIrtEgHJJuOnMM+o0C1WNRsyxbeZ
X4pL1puouqSBGfDyAXVUqcBwCzlQfgaCNjqsa0Sh2Sx9AdtbU/SGSDjwwN9wYNTBJdoNY2mZ++fk
hg1ViYOLtGBRoLvTMZ91lJqOIUxyBCzjKAeiVD13152OkA+unWdrDXPCULbwTq5xQjqqntoK5hQ2
//AXIHA+wKuyzhz5c9YYi63/Uw01Q1ZOZ3lYK1+fCcCI9BYy5D+9EiUshKXuX5Y9Z/yEHlvPakDz
5jBO9RtdAV4c1cG0AWqmX4WHS+mInpnh4zAJRz1YxPxT5u9US2zX6Cr1tuHr4BX1nr+ifvCHqYoE
j5tSg8+RZGjsyET+EPedCFcHcO8aWJahM1quM0FgHiMUxQLzqRjei7FXiCA8PWtPGPR5VYMn22wM
/80KuExMy9cS9raKjYX5F4Mxt8Oq2d86g63Lghp7Cz7icKfIpRz6VDrgSfH6I3FkSRGCSyZHQmtz
aFaf87SnQ6wXxpPyEBn/5dtw2mx2nN3mOKUoW6Im/dwmxuxwMYzNFEjPRf1jZmyk8nuZInh9hdg+
p8BrSowFRNQg9vbz03Q1aacChrJRQO2KOrr/qshCrpr+ypj7KB0bdPLkd1nOFDCuN5e8ZCax2Xs8
yE+ntahJMe7kCUrZSijOiSjvVjmiN4DJ0MoBHvljto75UwAdqppxmwPQzvVKURR242a9KTxhcMQ2
5gJyuo0gBsNLGi60dLusgMt4cWgVK6yoTD3FbovuEk6ukkIQ97i3RujXEywOywiEwJqxZG6G+9FF
aE+Ba9qixel8lv0DtFk3GpSXVphs0HuZqr1Lh5etC8i7vxZW/Rl7sGitlxuZaGox5jtcny5d8AMs
EFJoTops++xIUcfbFEtGvmIavJ7cnn1TzvuiDBCIyzTh1T5JNm4bmw/W/KuVqbXh4WICGarJQnwN
zBD+/qZ32O4e56Nppe8hp518LqEIpQdtYhrL/NRplA7/glUlk2+H2F+2HVG9PcXz8prThRJ3biql
vKuBf9jXkIJq3uVNdaYnSYdEB/cDkTIXaqSx/PqzTBbub7wJpHGFshf1CgIemGUdoaV53CRvAGnk
kbUvvW0sk+G3tAglZccWpTiTkRfwkDRtGRTdSkmoxXaMw4fFgK/AX5VP6/SEiHKZv52Mlap1/TQ0
KgCO9vQGNFKfHfRYdBRf3ECMIZ0Ix6Q2heoZdUrgpEq6OFO2FbKw132Hy+tg5nckwoVht8WasC1r
L9HhVuotpds8UlPODox9fsQSPN9/hxba9Mw6IvBQMS0ahVg8JIa9TmRCK3h5brNhGtvUIAyyrD0v
P+BRYfX/eOGR9+eqeehnPzFSh+28fBpkbMCpuPtzdgBImmRVzQwadi7cTv/73qRUNWWldLlIv27D
wc67FE6miBz3ZITWp8WB/2Afqo4J/pkzyvyYO4vVfX4HhRkgony6Py44chqDMhF5RypBPmPlzL3d
0DxuPxLeTcooCSbb7vHnSnhIgq1JD+pTKhZ82GOiiWUYQcG1Whh+XOSbJbh/AHFOKYrgkML1/Skv
46bBaXgVS0uC1lVUXYXqOVwppUgkrwrybLwco3e2tCjTQz1YNPPanVLfes0PYXJlthdoXUVN+K5M
Da28O5K6U9I2NJy4aRshoEFedkR2rspyh7u3UYJb2Pa2tG+S2wPitGG9BOfY2SUWJAEGMn1PEVW/
LAhNMvoIA+b05rJWNXTqnT78N2YRTy+KImXJ11RGEx8S3W9zPVKl0EvTlKq3ld3mxGT8cn/lilGm
Quw37osZblEyfP5yGCK5aH6doljGIsHd2KNOBMLeVqbsxpccuhh+ZWCZKMJG8UGwsRir4QReq0q+
K3XZ3Sz6sJBOSwVuvIHWG7FlFm2+Lz7vmdr5Khts3YhGk6AtMOLR8whEm6M0rIcNGX5iFSUh4BlL
oI2/a6PVAc1r0B1h2UHodiYwWC4yL14Gajir/fghjDaNBXZ0l55IRTWXuAVahbWHZXzSMuDiTZpg
yL40IPVxzCX8xLKRXobmL1g7MGCg/dPG8kK3Q98W7xus4cmhTxlC/bQ3wGYIl5HQf68MmVQT8AVE
V7vrEItZYEgOgz9tCzmU8rq1vs5OTJ3kHZi7S6IUH8KgRXNSPJ+VMKmtu1wFXYHIDSzp1bVqC/OI
G0iUXyq93MRWPrycrkM0UQwSO8YlAZLN6WbXSPuoBVp7pD5DCuW1jP/0tLRNXvzlNqxuXocvjhLP
lq8IIXLsoLT1uKLIpR7+cWqtySYD/1j4/oJLH5lieduITN8NafcbrmAx1OTcJv6tT7Fx2cbiQRGY
Culmjn1qJLJqHKgmQn6C1G0v1/Qt0z36ruoOCHfRrR+gvry+SDNO78j4GPaRazCSbbSTZpaJq5cc
mHYfm2LZ1AvMvsJU8sDQYAecRwe1WQidLH/dNiTlPRQyTlWx1m1GjYaZNi1gSLLCTh8EJgMAL0CQ
lTPTkZQzKyqzNF2QmHbjrEr/Tl5QrFzRKyDlzpfoLGqEvPm6Enx1Ra5VzDkHibWEWTMjJcvUvOZ0
QhxpU9UMVjLrs97I+oATgcUiAqIwHrbrQFK/Qm3qOh6J1wk+KecJ5lYoktgzxpNO6jIHYb92AGJI
b8miPDH8mQ95pP5eO5Xrbv/IqgigdKRrT5OCj04dZ/xeE9Ts806YVSYXOQJ6qE9/DtovWdv0kIgA
rO1MAy7uqoxBUbdefOAzk4j2Az5nLvX3QmYRqC/vfcThQ2VJEe0PbSwVg77/A84XL5v4WbumInN0
8vQwoeNzKngFn5p7SM9u4cHOj0eD2CqZxpQQj8gp55mObvBO0hsuKyne3cry3pFDQSjNkZTpFxGi
Fq96fsOlcXkG5GHpkNPcwpbGpxBevB5Nr4X5ECEa01Gtp+GIdXo9lLjoMAJD/mTzAz7f0zllmEg1
JlI9EHJEzPTrTbiXE9o/FQroUl7P5H1Onnu04mBZqFbgBNzUKYfrn10T6bhcty2ngWoUOKN0Uqne
enyj9R0VFjkT+m8c7Eqx7r2sCxgWeChiPCwlboOgRYl77J/fco9L72SvxlWIoysEXtppc6uCxEyy
50Ye9TcV04MwWUfzWuqS44my85ogZe2ibooeCS2Sphvgp1IyWRkP1RRuHuOlU3m96dh1d1rq0cur
HWZZcJWJqfdHEf4+6sX53zCQgVxxy3d/+8d1lkobByeBTBHSsZm3K5rBzOnwj7YZugn9B2LRRMlK
u5x1uLGbdz7JM0PTcFXrN3aj8Nco408Z6nRYDtuWUE/6ZQbEDv4AcROoM0srBNUw7/ZMkD+Q19ns
IvKqcXAsq4yisTyNZD3SrY2Hg4DgbuzlB1Cgg19cNGQftxOAKiJE8F7gk5hRghfWYlxf73Bp5Iut
ZUCbpeARx1PI2XIQvBN6RRj9dwn+uWGkV1NmDjApkgMql0pG6cJQ89uv/IZ7tBCTxwg8CJoI24L3
xOW4b/E5XYVM2ppHgcYL8xxydRWfl/thVNd7SEoOy4shRw8IZoF5NlapMJmyVRaLFY24jX2ygkJh
0zGLsgP11NZVlGMXncNkDMT3DHCikcUOtGSuGEYQqaxgBhYz208s5Z2d6qbemadRYYub54X3S+08
F0sTqJNmwSM7kg62saK8J77NjV2n0mT+3jIZSDGsxAFf95evzb7wCr6A6id3Ljvn2k5EDWeL3wN3
MED3uWFAozopbFte13egrS/9CUigPNdKxFSBGgCf2hsLydQ7C3k5PaVlmbnxrBi24Gqrb42wTnhs
uJXHS7qPDRmGHz64Tr5w6pKB1BnRlD319kpAXrbc3IjYnXpM59mcKlYiHmtFKcK44AeUMJ/xLAqK
EZ4YUztSseFlH+W7HUl4Q403MHC41ow2xCdkH6yCqv+C6vUeJLvcY4OCx1cn2YlDjPJht5Fzh5m+
1iSqsjZSi5tgBWZKl0kIBZ3C3FPfQnocVhxpVI45ghk/sbmXCnvZCN6gSgqyJohLR7DZR1HQVrHM
wqkrfeCn27ZdbbFrEqwr2jeHrPpWZwIVtqXsI0fr9GJHQfPBJiMGABsudzQg+4P1GTQiZ8PaCk4l
x1xgaIUovNnaxweWB5IJ/cebV3DlhVWCMVZKutbheyKmiNPLjiqynNSPWDMomMiIy30hX7FJjdtq
TvivmPrcOebZQ++zaYFsvE4WQROskd4+8iZkBQS4nZ4EJWN31GKvJM3kYQVlE8Uhe9y9HlK6/Oh2
jJoYi7n6KE3qx2zeaXWEDboRdeV6BgDN03HmIJkCwthZ1AT3dyo5S962w6h+z1+XplVXAqnyRkHl
LlgHiPTVjSmPFhg1xEOQSl5kEKJT+8chG5jrJwI0jfi7yvWm8buIr48oulCddAvi1HDgrO2Gu2Na
2h+dk+1blStAiNdoth7rFyeswvBUgZVGBu0NKS9782oZb29NUGvj6RggCEF3KCC2Lg5qZqn2lZyH
rRLbGeqnf8iund3Aaz8PVPfkrKCqHuqMfk+eMR4kXnXeDbB2YlE+97QB1FZ16i5vT0+Igbu+RsJN
ork9oBo8r6mDjPfRtH3vxwv6GfylxwynJSbKKvuy7diQCG7q3W7m7vrUnm4bKBS9ttqpISksdLLg
u73iItMKPyCpB+7+dTB2vpF6Dbx6C8FIXvaDfVwGujchwq7AFtRzNT+Ld+XI3/F+tu76Crgy8HxS
lsI+btHAHEE3UadBzvftcs3hNMhiFq8iBeN5E5Vkkh0pkNmCsepiVnABpbThQBJyxUeW8rJ6bUEB
zki5eR5xmu8VlW8b7V1/e0KNCsRGEXCxIph5OJPA+u7HKB63xog4r6nVLMQUJ9grvKM5l15IcoeR
pt2kp6GYE2sgTNZlS+sQ5os4XBM80JgV5q9SEGpy0oz/JG9eZYJ8qAqymDS3yT9CiWR8IV74vGr0
CdDhgeT57qIeDi1w1u+QRoM2V2zgKTiMZd8TyFzz6mqgApfhIEXrCfTx3br9Pos/l1u0CYS0sbf6
+z0KOORGDroEGrJQOK6p7NWhSmy4QIXK+JNMCBHidJuKGLy5eVKaIJTLY6SXOra0ogLwZI7xhVO0
Om/F0PzhUYFceKxotjaQRrJVQHE0FEzOuoEpmW61rMomYFmMW5MEAJlFXXNfP11G2IWpev5YmMzL
gfFe/Cw/0jDzXjzgXyKouqgGFCfqXSBd3NhFteNAc5PpZiYeb3DOhNKSIJYFT/4oZ+meco6l6uD+
d+M/rM59jkI5ftCiMas2zZmSye9f2lrlkfPnmBz8CdEXNwkjbl254UW903QAc24nQulHrzne1GIu
y4G8cDLsQcb62nJJg6qwU7T/skVi2VkzU6oFjvS7zkkhyE30z/Kiqx3OKsK0DCwVsDYX6WaVF1m5
8k6GMQl/OtW6PtfwDrkxMyIh4US4VCT8atpZtGBWmlYuURMC/KGlHTRrPgq3Y64I6ZUx16RTnqYb
p4lOITZeeO+Fi+AK+XeyUgtagaNs0dWTrgr7v47vI1UEG80b52T263VH8em6yaue+e8JyM1a0X7L
2nA1Zz9tEOybmXS+cdG7r1uv3Vexuj0CEfq4QAYfDqNfYuDMqzHomnUc/c4RBq38zzzKonaaN3jY
GH9wcsb505bImpcSWbgRVwIpry+uu0ZntLlbScMKUIdF4VHDhJWplv9ocjgJ1UEI/WzcTKoYAET4
LcQgjQe+ysDmGJzVBE+Ga61ndvv/Pv5MO66ifJJ4OKdcD5SsLYh4Be7mWV8H0c+h+yenaryukIHF
0UVD7fFKE8vJAC6KoSrrKAzwY9J9CGPpFhb5UaRu07Fk3PErUwnkW6gWsIk3esewDMrRCMHl/DMo
ZvtAA7ryv3fVtqky1kjeorweUmGpPzX9DrSY78aLDrIADkF+L23HI/Dp4T8OGjfboc3EuOvLvtg5
8QUqnFN7RgIC9tJM477SadfyHBB6KjWM/VCO6rovTCjNXOM6my2e+DIZMrMxtX15b7gYeAWPPIbc
01JRyYBjzqvibPiDyM38tDaVgrkYeY+shR71LEF9zv+whhU7tn7zxDM/E26Zag3qvGMQQ2yQeihC
nbqBbRE8WJnfULsTnCIqEDIDX4IMBUdmW+zm7ObAwLkjrT7rbv1/hoSCX31CGv1pzMT+CRRXokgC
PoktVRYJVRd+U7Uvze4Jc5X9FnvTDtggow5PHpiocmWZiyMBJRfUf7CV92T98RvJkqwHqRpsoe5e
XXbqxYjmxk4tjvXdzdYHTq9+jH2zfAfinLMSZMP0xiCnWpDbZr2SVUuQz1Rrzsi3RJvClTT87/gs
Rjd+D6gQp4l73QqeGrYPju+3DCg45c0fAEOFADwfbuBN4r2a53cOnJBT1Y93j1VAtUNvhtOJw+b4
AVO1gfigV1uPh1pihkP/ZOW6jxZBpHJMkzB4X2VI/J1RCKe4ZjZwlWzQUB+jSG35TO8P7zux1kKS
Xo8UCFwAC5DvyIu1mSw5p5LKDLiOiGAtTOxib6C4N/qlh33UkXa/bDJ2uKy0v7qUNgDNJJ38ppyP
4J2uksOuHcaQESZDmrxSqXOti3Y6LD4FOCUf3FA9WdjVsWqIWz2IMJQAG7IntB0LrlqbHzPA2JHz
rO9VAQkhnmqIwb/C7dAfj7rsIghRxr0ZiaubonDAYLC1rCLGRb/bzibLHyzyzH0vOSTn2TfDQ3Rg
2+VKLd7c5eIb1uAGiZneOx8S9b5bpAdt20leHZOpwnCsoB3vydsEi7yhhBpCyGX3OXpEezU3CmW+
aU7btPq9xb90Pe+iLn5l96HDtfIYR+mayepHdPsQGnQnvbPxsWxEmQZvJHmKoR+hUNvxYe/tsHtT
EXZOpKsR0KRbbXBtKay0a0q69U0D+K+1KiNKlqpiwfet0annIlBC8s+XHDKBNj4jqRt6AkQe2gnY
/KvWb2gjTV8sbE/bGHVRlPi0ORIHsdGqJEIENZDkbX7ac5FkRt6tvKA85fROR9RzpupnZhato0kH
OqcwUzehrDzV+EHL3VA8p504ch4LLRVeZ91btjFIBCPR4ef61YElniE6nR8gzLKZJFZ85twLlObV
+qudJfhYeg8WC/ejHynSpKFvwEVKW6jtzZo3tzPah22+iISbGE5Jw2ZkQi73Bax+xr8j8CVV4XH6
ig0G0JouBHGF/xJ77YMdRdxSRQebY74FUq47yWERkqGrX7UZNR3gAJ0Njw9uSjuiiiIy+GXf8hW2
SB+x5fZFBCiGBgvQUv5cdmqD7jt9IcnJNITYWYC/wqV9yUl96q2h+wRX19RGahMP0QT5YKCnTc6j
kUixDmDF77GMKyqr+9g61S1NOSBBdoPv9K2regzLpZoS875v2suUDzSzuU6ilSqjOUQJa2VUWM3C
WgHvm4Jdy+rkSfHgels2MtoJHI7Bct/3vAJvxVz7eb/mPW30Jf+FpEkZTG0TXCG30UNCAUFFf5QF
c9alrSKQPih8VhG0trh94c4w4TitbPkLqCmL2bJBnYY4cwsCAdaduIsD2dB7aCI2YmQ31Ij7/Qst
0grPj/oZyOibTA7B1kUx9tF0ptB1W57KGgs76cSRGE5upszQbbyBhypjXn4MmJocEks7YMp1r1+s
EUf1KuXUfXhF9esxT1JKQCFfojvzrGVoAqGac/F0qxcNH0sGa7mLLuTDPqctl/5gYQLCjwdpeLXp
xB6iUOkT3XwDLw++SdCcJha4xhUmI8I8p/o4+PKj40kwKL3H61NK9Dma+J4JWPD7HlBSKQ7vU/BV
lIMTjo8It5lLDGaBO4qIIlYECfOxR7dGSXa7VuJ7rp5lStEHH7ExsTBIOaS4xGAIEkpqPudW+0RH
H17k25P5d89vWcSildvr8PN6To8BVL2PJmEfYDyoh0znjVkDFTvNC1vfaK3/1idO23YrrUUpspyX
+zfYx+hamAypmFY0iCsvswTivU2FXsoqSQnWZPUh1N8KB4Bpe5cndeTdIOEZP25JJMZL0Q3jufPp
9AZBIC0wr2NgFx0vGzo+dWDzn7YiUxIDZG1RbV4hXj8a27UNE+pcg7a70XFBBe9Msw9MB1XkGNTV
/CbyDtO/i26tZ4VRRp0WhAUZyvFfgTTS1oC2+KaGheBGJeyGVwuP5WzMobsxOCYaMdMqfUcSUSwc
DliUOS905Jk8AFAXbLJ+YQTdZGFDl5Vk97DbMrY1EFGVk7dKg9GYfZ/ysLI76jZiyxzm/gr4wXf+
UShywyle0firsVouFNRdE3DenL9arTYm4PPBufeNMQNaEdn/bwzRgRRTKP/1bVvlanK3WSA5+qZD
jE0OIQOEm50OitUAVyxh5tTuJL4/wE0JiLCXbRcCwksNv+z13GJqY3fv6+2kIZu9tmGHXEwJ2DMY
CveAs8tGaVB+yrsULtiSSGPiUDDXStyMmqPiLOufmg2v++DwoIkCxT4U693UvR2ObZ/+IkZ5D8fo
RhL7jJ+7QLvMscI+LMYjHgth7ef04JuzGrb69bo5yAPdnfNavcvOZcVa9Ve3FmXreODjUIYUPUsC
+gDnTx/H43dhzh5tj/a06qIe3R2RNkMurm/7HrHlG8eg1yAuksw5HyRedDDiBeaPM11YMy/17ivD
I3pY/JdJ3KJFBmMNUl/smEa01WmBoZ2g7boDNADSG0vhK9KbFjrzP488J6vCyW/B+eT9MjF4AmWu
32CpAtsbUUPZLtJbxl6GyIiRDkF72CgMARvYduqPCpWOqif6/JxzpggGipt13j4YLD1fHC5O8Dds
AcF4aAjkVGNEN83mZl9iLHNk5xITfof5Fvbns7otMRhj0YnIGEyGpnM1dI200c/uMAfuo/1BLudQ
b+Vbdyglc9+3RYu2xF9kpJFccDI8sRUNg+oXdlttBEM+018gakSEE4J/4PdBN/hW3fge6bqF3vlm
3d/WrIdjcaMCdmtpWPeHGTJUs0I1HlnCjT+NzwGL20gJtoCK+EnYYzFpBMPGk6nCmbZW34Tbxr0y
I9aHFlGjhCmZkflVh6GXlKn5C4wW9cJZqSl2Hj+JvcjMYa//bsnkxZnL2rsHoqu+vnyzZYqGsdu6
PTZtjCVqnXji4vnhSUxfAmexL7XsdnjlSebYy070maq7O/P6uCUsjMhg2GU3JftOkaHcqzd5q54a
dEy1W0lbC+xKHZ+W66QbeAj4QNyyIbCELeh9uvIeNuLHUhWfGgXrJsPQE6el4lulUxwPZXmiSs54
M0AJcLoMsC6enuAbMSnUJZjog7LZFHC8u9MTPhzSHtyI6gLTjTcuDj5sIiAu7NxEXL+uuWsasuyh
Fa9q935oiWTwPcypfbdtCKCE0w/M8VhqS/Pi9+xRYP81YtL0kidfRoY3II6Y1inoSUBDDLyHF3HF
uOZQI9NxsxeXWHgFRtwRPAtA1qgdNtgf0ucsXa5/E8LfwlE4aQI/Gb0UyEMiTo0xtOGLxZ7/jqxj
5qAPFeP9m3J7GqLJOZ6hees9cSiC7nVnhiuUmTDCH7sAOIgr6b/WNd3KlPgGS+S/4PCdf2/tUUan
RNapsf71gEugsfhH4E5QOln6T9y01wnppppUuPZ20AWiobvVQFwV2/zI8OhRN4X+PEJJl9iEvkhN
639bGklqk1jYTtrbhQqP5BLsNFzGjZvDayUlVK99Js8B6gwDhRCgrSvsgLBAa+IN6GeyoUhoD19J
JKfH1jF3IOd/BWfadSK+spmZQG9jpI8nGM2944GqrJImPGwdKhOeB5/D4xwtcojAg5wwWxAXheSA
//XBq0dd1i+WZ5oflHx9ELYMXTerzyytrBnU+mj+tOJAWvW/x1dCKTKosyfPFbypytzq+fI2XhQH
aCq9csnWhy+B7zIqC1mlCv7GG8lL3uFgsOBPXPMspSeKJ5pRf+N5WniDwM/e8v6GtAa/rh4Vet5B
hhyOSHMK0OgXYkKpG35voZn6ZEEe9NrhnwEsl8D8Htxdx4MJL971kUzSCUjpZgdv3twX4S4rOMsm
4+HXIdy5NwGmmiTGjtx2TQMU+wj5SES2VNC4uwi+31FmkHT79l9X66zBW0IbZQrzLDS1erswndlf
pDe8EE8Gq3S9oum9U0ukOdReC9k/MliOHCI8ta30/uI2BuIZmfXkKEL8fKD1f/kha6VDJBeMNS9Q
NueqrjvNk3go2A3J54ek8/v1LZPSXRS1SMy1VKnLOuTEeQ2NoKVpkwWgqgItxUd4+uwVeeCJhCtB
MYElFlJ8T9wRUpAwGqFGklwk6nIzCfI28fDWy7jHd0wEYu+Mcxx/gvNb+5/QlYgkBhCc9pIbd3y3
44BiqSVT8Z+FrmrGGPn4qRmU+p21fUXEQL7MleUo8HO+f6vWYfZYAaqc2u7eCG9qTQNvBaOTtobJ
Z/jphFgJtb2iqQzUwQY/YFdDsqjCXwP4QP96zjfeTOFxFJVRZEeYFqKOPLO+v9ob/oCPrhKgfZSu
EczOI0W4uAddKb54N4tYXj5RM5+0SjXoaIZb8aPkWNeIrpBdJ1ULr4AcXb1/nsLjuXXooLkzLRgg
+FMIANDB/OoGTeM+ZEopeE24KeO+dKZHPMQf8WAyR/A59JI9126o7TyI281wIVIcJmjF10A44oha
2edU2KDrXCGq2a85ugsj38lOQZxg4mI8EmOJaUNz1fO0eptG7v5W+tit6f2+pfdqJL/lEPCQHvgX
v8t7BWEv/ypzoEbIpnN94vgAWkVQnrx4+nFL7JyB43achPuqD/d6jKctetV0XoSWC2YwhKYA+I/s
YlF2IfgArOqDJEHessTKRbhKK0geSp1cev99PcMCMExHFrjxGekMC2+KUSZWnD5KqZrLMWlpEoM1
3nWyZFE8+T3dJmXZpJKSdT0zE5cnFgaRmVk9SI7BxZLA3LUkd3H3+ElY5WYP/IJdR6Mc+W3EDHWr
UotphZAJKhMSbUin6H4qfYYG5YkZ4n/fde5ZdM0oQ8tXT17e/+rqEQ8mwBuwxl/gXhQQfC1GIy7j
f6aAlKYBrf80SIy+oL4m6ri8N8dy35NX2YQzTrPL1cfJwXJVcvs4c7hhJfiXsJbT/MhHldHKJX6x
OC/kBoLxf3JBKkdVddjS6AUGmXJAXTihQTaXHwA7KgH7sOq6ALKpr5q/keIW8iqq9rMk65IuUI8z
bgaLniVy9S58KHq8G4T0jbUTiVa8pP6Kpu1PqGa54kfn57ASPGPKmUfhSvl4yHGJtgfnwmpQcuXe
NqHkZp9XPq1p12vlx2TpAbvV8rpprBGagIlpL7wrd01zS4uWAuRdi3YjLZKM5dAdokOJkXwRe1/O
cvj+qQXwyY5cW6pBhvjLOb5wqqJNyroG07i+mzxLpO0w5sIdCm7x8hH4xxh8/4lGmkRCOym3aUJj
kPe987SX74QsiGTpS0jDqwtR5ibMiRuyrWcpmCpWdJGLrEVhPLUrNAmw0KCBLWXgv0AeWzLjoeVi
0y8/ZWIg/6f0WmCkx3t2sxS0gBeo/UzCxfCfWrsRoqyypJ7lu4BGFjsS6s5FvN+gRcDp+MErGtZ6
jOPoTiiNTugAcX7igGSfPcmgEuwa4d+w31DPTyHOaSWHdNBr4NwDQe4cw7FOE3zt2Q1dinoVKW3j
D7q2g0x9Pr7nIQX1ROJmPDoA89ttRIevX/jh/dO9+c3pVCDACFZFyqPzdEg80VNHbMhXAwwSBtT+
X4qoXPoVStVfiwRVQGblyLv5/tbEYAitHfzNv2TPk/gd+FVV6PyWYstfanCBnQmau4b/gatlXU5d
F7N4gg1cHux37M7j+Qo2dOqYXQxUdbaZb7GT0WEjKJNtUYa2NxYoZiKk1vfEST5laawQyGFTPAvx
TB0HGqvA70ilGrJXaapL4e3/dGBXUTJ7QB1HnMZu4p9GN72qjzNm//ns86XkplkIbysFkPWpVrgD
hAjxR6HXXP56cyZv6VVMRy7ENydBvrpCNMtcfDJ5efezIMkp7bEvI5Tiifr5qLicbjeCDNP7/huQ
8Vd2AvAdSCYFZtE0RkAS0U+DLEmtBLjqCN7FPSm09hRs8Ou/Y5NfIFKuffF4ftPeQK2ccntXPmLW
nF05aRJw/JN/CDEKat51PHZIMDKSEulcz25x+cDNecL+sf79h+23nYW34RXiCNRcaCabA92BQmQ7
fjYv5+TdjOtGBQpOrkVlf7JgjyCYIo2QLluwbAP1zXcUdYgK1Asr4tIb6lYFdR+0bFpC1DRvpSCH
viVXkbjmcPhRXDGNCeLrUl2FW76+RdOnjeKbJWnSf0XD5N/TTWpjbdwAssrnP5HT2QadpLiOpdc2
7+16IwtGLKJR50Uh0KPj9jDr0d//Ku3v0OgwmhBB/Hkc7J2yIyDFrrYffuiqxamqueEoL8y6VMcc
F0qcbtVf0qNBEaPj9nhR8gC2Ea1sQ+PZJHi1AH5rvYXuBh/SMglgMjPHSBzNFRL/z4taJq+dhxID
P6BoZjYuD2eAu0C3s5PS+zR8SsWIgTbG5RAMZ7ofOCVMKo1Sn0ZUdZVJ2xFzImKEcvZWEy5P+LKo
J0VKGI+JwO6QpCUaLg99wYxBTqYTZDnF7aCGknzq7yeNIa2HMFj3pelGqQnJ0X42hyBJfa5g/Ofo
U6a/YnNYSJGDVxKP4y4kznwmiD7wyIokUb3l+oF40/kq55cJvTf+Lq2ydxFX71fZnZe8lYdUj/TM
+2CDkqaGHoVzmS5XILw5Ir1KubiU6r0cq9k2QkFhAa4/U36OjCUdQs6ghFIQVqsTAAup+PRDZ9eh
ZjFtNPTy6gk3CN6YXzpzMIJrJA1TL6wCRTQGeTvoO0VfmkyZlHX1J4ueBLwQL0T6RuA8d6f6JEJb
NPh694QvidOErtDGpXx72CvX/dHy0/8/q7stNH4F8tSbfmiyYFwqSBDzGSweYZYdw0IXMPlsSZK1
H2KMHCZ8CCQXEYe0bClzY0kartQNvEZoPzvYiYji6ttC3/v4i/fXOYAHKRlgmlG/Ghc7RZgdm+6q
QkS1uT1gyVFZpraABEweRAFvrb+BKSx6LHOXsfDTMZJpi6x6xKzajKMN33sg/otooSoYoHPo9EMR
rcq765xRU/0wCEZis0qTbOCf5SJwVLd8v6PjA7pnPRFgsW2Sk0mizkdLm8q0KYDbSvcJjOvII0ky
Nv5L9/zZH8sMgupxkXrqimvXWgplDCnFAQYT16mpE67rtA3k5J4EUmOToIu+TDyxs4OQHUVj8UMa
FAk74faNT8+z4nKc7vpDYpZMZWoQ1AU45i2Ss+89hxmyzz/mM2C2IUZrEBJTgvczumGDgnii8MuK
60ZA9/ORtZdlCB2Yb2grNjcQ5umBAPesSzOA4ke1M6PSKt03YNRq7k4wio9fEiYiLHsRX9d6bQYo
deATr+FyBM7rdtdhPaVppq7qe1/Kq6apilrNT+OhtPHVvIN6M20xopxnvFt2+JJJPHGT95//LD3p
bomTg3b/XOl0XtwnvLohLWkjLsj0VsRGZUsbp6nwDwD8IGa9U6wNXVF8f4BdIZnjEo4kAA8BtOhj
Z7hESgV8gozJVQ2uEMjA9Yq1lPMOgkGxwPd8EUFWs2GtnlfmkVhpC5XddxT5jlGnbP3ugKI0ESX3
1GvNr/dw0yJgQu/8FEOAsxYWZL2CBfTUnbBPYk7C/DJwNb0UMse4GYk9/k7w4NTba8NfRJH4EgaQ
hzZ91+hTTkDRsGMuvEJqwRdiYVILmBr0DqMe/lMusvjP1UaUt/g0e8Al8vCGAFd8kuFGitRC5OMw
ypveIA6cywXnDXDVJTsn+Qf3Jo/8TrRIfGdMEQYKGRUSVLPfnimz1ZRazKdLhvQN7fh/vbMFKSMN
uoJjTAO9k9ivhdeuKBBhZkDJApaS3Cx0HxRXwn5cbgxH3qJhwL2M6pQvUDc4YmBTDIyAQV6wY8gr
pXGecB/5R17wUIkUxDeMuFCQPoJFMnJt3zeDoDjKVtrZgaDbOVUz0+/uEnMGmaLq5E2UhYIPXb+R
3oRCx24C7uWxWW+Vds56PVkm1D4IgiI/jPLqtnA+YlFlUmt54brg+MDmGk5mrtToMCM96Ujebs+t
OvdjIMmDtq/kJ/kWKXgnKrDoVgSjCBXWuNoAKIqsZUDrUTjeU1eCH0lJHkLcfNrczta7EmYqwbRS
Zzt5e+CSQqD/vOH8EJ41rjsceZcAsNLb29n6T8hcH/1vjBCPjjt67bVXpayDzFiqMJNNRUn4Z8mU
GTDdu5hyHyIg95e4IsdDWY6YChs6T4ueSxoPMv8adbg054xN/Ia1Q7FXOPBtKT71gYVBnSrNdnnv
BIl1k2bSZeUNUHUH/aJ+FNwkP2MG5OHVUM1gdzRnPNSi6cJWx0dDrXWyg+vhIgQaCp2arPXpsBQt
15ceFk0XuBeMLmgy75reYBz6/U8gsnmdBPxNvMhsEgXEbKLYchNhncn4HCs/fP7B6493Xvz+eVDf
b0zY4t9arp2Kzw0U7xjgmjtafkCtmzvoWEijmO6crM6symyFkUlC09SpaqHerKjhq+tM/spTY2rY
URp+ewXN2wwgNbKWPhUOstAtKImgQIiHGhDIGMHy9+WCi4mnBpnWKt4uDG6Vu6MAkq03378C2cEJ
X7S+yilWn0MtqWvhAAEtjtH7omwJlNDGSE9RCUSeAjZanSuVc9LmYp5lisz6g5aisWePoiJGETUK
6dzfGuCaL6KEZrCF4KheKF8Nnfv2gUNkLsdsHT2FMGLyPR4eHvV4NfHsGxUnUq1coNgqvCpymb8y
DsEZTxSFjjuAlzxU0XqibMFwyGdG3FHC/4NkuxPkWZFJ5lv68ChC29mLjcT5xJw3zhs7y5x4rmK2
Xr48n4QZm7osbH4CtMGki+osc/aQlRE73AH4MEzOKBvzjXEf6aEtuQRfrszrQqjqVDR14W5yet3l
WiVwB6sRlTE2VxMZYrjgjedX5trrZ8LcEhNRgvLQPR2FvkxH4J+I82IOwcPF9RilAAN/i0sQU6zU
Rte/cvSSsrtCDU4hEKjbxhDPXqhY4VpHTKkWSN8U1kuaaiw0hzgkttEQmDt6RpM1LkG3CSx7B/Bi
yxLattw/gOCuL7um0q2ssgeYrotLqqm95GH2ujdREsZpliIRm0FLtrbuEnz9Ac+mBBGIeN4qcFzX
A/urBkCMv3JwbpF/MxpfzUizjIXleDSc5OAvpneaPASVyUTtwX2wqKvkeDvAv8AzvvrDCyJFJQVG
z/QJ1jzqRkcUCVW6ITsE6W4rWWZJsKqzAVcIK10UXseNTN4fn8DILtkSjhUQRk7btz2DLAnDqNBv
S48iZ4AKDpcHKkeh8wlqHD9vL4LLzUsgzTKDdbQWcE9VbA8t1uDqQDyVM20vaKM3UNyckOy/UxD/
Vz8sLBMRlwp+g2WelYzpE8rY3xByOm7TyTabi/LDfp/hg6ld0Gi3mVBAFJXGcUJWjiesMRfnoa8z
mL5qs0eC++3lfRzn3F1tGG6GAavj6AVWXANY7HY2dgThXKlwoiTOtItOS6AOqMOm2LxMauM+mPMl
6JZ6EODqz1ptESFbKAr14HhiDXr5WeBpXIdiroItrFnvEe94AucytIX8qt0bkyOoplu/A3BN/9aB
I1Fp2JSqroNPhfZ8+G4LLzzFbXe5m93aHyTf+4EDp4Q9gp4iuC9Cm3fPE9VZMeeNakJ3k//US/oT
7lA+CU0Xp7OhKiln4GDAX++m8Fglfj6LVkfnMBY+HND2aNvMnD0a/+Y5C693qhWhzzF3uGq3ameE
MSts1ygxeaNWSW2qpidm/ZTp3vzT14PHT2eRqMt2jYJE9ldZZqXfuCDSQGJS3BjBRGgWc+lpPD44
wyxraFfxOSL2BDjVHFsKIGa7as6ZH5hi0aLFX9rWn0jTXMQ/4G40IaDp/1buMN2SYGG7mmv0qY69
ueDRKirMEMguO2KAxtbddUOZvAwXO++qAeU4DJFziIVs27EIAXuoyjxSKQ4WUzGX3SQ3gvjA1ITw
Gi6AEhftYkGzniRWGdvs9x81ItNZ7oeY3sOnliSo/6ZCex7rf89+2sYZurT/sEdLv8qGX5UKgo8o
UAzZZ/D9vGGJAO+02kb/pA0P3FQOgBk5kC10oGMW1ntWLvQ2g6YBIGGlnCqMQSSbGuPz+shYnosv
RAMnrJ4uiECxheKacVA4geivSM9eftUEPl+Jl3qKtGnrP7RThkJAGxSsSrUqK9VLQIckYSuhLCit
jt14Are8TKI06QKfKBkhGCZ3aISMbY04TlCr713o1fnedm3t+ATuti9CO58SbrNhBChzl5eiybWK
WJ6BPQizsQxHmfe37zMIvOrhq6dLITpdtx299qH9sUzTus0jA54DKOmfn7uXsGakTbiHUydfcK2+
uup4X/c+VUgHKQNeaKZKW3KpA1xTfNNhvQyiFJq4P23pirT5ezXo4Z7k3SeIBUZPI3dap/Ymeg3x
SQmiuwDEd9VZGaE5XdQGVEbOUQsw/pW/frprpuq7w4t3dQukZc738SHS0OqETw4vCi0dvJSbBR7A
TVjojFH1d9oF5+YK36clY3uiOHOfW7r4EMNUhcbs+oAVlWQbcFdmon41V+0SYYXXZOUuOYWZzTSz
XVLsFdWRMoLrAwDyIctRro+SFd7YaTk9xbXTrMH9Dd1j0GF5B08xmR0iOpqBTH7JLjEWLmf2wKuL
EEBjrC2HY8PGveoI4oAWlf1K6x3pl9LAHiwEgurSTTFt/xXor9A253bFiBIBvNwYvreT/zhd8Gjm
8wJvNaaD1Nkdbpq13GIEzse3YtNzEO1DUutBWVYGW50hSyEiYWbkNngv5OirB5bMYNvmz3Pp11c8
Tpu0F4kRADFC876vB8H+nsp5UOhSFhlxkKX7PoVPd2XZGE1w9wjr0mCFU1nsHkf/o2Q28TC6tdTs
JX4knlYffOXlxMyaN42VnUJ9ypINEy7OSJOZ1c2CtEgIKhtqX/FF8DSyAAsCHM8ZJ9owT8Wwb7hZ
9doHx/kc5KGUBjpjWOErbCCDLoyjXqZuPVcbrXkHuljLTplFhtzSTFQhwUZTvoGw/j8sN+ekUpW3
JCqD8OBcmMOsSjdUZYXiDp4NS1Mhi/WsN85GQUjmYPCF4qodgc6lMdgKQkcb/P+fUjOfK/k7FRZt
toJBimazgExnzbL4blAHStGFGiWhMrEdZhD/8MO6EL5ewQZ3ONWACGPUCmMfelDGkziEbugkZH7e
xHuBu3jrRFElZosJnfcW+iKURychZOpJMCTcToRYjTCXIsn/w6RCSEiLaGCHGVOtLIHZwCSD/bpq
pfXr5CaBJtmLlmImxrmu+3IjQDzscwP3SKpMEUD4Xfk3t9T7O8XEIm1QlZ9BiQB0FGjEFqwPJZAt
ThVJMKGgSL7ATmoKgCgRZ+4oEVCqWJOsFeSRu52+LG03AQ3Vd+vvT72s4Xon86cyYu/En0osmP37
A9S8useD1igNOJeTLX0QIru7QmMSFpt48wl1jzFD7oAWsPuUE6AFEUd/jGkChcCFBgiadE4/9Ix/
bGO1KKU7PufgMI+ysEQvDEOLz60ABfUvlKzYKa/posRrhCC8FgBMNXbeAOeMyCUPqb8tjjkMnvI2
8I4ItMifTzMV5gOxktIcnZw9+AfmXDnOR9NG53Sjd2y/KU22dRCZofJX4mQaqaClr17KYlfmkm3P
FFIzkeIM56BzfrjMVefxneQzWN7eNgDDRfcurTOelIDR4YMcDXUgWx2mu5d2FuJxqfcnYMxMc3h2
6C+2MMPxRzpzHMxffwy9GdsMi0Y3CtYnallbKwK/ZNPNLkl3jQGaPE4IFQIJ1qqTSyAOwfctfRIE
xv+lWZEq4QDdCpZb8t8AbANG5a+Jz28zTQyX2Txo+FxfmKmAv8nAoUHv36coS8dEJIOcsgp6hkUN
mU7tyllhHDX7SC5OZuXbO2qAw2+oatWLy2HidSYqmsFLeKq39zJbNxjr6nykY8l+qAGo7lAhjSIy
CWdefPZ5Kqmll0M2jh32PKifR2h37NaprqdIJ/3bxNP1DeIQpNQ6/YVbZJDvo9BeY+q/Ot16ph7e
75U7ebmwh5mNv6BM3NfsuJUg0fokMlpIHnEAIulrvYX9YUIldQfT8imtrQzi6eEHPdVXSREQeKiZ
eE7WhB1mllini2LCI8knwumvuyP+AeDZ3TNk+YwT4oyJbYHTQjY77FRPWoQwgNLCCTsX8aTmRTdI
rMAzUhsxqxJL6O0EeTq4ASfpchyRt2FeQmbgSO5KkPRx4OB9klspjmw3LSw5dOLgAoqNXv7Be5+s
1h9NVOa7qXgZXtih0/AktSfCA8C9ZylxYKZbxQJEcVFPFSWoebnAu6vHCHCxECvK4Sg1sPV22ifO
Q8aeAF25TFaPYMr4D2Az4OMpkC4Wpe0B+Bf2uEBswU4WKQCztumvOAU1l2P27FM2RoLAg2I//Gdy
YdNtfBd9ETeCHCUnc+bPdA3n8If+WMaDOlwGREpuxr8gEko3sRPlJ7uQRw/HnWOrvs41o1s7ljvw
Z8bbwyGaCT7pYQEzZVcvSNQws/++R46vyh8E2Lmzw6E9RSxG1RRUJePPVHSCEnmKFPaXQb8Qe1Jo
Bgz9KZnMjfmt+3A74rMfkNapLzCAbxkYo808tW8IvbWvGEFXjf2xPZPRcrhPEbLo+742AR7YYSn1
5VWwrNm9N9JG/FLjHTq71V9qIjJZHrUoXsmm8x73GIE4NOBftzpCDYTKm+Mgkjqkd0nePA2vQ+ge
5Bh9GwvcOzA5xskOunZQ9Nel4/HPTA4EuU5yDSXVls0s6690LGpF94Bbc/OA7yrv/tsxHXL2YHNo
o67ghk/EzMPhLi14Zm3+ejZpPVb3C4I2cv6NpwD8LiaHJRyf9Iv8Za+EpYFGZ+5+wCVkoLbrbYNM
y5ZEVt3dYoMGpmU53ZJMgthd6u3hWbDgaOJ6zpTbzks5Id7geieGE6g8e8VTi3LOgFx5lY/d1yqq
kLMvg7osIgON6EtHcyMEQcSM5l9fWCwzbF2ExFHLccLK6z3/+/s0P4LydN9/2e9g8HquWV5rdh+i
8E9hwn5O6/j4m/j4j/tlOJTPphmYEw+icv6cZOAaKwFt/OcFT6QGokDkPcqSOWVtOFAYr3K4eeuu
+9+9aBz76nahYA2VxTvXKtSWbD8itR1cmESkjd2HsnZmnrVIPc6A7rkd9dchIx+LgHVDVDRA6qM0
XUq2INTuJFFbLHhKXeeXj7cPLE+FxjHpkkxGm+MK+2fxUYqmhe+bFrS/gucm1HUYS+TgL8LH4aQs
pSS5nXwj17XsTNSO5o3URqKUcLIek+pDfUYq+8YfPWE9+D/7WS0fefyAXArflaUtFVSDqj5bA6Y0
OY451MURDkQIJhkJ8PCEL69Mry1f4Ync6W02ZWUKWGgcrCNiilYlJQsu6y2wCQ7J/OTB/bn1ynUI
QJh431D4yvU0CMZ5BPlEThU5atgv/FY+oX0RexHFGdBKuFiK7+ocy1j8tf9qaSX0RCGBMwADQ0zU
Y4O7YZx2IV1jfzxB+zfF4QsyzMwbJY0ZEey3vm4Ha1gtwCEaWM5J4dogcZhlGgAo1DWxK9RVYqwV
7Gi85JAseWpv0BU8jTYFtXk3JRm6j8y6phaupQYlTLCyrTQTAvGbvmwOQwTxvU24iv8ib1Z7ETb8
GyVTbuE5gfB5G86Erp/TSxhOoiesEBczMe5W+NNgXOMWOx39GoK40xQIOrYaEgL/y3/lGelSseRJ
+KH7ErjrgDGjkqlZY3RNYHSia7QQrzCEGQkyLoODhXYW2UoAzjUfjSRtXJUojYu9Gtqeo3YPaEVJ
un7/s5SNWcTQxKwDM0iY4ap1iL7ESbn43lLOFWeLWozvGVabPCWaml/QDEbSH3h1btyjKzmI/xOV
j5vJi0Yqryu12nwDSUUi5pCJwTPzAYj+Gsfmg7F4yUU3aep2g5sNV4Bknb94Y9kqra7wCDVwBZBm
z0D/aLn5pT8vDqxG4ctXiwevZPIVeluwMVPtXHM+IynMmY55xiVRNE45xdbyR3MDB+Fvcag+7L2h
gTN2hZGaV2bkEF1ZQ3pfOdf7aFyd4CcEfxQrqnjRiKnvh7I+VfTiUWVeoTptch/6jJPh5v0bdz+d
vT99k1H7HeKCHRK8JJcOiC3ivxmrdzB5CQb2Q4xZvKsHJuIHgkqY1IHlo20zNuuQiWrYMXc0wIxP
R1bG8YX+RTQvygBUnLokVouEwacbzPQMv6o9RXHRb7QOB7FcwcG6yCcHbUCaMdRmJbI61IMzA6cR
PYoOiC/296M45wreBW9ugxBZBH8MSNisVQ6DPO6J4Z83+CBteJ8651OlE0SD38eDjnSoNEnQ2yEH
Nq3apj/4o1Kw2PdBC/ylZrWfkvegdHZcxxoVfQCI4JuwsAIQJ5oF1AkGWbk2LCK1gh35WQ/eBNk4
8tHRz6Ll+X+n1GUS9KGG1t6w758c5h3ojR67WA7mkvLgF+UeLwh7w9JAZ9aHwU5eO31O0izDB3+o
MRzKHEL2UqIZLcRuaDlmKWcQY400QygkFZklLtELv23dQpSWYcn/yynLT0WiYn9xbxaQd5PgFGtq
98Vl1mq2aWah0/Pn9H+AmcKwK7BAWRb5fphYF8LsqAqY7DrJ3+4GMLqmzh/r8lZmqDDut7UHvO+D
K3Y/WZcnM3mMbkmFaveGxO/07xnFhj5mvfiD0o+7M4YBDuXXOeIqp17pSwo6gBIKsSXLALRZ/mvD
FOJHE/Y1jBR7pPZPaugv3ZhQdAuCtpZmxmplL3A2S/Rn09mVwSLQzj3Ic1jfwJDHzC7tOqqA/Cbe
wHDkg+dEUZ8PyeLdsAq3aYV7P6XugQn4JSDKAetA5tWSS8ToEyCtCijdF0yTIxfOHiHb5/+v0bhI
5TXaURITvQphNLssa0xEbcoM/ZUzkqHM/LVxU1DgO6PYsPVSBHTy3LEp6b1fF+03UJNd00vF6ZOD
1qLgbNo4nsGxPzDOzzBV+v+M954BnNIhfABzxEmWB80lBVpw5XOVeE+QfFesaFlCbNzQJcA1acbw
tCCJabA0kDe9xuNCNq/W0AWyWhjRIeZvKNQ9dL9vxTaS/LcVKn/RxNk+UfiXrC86uCXssq9WfNZu
OI2p/eg1w8cc5AauyZpw7o0w8h2UUFuaAt2qchOBKKlwVvKIrecx8nju1VpBkOafFdvpvh3g764b
IapI2CsaAsYy/KPN30LO1FLp80d4ND2gXv+yQCn+t3qKmw9fQWl34Zls/omRyL0eX+JrohFyII/G
gunsjph3XDyVckZSXlDQU3czESTY8lhaGpmPYnWPo0gwy/diE7BAG4hj6fIqrfggVaAfLBuKZWJF
3UoaEb4bkg22mDs1LHefBYTAINxfXP2uQ0Aa1rqSMsCtjBBoAtQDpCBi2mEiHBCaVyTl1W74NNfN
Vz1AGlXD9Gz2MNlr1Z17NYneSX1uPR11sYVLc4TzEYYJm1HSxCI4LUmkp9Zo0XKDYt3OyRZt2jZJ
jy6JDPZ4UF9Fk7leIwHTS3+100YMYLksQ28cXdbqCcXj+H2d7TUb9trIUauLQ4uZBraAfrgO31kv
jZ7h5wclvpum308yRlGVJryFyi0odBc+x/vyza7Xw29vANyI0/NLWkyR3+lkmnf/tKU204a287oT
2vtrwYOpf3XrtgDbpbf9wvfjNWCoaGYXmn6Ku55/8I2iljwm7rhOiuMHTrB88HXTngbqdqjTd6sC
aHeBqSYTTFwSbDI244eSrrH8PR7NOSaDIzk8WlSlnEjhGDcuK2LqQkVyPJ9hGEFlqGAoZQzGc4OU
xraEeFyJVHgpdzXAtSXLktOrdjoE2Afe6Rr/awK4Qzkh9MrRvdzgzyjsPGcwVzicmjGAFz1owokx
tqKY6gwmgIyVUY4HXnrvtEJtJOee6U+YNK6biC2rhQUrAkGcWP0DS4MblCT+exN8pf2Vap+tsElL
mnBck4HeKCWYkdAVeeyIyx5Cs+SZoutLy3fIMYZcpeka3jpzIwicSh05zAJyuBvFiTzVKVVb6970
tvM9C2fmLcptLa/f0eTTRg80M9b4eAIjxZBrUVLi2T5Ga2wiARLBQ4NZmhS4mH7pLF4Puiej/J2a
Tlfl+toQvimhwlSbY+vBT8cgKojiOD7lc6/famt9w8NJBEv6rA83w2qbpC+dMt6TFWnXYf3CW2TA
HMNiqqcqHyKzOPm5x13/tjemwhxijt5QoxDTc/K/b5jMaKOcsHb8KsYt0CsjLp2fxgNtCkqdO4ca
T5Xp0KqYFCyGnLc3wGNw6YCTn7X0MbJuTUtCypnZ6XiFcpYvdPeHc4wrabBO2ACZxKH8s+Ka4hT7
SX5zEvLqJIskrBuCqfMjlRYL2As51SQ2+vI3DtRD3t/eZLEENvB9aLv4tUOMU1Ltlj/D/No443of
CsBXvIMYsSO6fPhYF+PeV6w73QYjG/ia1V7fhoNV6NGsEggAo4WZaoXEyppr/rxQV8r1do6/rybM
59bZ/TxCyJJhW/RyHEASz/xXcZ0DaH9wiriBwwOF1VdJ0Gf8YPb0v+9aQui2LeGznbAxt/0PWyR1
RKUvXhI7plIPZykh9hEiOrHxfakT1TbB5eNtjVhlUZyXiBMwWbGuOqLVGqGruRjsuW9YZDn0yRke
xZT8qY0dOTMOuArkzLjIOpihkCGRCvZD6PcO5LDiiTAeLTydxwrNtJE3VrL9Lrism/R/OvprEO2y
VlWEQZIv1l9uSwuxZ2DbjAFKsRuimLLcsbX9NhESA6Kma7smKL+raubEsiALWtvHytdl/L5mL9zr
OFggm+VD76q+r6By8e34V76zZnXqUMhsx1pRfwqT+Ic6d0cGzMa8u6GonukgfUbH5PJA6rasbZrM
/9M95rz8RklGdSjRWepb5UKdRxSkIr2Q8tR7mCfPb+17SwtrjDWrPBImaGd5dsgmhNQVvSqgDPEu
FkOfeXJrqFdPX2MUU7ZkEqKLUGgxRhWrE3E3QxOpbUwe62Xc2FIPA+YPNhF4pyjjsRCGBH5NMxFP
gyttLU31LqgOjXmD0162gTGeLZGkgE9PONhcmB/shTf/2vhpvAaGX4g0yy/o+bPQe144HucHqPJX
BZhUrEIR4U5LJ0a+BpbU43lGdce2ytR3Yae9OGi9nlpbgw6QWRH1pOXhNZJkaK+deJAzNn9xmjOE
oJnRy25rXK3qJOyCoGMVRFtALPt18POBr+8G4/p7p31sh1J/u+tHe6On+oaryOJimgHz1lffJLJO
C7NcmxGUDUhkg49F7ZoeB3LkW/IxDMZznhOHSXj1tYL51JY7I+6j3JOwAqrs3XMQVSWpa+5Wqj/w
hYDTJr8OFbTvH1zmsGm5CHyZLFNa9mYwiz8vg+qK1EsilqmAnjJjcUOprgXyZpGOI57wsoFiE5hZ
DPrlkKhcC9oKoLYMR8arAkmVmgb7oyk0jBKSNvfe3LAQuUty1R79xO7pxmrkHSX2LX3lYHkurUyI
1XdQl4dSnZpoql1P2k5+CKkd6lmWYXDk31PuIyf/W4zw+A/3av3QCjADb5ts4pTVi4vpb4vppU3R
uFsXw3msukpfD7NMrKvTbNJi4RLQza0DKTmCwXNZcO2BsG8H0Ka/Lu5RJKhUjoZb61Ku0KmALGjm
wFaOGtRi2QsDKVxjWB9qtd3V5ew3v/xnIDvT9UE4GAdlkpu8WR95plRpap+/kFmEjT9jMjGqEKHW
A6KQxD3S/I5nOCVdZhgq4easlRsR5MKSNOjPnnBEDBPi2lTO5TSPuAv0NTQ15jVrlHmYKRJbv0Ow
6lnVbVnsZNTs+Uyu5utn/qPYQ22AArdIWcxEiboVW3rfeImedS4ddNGPg4hhoBd4JUv2VyYDC0Hn
uaUN2spXoww8vVN72T9SMALpTXcjQBgPtNzvNkllp1YqCHqG3r4epFlU5RD4hu8+LmNMxC5WFfg5
inFBmrRNNrl6qpR1cOQmnjB9FfzWXckl1bOaB6FwYCdH/3D0Zh3cLeYHEvnzHBb98srTbti+jiHv
4GPeu1QAlDIMz4PP8l4D9AmGC1Hg9WYEi+CMsUnbz2M0zgZ3kCV05WxPauICmoPrJRB85r2PDI8B
ZAQHZTQQ+LZIBn+dG2ruJC4h3sz8TYXfYzD2az8QXbxB5A1RITY+rVUhcdde0uc8fSy5jEjXyoFM
qlOHBvGwHa1Db/gpTHu2LZeDaUTvhha4o9wgzZj5zHik4Vq/i92ZEHPSRsKVvwXeZ81ntFpO1AKH
w/ECubVHKtjS8YLjJxqT9HsmipxM2h9C9/0mnoJcAuPGPKduzyVUlFAwath5BeJNjoeS2BgjfWZh
dqsfhskZwjOMRAoIF4G4V9u4/VeV9fzrKvXhf6tqBqFs+c+5yuKQv91wHCYGgs+VBSuXQuM5NezH
o1raGJpneRDDskkQnaWKs9WusT5mF+s2S0qhMuNlh9NH6R7RzSiJK6HvkCGiaKGL5NDDrhSUcwn4
jsARlBBwlHlQTShbZgeeUfZWecAgHpqwyoiytQ/3Mve4Rts2w2UCHgkqV1Opf62HngPi/AtXPHo5
zIsjLFsSNMuPWusQzQ+txLGlEtFoEzlSA9Mbv2kAY37+4gvcGizt4rL0DyE0GMXhU2Ns8RmhmUsf
sqkPQuOaBkUBLpq2Rp3ZOG7W92YajFmmjkGSOyVNw0w6DWpRw2hA2vkkZElFxFsJO3ltvoTVa5yq
FKD+q7xXVj4rbLE4cXMvGZ8/J79EbwXlpLttET+Rp42kgGzvB9AiCX1NkwimQ1brh2xLQKEh+iOi
Gv2lj8fOFSx4gEfkdAxEL90WNkofTOFr85Iy2Ssct6UN3D/ePVOzFXn3i9kUFsEGSMOsA2/v+3rj
ozzIZZ7fxA4br8/EmgNQSr9kVV0Fc49MhpCpnFWdu+9x/d0X8uZarUJkyxA5MK0qovNV8KZDdc6F
LKAi51Y4+vJiiFvyn4H9BznSSpSEya+v6lIg3S4TejWpKDAC67sLKyIBxNiqf5YNkiNG41JkMYGB
UL2IfB5/MTvP4jDbP/+p8O96RP76AlFjobVW/ON+xzMQHDyhbwRDNC4rCKv58ior7ok3JG7bJTNq
V+SvVE124dZ0J4/MIz8HfrrTLNwBjfiub7YqkVlcRQ23fbi2wDBXhVmDJ1EtoJoMtgbHAi8w9vmH
PoYDGWaAT0ojxmqKCdhe3tiMVNnuhpUfRR9lv6X4trFV4sZFQa1QJxhG0LinFi95ZaCjgneJmEQ/
RU3zTAlpY3eO4w1HsQa128yPza/lL0J+m12LYl7LSDxHh06axPQbmwnRJsAGEsqmG0N7/mCCmZEM
5OpvzI/5sWQS+RLwZ68nsKykwxrFLJr2sQBTMjdEeBmxsX2gzmTO7DEpFL2Wdu14CpEdwaRn4hZ7
rxRACylSznZLPDRymB7wy9VKsKWpzDBYMOk0L4/1dDmS7y1cRtzCwpxTOlb87NFLaFDhA0CHYARl
nncrzol2hodaAOVJ/nlxEYMMmZVHZgA4aVtsj5uH95HQ5fi367OMXlQ7XdH5iekBMVwqqCI1+GlC
8hIJ4PjvDbTjSVT1SAX0ACHxrei5iQJYMRb779cuTpDcnLfVimEFjfEoPEtWOb8zr3LytPeF5nhU
8AJQE+hW5quYT383o0ixQZtDqRayTNiCMhAygDmVG6DCsipoABs7E0clWArEPkZLBgWPIewLMzSq
d51UNef+OYqCX1QSEGCkLrmIc2Vz/CpNd3n/kLpmrkghwJptSt5k/IzrgT9EWCIgIsSQUPIy9ouo
82cIxg0gPaMCq25VTDo29rGmevZD0csE6nG6+mH//4pqAax6lobhWWP3FvILCwdsN1YHSnhb4/NJ
DGDSeafwz4j1Y/yCIuf8YPZ1unX1O4La2L71CLKRWQsbH13vE4sv+Cl7DW95QUxMQKBOKd8VorHz
VUrncmGsnYkZSx7pGC32dZvmceM3bz5MjbKmY1hTKWhH4U8oByZI2Bnuw+Czl3j9lnxM0a9hovCX
juTzAYzafgnw/HMjqEFI5xb6MMzDJP29+YLI2I1ljbMyiDusq4qeDbnZGxo5XoQOcSZV40OsJ43C
GgCjFHu7laYR1dw0bhKb9JT5G69c3lNX26+IZm95IGkAbzejn5SywjzJ/nZhwNuW25m6YG7lAXRi
CF5aESIGJs9meFuuGFWvoPNnm2rixqwh0lr8SjOyDjTgOjoR/ME21LRLfQqaXBhehRn1tgrDhylQ
01GtA2ktUSmR5V+Vm3cyLQ5G3xN3zWUQZfPvIVqTFqpQpwa9r/meFsOLXuyDsK6kB+PaHtT2iTNm
h0wR36HB7mOjiMpxwadKof7vRxazoTdnvWa5qyB7pp3U9tGSOw8duqs5kUxemyCtpQdmt7HswMgF
/S26GQlSrb/GZjKHqFe3DXE1Dy2lUsQGwreV7d7Y8bVUOJX7MSfabc/GpsYBfQ9sI7SjHykOuLIU
10Vpv7KK5KnyNvc9xhiS9iBWRKVkZW0CUP0UlGyWK/NBJlI105aAoc8f3n4BDTcHXzw+z1VT0D/G
7i1iiMmXqjmVH3pNrqD4UCbXEZ0xqeoEaEt9DDw6re/vRl6Dpxz2fYOUHnCQQTqY7nWa+hZCkz3B
02teDcYGrrFBUt1dBETGrb/vqjcwPP2mdX7vntoNeWscndNSJtc9X0O0ZIz1LUqZbmXl5FRGHGof
mpaJj0KXCNizVch70tGw5gMERigKyV3Edfc+I7okCseST2djTebUhuq4coihaushdPkc7z+l9JqN
yixc63vPaJ/MU2oUUP6DsHcKz97IuM+LxCjicQJIFzKSOkJOGG6oC9yF4Gf/p6IiflKTikaz8C/h
x6dB+gYXet6zST/LfNxQHEBjV4BEbi4RwdJ4xUm0FKoJ/qFDFwkae9fy24tjYgMjvJu3OI+S8i8m
3f0lmYaNaP0Yg3jz9fdwmcVZjldk9ncHAa6+v8M7KX081oB7z8vFsW9VuEmXE1dQgfesMUIqt81O
lVXPORg23srf1AGE2QLAACEKnHFAUQy8QGVwOTnggJFhYW6/Js/OjqKJ8JMJod6QI02VmUjIY07a
KBljoV+o/yXnLCI3I5BFnjBNtJlxoEiEIppR8NLhNqz9LkaPDkkn/McfDx3bQYzfSZ2hmcdJU04F
/WqMSqTvPycFc50Yi8HVEBvvacvWiBCvNGjmSLzl3SqN2ZONlSGXQiMCxQ5rEsc809jxOdhRFC+s
CgFEL/m29vA+3KpWCs0NTYCzfT0SBaz3AYjT9AiF0kbph9yBefK28EaNtk12ooVyk0Kg//y2OlQN
9hvWSfFgkxD7ibdmJm3/xa8qV7DSFyPuWKVXCzk//r9nB2GtVxX7/OtPaKv06ZtwPvwhmuHnFYZc
khNaIMBYAia0VqS9CgvPxMMaWO3abPFGOy3ONpgIpKZMJoke5nz1Su3zns7gok+mkQdfGF0kjKrX
RyOBPx/8QFimjnRbmFhIHUigFwC5NgFbMKGRb3vYgsNiMPpjjYXCm14w0GzKFpaDY9SUE10hzfJ4
Lahy7wvcr5JCggnQQ9HDiUTnT00p7lqK3VY2CCjua0Rxa+6+zigRXBuwKDRE2UPjw6PesKjZusMj
BSZevDQt2enIX0IQvf2QRzakuFvGCEtTPRWR6GAD5ZVLhXbFK6mIZsT04RODZ6mZP/zdofR/Dlch
tToNpf0AtMpwp7pqSH1geRD/l+Oa31zfAWe7uPsTC5wnJQBaiQ9nZkdYs6JDjWnU4AJdUJXv2k0b
XkdgQsulhlt50UwLsCSe2n26+xwobj/ffPbMadsI/VeGtw+A4DtAyRSziBD8MKnk3b8Yig8RZxv/
BIhbhtJFOvLJyJ+KckI8DwrsbNM5nqZDbXnLRgs2fS73rBIJvpGnN7Fj8kDNTxmW7MaV5jaPcIBQ
1QnLG1OFysyBs+7J5smmRouHIl0aMKOPg4WB2E9if9pxHuO2WgvG8O5MwYySKPkI7+10HFqfvjbc
SazSfFn9g5kqP1HibpLjH4Qyc1pVGFATFdT2s1STFmcsqrUlZNOL0mpOIry3/SBEllg6e3VbGQFe
hL79POMur4eZIB0fsv70E5c24NfDtme9vSjIhnotoJNRxRbwUsCL9e0tfxtjiw8gcnMP28hVaHIL
SlFBMUmW+Dipv3kMZLx6XzmB0Dh/mad+jgIlFZmmkKv3LZjDSY64hdRoK7tF7RrqnFJ6ELMJsfiy
bS2KhjOl15U900HfGg0Run7pqrhx6vC/64VPQtBahJmNz7hzB+w1yyKPoWYFev/1NP4Wv3ac68uk
bu1ar3zWf8iZOQbWwpJ7s26j0+yVoPmItdgLjCcb/41ovBLMPfPXKqnVsPPPL4n9Nd91JbH5miIS
8XwG2qglBUqQIzWFiwafZnOZI9fX10QjBQQMH3P99a0WQlB+0XVc82pUMfuh942acC2pMG9npoKh
5EkVuFXxVUUhkPUW+IqL1lx7NS5/Sgp+iVwBgrUAhuRHG/6+5y5PvYNi9DlzakIUFH8igBYts7bh
Bv9eh4WPALbiaMgBhGWPyYCffHRWI09YhVyhyrBdRE5jpbJY5ZAlfoOIoO30ETDM7lS+U5zgfubQ
8xtmsOlV5Ym3mxxmjHjc/A9PKVsdeeSdbiVz9zonhhKfBqS3gWDg/wH9314iHMQRd5lnFHOri/Zn
Hhx/jlMffOPKxwbTBYk4d6Sf+UOyE4VfyZV+FNoIryFr2mM5xN2nTcEU9jsJ+IVeEI6+a0cAZew0
FpBMNqbw7DKek08oKAWyhNjc2SMd5DEGP+2X1j5iFUHxSeG+H5JAJFKXc5DhKv0TkrhKRa2EQpuT
W6nNa7iVF/ChPr4a9kF3Lut/IaesbPJBmMlwGk2m5/1EQUMwTsUekPl6YphjxZhQM6NQPmP/j6hd
esf3tg2jz1vPwGf8XNIrY1UM/OW5ZtvkdsJFI2vNKGwa4laeEEmqJt7+UoqiE/zEDphyTRh7qCL+
2yo0WfNqzCgFq0fOxrXGdlVj7LiG9dcp9dWrbaoWu6LqdTOjqMxmgdkPFbxUW9JT+T6Ulu7AIe4h
T8EzwDnru8MY/j2W+Q5ewjHNRTCdt1uzEFuTNJMcGUqtduwc+MPK8ZzUakk3Fj4+jOjAcvWjL+HV
ct9W3aGPF11DPUDMhwyJ1MNE7QRDCzfdKTL4O91Ul8uVALPaj+BKodNP7tt4TidKfb8DWF9r1wOv
+40xI6UAMV/PwjMQey25lOXI04/nKmRS6vPDBDNlACJjcp5bqJ94PF8tMNZKNI+371Ow6AyGqVuW
RZK1AZ90mtQZSTu/J/JvaYCqZ6tMGg9SV/0U1UsKeq0/kQab5J6pAmJ8/jLC9n3GfAkrRsgkncwr
l7qBguZhHoEFVjuP/qDAYLtYCqZ5ZqJ5MfTN2fxCpTW/bzkpYv4vr6atqLfAp2YNgNI+9U+8jQD7
8nQRLi0xniqD/o9AKthbS26w9sBlmPs/MlGueEHA9oRbLmOZ3ghVZfflOsKbJtqNzlcrrg2iPjEw
ebonJ4gIvbcfl3OsEXrKp1gm6BGcCrQObj9RV7ekM0Zmij2NDCFfGBJTYHb0ABR1N+dw3FvvySz1
m8h6MdoN97/JunOco4387BSIJ18bnJUSa8Vug/WYFmnEU1WFfQSvlU2uKMVqPCos0C0MifWNMaNk
VhTDviLOsw/nsKPKBYTnaE7qMJCQaypDf/33wJ4rp4Jn7iVLMkaNsbgItoefaVFdNQrbaUcOuKfL
8pEtR8kCvKqq53uBvzci2LPAAUyBiTYVgmkRiFvtuCt1rSSgNc8bYhVz4Ccj2AcGVZQvBm9j4JJA
7FiwhzNkxu/qcxVxjv5nHnKvlhIeFxxO1dyf3+6Ba6wpTLEUP7b4+STN6+dC+Fq9TBGSptfT8zwV
EVCLiUQ7MRbw1rCXY20p80T6X+n6iLOnuse0mpNwL3h/moFcCG5KcjXV/8LNPBFHP1rcYVZ+VgTt
cSvAxF807gfb9E1cj0lJI9fAl3HZUmNgKmfS+DzBMUFtzFP3Auf06cfUBneWGJG6M3gaHK0JUGuQ
v5pr2mp8AZPDS+yJ57e03tg3Pz+q/8cV5PuHr+a4QiYe+lxVVfG2ySbzmvS3ycsUSgn7SFF56OKQ
2Xp9XY5Cx5NhCrYagD6/R+Zm2EnYuYTTWNhIJl4lLFp+hkWnR5T4juX1HTNRsDsUefXUNkAH8KKr
Vcx2bMz8bB7DgdHIL9nd4OziVhwT9jHAmbJpIjVlf7opCGw9LNspljSo71cZ6871fON2GxE8krTD
bcMCN2kqPkbIF6ydWha8UOY0rIfdGOCEPFkGYsU6epRUcTy+rrm+pEMyNo76+5y6nXV1iA2ERVpZ
0J5az8EHYRjPpOB9fofATuglgtVpcBwMeyqkgswI6y1b1skk70J+epfkBXsjFIB7VLCj3dSOMeJk
ii20MkpsUZT5BufU5iAADp1B2+SnR9jAXOw5+SKoGibtSd0sX7IWHMO9C8qBhc9K8BfEDZh3Gcbl
KSU+6rsAoRZqkuOo9rygwXNzVw/kx6bjAzmUcY3yjPUOGIn2kZay8+jJTCS1So4ArPgdhq746Whj
/THnotJcaAvfrUPlEFLKlDQewfcHr1JL9kP8ly4BrdSLk6Jf6cPRPDhZuFuIxa0stvTrqv0G6NQz
34TPbHs2pujsYGnl6PT3SGZH4SqzRVn3k9RhX62yUT7bl9jO1AnxrMjBiwh930RKDFnG2eCWQjUx
6UIVUYVREKNPd0c+R/oUqoQh8/eRxP1Sv7PW3dDAd7XspYppJ5CIOqWjpAC87Be5bCcjIxfPuyuD
bqIVWwiulH9rlxV1VguChhdDSlsiAf2fgytM51SsyImsRJcoaweKiCAjtWLRUDTqV9JWvw6s7d4H
DmEaMuSfzbsE/8Ee/tsXLeJZ9P0FYZdrlBxmqV/jqw762BSxCBENMX4pke+DORDrbgYnlLKGmd1P
+5hqvFt5OhSzbHdzwQnA15LkzcrgjaqFMmsbfFx5RGkKVC2eWK25JPZjlIiRySCub+CSLQ7E3PdC
/mx5agCBnUCMINhfn1A3FXTiVU+BYwqrIbhZTnYjsDjJoJXR+fO7YIyHllwPbT9WzqpL+BVBY9zQ
fRTbylEtMeM3o+kPlbPWdZfethMWKaEM/+Nl9h0PCClSm7nS5FWwFZ5K5JuOLJEub4+bhbd8gkND
1+xejY+gafUP6jtz5003DeILRVJZWFAwyo4zJ/P26WsGoAWImbg8uONPd1FGv3H6lbtIcis3QY1V
1lT5uGDAIhboNP21ur7FSuk52u3cvzjAbLS8XivlKD+qX6xkERb8DA5le94I8SbxNMjnT/Jfmjhq
IjwZa9JsK713KUfO2s1zct+/9X4E6wVU1cj4psnGTO1yhuWOqGWVg35LlremFNFwX6vniL5z++V7
glG0lbgGsiN951pEdeEbqMplZc0mh3k3ecPr5ZQJl0Z+B1/1OqsfbqVWySZXYZJoKqiNQ7n0c9qR
Ls0OPybCWJrIAga+i04M1Z0fIM1NeGU+Q6IaNQl+RJrIFXF5vFBmg8BzHIr4dt6ckCWNvKkY3JHr
5GFOHyE6UumKQjcTt0l10TPSCfRnG0BoFboVfKY2uwsaDkP1Swmif/yI5yV+jLidcTiuR5ZZOOGB
EwjBXma25dEVDMKheFQnTqEd+e12x00G51jMIgttppTx/a1Gyw3pxajzhDgUlmN2z5URc5JwmG+0
/U4PORSkYN3o4nJzCK4SMmiBxN8bDJiqWREiWb0+gg6viIEwkPi+9swgg6TGrB7i670gLIAtilXY
XCX/nW3eSNOJdNOWQy1Tz2xKiJS/YvEaW7ryxPrnb8gF2tf4GoVA9H6Df4Rq9jYrLZ+oh8vqgE1H
9j16ITYEMYdlWqXeIt9Ml0dd0B1qTv3zO0r8akTp7+JLgW5wVvwOU8byZ7txN+nsCjy5rN2vxfS/
0cPUzLirnM78zT0JC4FQA4yOG7CCqTtsE+++yErneurMxceKKuDLpOCTLw5k7nlroX6e/oqTty8q
GTTM8cC2f3R0BLipIL9h8uBx27w/zQUyXjebh2u5f/9QcoBfmj53bquj612pE539NtLlcpFNxrx/
hB2lUlCAjuEMquTpC+/Y/ZffjuaVhf9m9+de58Z6FhO+w7NwHlsij7xPvxHlwMwKd5GG9DTpexUV
vupAHFQeVkQa9Q3vctiktbo8dHkf6n6uJDKi9B1rPGu8vB9kxUtW3oU16+7ktQ5cHpOkrn7WqmPG
EGJWk9zPmLQlhzuImOryJtgeYN0/epQwXORbtZlzJJKPiDYXdBjLx5JiWd+iTXseYo3/5rVfRuwY
wqiLVAjPWHXxQEJCmuYfaMu8eIbk+hmzM9zd3SB5PbeVvn0/G2QyhYr+6ekikd/evo6cqh3n5G4q
3j8s/TH6NPwdFhkFaUZDIF6KC9g/53ETHZNl2VkNRROfdyyjJdCV1q6X+2y2SQRooxBcPYcKZ96O
OmqcQJsG0LUgLXZN0X80EPsIj8v2WovGt0bveJsMR6OuQxIEK/rYr/SrODrhoX2xvee8wRwMqH9I
5AUCfhFU5HuU1HZ/caKp/58Y+7aEoR0xLacPxYpH3JZLdBfo6vkC2D0sxis+7G4Mbh65uabm8bn+
iKRjQZD16I8FoPhf075v82nZ/iYkfg/QRdp/8pg1GgVLaeYvA1o0agvEj9OxnDaBylLMJrljYkMm
tyru0UPPgJt6B5nGB24qDJvcs079HI/sQSWy1P7X96gEc5dg/wo6cLyFnykY/8mtp5AwzpABn9pu
Hd7cHOm7llmYB/sux7mjFdBKSNP5+ukfCCWjy9n7KZhcZFWp5n7Wgwgn6BEmVtHJmRmJ2J/S5Tm3
2dvPhYNRyUahrfKy+AqpcaPDKGnTvRe51oDV3acYWls9s0j/IaoPxFUqmK6jxT5o0MN8xDpipld6
znjxUQP6r+noALQNFBAWGUwXkg0QZkC8F6jJHpxVelEEjrfeO55rNFgCw/oya9YEUwkte4KSSYMn
oOcUJqlcN2wJMyru3FEL0qdlNdMPRz0Eh6O47NUZceMsFIt1xCGUbieg+KhTVfz3cFlSDKKkhtvj
99P61083puRciMuZALPhjnJiK/kWcM192/gX/MqzYiSQFYD9ubaUNxJZmyiLNEuhtOlJLFTsSAym
vdxslTQJPWkP6SYDXu188jtleEmYR6uoqq1Gq1mX04gjgPylIVIArzEx+C2Sg1h6uy5CYR1giJK9
F+slRfLgEKd0ztiX043E7nrdAkYDsKDEXXDSm8my5+ekJkmvcneYJvmaiCL9hJGkpUZEABMer1Zp
shpdQCdos8NKsyJzgMpTo1olsLLkiBRts6eydWOxmffX5FC6qbPOtikHt7z+3uqxiV0CA31f7O64
7zHA4WP42PmnE4UQsLYmsvtwgXTFhTGZgxC9qjGukf2FYG/PKVHVf0s6be1vgQcMsbzDFssHTuhU
jfTt4QtdGadVmSz6moDR0jewLJ/Q/EjvXcNyU2SfJ3kYwEbX0/V2xMPVJS53T6bC3K1RpHVwifH0
mwZn15rx3TfPuyTMUPRlIuHDMI3ACB0e3ZF2bKmeHPUQBLeRZ9Z41sFhP5YjSyX0BiRrpqkFpJ/X
ke76hREd3VKWjsmJsRNwSx1enWJlO4M0ATl6pCrQ179d553YKJr8+QA5YjiBAq9Cq7Nx5hnumIyX
/WzXAxScvD8nc4w+SVHxelb92BZePSbTNEblg6hCnMmoLoxBEzzhJiS7eexNgIgqO8e4D+MQfGfe
8RsGZj29Uv3mo/MWUWftmttHqaaIVvK44n3HvK9E7OIHvYj2H+idmJs2MQBJA5j7IHwaZfmZJeWn
3NxNbE8bczgAnmT1OTMPx1wwnSqUaEuJM/BD3btNmlKApQZy1mXwj9AuA3TeVtXFvpuMhLy7GirP
ClAjkw2f89ss5pIQBQHDTfU/ciCqMfmi+wbR9dr5im4wXWXSYFkBbg0Ua82j3mvSA4ZCKtUNUrYM
gz3Dni9xwCoZ+6RRL02u+jjxHjvCBHgeiBRUIFj+fJi4ZII8J3HnnU9VkI3mXxdMs1mpX1b2u221
ja8Vjhhm3pxELMYTy3QgYS/ekWAXjNqdc9kISgv4fRjl/uiQAcQzAyjbgUhiVPnlHDiPSDJAif3a
6JK2Pv+/W4CLn345P3T82yvHZvGduSr0W17PD5wBP0ttGBSaKD/q1AF9cWHcP7CYvhA4+waXNWT5
QE+eSSykXTPsQeiPktYxkvKtShFarFcyZbmLy4oe4MyBrVkhpTsC8UrlJBnDzbBu/zbnCprlP262
iUQZ4rekAIqxiSNvlU05+6JDL0QnJ7bF4rGBQeTCXCJtOaSTP0lv9ekX7X2CPmG+7Fn64VetFnAE
28EKwFFl0WL9YrlajcGczCNKfIiWFBPglkyWNn7CRcOb2mrOQtGYdjD28bNrQPjdJfv63qYlvJIV
OcTMkQ18tQC8q3Ye9bgs0qGimWikIRr7KUvQ8g85LNlvzJQAFrzB77c6AMwszk/CLueT7901mkyP
nsPLUf9vvx1na11/z3a6o/A36mVAEnKtYVTLL3JLk7Lfh6JLBRzkon8t3di00tNXukc1/JgtuaLE
bmHvnAvJJzVKzX+wT634W4cDgDtRh7y7VRoNPL9gX9W+svx7qSRJeJPOAy+DQwIgQooK4BrN/3uQ
H4nS94pVz56GQhTxKEriztOtBBVuypjD9nwyvpdkJPUB7Uks9LE7Vr7tFuMuEeFRZ50uN4kYUoqp
MtJA3OBfduMpsSwyxQnwEjk61ILCJEH7Ek9LSuVV0sLepl2wSCE4GD772frjakNR92GZS2YiU6BZ
kvKYLMV7JJRy5cKPoCgh8535HFaFLhORd/YSw/74R1oWHp2i11sxQCBHYoWtPxXs6GMGOHGn9O6b
MgIX9qXti8Vj9Uc+4dNM+syXTVbKbDdlrWbH6OCy5sq/smjgCDePssOh84qD91PWZzDWdomYPJN1
LcfR9vhVgbBgyyDYUmVGKXALT/dyuFWGwZs8C08/MoCFzdQ4j4KuiDvxLAxEUTl6JV82KyLE+c2j
LdzL5k9gSL656GmUNkiBdfr2EsiGNkjTV9PGSJhNFLhge+c1xDMXOw03rXbRkOs7JyKSaYmuEAAX
XG5MKBvz/wn8SZXrt2GSCA+l2YQt0QRP16T/QmTywZKQJDbFeAU5Hpq9eTkLscOmEj1wltKDNP9A
Rdw4+lod+oLGkoPH1IPw8A76MCKIhcT4zZ3I5aYJMN7JhuUDgP/ZW3uajkhF/2z38c/altrzKZPk
z26NfPKmhFI86peCjnWv7G3F5xXliimPmBpzqgcr7RoXVv9jpjO7VL0ppCnOZK/rZ0wBH1/2JKJY
JznkzxIg8zo9vFHWFVbvawBCe7N/Og70+Du8GThWUR16eSXmbihLU3+3phO20MfdQOAoXye13F8o
r+eNlnPWTw/kmWEkCEs/FX6Vlh0TM+BOIqhzk8eW7C+PaoJrwn2yWHLLNza/lp8s25Wgw3pV153R
pZF+sXSRycOnJOJtBrCQ8VyYAVo4GqfQnBvOUWfIHYoHasaIOXx4u780qmELkrPwJxTty2+At9HU
XFp6KJzC7G9SyNBSaQYD60hUBe1CWzv4tzzuTyPQnpw+SVIrWsAqptWGBsQSV3RfUT5oNW/UFLQa
X9018pRbbQv+rSD9W6QOG6YlE8L7v93S2uZssY75qXvq4CCcMN5+z7DN9x2dTFDNPkis8QvUoA7c
eh3+u4WZ92TPyhZxu1VBBG80j+MyoF7gt1ZIT8oCNTOQnr5IbS16nHTg8my5/pm8NL+kSTyZZFX+
37+lIYmplL0347p1lFZojLBiTwr0t7SO7k2sUsVPuG7dT5xEtt4yyAcAnl36PXw2l2HjYkm6N96Y
ck9Y26aH+ewwO9HRj4wdgRh6LmciMi0WUkRLKdQ8G3XpDzp0YkR3cxYhd2AheyQyF5o7W9PeCbdT
jSMyHnls6G6OwmpBQafVT+nUnkAJK10GXCNRY64XjUmL8OjhgT6yD+5pO7q8A0A/eImnesB5k8Cy
CLUYYvtjG0CLDlNURVMhi7DPpTr5C+aRIzfl70NUklT846RjNjTulRhqLv5zobbbnJ/4VUbMhhlF
+vD2aGMxLbSOA0d33XU2Br783vsZsTwAhUEyjWJ/aFGnaXrHsJ9YSzIIIrqHv02Dmcv1tUCK2E71
SPIHMjifFfWMKyu/qCI5uJw/vtfOsJ6F+m6oo7tj0kmi8R3PNMoafM3hm0uizGJ6PKRETgwhTCxr
M9TSWzbvRUZUaWtE7fjKy5e5kb2eCs9qu7REA+l0v4hYr8R7iCER7CSghQmKGp0iSks/zO6hIq0e
6rGplqGjykjzpCHrLBCuy3IJss5/Ch3cfswyJEMNG7x/Q08LN5dR5HyvK+91tp0qs3Aa+3UCGTJ8
mmBLo2uOyehyzj2t2wLs4K7KxBAgZwqD5aDbsoVuyw5PhcVE2urfzFZT+o6/otaSTK+pnlgAJTNd
pL9souSHn8VkZyaaaXB5sHsRaKQnQaLNpfaEfdw1e/AwFBRw09mjfxNV13wBRvy4dxKGHEAa366S
y3ExhYwAbbmkUpanc5j1msPl8SB6wSdm/4/pprDLIpq74ZpLwNXPHcC66iJay/+DS/1CEl1x6/ae
HlQbTyvBGSMg3CpVJoJyh10KOsO1khMW19i2ZY4smxe+swtiHkRI9gqTW43Z/2sli8tfsl+G8rHY
CSPKe2NOXjhkQx4RzB9ZxS5njNNWJMOms3Du9ueHDXYzepE6qO+kkXNvTPCwZDFX37xtH0/zOWnB
a6fE+MQ9jQSuAtBhv1W5edvxOwF+TtmCL+v3Y9O0G9Yce/aXSkaaNSYitjxHT8b7A8St7osjkCuk
lILMunruZ8wG+Lw+/fsBQiaBXTDykVJgCmdiexLoI24Atvi36wew6SxTpmY8h4EjXDecTBkFuMtf
xX0OCyjl31iJYA6WXefWjv9SmCWoXhoWPDGXTa2iOtbPbpGBKpe84/0dvhi4Kr482W4Ss+2tU8g6
3mOT7C71wz5Hpc71WocbYjS04hiSfoqLJoV+S1QxmpBu4//UZkxVp4QytH6qg1fYaIBiX1maJF4+
8WUgAPAHjUAuXzIpwNhZvtjpb6FAnQ/qBUiMCXTvzI/2vJ/LgQ23+OT4WQZr58Q88CT36mypPiYQ
dP+C1yndPGsl3OQIXao99xkVn3c1Xf7PRnV9R+Wm17NgIVakVQ5egCuEWYnQNZRqjtnGej3XLA3X
N5ogYusi7tyWqGttOF4y0WRf7U6EcyN9jvt55E3idYATclxS7h7dd0uiul7sTJz326Tlo1GGvbpn
6tabMvAR/whEIeDLU/1ylFOjZRjPVMawYwbFpo2jykT2Gnzp5aBrijsHJDCHLvgK96pas6W/s/DC
Hwyw/+NBjraPVxlYu32HJV3mYl0Uoy7gwYWyG1rybhHuREGh0KQyuzhz5c72UZlJUJ2XRRRbIa6P
a2MBehwqQQMYSopP98c/lXKp72SMkSBgtF0IV/x4GubqNNwYv8lgGl4jA4FfiqSrjidwLea7o9Tn
5jdIqtFlZqfnWdG0YALj84AOmFWtzVOIZtQ/VZHoLHeG3X1AeC2phcWUwh0euJZsizzHuxsEF46V
63JCSSOLOp0W65qEMi6COJ90uo/HdhSrGgr3Hv8FPvVdcMByUmu4IizSn4v5BXvZnV/CWsC45dEn
cTs1HA/WLOx/pzfRAXcw7hGwzjJaBDOz0ML8aVfpYDrNARMUW00WLJ9YqkHyhreaHViEss+IPsgM
I7R28PoL3Dz29nJgoaQpYXttI2yXVuybChSUU9oyKND31h3OAtBDyFHG0Z1tDFyKRB9vnL7oCcUd
wlUAMQxKqCkOONR5Pae4zlWsWf4SeW8pgj3BozXC77ntygZzBAeHU/b7X4C70Cltnt3i2daVJApJ
7kSouXMQgzOeiaTCarLlq6vx4uOLxye6bymznC0GmgSRFYiBZRuojOjFxf/ITKolqh0UtnmM2Jx9
qMxTMcS2DfVkKwWr7acuyOj039wgPU2KWXGJXG2c2ElvDsSy7xbLLm7byYvl3yuEifaae8wzzsuD
R+44JL3duTYHB3yC1R6sbe9Wl9e/0r2k7Q3I7j5/NazBC+SPVbqBoxl2HXb7/jaUoaxuA11IAwCT
h50mnZ3av9UV5rPjcM7xWetPW9LaUvMSgstnRLgEfRaaBAPkOHQ4WvF+hONc9yz6XfKTNXs4ma+I
epHaQNkbcFNYNfpxHytO9WMaSIBJ2E/zSEJefj/JhOsrrdlG7mKlwKQwBIPHqLrNGMdli9Iy/B0g
lHjvUrFpBh5X6InEmGLQlQqlJE0C8unZiSbEo+oyWVMNRSvs4yToVRqG3Yd6HrkTqkFP09xKCwVF
SkRp2lmKT/LGrfVEXZgENFHE+/SRt9RBxGf+PXxf6XaWrTc3ImEdSBKi5u6GyTV2Y4xUWg56/E/H
Ec2iD3LfICaG+rVCtg7jEyPmtNR9nc9EgfF7iNYpwXYcny4UTTrWvmkeFJjEbWU/QKmVRFyXBzdT
czjo0g0/sSpPusdQlaInc9SOpX+r8dpHSw44MAtq550hxLhd+x0cGvy0NLognHQsIagqunOdtWwX
JjcBmDbxPnI00FyulrOAviipwUrNzMSxOnWj1JZC1UDSPQkN4rGGxWdbSAmVXuKKSkyR+0lHfCYd
912PkbxrdWb3yCUJA6wB2skE9zJvltewqxsZEX990YNtN0zYnXGuEOU2ARKuGnlXN7Ux+EDQ5Ufj
KSSgVx6FILstoaDLBd56LNz+dMgAHdTWFYP0coDIgp8S3YYKDj6m/XU2uAG0EAM4VGC2/DAfZ0NG
oZIVc2wwtcYhftcgjVtzCHTzV2+ynzDJQP/vA7hiK8yo9cIH6ts/ZKWorGARLT13cMzYVCR6pqbe
JjoXPt3+syHmaDyDnzEm/XMNe+bn3MgeJzvOJTtiUqeRQJ4p7GI92BlRuQN0YTBJUFpUEWU2UAUa
+ncabMgfUMp8fxIc8Ukw1Y90F9Mr+tG/ma4Hw1EuIFNM7dZvSg4dWUedKi6K+zL8oRV8uEbZmVfl
lKYTnGf3/eYAr3WRUwu0D1QxJgQwjgMgBLqFCmGV8F95F4jjlus0MH1Szig6lg1s3lLhjn3AWtYe
RMps6atb3yqOWcnbprIK4h2EM4d8RcnsggZ2eot68OpzBGR8UgY2G+NWIabvorz4YNc+8cNrNyDg
dgJe2W56wNr0+qsDbwAj4nP6LjQctcF3fnNfmDNJnQmFazQGRyqZup6dfFy7TY7ij3Y9DZsid7fx
p5amDjQa0tz/KhMXSwxI3yVwITWx/bzTYzh6orzuolsx0yLu7t4oKmuQablceWNIv1OXEAkhxfvs
FrAxkgx1+lT3bmFyaIDPC+m/IREpghV1WqXAdceYmArGEiDLrVAnE0htoXAGCPaMtulg0STzZy1g
zHGaLFi5QVQQOZGRa+nA23NnUpoF1Ky/Y/jAwQsrySrTBIlDq1MyYaX+qGyuWdjstNBc+pTsJcpK
6S8vqRylIOX47WPJA21N5zy3vui97lRP8FrjF5/5TIxG8BYh+WAMgNpC5EdbuO6mHCz9MMinDpQb
bCxom+o0285/NN2JXDLzoli5IdCdyVo4wY5n7tFUxS2l/3gqJ4llRA3NuH3W2cJ8f7yWb2d+uydL
LOTNd5pv2DI8vq0IYRo6EE24CquggJU6/AxwSiHtb9GX98pvsbfnSR7Zk9SXQWfN7XcPkMgJc6hC
JkcJXuGoN6iNyTYB6fWbYX5v8DqESwF4gFyolSBljjSJ0pd6AarFNgQNyNp4ljdBwpqz8ranlkg9
fih1gTDwZz3CKQWv9NpzdussfFF1/QQeYt612wns36P05QcfOSruQUPUWF6nXug5Fkq3M/sdUntw
Fw4QLeiBNeUEaS7FDvrxRihyRZIAEXA+BbhDLkn4JABwq4xgFXR1WHR9r6H036SR3eYHjbTWCCb2
KxVfqyvqb3vhy9Cgrp+uc1tD1FP6qyymiu8P/wEu1vD6J13aWKaddLfMIyWGCVpVU2L8es2CSc8E
wlo7D06vVr9msuw+WusfhbTB29eJzos2/v9uMhu1Ha+9bWPbFs8eJRe3r51EbAcLrKUjH0FusVrJ
4pmt3IJFdfA9cN9KwxBRa8JY6R/SrgaSkjGKgPLXgUTZ0fY6pY5ujzgAb2XOjDZcZvVGz/ld52pa
/jNt7KTsTvmP9ARC+6a4nkR3lFi9k8fWBRpcCcIguc/UEHdicL8ZLbH2H3cvJhL7pGNVacQ4jwze
IyOYNykW/z8EFUdHOg8Za4lXN0niWYcShKdCHOsA8CmsElbZJy4iz5bHm7LntKBqp/Lvv3Gn32k5
yvRONGDJv+LWhRWYTp96p96GTnsWGoKIvCE3vJy8amQeSh7I/5pyQ+2xj87BbM738/GndrWMnwYE
9R5uETO50INevNxayTQ8b/rZnxSgTmP6DxL1/i2BcLNEDHdTF/yYxfyD+j1JBh4KBPwDAY2QZnpm
wnWtCngl7KFtOzjiYVb+4dwXVlMloMwGMZdQal1uvUvW/7g8JNLD6AjsNx3ErUcsfVwa+Q2HnDNP
+ZZPengVtuIsINHADu+7+tC51SEDfRvpNTYKh2+6Nzq58SObXaAqinROd+WoW4xgFsue98t+rIFM
66YY6d/2TfBz5MoNuv4zRWe/DZaaX3EaPvnbS9B52r7Y5Prtg0RydAAKaUGQMk56pk/EC//FAQe3
KuYRELIA3m4I55bC///DS56L9+E67NYPbWlRe+bRiWr3l8V4LOzGDVmW189q1F9ZkLHCcAHHAhT5
KSIgmNyHtLJgxfodjkr5l2/EpkSXeAgGxuJCseiuuLVmdQWJ5MO0dLnFsQSB7uLjuNDR/G28qZ53
t807EBuNi+WT3QTlDpU1vJJ2ft8WSCSuZAtaWuJLPSkuF0Ow1Qo2lTlzmO/7+z8zFtU8qack0zjI
WfkTOUq1/U0c/N46wzPVS6vefciI6FHRpTfFcV10nw6+OzF6T6zhnjN8WuQSthdeqKOkWk2ZRvV1
tyjYKpAfDWxdYGsuDsPv7PMuBCCUGUBuCdAL6ySQFVW5jbzgHkEKR3A4aRh+2LLaaiQP2IaOLTMy
eUMVi3g52sHQqf9Cgoi1zTfa9sHWqglLjBJXfnoG/veavAcNdCqD7iKdCTOYBZ4ZzZfuSqVO0DnC
h241kCuDy76JOqM8XLdrfTrzxy7iYoZ23n3eqCtJmAZ1bhFyINHIAOFYJ6shN4EHy2uXU11WWgYe
ukk6CgQAVoOrzY2nH3AoT9F9PLqwvRCpgV2xQdJJDFOYHAqCtyQwb1z1Y5t+9qhYCT6iVBuzc/oE
4mwVHfuOiTzk2MG1WM0KJZFE3hqWCPIXWV0Q8lJO/dG2PNyGdeXCs0exMJGwqh9KOSklvfkmWOz7
98VmtOv3P37SGtN17Lm6LqJ5MVlfZP9dgCpm9aUzj/VEdhurrgB+g332MdNyQcWDiqvcf+yo3mgC
Prrf5pQrf0reli2wQTH1ifqLKDRYwj6uwEaKFt+C0lNqec4VXTeWq09NFnGt/72AFsHX9BAgY3iu
hJtJake8sdSfP0S+lOR4AqUjBp2tiALtpP5mEJVydazpqI5MlttJRHVYjzjb5j7bt8lfvFyZh8sO
GleCvuuCvUCQA+C7wKvogIQOX7PZ7cd2JIiA10R4U1fDhfKpRc8C8OBLoMLRrBob8AZ9CnWBHZUn
wYicFbIUTMLeAvkuX0ImUaVFoHmFlAjOqAUB2gGb7/hdD2+VRak3mEm2jCEt+FYq9yoOQFcGzasn
UaY4rT0QtCan2F0vd9XTl9lGxGHfu1eKQiB59nfQ3vggn6uDfKKSptYB1s/zOB2zbcKSgJWow0aM
gnB0ZM/IXWkOBhP7O7W+b4VoR+6grdlciOP2EuMdwJNKNucEw+IpCA9WFbm/m5eVVnOaBhiH5ZBe
YD7pnN1cXVi6Y2v+RVP2IF3iT9ZjjeXy0segMBFgipAARNsBu8ZswnMIi97CfjYgfsHfWipZEJn4
vasINQXMygQtE+II276E/iYsHBm9OIoGqkIxTbcyAI2g9ccNAgUR76tqMzO0Suglqag7zcoOQl3H
cmpdi//c824FMue1AKz7D9GmsvUPlT2jA9U8lhOqztLLzHlUo6nDVOp9I/dogXNN6btKogiWXVEO
KC51B5ULY4U8mcVHe3cVOKbTcGHeBLKkvxEMkI6k14npxKv+8pRoa66hBX5UXrm8MMoMknCsGVMl
DIxC86h2YhWq3pO/+ePWM0Hx3S91VVJ5WFhcYQj6PeFpnqv3QZKLnBVlIHXQZdecuac6iPGm1vZ9
zSuLf5JwiCA+F9Xz1E6tj9lTthaualDZVZ9Rtn8UEE50yU2yedZ3HXW8jI6C2TLN04OnseoXWxIu
zCAHYM4ez74GSXwhMrBGj5Tqm+YWMunG0veiaXHLzXhvzOMayrW0sY/CWgZzflFwbgaMIngNRDO1
Y/vgAv+aSF+mfXlGSLUbfIa0TDUprrScpaHyt04Y/DBdjjeEz6ZYk4MpM29osHo7Ju4HXearGJX1
vTcor9gRNkKqzuoTzqTh08Qbevm/XMZFKWWA+sO/0Cv0daii2LKwnonVpWMyqeuc/5huKM+xab/9
783oU7QiEB0dN2PkM0Jo+80bVfk6CAohPYzP+ZZbvq1w9zRMR03KRhvFZPM8wxY2c+jmnnws72yw
tfjUqbsxoz9nbIGYfermWTLbxrEqx4WdmHfZ5jZFrjZOYGxQ0v320rZ60LbUWp1xszC4TK57M5WZ
nj2JftOAzzTAUr+CpLu4MYh9mOqn7BgQjWQhppko7wpsVqaIqWmTtKTfZD7XADV3Yh469lsaPRFM
OcWgEOW6jY5mkeJPFYmzGy/2RvIOb3G/QUKe4vuHIQkDjdoE4zmvW/JPN20aFS4yXiM9fvSSIUcI
sMrvpn+Gvk9kjU6IS2TFv4gZeuGbWMJIZHu9egfkxAC0uKPkEr4OEgwihylBiCMdEVmBrxKlP4Uh
DmciMcCYoALFbkqqBAb+Co9MK2syBpgIVOXo9szUkgsbkikZ9IImvJ6C/yvzLWA9ClFlqGchVxxq
OCy0CVJN3kTtrZdfsbEiijKJmbZZYhYrfivhCz2mzWPiQXezMJRxhtd25QU/Cd3QZLuJ/SdsgqLo
1ZjYUQvrh7txwIFAdq1rwmUiaQKYE1AF07mZY7sg5+Hqpp6EcUZbkgJz2JzXislBknaCmWJwNOPH
X2ZqVZ0nFCgBvQgh586uz0BJvo7jfo8A4moKi8eFtd8qwQWmXddCRuspjwUXzXx/R3xP7zMC50xG
wsT7cPdVzauiZGBpMUXBHBBttu+MLjcBsezMI0dnuRONdJ4448jO7Au96BQjq6mudOxNuTSzqVwB
mL3nOkDeHrtYe8em2FyyszNMfoeKvVXKNmrSbt07nNDtuZVIDx461SkYlE4rcFxUw1hVZiJkcXBm
7S3tvXabfrpfBz12aTZ1a4IPPb8ya3ueZ1LzFtNJvy4jYqCLAgtFlV8hAVP2WtKbrMlmxayXVW1b
qiCJRv8st4V3JBaStVTurndBHhP5jlH1JWq/x93/nxQcMsYnW16xDasvwdNSQ9HrESQwU1/uN4/N
eA2eBZyKvy3k9aSmJq4ObakoS6132BZwBtM/OFFcS2dSoRv+Nk/beMITkTBgdQt7P+NoLrAp1t6/
MJWSPZg9UlldItv+zbTDNvDmJU1SIsq+OXaGM7UUpyyWQOzHhrFaQezOhooOkwGMHHy63mNeGUB0
BeK6GG5kTL0tcCeL42xNlWtH0BSSyLY9+1cTXHgT5DNimzIGFL4ioLdEJuvGR/GFjH8HWnEGGwwu
zMcPlOrizLwqYsv3ubsfnVw8/y0KZ3X0tUlFEtbs5kFNDXe8xysKaIaM5WrwcsjOZciTDLty07bw
LRp++b5mRW/VxZkiOYgpjVQbpsrHmbqRSqA0jOklg9WIldXxfM1AtCfTCOKF4VzNNVdKldFOFMzw
IVTiMAp/lx1lJYuvXtD3D6jaIhgcOXCigonNX/K8cy+2fYswqePmXog0uFGPdB/DEwWDKc3FBjsO
bDjiMAZEVVgFRhXdZLBlG2jNfPXfZnIE9ZqTTaCpjLULNknY8y0LhdzVt+swIOLipGPgSh28GH1k
+vh/filbhhIO/KIw75CVoxvojZVIN9UdAxqasA/z/iWJc+08pMaFOehCTqd156Vhyidg/kvmzRP7
4vWgNLq9lC84F4sPGbKErcdRJL7BP7nC9ZY7A3B0g5iPEy6QenGpbVsuoCd0MS5ku7TOMAo05lwW
yvtHySYD66mzUFhSUC2HSIPgVuzrMoP9R9Xd2M0YzkO65i3ge6PR9YSfsy6HNB3PM4+3D6+Vkl6S
MsSVM2cXmUGcLbD78D+QxVZhgTB0Squrgcf8050Uinw2o+52xb4tRzeP++1pZkymW5z6Ndry50Js
bsBSyl0TV863cfNlOTtjpO0LA1qbmNxvkB/kN8n0EBRtAWbXIL087xPGjo28hWnBNhhRMJwqxBwF
AWg3ilvKNLpQnbRRxCQ+SwT6giV+77qv1bO093N7+jgEeTT8kA+rZTnTgp9weFoMRZgyHz3+jzDE
r9fKJMcYBLIT86QntaS4FIqCc8F479II69/hY+OFNw2cWq6FG9HDkUy7fSCKP28sQ1TeS/BW/v8I
d9eHOXeKZrP0sEBXpAA2irR0KvhbMg1v44XMwlSqkpn1JG9rf+LoNobg0n/3QbFuGCJr2WzeBa1Q
OfiBdiFXRw+scWHIZ3soDzpkMcrLSsuH14twtxt3Fz8Tfok5viyj2IGKTPk6lAcRqNWz8auf1ZEf
/NHu/HMKqdsLP5rcNfCjZQ5RvQjommKx8GY7G27gy5jAoWpJARhkWYvNt8zi6mPV+eloD6PpQAvB
0/fGHue/AeqL478quWGzTVLB0t82X1+DMv1w6T2dEC/Se+WSmuXvR98TiyvAFCaA/T01VmNSiz+A
uyyIZoUKdGo96n15/RCxedEO/uQEWYcWVwl4S9c1fBrV6ke41fgevwNiHVZ370MG8NrTCXK7Bknp
ZZLnrGFb+O8ke9Nf5IhZG1pCDc55u5VRRiZvUwwEv5LXkL0g6ST+9W5YHElv3duwziQBpwr9HuOs
bPaDyuQtTna3vFDtq+NR+EX7tFm2Kr6gq21RWJNSqkDKMVDnLOLe2Hl/laPRHY3uEZ27hVA2ISes
le0Gh6qUbdbzwZfREuV9eGqb5A7vJfZeUlmWyryTimh5T0au4289+e4noVxuBo709rGSzuGUOq8Z
Wg7H9Zix7neYGs5SAqfdvM+cqPPqtZTR0WZBHaHgydB4O/XbTHO1t3qFkT1q1fvI8zjSxzjvWYQv
TuJo8Zkzpct6LA3osLUtTC2IYn1L2QqlHqcZRpleTaFad8figZCEbrxkIbWM2MR4OZuXoHOhaRxn
YB/gkAComcbby9UrM0ptehukc8g8YxVaA8em4p62k5O3FoIy6wlEFLWtPL91gpx+G7iIbR/jLlk/
AT6+kKiWyv3KgSlbJcNhWrMuHmgUYcRWXYkJ+4gHEK2NJ/1D6TLSxHaQVIxT+5kricArZtbWFnmo
0v2oCehS5qeVA9EivxO6FaCWDvEkmSsfjGWWpBVpmpxMwIwgNMelATXCGxtgtbPcVHSN3dguBK4l
vkwkivbRE0pxSC/3TUaDGiUrCL40XU+ECz4gVo5ZDUUg+YuxQsbDMrUBp/Nd+yiR8HUe5wX4d8q1
s4hTVsirU3m2R/qshr4lRSMYVUOFYAuDi1LzU5dPKx5HMg9k7ktXPf6BWcgDxTOrRKgcqD6x+89P
WNYk2IUekRoVkQ/Kujg3TEcBMBWw66IncwbPr15w2vTDnzXOVV3+sfPB4zFYmyUypE5yqWRYtCkE
xM8AQFLiS46+YynIrjhus1FWDuKzj6DBaRaVctPRRPjPoFIWMIBJXDiauZytQsCQiziAT2mtORfb
iwUfxk52ZorAEgMjpkSgwqg5Nvj608WKSf0zWByY3pJts/QPPeOdVQf1QDEid4lh8rrIKCtikIAg
udglsUEAXnsIDBBoctgpR9V5CKnDCeXxRfvg5nCVQsE5DsdlOLCb+yz1Wdi1IZx4THVIIMbAwd9+
EhAA2HIkxNpimSLGamdrvXwla2lRD+ARGVQZ6hrwEvkVgXF9mdxKITXXjGVSWl2gH2FKWfBntRH2
VgiE4KMLDKzr60QQQzNlo6HU/TFvfAOgbEbfbDQoXmt+uLv/pJtWHdt+8a9jArK+vmOnQXAoH2QL
ojrQucBeXOg6e3BpIwMpyPEHTu/r3KkJnTpxCIllliJJAxQAPgJBojNYTVSdFoLhRAEzopy/+TT+
yHoyhtTOHN4uao6rxJQhSOHr5QXXOe/+xVCsvRrePeG0amNwmnVjOkPL2CwGIcK6y+PG6aP0J2QB
ZPNOV1pgz0CfIoYYy779L3+ZFixOcrqWkDLp0cR3Z+KJJa9TOHLPvMZvKrlkArfii6OKL/h7+oCQ
DN3jGnW1f13/jF9uBHWMQhdOKueUjh0vMuSZ8QRzUYglH5uhgGYBLvKbAsiSQZct86+BwUpcNqmV
oFqgr2quRzWpr+yRKmBCPQmAOLyIGpDD5j20KxC0n/qI5M+lUQZ8n9cwyGwSTkXJBPGEppZN4+3K
C+JBv6FTbtoWLA07GJql24UrlpAYy1KxY9BQQQw5YbQ/tl6H2Q098+bbAb+5r8Zk0AbceX+lhQUw
/1u1e47DVD/YoHoR7mUWxVNglz3Q6vYFMl/y/7NIqN/HUMH6QMFEI1HeT5y5UWCsbgIuz3Oa7jpD
21d3kDlgheiO6hSRWWxg/fcZ6svAD6Nd2Qq6+vp2MLcf1I1jwK0pR9OgXsPLMhQz8BeJSMWUzPNI
cJSNMI6IbqXYzEfxOxTjcEJWqUd2Yob9zhay0KWSotItL2zkiNLOFFV4yIObMDQIRG3xAcugP+0e
7yVg6f7RE8z4/xONxhyVptEc8ZmOmnb00/GxbYdKJKbDGBnvEoR1wHdaA2AOmGZsgYn9LBprQK/G
JmCr0h9iGcvKCChijagjIrj56VbgEe0oYSQE9W/tFTFWqezhz4qB75pHgz5b4W242VBLMKuQI1u7
+KpMXHHyXW14VluuYiM5S6xNggeBWOnJIwDx8zigQ1RAFbZPDtd4ZD0j0cvE3q9WVHcAJDSwTWRa
Ybr4ZAZisuwl9EeM9mwqEpw3RHNfNiRaxAbGs7SUfj9JQUZZhHB/aGizsIK2yim2VxRpBDRu85Ee
TIyjZWDAtuRpo8Hke6D/iRWsFNmKMAf59DlwtXF3AnpJNDLyZA78AkLdfdgAAdFoQqgR4Hb4hFL7
KH10ejjF2Id4N2AjxlYZVZb/g+B/ujTQbzxBncQif7iFJf6yI5j/PTcSDejDmfaz3qYzLqRrb+b0
3mr3mWIeDu9Af7yeom1QJdGkKxU21yDFqL/6DVsijUEVSQN5rKYZDMJ4jZHa/AKOwD9ECadXWAVu
oxFnOEe7bJNODm3x0qq1q78ZlroAH6F+tQgANhSJquWHe5bf6aXwhCZBGBX9SYh2/jLpplMXHJzw
m5Dl4hHCPvteCAHH4NUov1cwwjtkf9zgkS36gjDyx8nwCtzQnX4SsSoZaHoAmDQ2S7UzDU14RWwy
tZ9hpejPHti47juqsBMHs/e5JxBIKjylt8yaEvrh/rqOL+teyGnxIeuBbp1uh/v2DxzhNgxcIFZP
TZmkato69cXhJSCCB9+BEKD8Cfk0LLX5hFTkw6G4CpK/OY5ogNvha0cBXLStLRhotoP/YdHfeiC6
tgK0xEAGamM8iOa2acFqA2rCerLbhMb6QiSs042lIcrQ8WTqe3yrgnMBP+bnejy6v0Sw+rBHo1Yq
0xwQawvLR1Ti8FwooNSowds2m817jFBleif6wgC5sBvqSYKZjMdxzdjWjj6KfexM54oa613QRVr0
0aGysyySGdJNiVn4tzGser5FKeN6AgabG9gD11ho3DYpiqNymTT2CqePwPnxtPm7DWfhPrpM0tAj
NJPlF70aPCECD26iMdBn08oeFdzb2HFoHDa4ePuRpWRwjTWP7GWmIa8wN3aYqCw+SEeK31g/g8Vq
jBCdNAvBxQaxQKR47Sq6e317BbNd+oxwmBuKMguGuHa84OURO9+xyNxV1lIE0clz9tPsWYU76dtO
M3i1s0GPausLsxGv61gm1g3+L9B2ykbvKB8VGHM7zqEt8sjK4rv1SlyaEzHGG1AkpRIo0uiEQyYg
n4efvtOtOvnixcLGdVn7Y/FVdFXTKfh17RjXDWfPo0lJEHCnrCnCICGunN0GMlYD+E3cknfm9Qg5
WsVKaxz6Kj0Y/ASSmkdVuFmK7m8F8qY3lijKLue8qJbZRl9IdToyxc4t0KojrW/q43lASGNpGulV
G4moBqp6eulFIJ9EkOge8rTZcreDcI3c89PodM/uznQrzOLdPYSrk5iULclbPh4PJWSBAU3MlU8N
cVqo08maFKW4NVRshVcJ8Igbfozqcn4yht9mXABBzAQZd52Um+CCwRDZ5PSLif0YfZStUGGy6s71
EfTLqk0EnJbR9m4kQlRGl/1+eopu5yL4u/YgDmOWSITX0QnQkNUKiAWGNJIetiHRGN3Wc7D5EBji
tSoZC7Wlep0xI1jpSO0+ly78BrY3D/eMNzbAU0el25M3/gKvDbIcURTRV30Wqhbe34fj3hBB6+GS
SV9ynsgJSbBbJCNpixTIbaAkoeorj7q+ENQNterhMHVqRIR2QY6f18gFBQQmfymZMebVZvMnAegX
RdiVE0gVilnJ9BZ5dfUK/ZjCoXxNzStf1QBOYBmuvF9AT+E1wKOyuStKQvAqk5r8+uFoRDgHbM8h
QWbNfZYah3SuWe22pEVCxN0EwT9i7mRvbcZVX80beaU8UoW4ATA0X5krvPmimGvgPxZiGiP5ZqUT
JPagjkqEGTlkfNLQo6eupl0L8U+PSkaaUo1KPeHdO+abaTTcH8rCOShh2jIzaGHy4XiEfl2jJOXF
cqDdbYh1rUOTTLfxbiXjxHq9Ao9ZcyfMS0bDAGzzKyH+53MctJJgr6U/qFM/zMaLmu522OcuSfDB
ea/Ec6q/LSIInpsn65mobGSR+YsUw+emdb/+NFwnBPHjQevr88z5eRRe6PBMkY10YVHA4pOVtMLB
wXjd3TyOT1JVe7008cHIZ4Fg5PlszLZNy4wlEWqRFbwMKdEjbvwxUiBCljR6W5IGb4Ck8Qv1CYCj
rDkZ31SIq/I8Q4wA0BBRzAMhdNlFr0YNejOs+nsve6M+ax4TZVYLOEhXRbJGHNRSO6ged+FKoKHq
EjMLdSiNE8J8Ru/Ud9wCYK9tCPEJKmr3hbaVuQF1FeDuKT0yIAhfYtzAxlRtAcWIHfnH0b7Rxco3
LoC8Ltvi7FvkXb2SvbxQy4Ay5KF7+lWwrBgORhCJ8bSRNWTG2HEoN4XiZ0NuyVCPjskFBhlFgK1d
ds7/Oz0oxEyYWTEucowqH+kcymxZ0kh6VZ8Tvz/1iwgkKGzcLl5HgW6kkDZDC0VeJrVKVknqis0Z
4UEkOKNU0oW23h5xDSZIXaSmlS5UK98aSxk9k/nUPknqojv2mrJS/qn6axd7fNyXdz5NeN4lBFy3
63mZQryqSlE9eulusJN3i08pyULUS6BS5DpNl6MO3fakQxC+LCbBvPy6GWTOhORcgy6Ty4tlGGeD
y+Decl3ZD7b1BJCmfWt8TW79lWd07eYRKx830GiruVwflo9HJTFgxQT4CE6fz4rQk8KvJPbj7RX0
eu5YFJ82x1LEbVZGhyJ9sCVLYDiEz7e93JYZkGMeR24KmCGNLFT8+hVp3zbVFNwju99nU+zWRSc1
PqJStVnTi29BvJG0FOY20PDluBnfJ+hTOa/Kt/wn3H3omD21cC+wTU5Cv6EpcwjCEYcVsypJeKp7
QbVnvzCLzTV5KAfQPdU4AFjy33XjEnihQ0JxNg15DFlOXLXFfD2pw9I5WAKy1y/FYYR/lFhvoABQ
33oDnN6Hw1NAbAvZfOOXZT8I0z2mSSxXJ4NxAxoWH2lH2yRXIEfEWVHruu3+GE5MhogzCMgor3r+
uHCRUUvQbxvFOONuiQ8TE8LiG7kw7CuhMXCyb6McS/bjAgIrUQ1LZS3T+taN1GpWFmm6/5WtPSoS
4Kle9Acw3rbEa0jeVKhDzVejs4YprrSLooS3u1KVQkOTRywEhwhCFXXyCaCSpXKvViic1l+y3uMD
FrmCItaWhG4l26XBRLGo4CWTT69+w+MZuXpna6RdT9NTHSK4a7UePGKEFOx0LOw7ae1HZcWAoFLq
9cz+AKK3Ev01XgmO17pVgC3R9MtQK1BBHVKbFWYezwtaBEuZMT+GecRuPVL7FstcCZ+umB3Y8aI0
ZyRmuCmOgVrlYW41vUhvdePg4VzIExfPWWUAiI6kb9RyrPwHerF7cMOl0ecBssW6BceAFa32JgWO
w0x/BV8xj5UVB2A+xPo8q39A5K7xMybJkd08cY01wgo+djzaYeZhQuWuOT2ebwUq3v0wl257sqRA
gU9P5esdtJGU9soF5fxxd8ephDTQ8gFHs2+NNV36XaaJqT+XW0xNcxaCAD5Kwp5cuVGzHTuTPEgc
MN50ScViNrpKKT3DDo1E5hcdc9pP0a9huyj0p+t3x611K1AqkATsZtAMglkzSAfPNK8iMjI3cNJy
69gKZxJmKK3zW1J6z/rE1D6KNcXMbnYlrWuhYtv+nbZKUUnGNx4F+FQAY4EBW186YoXHK2cBgsPf
dsD9Y+15Bmo+WnlkWlKs8XKLrX0Rsvx2bL+FL7xDk2egH8aPqnV5BLkNYOaxpoGW20w/ICfjK6Er
ae77VIkTsYS0AGBqGrq86ML3hHGifIusDIORWEGzgfpu3C38FUFIdbvU+aXlXn5yXyDlOGGxu7ZM
XFYM2Iecn9K9n73dfUgLEPA9IF2oNLvRe0BeRfiY8xFx1pTxdB7MZ6O2z7hqAfoA+ZqSBtLoQP31
4w22smrSsTLsVosRVkLvJm+gjA4WhrmSC+eQWclykZsW9a2T7SrutXP7/2oVE1Wi99+vo4+aF/Y2
9oVAknTw89S8TX3Ub/mzdjqG7rPxa7a9cXu3BZxx4DQ/f9fd3Xt4gzo73kHprqY/4QzYh2ZZ55p7
AjWgyv5gQ6qONFEkyeofl8pSk0IZgdqkSbanX414Qnpc2r32F88KhyKqRIbdUEbK82oz0LFT/QOb
xN81n5m+yam+pkABPCO43i2FSA9dHpUUsLHI0Q8aZ4zlxiPujPkkx13odUbjkxIKCNAMIFBPDV16
rpri3p3dSEVTJDZr9bSHC2Pp/mYJvn9mmmCNOLRZzrkwKE2fvNgwpfFC87vxIu0JEZT+MV0t9cUo
JyYNdUTSMBlW20pJcgRyoRfRGZJNOfC/b6DHwM5KDqHJXPr3yOykQAUfPQdjSkn4z+JEpcVtEqy7
CYVnlpc3AjpfYS4nUU6TUpuXn+vDwrQoWnkETu/0aOBhiapiTU/QLv8Nur/l349nsxmtEpt3miaJ
Qm0MAYsOVBDaae0h1UNVrYAiGrpta1p1bvEw81mQdv1o8OqHFbi6V8WWKxnnamf+thdfwm2vOjWp
//YOnxONmGtqgOv/RP9FLYS5LLzduXUms7sHdXzojEszEYpLzRVTVg6HcVxWp13OYYCa6c3wZON0
0awptOoG5IpkBn4Ijw9TW7L+nunB02t+D2pURS+SBXiAd95gpqHFDyJIxnLnvtnVNgdpS83Aac8d
UTS58v+A5pXMBLgnVeasQWFdaKdak0xMveSlTp9kJIHgGaw5i+TIfdcGqFazPO7t3uJQMjIh6fQp
hPT+kkXMw5lc/qGBbebWq0BgYRENiSnHh6olYjUSsN4oqaUudz5Gj07m8R80BfZQjYcocoFEQRb0
q37VvBYKrTPMqu4lUq3iuenvtgYrqZW4Fd1CshnDc/KB5LVbKjVopzuWJJxAt+/ph8H0YbvnE3fd
QMmnK/GcmnRm+37ZGwwO7Yyh+NnifkPyD+pbf+bEuTXWwgb6D9FJtpZvnngCkEtveCmwRQyG6zjw
5gvMv7sARGqQ0C1+IvzPrjjJaX7UIhqbdgIpxvbLjyhSfcIYBN12bp4QmjvxPnnwLGxSPZKq8qbp
owQ29ofEMJT+2NTsoUeSQR934YIHFLZa1xPYkO9iv1EidqRIRxZAXFNJX8qZNB7njAZoGLxw8DEp
A6l7N59VQBMaByKXGZnSATWgeCyu54XP4tS80T+eesI/WedNMcIV3PtzdAi5vNXQ+qLB46LYqEL9
XQBGaR9YQG00DgsjmPPSMzJA/BO8G8p+L/vMH+CjLiMYwuXNW6miimaj1YmwFT1dKMhTzdljGs2C
M0OErPk+0348BAVgrS1HiYH8mkklckhw9lXUqMgOigdgi+AzRga4Of8A1WekUxRnJDaNlriHWNIa
D1+SALaflW6e8c0nBulSOV+gd30VQwmk1XfFBe8IVd3EeqDATHGCFs2+mpIrQKjupI0qktpmvx3u
FQEpA2vVRyvmwxLYg71Awr/0iRCL41ltzpXIzS5yoewZCNbBbO/M0t3FKq64YxbE708WU9TFuNgj
1WsQRow/k/cwimx/WzPFVydmdOo4vPcIxjz4J5dSEHyYmhViDks9cQrhyI2vbmppkUy2XL4mzZEx
9TAE2q67+CaShBM4gHJmdHyJBLUgdesZPcTdVOvSvcXhck+SD06hnhXgl8SZ5pCFvW5dJak3d1Ki
cZFvtsr9HJmZ76QTKvPWtLBTCB/s/u9tZJ94XqpcNbSO4K5bTgCcXau4QGHeo9uw6t3pHPhvGTIf
/NaW5Wz7aV5fDBspzqbipOJEFfDuMGf7+rv5OU0TR7Xc7V7MISnLo6JM02pAbr8G30YPvBuKDql+
gdmEoKU5XW4+2Peb2krs98o6hcQa5sANqUiiin/VF7TzHwgBnLukwjAfwKPK0MoSp4bT4xYie739
cpBhPERC3j3oZzScmsW43VsQ9Ut2zxp7jWl4AbvtTsYa72kUplqy2OTyE9QZnQGJdUnGKliS0cI5
TIFCgPSLN6CxLEfy8QfAZUL5P7pXAL+7m0GhvVUWzzDrvQdb+OjEZTgeg/G+IHEj61o6a5jghnC9
7ZMKVyu0C+TUXeEldR2En44VxzP3DwW7mcSzd6NJBviIMHCJYCqonqgLPgw1TBhpfjYImlpgwtw5
QytVR9d1v07jla+kNE6c88tbpI7CjtdQ6HDMOGJ4abzGaI35C2eRktIDrQR2URD30jc05qD0By94
pzJeqiaHFD8IQM37B0QqBV5QTo6adPOu6c3HVJnlp1nbBaGR4TFe5ui3vkTB9nv4hCIJqXEovps9
dZt9UvHOUjbGGqLg+6yU3Q6JBvKI8idRUUww2XgChh0zgkGo+9+QMwpZvF3GM5qOiFFAY0o4bqXx
Wb4ZgaPBhK7pgmV29/V9Xf/Z/t9i+vTX/WFvHII0ekNhXorylMj396nSu4bSTS+g+IUvf0R3EssO
9D5CCbsTEBmv/0Xe/L1N1cBRvQz/Mt9IU9vyoXXcLaVHmF4kS+JjDpPolSQnth5ApxmLeqhIQaYK
GqT2cx51xYkswfGxOIbhtjj50EAwoRgSeQ+zYStw6d7/rqUC/g3nbNi1FArlfS+xjvpRcIlw7VTy
FTRv3b7f/30BwSfFU7aDVO5Io7RVCyHtnJcGjJLESfru9i1RLDl4RMQ9JwhDmy+5IUfESY4spN8b
SqbOhX9aagBZpPbdXRx07kUg1UkodnUZma7mgi9K7SO4yN8EeAnj7HbLJQkRKhxp3IdbT00l3Jyn
yVgqxxPpSuTJ6ZUTYy1vIPcyyA0zZaMB1PBvSpyDLhMl7rYo0BuG9dVDSZLtiXuyqZqbZaiu3ig8
k0PdeKXKxKDngs9XtG6L+ZNKuHeaRIudCTtXStnEQQ3Lu+3J0IYpIe3lbpmgu4PpJjA1frbQH24J
SDysObb7NRJvnSMdYPnjTtni1IjDh8NHvkWC85BP/u8gENJ5+otqrnBSnpKXVHYYiHjd74FFXk2Y
JOTwVJlPFFVZwxnLcj17ypj98K/lb75dFtTHxa9yNxvKKsh/B1YiFXDOJWYkrymyJeudnrMiyO9c
p6aoMEZgSOn8NqoPb1ix6Gp7TVYefsKQ/j2G6ES8n6cJu5H7Oxo0YxPvKjuVb5iGGW37eP37+qHe
92pbeLILXIea3NejD73SzYbNy41wyB4pGw6hp2OsdWA/2kEmEELAzzAuQavS2OHXP3UM3QEIDln1
+VPHXvMLbApb+5gkcGEAGewW2bvVlDUP7D9nTR1CPtsII6TY3u6meJcTRE+Z7CuGbtoREvpjzgXb
GqRsCX3By4Bf4W8Ts6mICOicwqbLhzqxFosIOyNA+d+IvnbzFHaStWjrYHwzpVoYuSgCxgWZ+yY6
8VDFXt58Uaomh2CJ6bGoV/0WaGLA5+PIu+iXkaoEKM39a7uIPxi4xxwHR75VCheZnV0Vp5NW1wx5
dNJK3qXOVsXrpcZZj3D4nGQ6/U2wNfC0LioUVwVSXuKFTeCbSCJQy3kY3lq1Uqv6CUYWXwDGz2e7
lFZy0iTuN926btm2OxC+OSXGPvakbLKEg9Yr0zZ4sh0DzG0sm0ngBY5gwHQpYZh20S3xZN1SxsHB
sUWhe+SMM+ZUJehOdOzQ24JvL0+hNToSj/GZJOuNoPyn388x4fnsU6UUD8nuioi8ctr1C6kg7Tbs
kkge6LMQolvDO2lCAGmrOb9D4JEm0izf/E53/ssi27H4lCRjlEBRfgmIOcCBQWinojPXd54ZlftK
TTbI9rfg30JofxcEUv713PnamiaqVgyy1wMWTTPMqKteUZQtVJ4GIleK49scLQXEz+adOWleNYRF
+2sisF61VjhVySRxkh63eRDgeIB75/H3Svouj9X06aezAz+brA8C2c/uMOY9cIJBDoQopGnqHcC/
BHskLrR5m2Dv0/+TRIthHn35tRskidiHwKszbNlqJTJilQ0Bvz/Rt2r9eUPrRPkfjMorVFDL8tcb
UTHfA7ahuXRY4UwlPnIXM3YIHcHHHGWpF3T+4QQH0+hhGqP38JSlrogpa1njshJm0GklaghpLvyA
ezXG5xeD+w+hwqQ+qMMAKKR+HMbwl9J0+cVDLKiz2oJt2aATvESoxKOKZX3VoTUAJaXqE1Zb0KNo
3JoW8Xlmv3PLkdr25m9qg+T7BxXklBUsml8e7MotG2aktTNTaH/dlzIo5JnDTNbQnFoAwE6PQXaw
WOHVrp6WxM7Dkm1kQrNlqxvJ1jSD1R++nN2azlasNmwX+geG4z7dzZ3I5BwFb9eoo6lkMrtl/SSd
wYLyztOo+6KXYsuFotUv+2Q6/yYDBlRMw4Zqkuo6kZskEOLRoKOdDaJd3YUjjzVEypvGnMvAXeGh
OFDl4LvsJME4Qo/hOwIiuW8GFXHSPrq9ipMrHwQtmCNwnXecC0M5LUfrT+COc0wqw3TkU8ztuA7g
cq8LWbh8olX8K1U8VenNijxoto+9ZdFMsm7Sa7W6ILXym9vi+i5ndlTdqV5xtG79dP/ZUe1iMM3w
VhQIrAf1s+ZzB31dlSjPmeOGV9H4Uaj1JAJ7EsKQD4oYemTHwbaPR8M+IG+NDUzlT9DcHM7tpzpf
lFeH2xmX/L4AlZNexjItXL/rT9Fx2UB4OLnKeT/zzLRuhsmlc/kHXOz1WEHIVhATD1C4JQqZe0ff
HUFSsgyaTtC/lhA4Rrv3D1RID8JvOxjiZgluvCAGja+k3LJ53HqCDEoyJatX7hfyIvf4wHlLC5a2
V6Thvy0voVXCFHdOqvzVajjTw5ftv13ZyayH6uRt5+ktN+kRewOF5ZICcHngM90y3K1ptDIdAiwv
DgcV6VA6obUSiIi9xT218Zzr5HhoDVXNbEcSDdpIFkz7wFDSG8UqCWP5gHTDxaIql6E9XilH1yOi
WEM9EdVQPxJsJ3WgdLnPvka68uQKMGECPqDT82u4TxR0CDWQL5KCJC11+RVFl6lrD3koISJxx642
BgCe4Kc3tn5zNYArA9PFeqrgGBcxwYqB0ZAqlVDZDgW35JPiqFrBMB3p1TPl9PneDpYYKKTc6DPm
fQy3s8JQyiuhY4I3XDFES2xts/RX6yZQE4/jhEXQkNCzb4AexFHSNLraDaIDgSBDUIPmSkJvltxZ
Jfnn4y7Xt8ACJ/x900TdPp4AxgRyhJCqBLK1EEwfQJuCaoVCbRb4Ja141F4XHgo1UpqPQOsP2X41
TC4EfU8e2ZYFrpB/uk87dzsY5mk7+WHUBKyDIRS2pIHZvW4LB24vUwZacW3/ftCEEf7pGAc2FlBQ
wj498OqFS63oUjQziCfKnfcZ6MopJ2HaHkX3WHqOF7ZcJuFs7M10vHxMS9YCcQhgHvChjjoTFpSx
LNi8JQh9bSxi5QlnKxro6zKVM+efLxLX6JzM1VYsD1X+oEzN7jUL2TEexxyjs8GdG7jwpH6z4/5G
8pWlRxLQNf4VWH9bF7wCyNPemt3sBXOzQQGnYRK1Jow7VZ292K0S5PJILqA3Iw1rlEl6sda1/tY8
w1WJ8bc2LEYjY1A3oI3LPQgvLEZUAhOltSphdMAL/ev2rNkOExg1uS4YR2/5s8upQfhMLv7xyP59
0OOZak9+kzJlcrcRCv20kzUH5PQ5NNNO2zOSs95fkaldeduZreGtDGrIGnp3B8wDVRk2VSZEACA1
uvRZCto/rWiRtKBM90izz3sKjHR6VH5wVnz7X6ka1Gm5sN/ZJjOwwD8aeP5T0yblutN6HxrnxfMn
o2syMcF2ugWihKMl3+1stTmd7HNAIcI+KLjmrv/G++U3DxAyf6twAOPEib0hnzWzpS8/paWn+ioc
kZEj7PNe3RO4EF6BOJXRIkosgZFQ5yWZsNwmHWFjMrs3OOqjx9Ge6YygB19azrYfArff2qxl+nYz
EZJv6hRqHxfFs0f6TSBvvmobqojlYMN3emis1fKC1r+2aVEYOTuXVIl1Mv+SMoRr4HBosXDAjjPZ
G/KlroBvIWkLOJlDh/YcuWOKSLmB8HRiRmLSW5JroTzkde2orXBOUnXpQBuW12KhKzlv4wvd5hCR
t94lBlQxOGsBXlTqB/NgL6VRF/aWeIVA34dYPLHmKRzkw3VSoJY90nxd4bhJbZNxL04Vklz6pyuc
V2P7EX96Ir/pmqmgl35j6WVroX4hBwKImQ15zYK99E5UT+/xuoPNf87m3GfgeRm7jhJMPNyVyz7t
VWG8rgxO1kePaLbTMNElWWWXYlzAmd8NXVGpFrNu/FkshpoUNdxC74z9n7HpCam78bn5KlvK/rA6
etpIz3ffRD4Jl++bV65oVxBRX07WaMTx8kKECKu3RZoZePg15YWJDQapL9JrMj5Li9UR4M/WdXze
mjjXqdaW/SVmvn+Es2BAZCiJ9aP+cL89ViDukmvV9pAnRjD9+MTwjkAXu7XfTTrwuWEMSWwH+EoX
XwuBQqRCqD3eubrO6hjDzdEUm1YGD/Cd45p6OzdLwDKgDL6kF4FldjEh5l8akrOJpDg3GjaNC3Qo
2znWM5QNP1oJB1n2rC4mJyTOWBcPsgAWSSMapndB77dpk7B8dZUzJZsUY3xVpNAtSBKqbyYAosFF
9Jnvqgti/Fa/oe48e+VQnPosGmgya4r0/j8TiLyMsGU34EqwphbyVUfrQ9MzO6kjQVufyKHF9l1Y
jam/dwwZEga/ZT6Z/DIs4ovcEQ6BBXU/bLui4FTRsGQUhmHxR/R9MqYi35hpxuDvrZjYnsSp6AIz
7A7KAN4+QVLvbgJaNhhvKBCreCp5fc7/TrK6j4p5N/oH8peoMK+H5xc7+nPfPYgC0VUsv7B6KAS5
W36XnhrGXGwqwD+c0/KJZ9owv18PIzcNscXLksAp8HYiXcjv0QpXfZrwAgAQJuovxELsNck9sTO1
AWNAHbIfb6mcLwbjHLpuq2RQX8QzBeeZAKFZSHKUN3EX1uFzu7TQjmkZbEcaUE6FeVgXubCQ+u4x
5W4Lpob0xBMohhNoZ9HgC3kUO8MmW0/i8fofQHz8DBrKkBEVOHaSephLvMH1hGYiUqdUJWnB3a01
QkIxpqm9ah5eJtoGR6DXsTGzreicgybF7uecadlUFgZIL9n7dZnGotzUw6ma8le/m4cfRZJl5lE/
R+r7PNBKdGcn/LbbNLQbZ8bCOUsxuM+CvipsXGWtAYfvaKAR30d2jjSnjZR5Lfijm4YFgSS3Rnef
Q5bGKEmAbF3hg6mf0I/4qfYJY6/wyBAHTVtJwzjKWbeWLgnL9rqEyNQ1rshVyO0g7gYdjaTZ6qts
DFiOQ6tx6Fu4BQBDX9CWhlg7leedjg6Gi25KaoxIXZDNxy4gmRs89YveeGs3wRJypxOlss+0GpnW
WCQ7CkfalRAf8SQMP80Q8Clv4mDWqmEQM3HhwrXMtIdSHvKWRE6h1mvtSwlCdUF+EImaq7A7fMdf
+cEvyBNL6j64a6MRRLQBan2WUtIBWOabU/DfuWoyDbjBkEjRyyVjQnovfJQkVOUAinQ42KuvOThX
iWi1QIGyOzvQX82ZbTalxBs9YkbLxarcA3OI1Z8ERpvbDA0Yt3MCRXjZUljaE7DCbGyfH6xu2pdS
v1ZNQ13TlIO7R26yOYHPGxYvptDnlk+wKZaaMrxF+AIk6i+pe3tFC7RSrKB3KFRYDShaTrgW5ZfG
vTvCuH2apF5MJUtSXE+I0+wcGjYTPi/5B7sJR13dahCk3asMFZPIU7ixw7PBFqL8TK/U6Ca5LZQN
dszQrcYLbclDr6dXDFoW1VKAY8J0IKP0NaVi9NToEUCCrnbUTktrWAVERyA26YqjfEtDUg8vbMdZ
pNH+1zA8oyv7noBwORhXB7Ev0vgc9hiGVZCF3Je2N0P/cGHyqa2G63crfXStR3qeEnZQHdifVbeQ
NtJfRtckwa9wOZDb31aqDg5AGknvL/6SNAbgbiGgnMHBMyZ7F1pyXz3vH+5pqlSzBS6YH+43vETZ
e9Ttx7/gVXyic3SlH64KemJDBx4/j6vx0nwXm6kQ+xFqrTJEnS2xK/bAJWi124jaKvU0gp0qmg93
HpX5MKrMLyTno7XbeZRmXSff8lLyeuQI42GqE8lNsTwXNVUFUHIMiPs/HKQCHzBRNW+B2wuhLBs6
wygC0eTu3cpgQgx5u6Dj3W2zu87mIYRaluZm3EqXnafNzTEsQSNLZp6Rrxv74I4JFB8XTM/m8bSV
LedEc3PGh1rQRk3AIhg3N6I2aWrx+OdC2QsvpATuNsnuFoxydK49kR+DqCgB+37tBDKUPdZuTM29
AtzzBew2tMnhtEdoomZnux6NrPAtZdeT6KDEmrvxZQ5LjvPA1/srRulLqWywQL9mxpReehRgsdgL
u+L/90JrZp/0Zf17jlvW0sG1qvxT2C5IfFKMblGaglh/E6ivnlk5nM8TcpRLgsz32swFnieIUK29
5S0Rg2hAh54cSPM3CL/9swuyMRSxEBBH8q6yZR7HKiTmGrdEem7uL47NRYjFV+Ml9yk9wnc+wMse
v1I1453ooGVCY1icTxPgVsKMwyjXtHo/prXzNOfwJn4GUy4EuCNwX3FtqH15adTJPNKpOBo3IG7+
w+78wLEjYmmYfxQBED/JafP090gQMyeuiWaj/yfR1XGOlGB1Y8rNju2sU7Tpl6D/XPG1bffCfElk
LKm9+DW+8S5qJxfFSmyu0hx/npxH9fyRL90F1HGnYf/DX/I5nS8jfK0Ep5au/eSowkSPHcTZijiI
KUyvGR0ZLu4XJweqp/jBpMsUcj/iavnw7StQ/EBycxxs51Qv43MmK77XFbhiZDBFF2AwSaqdVtW5
kF7t7gL8Y5DSz6pDzZPHnENmIXldE3bS5RCIdiwBCEtBMdRw1TavgE/M5ITxjuQSf+VFjdu7gpfT
qJdPwnvYVV/0j4nkz48pfr3tlTfHz9GzDSYBHax0m8NoYoBOwncjRoY0uM1ZArG86Q/b3PFfyea+
/z06xfcwk5ncX5PUKMhlrbK8/IFHK18trWQfZAHcILkiKmEGT6mJ3zshjV26qukgZlRNaotYfFe/
qM4FLpTxxTsRTbB5ccA+KtaJHtCQtF5oQAtvk9849IvrJ9g+MI0Ax20M78qHLpCExpcGlR3XLzlm
fspXO+9/iGLOMkb3ifX1uJYdfQylxkAYLOit+ilmg4yguBfV1PlY7BLEUMIh2BARCeb8rkIfQDn7
5LUbhhBBjyTqLmZxlnVhlRDv+896NUhaM/yn/sx9engD8mYwxsDm+Rs+8AKBOyvoZtVXjgc6Vdl5
PvUXFTiGIG5i7+UPKof7TyjFEeXvSSS7aWkg3qnkVmZ3NGaEJgrkMGsP6hTtylrFXAo/LT9ZnR9E
ny0TwDfqFhBy6fP0k3Eu1u3D+kFp5tX0thKkHNUGqXJMvpEKhGA4pJYykkqfgEGLhh91ONYChb7y
wEec4cUDYGj8FTShY9ZPeZn3VmPvT3cNlSeSWWZXoUHn4Y4pZshHuXDYQhleQpBYxnCBGMm8AuTb
6ibOYVQgROf0sIVH6lePHw7ZJKdC113kYKGSMe9Tb/iXudbhOMvcac9Qy1seXzIFvueVsBFmIgvZ
qeX/DLgjoTTM9AHejcuCOhDvWKvm0X5RR+pvSQ15G4h52yWsIkTKWAjSmiSnXGyTQWj32tgW4tB9
S7oJHDnQSHw/DrICXec0KhQiZDZOLIZsa6l9nupc7wnsBBAZRQ/i7qaJCm0uCqs3bCIU3PO9XYro
ZKGzagfaO1V7V9gjTJyMnWjqujRQCHugSFyq1BuYKtu12uLcJC4G6gy7Jpx9CE1rdxgxR5pM/ZxF
v3z3vSE7MRELiPEBId+aAHwSGcvvz/Rz0Ql+JSQsIHibJvwYFmpxjTDTTP0+q8GdfLDcHYS0/kWP
MDfGiOSMABeFfd/8GpyjLZLFKos6PV+ZedOoC2Z8Op1SOm5+CS4j0rNJjGcqCf6iONl+cFaxrBM/
GoTAYkBsQ2sOYexluwxfCN4Opggz3kUasOIMbNpFzPiZ4s24O1NWapBEIA2YiAlKFIV6kj8UzSQV
Yc9Rvh1R+Z1+MOX3D8afCwdpu64b4YH6V91yYfO6Jj1MsndX/SOiS6ASOLa8rt3iO6kVc+lTeKEk
VjPVB2Km9sQhQska8vxBGyYi+S0p/qRu6f4PwOrYUvIm3gnZ7bB9VqEBEuLda+8UjKtBZMW9p/dP
6P0OmhiRuhrQ02eJl8qBcXMQlm+JA7Pf8CFRtdqC3ovhbdlMjJjJz7+hfbdKAd9Zo9azCAX7WEih
Y5hSplqEd1Zrb+XMl25ac46n6Q4O2YrJau0o0G5NhCbgvxMdxdeXrgM9G2X34/qgkin8IcBt552c
4EUXOaCpMIH6ZNnmlUCkXAmVnPRsRoPs/m2UUgw7/mRUBG0OU1IXdrbkNx4Bhz7AsNiicQ+AudxI
BF4WOFbhrRIk8/sEm/3F/fgTERM6xeuP+KEmDUVn3/H4s4P7U4M5cKs/XCtV7cnp/OBBIKvZJLOY
w3IBrvghxoMhIWmoPgeRTZKMUJUOk/q6G68ETLEvaJ1dSlwI2bswkzJ8EGHRcekKlcktMF+/KiXy
3RtpMUt9RgCXVa6gJaU1EioBrz0FxxiXRh2lz1nfRhLDQL5izEvvgzRtrxh+f9sYM+erd8AkKK4W
/vTYT17Uq9cbjNhSkwXFJefz7L811RuS2ge1ZuE9ak1pIs4y7U4B3MQJQy7An0SqcTL5K8xF4RkO
4Zs1gOWiQS5DO+/jlNQFAkooLALJ3ln+AnWH2u/UqTxsFodpR/s0N8I5B29yTMQCI/cVvRwbHrPn
Ps6nNiGdbs/cnafwE+B1rkpE0/lbcoL7pxFi8UB6e2/xupg9bJOA9x5OOL6644Z9LDTfW6umTdPy
d1FgJgA/n9A3OzLDxqcUDmiP3/WIeVYkiH9r0iy2BPJSldcsjpgfYPWO15SXD3UQTavlEixn9P32
uXeYch084qCZTS5bqmtD6r+zlL+sdediUdrTIFzynOaI5n+4pCF0HJqxaGC0YuHBp7S8xXzMTEUK
HXEEWGcj7fjCFC5GPZ7CG99f8GX80Y9XcV1yTGKvRsP+LwV/UbQ/l9H4FJ3R30wBCCN9dUFalZsV
bl0nGJeiwQD/QEN1k52+eVG562LXF4XCGbxuRspb7J8Ga1Ixqt1qRv7pvNN5sSj+E5QEC4Oak+Nw
DOrqTEX20SqJBTTQO3c9exZ1mATuvBRAER/HMIrwOh6bCwh4luhTthsiTFhPdTBBOv804wjo5QZp
NyHPhx9OVvdqWHEGk7fbRuYd5loVVX121hcX5R7zB78G1Mz2C6pNNq4qus9BAYEy2MO/HEYO+KVP
4JQ1e8LTD5Xt81AIXtDvWpF5PJT73rsbclsKT4CRGTV6jT24BULrfAhy5UxOz4usJRpjFmFI103h
nIEfGkC80zbDW6iPDhu4lP2V7RnzfpcIcfLTfLVh1+6gp743YZ4aHGkCefjnOVB2IuQNkYxode6g
yz9t0Stp5YTZ1j0Hr+jZDguvx7OCXQhnHTU1IMT5HMOPRAPnWUtZ9LeWH5TuMU40CleYN3WrMuxl
2scv5LbXkslnMLTzog0RYGpK+llBMuBlO5W4iag57BiPaD3MDjyUjI9GwY0pTISacRFkLlHf9bfR
W5Ejmg5Br75xZQeO4k/dsFoWdnFimuKmFzU8eq9IEBs8kaqqj955/w3F1uK3LSIeXTA6HJZ/ynYm
DCYNdCRuykf6pyJIr7wbAAEsQ9TAQHXRxu/kaDi+YG2GTipt3noud+T+nYfEGexPJAzPm7wzioCH
rFbF57q2pwUlqb1lfnPp949dvDjuSnuL2J5IvnGTT1gy0bhvjAd5aWjRcU0rFKMEJ+Vo3Ex2kWrg
aI99nlrml5YP/x+cgBGFIkPemIPRq9rRLdMZJKHv1OO0gD0lnfu28l/fZhqQi2gt2Bi4HMgHVolC
ozTHmaTtPrB7jkHaVzv7AWuRn7zVDZc6s6lKPXy5aS9hH47LzlOkUp5WLH20fi9zUn6O9id7jGBz
/pWwSSRUlI80l9WMo7JREOgSisJ64l8g3D3oozpcoo7YtbQ/yjJtRUq56wNMkb1gwsp1aKW6/JOq
MV9U9x6aJsf3YTPVSnjwFX/5I9XC0KGTy0KoJ/FBWsf4VViG6kjpi5Y8VezdMGZszLDfHzzo8gsQ
zQvMFzUdU4DJO+kmJEElNsWLhxi6RbORm0pYeY3WyKlTiYEV29yyPlFmf6Ry4uAEv8h8FgwxhDbh
6NbPmhmlWTFlI+pUGMKweLLm/QkN1UucDqeDENQtDRyF3EpE4Jn9y0ghn7XxlgzBV4F7g0icVpd5
GRkRm2m0qGsSnkZEOvs1Pn60oivG2qEH/qDD5qnsPmoU4f40sz4RuW/wSwkOVtyBHnmho7hwpH7U
2IPBEhS7Kyger2vzIKKHRsA4sWPBSFIxYI+qeYKEkr3TcaWZ6/ry295dtBtcYJYBU4g+jVMoag0n
QyDtbcnI+7dSuIT1L6TjMARa9PZxnVskQ5JTS3bzTgwSnN+b6h0OB4xMaS7bVQD/H6xzZQUnBngv
hwKqLr5QnhIzAxi4toPAhL/N6bC9Rh2ARb3duraaXJAif8T9JzzOLRMyJIMkKAf32DbH6mcdzlIy
xwC4Y81iS6/Iri9QJguYGISOGPfyLe8GoYPTBknM7xdgiXJrVioBP3GiuCvt6lXRUYjaVjsI2AGr
nDwSkBfWZoH5TQxb3wCZfdLvQGnvDjkxlV8k0m+FMlwKGYCqkDENLXRGGTPW6jm1u/0fNytTj1a0
bpO9IY6tFGmUhsM8A6fu4fLcNAjMSMngmUP2efudIgnzr3RT/mfoNdSUJW9Q8ZvLbDljDuLNIauU
05Tilz/WZXr8G6taYllXw6f8n+N6svjn28C5bYN2ARWWuXgJRTs0dftzkz9laHwSJcWOtH34Q3bC
uBBSvCyzUY9innNg3wSVcn/20FZJssUZLjAwWhDgTw+lbaEnRROOhOWIJ9uqJI/60ZK2qcettSaH
asdCYJ7SIgReefjb9a1lEaO0Dug8xqoD24wIDdHIoZv7PE7ouSm5FgIXsLB7OZcpOBYa0JIA4fBy
SzP+ZD34gGCALQOth9iJNwQA50tFRw4jTwrDYzWJH0AIfgEztQodaf1UWi3C/5HVjhZfuYCrZ5fD
ArW4+lW3BDRDAb3fxOv9+03bU4/IQSjb/HFQEPRKQ9PzQdI6FQ9Lz6LHMrHlqvfXUNzyOJvLoZP8
4rBCz+Zuqxpgq9D7D26zQsraQyt9EFy1gsz3gRZxITZp3mFlin8eZjYr3q0fTsLlQUR7LSnCu8r5
g7qAVPK/XW6kHcZo5C8Oo6EY8hdFKLUZ9lOq7+5cK9daiGDkEVgPQSYkYx7nixY2hXrfjsTda0gY
O8EccEw8uzhz2T72zQzkuFk46GG5wtHhs8guTb/SuifZEECMybcJvAiBQpGGzNRtSB1JPxJcAc2k
95zvr1hsrhyjGFMta9fhGbORNikqPKxinss+0jDCSQYHRlsvss+3+xU1ySEMvYZjGvEV9nI0lA2w
1YKAGhrP6sIoat0jYDTAscai9UQ4MXteOFdKgzj+YSo3sYdVQLWFdBFyy2nIxk6IQ/BgBlg+Tl6o
PssU1G+M4tBNZ29zDPAGtgoZJjM+iKXh/wa8bieseZ4J6cP9/tLtTaql8Fk1H7V0jVUNzvau65hr
hXxtdBJfRbj5e2dx8ox865pe5501EFna4HQsePcS4gstJqJJF/aGoSi7n2Ymoo+8rjOLAPrpi25d
pztKOAV+8slp7Pb9EABuGy/IUYEKjqjGjfb5OYmk88ZN7hbI+2V0k6dMM98sJDl9Hm3Rsb2Lpenu
Ayv1ooRF+fmOUIw0e4L+trcIMFq5GVw4GFn+BEMQdv0AJqN39jE6u9Rz44wrkYQnxRirfaRNQy8h
Y8JRE/8z6+mc7uGgr+AopDIWwv0DBYmqeUlbHuOt+X44r5Jx/ELWElmqTD6dMwR6+YRoPdvO/+Qx
sv36158U6lI1GNLRAccf3hnPyr8oG71SRcKFMNl93Q3ipfkn2OcCZ3E8HE2T252sR1Lv+CXhsjNr
WBD7/YIOzbxV8nVwRVv3ve6s0eZy3ghj3zhUc4gWdG3jbgEv+9y1/pEFe8+/vf30EOw2ocCR5rl7
MKz1iqC5h7Z+0H99WZYsiDzN2LgA1uIFrxVy6x0WAYY3J3PKbU1XQNlTIM5QqYlfNW6Ap2yg1xFH
1s67MBoAegWuG8s2Ax9wW+INmilUjv1zyBabI35ZvOOPMatBXQyVT3M9BygqqtHXhgDcxQDCiJB+
cNxwPe25CkPlluEdpG9G6rDSZ0o+7dDeOmzpsagJ2CbjiDe0+MTL25dC2HsGs2/pz9AqcRDQTMeq
h3X1NOnlAnEZrO7p8rFj/Isi6ZpKu+cJuNey0Yxd8+ZX6ybUJR7LCgoTwwdmTsfrgA5iH4LhbI4O
1JlkjMNCT2Ubt/nB3tBTJTd9S8iFpD254DBl9uZK+MMhuGutWPz+LbtJNbNx4fiQUlysm/J9liPP
LwmuT95X/1qAAiDXU7hbj1QS5QOQDsS7stlrOEdniSDs8/OjI0TPXD7U41dC3B5AXJCnnRicyE7W
BpKF/hXKJmkbsBJeMJ6XCjgJSEHXm0M4bggTWNVk2msYa95Llg8gTtSLDvmdXI0SoP1O0vOi13se
TWVtssqfo5wxOHzuuPlhxLxcxEj3ZdMJa01D9QiBo9Jmf0S6MCXENaaCsJkUA1MyJ7zJs/UE71rG
6OgvPVqVWp9+bB9TAV6tZJmJxmG1tmVCOOIIxObVR/M5DdG2ulx9OyK9T5ThRMOON830+ByEK0/+
2+uMeo+T6DH9Nl829uxmDCsa2JbQzav8msSWcTgrFYIK5O6vfQquZtZl9lhJ8+BgyL2Xw623XbS9
CxIoHfthzwd2LIZzOEYFCFG2iE9ENv4eE6ORAZIWh33x8/jlWJ8ZWlG+y6in29nEqGhwBI9Pght3
xgyVz2kuwFppdmkwBKlr7AOQKjsoZbsBeh08yvg26stWeYVso4u0jcQLE6/FEsXfR29exgQpfqEp
jAGoy4IX4yvRqAIdgYfo6GKyyWdoX1qyk++uzyDP94aXOFXsDdWPd6yJUh3EEFv39hW1CkE000CK
0UOZBKFOygN4gMxIq1pRkWonlqd6me3svOaiWzlzJldBfVnW7H8IBA/QXETSAr8vZeFVcIKA08Zo
n94+4EzZZ3D/ibLImHnEm1HB5WuIimPywHNP1g4o0G9P0Fdb5aizDcbJ6vE8a9QSWIgRQBaU0Slv
f5umVPSldrpNA0mWeX1n6dPumZSzgxlh+WjHO9X9QdSLzsLEsfBbx0nYYHHLsEElXsTS7cKvNa07
wAJxkCq4HUbXD//isx+Mb6xucM31aqgATy+oUvLnp1xXlHVjbfi43iQfPzfB5GZg9n0Yz5f//k0g
c191vNaylquyNfKDKkXr+JGnetTS4Xrjlba/pv9uAgfDXl8PswmmV6GbBGM9sKliBtSkSC8oH/w3
9pWVozEiSTIf84MrTjq9tuHBXZOTFFJOdUNT/F+sy6DHK8s7tHOO5WLEEouG0IEiGD7kag7UMuF2
jSB4Bj/XsCiC4ON/jKWQalCWDJhCDXAE7EmvYXoKJ65TNsR9tXA3P1dW8oJynQR153JqK26boJBJ
Zx5Hhhco2R5EmLDomXgnH8qO+hq5ccrMe7gs4mTETr0i9cp84+7fIP7PDyZyD/q1fLaZ+uJoDnoX
uRrpMyFmGTOsyqA+yQae4bxfqF6ouUvSrgL8RtXmazWRW6oGf5u67vBXFuUCpxHjDNAm6jRudi9b
aiCNQvmSXTejTmA2FtxHN/UT21UAxdr+XHKmDa68uqNvHRoJI3Ba9wrzdGO4aR6zu3wxHlh8Txcs
kq3h3GlQ3wRhlXwYrYYjI8xvYbAyL1Amv74Qd50Td+FRm4jH/uqx7wO/y/c/Ex0I3bB3at05pkxD
tYUhBpYvZd+fD1DAXSTaPicvF95x1lGKe0hlXRDzeon7djf3ydAlTy83ajiPRdqetG4w9fn5kCMU
qDN04VIfFot+v7h7yMXXZjkYedi3ImsUbEcXbPwTgZjtzVhGIov/qBq9/9Diky2n79XK0uIlI4S+
fMGvNWhYOj1zUpcpHo32PlYDaApkNQurIQspCKwwXvVZPBOGp3fmxnWXnJmrel6+BperT4CpLDN/
gPmQ1oP+gf9Va0GLj/u/RP4u5c7CTm5XLX7CFw80bhb64tj54hs5rzEtIm9Il4kHATGKkigz8yVU
CtxETOfqKu7UmbteaH6uEEpG9KHZbM071QzCWBx21bU15sLKwlQGNBdaMkMhWi+iuYu5IP9S6TdI
lWKBAR36IQIh4o0o4qtgHoCeOPRejn5eRTnx69pC+zrxSmHGG1voUm3VNj7ry0O2mnr654bcgGwO
296RwQ5eJnhguPpPojeh5U+hro4Yk4nBZji/kTgArBxiDEhSKx2ceTh4z3SX4jqplJ060SexS4o8
wPDRzEGVZkUbyTGItHVF2Wz661bYPUUF/jtdjR3+Cnc1B9U82b69MYnaKGDbRPRN/bVmMOy3YBM+
g49ZGPLe/un7xWoY7541JdXRkhjbwECUKjquurGAfqXjbMoF3fUjzJupEVyM82jaGjEh/FXwB1lo
YtJ3JkW/fT4rse5JjBAsDR7tk5MRdT2K+ro4lMBB0nLotwhJVmj7oSz9qCMwbTIz3sNCbdYEcZaG
x5rusMmB+4ZByml4NEk6/B37BaPCo8wNkrrMlQcb2WcePb9cJ9sY1jbxNCXLKlR+nF3zwIEdQFPd
yO+FAv4KvMEHPG/Ey7P2ATcYenXT2YR9jvFHuTnTX7BPegJ7/kf6Q/Q7a6sNqMWegyTJC5rkFGQ1
DuY9WpwpiIIcfid4WkKALKGki71IrkdW6miuGPrwUdfeUZxoBgFV92io2TuCs26YevqwDT1TyBji
naYwXtDcwmBVAXT+bo5b1tN9Fn7YrJIuGksW02lAHcLLZJJXGWaVea2890hgep1lEkgMGyWolk45
yPVo0jks4cBywwmQJUMzCwNOZDraUrHjTR7RRpScf8s2t12Mp0AEMwNwVUzpXitKRwTUB09SpYiX
g6a63NbhFApAmPUJhVRSSW4JjH1OaN8Y43NdsjsEk2svWOydg2FXfDX4lcjmRDLt3qO+GRVfJEQR
Z/ajt/6Pakq43uRLnLxwPqKBaSIQogAS6TtMR5D/w2OS22OR0rB1Fvq808g3Vva1KPJMt9SkStP8
Vy7QbtlF9X8t5rCit5E2oPHNGwhsnx5JEvOCZHwb85E4DTFutGepVJFef4ifd6z2aCq09iJSdP4W
oAiECsOkPbI+6LkrrGW56NOu2jHAlrSeGrzz+KanrODGMq53N7pu5HzjjxIy6vRaHFTGbSx+Q/aT
AQCzthuqYIk9UrApcfjAm0OtrXeEY+PxUdCvOdHPG5Ql4aJsxnbKbBZ1/0WfuaHfwJ3DpQ5oHxbe
VShNU7NTaP2ixgiDxkL22fvgO+7pxTWZptbH1YQMjEGBqa1WJaxoZ4JuTGYoXv00tguskY5gILlV
rq8n+Oj/LbYLrKv+1k1paCs3m+lu3UwFFG/Z+KjABS/D1vKXAhcn5MVKv0mn8gJMt/j0B1UAV+JR
xaACVfxzA9bP5xpPKnMsJmFkFMW3HUNb/LbENza1cBFUjGH/Edx5ldj+UZa6oZKoiT8I+1IgzDut
PC5n5Y24P46AgX3R2REf+1cNIhiHFaUVKulMAzJQQj03ZBAVQgi7ww8RG1ghw1bU56L/GS9Z7ODt
tEEEjeVy+brz6+8NSZ4Z9P9sSrnH0tPBRkx9oJ8bTjbCjazR0ELhrMkOwE0NBD5wcdT7UhRIC3Pl
m41paIFSSIPf2Vev3BmftsC7bpgHni3iR4hXUqSGVsX138ehBRsuSzt/GQkALzZT96g2CC8t9RBh
S+/VaSvWtCrJrj1TQfqBaklcIA6EoqTfeBWbNpQ5sShtsEEpB76EQHRs+2eRLKHAMKEzPMr/bnSA
zcXTDpXOVn235FeNVhFpOOF0GS0NvqyzfrDpD8+jqC1IJP6nv8JhbRBhJBRksr9SBQYuVxFac4rn
ljf5r819oSV5hwJhWy1rHah28faINB5NXRGY9bMcU2l11NNYHk6y3rvdikylTI6unnNCu8Ri9Lz6
yF/5Quz5ZvaIBbUL1i4f3ENl2XrfZpAY0ZN6DRFSc4IcMQUkoOX+/UzMY3vILoIfIMFuJtSaOrZ2
/do9rj4w2O1TSIiXf6MXorY6cxeL+1d5cGRoXrRv5xzNbbq+o2ewoWk4r/iaWTBs3/8ZCkP+M1Og
+eqFFHljH9nVFRSbQitesQ5WKS+A3MaVWo0cahUvSy8M5Xi5/uoAu6OBT4J8Y4mDlHLSiD+18nM2
NXP7YG15V1PHxEMb0fEDfqJkYHTZkGIE18L5wF/PDanztTZqUQ2msQBQnj+XxhVtLXac47+MIfYD
gNNj+qip55sQAhh9R9B2bp1plU9pCW8Q12eaDQ95KvzVbzZvapDY8+r57/i4xeSkPt8Zwtv5Cilz
Z13waA8sC8kGEteVXxrrouE33JF1KEoi2QVeAZm1tVG6byfEOusyuLsvTeJqDdEcjZuyeWAJXzn8
cdz6seDPzAV8RUOoYygkW8+GYkmfQ/j2+/1kRsybq3hyjeoz/K+bJkX42VmLYMKEl8Z6USOqfjxc
wL7A3a9+DH37firRewdGU6vYB+lxCDovZm35kuHsVipNcJRRpxgohSkPqYt+xOzK8ncrMi41EJgS
yhC3T59ljpHncg7BaD6L4OH2umTLPis2XEQPRlY43FP7pbakhuvqJzncXKcegI8NMeaTCd09blA4
HZxauvqtAb0ueo5Kja4gz8xaqU8PE0ciVxph5SfBBPlxp5FrpSZVThf1MElNiqg+fzEKwRO9EM1+
EkSjiMV62ecsTOcvqwb8t0y98TDEDyQYRe9LohJDC73dLeTN9aIdP+vmYsS88/42OGrlQQysIKJY
DaO3VmuZ4yskbO0K1KmEdKvB1/AaR84UTA/czqxElkeCJUpPF5qxIBBqzNjcOTT/C09cuQusXiN8
0DEkwgTs3HULrQT3qpmuuVsr/KHCgRa7z4T5RqNy4/MrmW9c+mDBlWXPHcn+J4PD4MHsZINJFwCA
G+8MHHze7tpmvbm+wbbOCZbiozo/MVfTR7PM6LE2O+4PF2xtvT7+qAsqO/Qx7SyJfnBHEkVEc3ks
uf6dWdAEP/8tIRpm4sDrKFhluy28aEj64m3jlJoGcBEXzNOHla0t1HTNB2xcUBZUvqcFMgpm9a7d
g+yBz1nBbfgqZYDZMCN7gk0F+Vk3v4fJ/PCZ13qTgKwk2yFgZqc5yYL2yRt7Au1V8p/A/BH9Yx1B
F+hCamSPOFHUfFawXyHkBHtBxDkX3LlSTYHo5mSPHb2U3L0QrsKC7JjDDuQJQIZeKcuOzQAaqbir
GsyuONSZybqLoXsDH1kaj7FkTC4stu+ymvS5nwLdeH1iWTyxsCWUbjjpFpFvVzqzzfyBfvqKZwRD
IQWRz32ApWJpBQVdjmDU6pyceCYLAhFHk26OPWCKRdltlgnxvfA7I7ypO5bbJMm3RtXj12M6+vaZ
Tca7/tNjbCe1voGj6I0EeI/63CD4WjvIoD1y43VqZqr5Drt/VJPSN80dPGruazI+yfRrrxVBDWkW
Nx9t/1zQi0Q2JB6QVVkUZyzMiK/cxC/Qh2BkLmmkCgbHU3+Pu3BJLLy8Lajy67KGJTLK3//iLdzW
ToVQ4AG+Ym++lU1BvMDCnRUb5IjOh6yVh50jMAidmYCnyD9kWnXQxorcSSpg48L1fTW4Sdlaiesp
jHXeRm96IwjrxQV9dPswOj/i1j8eBlimGkQ4BGfNcUrFk90iTvT/BJmuBKenwFXbISJjWjlkjEda
B9JtZQwEp5/xcm40wGQyZbiyzDQ5WBARfoHGl0FU6hzl7YhRVvMLtLrsEesJlnNZ00/szgqXeymX
bOJQhex81KVwU2a7DH2CBlaxVZnGgRdmlpDMDENvDUWzYXmcf8MQ6rqL3ZDaARXonwj6Vn5xD1tw
UqNYT4jdg4G7zoOVxfLwa46y3o2oedkPxLBgwEHje2MVgf8M3RQz1cuxQrU803/8lJEDaZJSr2yr
DYUTyTnUnMymcM3UbkPi9I0uF8Ms5mzPmOf4k7SDid+kwsDQjlOWym7D/rI+XiCmnmAtrL65yZEQ
Bwk3hWa8Hdzm/wWc31TQYj5aOG+6iQVQJ5kT/KeEWqRZECzsGXuCqhHNCS5yM6zr4lgQpN6dzM/t
EEff06FJUIbu5FGO+1lDFtpAcbVfBwQcaL6gfatYz6b1QXkS06am1AFUkLbe1QQG/eH9SIfH8NTg
WQSq+J4mzyzercbMRexRZH9LtIxGVyRKbZhObjWo7NJrxWZwEmoMw8a/rKT+Hz0kyNq1TVtWYEXT
/oGa5mUFf1aZq3nBN1xi5MZIj9OPPpzSLl6S5b0szyWAbdEMyJC8ayqpWyt1VlRxPUJek8xfAnRU
zEadMf7JmPgi006bg219omoxO3xs76FFM7OUex4xGRn8WVRp2PujMClUnRaBYsZDqna4hIFYiTWE
324IdEH/MYtL2lPuU8mPFxV8UO7kEP8Z4WNgrMO9vggPKZSTHIxwTKxWiDQlkS9MKtryv0sWsWLq
1Ca7BPXhj+EhB/Gbt/1bf6o3SCLQfxXdPNmuDjVQHYakRi/eSslH20cVFZhQN4RgvpJMyvrZ+VwC
fi8/vSs5NDelgAs0nDdMUMkoVDSku9gZhtEqYpOgkpPoTwz97xspJ8ZsDvnvicoYnSpFDWMpzNB1
GEj/WJga4IaCH3onixAxf1Xjc7mlzvnSNMrkXVgm5R25lIqu2zqTWp5DkHCgG203Dw2bOhcN1dTx
2dew/yAOKKCViqbtTBVfXAkaip0CGVbo0qaAaFrJF9C5Td0IY95T0wz3aGOxtP/q2vAJZimpwNdP
hpuI4chwV9wuCAl4IY1LjUtr9GnLuyGSbWqx54qOBEDNeWTMsPbRF1sVH+xlZ2fzSeB3d6pteHOf
st5aVaRKP1GOmly0HQc0W7NpZYA+0J2UgreJe6Trkllp2QRv8FnOkipe1DGI/7F/4/w3aSJPKWmM
ri43nP8Pv7Crr4KE0xt9ySaFSgMT9OJ5fr2maDA/nD7fnfnsChY0gEQtHILUR0fntlfI5anr4rNv
1/qJraJa5XxKxUcKTYKh1C5eN/5Hb0NBAKbpHAb4P+GfSOXG4DSwlxJ7iLLILCZi5vW51Mx7K6v3
JHS0SZHMxnUeAVOBzkKOYs2zOI8gGIW3LN4qLYDIiQwVRerOrIQ0Bw4d4xtA0MCg606aRJRhfuSx
OdG9P/0nuSY8xNTcZ2E8lqzkzzwG1hTRIHtlqZuPFu7KFkyp5ih5rZqjJKNbBaPVGG35zD8kApF9
qEHUz58GTgY/q2ScImadZhfRJN0iMsOLr5YNEH7B8R3dQAehvy0NOtLayqU43wjajW5lRC5DDUG7
AzaZ2C1z8gfZL46nyYINhfkl/xYhDDpAR4iKMetudZyue8rwKFn95u5tbb6yV8aHx1OrKgJEubu8
c+I4ylrFHJvO1082PjMoohJSvS4dEK1gM0x5S+StogLMvzO1qpTHoJIoJp434gYbO6uWqLnUZFKV
P3PecU0Zq4RFEMviQYYYMLEIqWJsR1+1HG1zqGjyLj1zqA5co+KkmsubwoLH8LHmrTd07VVZkIEv
nnao0W9Gkk2x/JRqNNOJXH8oIl3+54+1q7VCdlvUULuK6xJXW8TIcULQiMbppOFjPxfadYGUfY3Q
thoZSxDMciS//KjxpeicB/g0XrsfQpc3tkiGhefWxEuvnGnc4O+FG1O7bLOKgLDKb9qD/LzP4FlQ
eaWIGj3YItYYLNkHwEneSh4w0ljPmStsoyggCksIeFqDKz4N7FShzay6f/1pHnMsMI7mmVRvnkr3
5x2Q8NKmUedR+tgn5tAOH+PLIjt3deZQAe6q4U29jLKc9UCciNDWiV7HNdXw58nKAQp5TVoMASXC
P1e/OxjbOFpqWk4TY2W8NiDH/d0EYRfRIn0bB7/rQNZwHz4qWiBsO5p/GFqtCxD7MkGIyGZeVvCq
ishjtXg8NHc3vCSMHc5+8pvy/MXSlJ+SkXcI1vNGWWUDHQLWxM++gfZXvQBSYZMu1asuJ3kK26SH
7fqwcKE8BqWDQ36Zx+pHUDN50OgkHiCLWE8CrlCTy9bhRNiY26usF2yFoYZfwJNEh4Am0aK6HnAb
W/VSBRtXvHLsINrFvLmvXQdZPrHGKTja8v7Fd9vuEGIc+YWByAptPWHIU7sHFlHOHEsMJu3bHSfC
Aafb5PNjoZPPUyyYGeodlB15mFb1e8jg/SPvvnLaJyx3W7xuKUhQ+zwlKCJP2w25rMC+SNaY6fCm
Px+RHiYogj4VW+5ZzJ6V4RFjt+S8w0Ho8H16BA6nuE2OJFZlja7NSjYzB8TSFSCJ7ZfjtZxJu6oH
u5Oszs9Op6378wW/jHADNa93Jznb2EGzFmV7uinY8XO0yBn2Qb2e9RtR9G9emNv38DsXxiMl48Xw
gMip8zCv7MoLbL9BYM5vOaqhebgKS1JEdtBSiO7cNoZ1W/U5CYWQTxsI6T/UP/4njE27kToA+rZN
RNTCUVLQXjmKTdoMsUMBfMDOcor2bWp1rt6eab6belRgBnqKdgwN6gxMlaYN3dpN2TpYwdxK4t5y
XUNywDzE414dTmxksjNJaK2S8yx/07uZOnKxFjmb5ZPtsvHgbaPVjN6i442oBe8o1BVETZ+3jvIt
j/ViD05VRnaW/xd17mVzGA79xQA8tbWtXD6D+bszaTjXwkrWRF25GtmT1Oes0ZTz1gpPV0/B0GAK
tuCKjuMXUdL2d2wmUZZpKVZXToXTdeY7fKJ6+TC1FqrGWm1Ovfhqol4WWKjKNxE4D+exHuIgZIo1
PMA2XW6hpiw1jO/RClFMozdxmkN9vYwtsUVNanw7PElPCQoHMH/K9/+467fY+DbkgfcUbGXV3/QH
QnR5RnScyG350Tudcrvcxxl5lPbhb/VBYPBJRLTuiLzROfCm5wr7wFcqgpXAIIpuwTS6sc46k4EU
xnhqnzK65RXCI9gXt2KeuiaC00aPxznCFh/I5cLVcrWP75cS2WzzbeVbpHp6XWK/8Xr1HIS6Yiqc
xxxQcRmkCyUJLhfz9KokYKzhO7ELOYbYG3mn1bbSsIuPC7UG/VzsVCvaiaFncoPRRsWSt20PkPcl
yWrUXGC/nGhP4ioMUOkEYTkJdCC37oZjXwhXHQnBPJ1mq3m7Kdep7u9Fqij666O+FL2zWUmcd3c1
6FrOp4jYvCzIV9vkp5+mYE2P3fdcqTFbd+FGXIr1NqWqZ9GZSR8VVReQAIRw65iRFjO9DCBZWkU4
XUyN9wYNRNuMdWoO/WgTKCTSKV+ROuPgP1nbgDbwyDtXsYBg90O3lkTg7u9PLs135NNlYQhgz39G
uD0RG0Mgc2IWA3/ycVzkjbEGdiIyAfsvq5/vBQm1IZtr/BlCCrbb+rqvAHvakqGJM7VA5Imr8o5y
u2jQhKFBLRG3j03qdFSV/GRj+vZvKFLInN6G7bdcsGidQv8HIm05rId0MnIIcC/xg6jRDvbbvbUN
tiVSMFEp4qBgKCsWFEug+ec8lKwOQn40Q+tnacUrcskuSFGnsA5y8y0nCslMb8hyUFuih/ByfRKc
FTjKPq2GN3av8G8jr4DloDqB5KmXAODzo2l7xLaItx1ba6L+dhEZbJZJHkUgVDZ6Z8mWbkM76wSq
PU3tVb4klHKyXh4kxQFmcdiurzEY/e+Y0i/VIoNFkZXlwdCfuCdUNouLigPos20704wauEwPV7gA
uCkt7nqkNt9ydG+jsE+bsJcGm+AqoZ72BK6Cwa8IaneML6XVXJpIyM+f5CMMxUUZ8onJ2PovW6jK
+Y4MUFKWzfLv8W+CPWGGL0iTF5REz4N420G0LH3X6CTtlAIYgfXDp1fLfDwf6BKdz07GtITXqvdD
BnhNzWAMmzR9pZ0AdqUWYucPMg59Dq2pitQY/kdMMsN1RobYQjeH4NcaZGNRPG73VwKKDNJrlnFS
CK6/0EwEAvj1p+GyPY+eBpzrQ/ofiHvIqtI7yBG6bcId8oaviVuFkq44CP8JqxbZapf4Lue/MQFb
9FSBpwfU9ZSmwWJqDlNEOxUxVIV7h65OzFQl2tPRMJUO0/ZQraRKaF7FohEYzIId/Pn13BlMvSu6
+zGpKG043fGRIYnXSryLgHM+RiUuEZNkTBeB+uf0KhmYZ69wcjEkOI2E8LUGS/Wf7DryCdKrKxLm
G7MfWzlxcNCL8Ab2bDPJPjgbw0txc3j9xfJj/LgFbZzaudAhZxIskM7sIJPZhD/02gMrNYBCtN5w
UtEaMhPrYKcOLaVL97BnD6fP3kUDRmyQhvp2Rth3S9y4ZOb5oJBkOGsaUCAZUb4RB0O8hlzyCJw/
a/UmGvTOJppx5m8oaiiNyYAN2I0XO2u/s3xmgo2WX+zinYz0sbawrny1TeIu9FGUXnosOU6ROmNi
7pIGOVHK04EnUj8iGKmLkDDOoNUQ3D2lwiJhVH0xBAcZsye3qgWZM4e9A2DAv5NI9bTSGULfzjjk
6V1c2uwrWE0htWUGCAA3BWT8IASLB9M3PK1lgoYhY7rEHh/TR5o0KYBuyH6HWFKj/zCwvAVOvmdW
mFXKlwpGgHQ2LlUNEHlHDYAl8mL5EQpoLlKOOTNlqN8goujL6F/k7bWb0MMzuHHBJYOAY0UW1hnz
kDciGePa9uliFC3DfO1Y2QrxqtsDkZWvMS6OE9T4VEJgy4UnepWc9htFH20gZtaewWrKQqXj3izF
xio91LiyNzMKTGgqMhb5BASqGw6GDidI4tNKQupdwLat8MvXLUgDv07QlHJrci+mjNqUgqfxgvM9
bH3cB1k5gtCFYizFlKO8CRDa4cHvEbngtI12TU1/TlXM7pehNqL/2IolgA586ke5M6lUhS6obGaH
L3F+aRDTJGENil21KTxN/RAa9Lcr7GtrAwYlreqTunX3hezfmOi71+wFo13eVXBrvouAGjsIoGlX
nVDcKAtqc5FIR3LwA0SrCRMp3s43qrWbMsgIwjQs58C2jXaS2oTQtBkJrwxOv+Eeg6StbUpAHpHe
NT2QldYCV+xZfb5M52DKpgW6vg5QlxF5ajqm5LiSfBMs5ykAk6ZoDrd/54PKGn0YwufJHFQfK3qH
WeXFQVtYgPBT7rr7xgyY4MlJEpqAor+vvZsKwFtQH+GXtdHefb7craIalK5ATLaSoJs/xnYkbMgh
5sQjcFLuUSCIMSt5iEK3b/4/eqpALfKVEAVeUH5lPFfttxuxg4SACySUnT6Eo38a/QHLFBgUjLlW
eOYvAnY+lLj2ezzzIYwaa1TSP0k9wR2053f4fqAVFSpGb972LSLVV1NeEmNa0IRLraECrNsqYkoz
pSxBoFwawM32Z13IITERoHF4C4MK2xAWWFumiHTrGh7bcVO7LbqYOz7fXHrdZ8o76fCwrgKpQZAH
KVFOw/7HmEqkfWh5QmXihbA9iTA2b8nN823HBOHISjT8f3LmQ1Jia9ZIN18LvxlpXQBYNrTBjjaM
VHkMDYf6K7N9saXfhaMOOPFgEla6vq1gny1U5516alD1e1siwTOoRJRVIl1r5KRsetnkkSdoN6RC
zlKiktBDwiHx/bSDfI5ZcfZUVKAi3+Bn6XMKm5ravdFKLdX9OYJm+Xt8qZY1Sgnll68uaGahYz/h
//utDliq58GieKiZt6U/AeqqUoyE62J7MZVnvrBUtLjM7x/IZAPAK/Rj1V2HZziw5JedxagXruAK
1VcbSWkXie5z/qwzOQmTxBL7n1IeJ4K/9kFC/hPkGvFCqJG/tJzYLEeK8/FnpvDW6inUi3PHp+/1
OFpOhW+m5dOuQm1QF7Zqe4cam6lsYx3jOutsS6tLXpQYrHypvTWgYsMyetVoIwb/2rrrXQRXr7D6
qHsqF/mY0FmZW6wVC+ix+fmlMdhlpAOeadZGDwZ6nAnznSTthTAhiPQmF8WXxTdUaPWEU2S8phF1
xbDROJ8A7MW6Z0BCx9Z5il/P04VB6TDpD3rINvZKralJZxQ1zGefyLmrSYxDECfU9JVPKChxfiqD
SiuV2iO1jXB5u5ryZZadJT+8Q0QsFKSYULBWMYVWSNyjNkayUCJYp8KT2ibyHYVFe6HHF0woW9yF
l5lwXa9xwG3Bxqtrc1EKJaI2W2zRaCI46q/ypR1f6hdi1Ci7NsHwI6Ad5tMYycOIXMynvgq1cYYx
Fjx9cxMDoRRfSUxykuO5TWao72eTcNnC5tQzj7cDJ9Y/KuIiO8Ld3S/RgmCQ1VZ0VycE+eL/Z0/w
Yhuv6al7r7b+xNromAE143NT7XOqK57NJgEcU86DzB4pOlxEKSeBvlKWNYLYSM1oDiUPpFgRj4wb
LORDM74QEFrElXlUuXvgqiXGPqKeHWbBJ2FYF7fQSFoR8ZPba9QJcn4jzKw4Rju/w8JZMhvk+0HG
NoN8fHbGTlhZCu5iorDQYmyiwsZXVWPLooN/a+GRCRlaRYG8D6OxUwLttp5FruJghX9WKaqgaFEX
suwRtiAcFCt1FizHUx6bZVc5t0WH1zsGtSaFGYoTXrQw7j9zQG2ow/XwKjpm2gzGJchopqp6ksf/
mbbMaKiAtTTJVPPnpXrUecQ0HrNC7gnamQAE9eHjA7ShFtfgvv2n+CDdFoEK/XMr9/SnWk1POcWV
V+CAPK7jGn9U6AS7gfAEg79oOqe1FXKl31dbfxU4KJSw1NbI5PXmYGuHnxfYeOVo1nQMiyP0VoRP
I5HLliq3z4RDg3v78icTOUfGKrGJSyykyD8tISZMk8IWbVvSwBhkgHVsUMcQBPC9Ulg5/h3Xk93V
o7fFQTjPffHpe6WncEusEzxSQHFlvfrY541mld4Lriss52o88fUJ1sgqQEiQhj66rk9Lvd0APtJe
pfS6OvTW5gB1rXwIvk+qRUXPxurQcZ/bTwbT7RGC9/pHtHh2gA3Dn8AyJVVXfuhAJd8lUOMqlpU6
xbV9RNRiOM7N96olgQ3Wiw4l7u1jkhhaFcRlHwuHLwOeeO6JlKgF3kLLdo/XQWV9pGTkq0w5mKYZ
sAm3ROk1Jq99f/7WzgNZ7QOawJn9huJwN0knxxQU8vJURoSQgpf5nL1UvPic4daEz7T8jhB1LCS/
XNHSrbAS35wtOheRCwM43NO3SRenvkJ0agRCISl0Izp8yMbqFgRPwOJ4PNB3xQaDYoMvf26I6EpD
hyPOzCGuJk2iMjqa/EX5uhWUZ0lGfHxb7bW23NEcm/RcplLrQTyZP64XLoDff5CkffQAHvCJEnj3
H/NI4dtHO4uv6jif8pg8kkCUYhOn/+2YvcThNU6lfOHIFjaF+5vhSogtlfr9JtEX3m8WKYYTOlaN
scKLdiJ0vegfxadqOw+qmi5ioEkojZZbpCGfogDP18e5oum/02pOktdDuoII6Bs6UMEQd+T1X+ac
TRElQSHgNa9ZwJgfIEFkSGhYyNVDw43g2fDAbT5ayvdvCvpZUhUvYn4SLIsVyln6FgH3nxXh8vID
kOiRz3hLRUOP8ARw0whV5eUvxo0B9KN+hsYRhynkhiubO9NVWrX1pB+8N4trJoD9eOeThENJznV8
dyh6ohg6DEly1i+V/P/JFSSRqZgD61rTmBTDWB6MZyQ9Bc1Su2N5TyGMf6vYKLXQsT+iICcsdU5g
Zos15wY+q60fXqZw5yo5NwRq4QPiHLvY6DuDYFjplwI6RH9DMcaRArz7AVsuEdTLmMgNFHXUNpk7
R6QgSuzLGB/MpbZW3+/LBn3T5BrVnbOBcklRP1TWzyr6XyRBf9v0QE961NZG1++A4N0ZBNeqcXCY
UThtALkMtOIL7aRiNW6BfLPheA/lFtqLOO+JBPf2CC2b8zk51YI61ryqfX0ZdUWOfwyDQIh33ON9
pT3wK4HpP7BD2dig3ckS/U5Hl2TlOvh8Nyq+Bdy6I5QFPYLow/I7oppI+7mMp+eU9JkAykWdmbjR
FZ1+kGz2RcJ6/QeahxrDRhfGPgBGwv/tgZQYUcrpxdlsJA18piiPsyhkA2GL49m7CWkUPmLWsC/S
qPoiGZiHRyvevOvCsFQWSGWOFApxzDbcd22xcEVjaRecrBeebh+V21k65gWE5gtzW9iNEk7Zti/F
IkPCxI9sDcD+JCjptelo37wJRfoXyF5CVxrty3gvtznax19AzdpofB8tYjt5Pe/US1gQbY0ahx25
3fDERZiPZ9r4sjfgGQCYOyudJ+ruwn/6bTwchOkowWyWlofjMbC8OXJdxzZ2UL7nUclYixDNeEdS
GmjaoON+ZVsSuZheL2gO03AHtg535YDE7oVlR545Rp0BedCnUYcRaEIU6kZh5xTBoSThhXivO3wS
yQ19OV7y50/JZrjSToteZX/4u6EkKZRr6dFlIidYgCzfvLIAlZv6SKdP+XAdx7Mzc9swNCBh0Ni3
MgMm0SWgKdGA2QbcsrNSXgPCRLSjnFd6cI8od1MwTSTHXQ9r6N1T2Fk9C8M7nRyD23e2QiKpsJXi
LF+qNaefn6uoAhYOF7x+uVtmfuhEANerfJnQzDZ4gqtZ9FSC4+KZm9sYugGeRf4T1DPBI8aqpLh0
Bvtw5Cz6uXDYiiWh7pxBkLlELHuisSvTdHOIn7uGBi8L1DLfPhoW8+oW5iQsn0j3WADFQQ9+sEQZ
1mqpzlmJ0uVgfWg7EheUp+to5OPjf0weTaDHDBbSMoYryUI28XZVY7LUhjPsiF7m+dSJb8napA7w
0DIdcjyG+VdaPHHFZO0L9Xm0Tt1KNUTRHsc3RZba9L3a10q4p/as0631kypbP9G3mnNcHix9yKsR
Eib31QQp88aGheNqBhxXfYtIy4PA2Bhdy4O2BsY5yupvsbQy1ZQ0Q/JPHAM0jPxpYXdwuttqX43y
4Y4XhDmK+VomH949O8aHl0ckwiHNEqHfPff2kVkOuECXqoQMFJO++HFI19HfQHtwib8cuMF0isFS
a/dYypKkr596W6XYUHUlV/69T3+KRzaAxnBNbIgSGu9z0r9nlqiULHnFXabK1gxZ1xUya6rn46h9
yZqz8KHArVUGkqoHNAItnl6PWNyKQdaUJxnyTtHfesWH7t4SxzLbsjkPZqLAJ488RX765UTxwuI9
pGEPYlaSaG/PM+4X2oI3EGNQDnMGMJlMODR+sYAL+aozn89o9r/2Zu4mE+CWP46XCylvFkkUXxA+
lkxApDJK709wW/AFl0RMRhA8iTdUAnCMSOXf2F+UsToK/oR0qzFcIqXI3FiUY2bnLTUbewa+wubH
5Hs1ovgOPPWtPx5R4qIpNmcBjUusAY47Gb09PyheLOv7XLDZCclp677M0+zDYW4kmDFBx7DtO0vw
LJ7XH6VFHj9VCAIjsRQnCbkF3JgbaBaOvd2q+2zurm+nvDnbX6p+AjFqa2Y8Z6r6dwSBMv/ihuxm
C2Nh/LbeYzVA6vuOM0R5K1BokGFspG854oVczFM94qGhrfF+741pFgFlApCCOECER9/WgamBT9+X
S8eBf86DdeQ7nJ8IV0Pc9VHwEFsopjfMKkefT6m+QTFTPdHm86AMVQVr/mbTRlEfKUhGuffYXGY7
7ob4ZnqM65UlZbSxLkHayUGuMU3KFK7AcQvzx+bLYMGdFWv01KalOmoafdlYr2S3ONegrXx+09AT
lWPcbwewLwGnuzWvC6Jmym/22U1CDB91ioSjEwopDGmpOBBTCpW5sTXQstQZCql/iHLnNsLYZGGb
l/5pnOVP3FEGsa/07jY1GSrXWmnMqeGZe6clPqgXpdIN8l0IVtWCPIheEK6PD1Kzas/orZJzeOEU
o5dy8l5JLHGeA4KlbHZ0uFKcNcvbiT4jvEapf9HQiZnLJlOUCAOMA3UTfxMowxNgeJfSglY9epiw
MtKsu4T7AgVyOgOh+TNIUDFp7tzNmhGxISVcgxnsv0Rhanrb1yArteawwmwqbl2fcWXF0lubtNXo
XKsN+ZZAO2cNs9FPdrNaFsAXfFCggfpXxJGuT6pJZddKhIi/nVkLlIY0ylpbJ6LLZmcP6DDXZ7kQ
BSQef9aXbvWaKmq7vSU2lNcedaXronLvS5BgSYTNx/YHrGkrFgIvY7OHaCZSMQ1wQX92+pCOHuHc
2ZwBjqbr2lQjuMQfU/4f4L8mAR8WW+EUu3cLMVZ45y2wbWeSUOoUYNDgfE235AwB2qWwGuoLuULb
mSZbw2Mggdo9yW7/w7fGMLmmDSSMSGYF3yWmX3Ol28F0ZAWXVDR269eyY92xyYxVWi6XQs/Twmp/
IGfhmIExaz7WbknDg4H3kGmzoZBY7AuanUaIsZResgHnYxlRUx+MWhkepBgplWN85yBwVBRv675f
eFhqbvbI6hMVjwx9xLg8HVaLnD8+0HR05KSdWbu3OmNuMyq77+p7ueKD5MWAmHv6fhScKC3ZDqNE
1tPH9uwfGtW3QaJBZNr5UogOjZ4ocn1UCA/TTl7w04CunTnlahBm0Xbt4oz3RnE+zpahSSKMSRB2
vyB5eiKMIy621Tv1+XG43rvMpIoVRSbLpCumFs+iboDBVkCTcE+boIMQJbeOCVXkP7SBGypDsTJw
80DK1TpwPaTyHbfjN2zUM+6XQMbxKdwRiXEkVmM4HmKBrcxI9ZQHoW5imjR8qDIDVCTFCNlCePv0
uXnKEXSQ9jsi5Sl0DhZlP9mcXwV/EcDizIYp6n8eVoX81P1BcmnHsqsgjjrqVYahiReSEeKpWYWz
Rvs3y4CLUzxAL2hwTRUpkQG8X8uSUVO0N0B5GyX2v6XV7QbPY0z5+Rvp+c74N6JOhChRm6S6M7xx
EDduVI80iWGuHXuhb7dDX6hHOiatp4cKdsHrW7HV91Da/73m0gD7r0n2nBtEPgOSvcxm/qquarux
yH+NBrHi5ibxhvxZbcOAUBKGH69owB4H9tfQH2mxC8xTDSolwk0fIReggr/woLb2VDRVvn9BtFS2
JAuHPtYRnK55rPvD5Q+7OIUfEYftcA22/KJB0+UpUBkVTNKlS6ofqI32NrHIpA75ISQgkkZz2ZZn
7XHCmNX9SggBASRmbJ8bG7Y+4oDFcmwNf+9AwFWRoZ2zTGOUJXzAzUKJzeuZ2563WTw0V5trXa+T
wsajIUhrXK1PcfWzRKoef+SqgO+uZgVpwDZYQwsvvdcRAxFILF3EH50IsspZAo8lkimdfRZhWXf9
VTBSNOUTBvYR/1kC+GpK+cyE/f7QHmMgjmOITnKqJc2GNpvmnd8CS8vX9rCiFPocT/xvGL0mVIxG
YU9WSVwl0mStxbCmhdGDmtlofEXpt5MXuZXYTfbVOu6O6KWPQRca0WVOiWohGA510ZpyTFjn5Hhp
cOeNIJTu8yNwtAp7DCSNj80kwCwURUP97KfMiln437xADaqGyPkffMQa/4cy20hoWXQrTLjio58n
IgKKdGT5A3vMDVxkYxhbokS/lQ6s4a+1bjq16s8hK/5WQ8UC+WEjGzMg3H+RoNeRLydE5b6a1Mj+
+fEH9LwfCIRnTRtxt8bU8qev6biwliWTEOM2TBRKljiUz8WAR7fk28crWM3y4UUtNE+QQ9gCS4RW
eg2ZzJtxEE64qviAnPWqvmTp0Zon3Xb5OHVMZkvD6TIIY/Ci/iO7CnRKYqi/MDwbg6KRfvH8Q5BF
rs1j7cClYmT3zo8zCIJWIfPT+7ed3Wb9FlTI9Kws0jQ/yHiTvrStnYe5oPuCnYrgXvA95Bkb7th/
BOAHdY0jSwSYE2j4aYTn+5T/fhp6sivDF+veScQtnZpG7ZZxfvc68ECVVlqd5kAJYm1KkSvexZxz
yZ/7cPO7i9KaM2KKLCKw5zKits/126lblmQRrjYC6NzCn42tN19NU/DnV5UsrDK17Z/gzfpnealJ
pYWiOu+sMfNcu/I+WcgO7QjWUKPrNcXQ2oXg7X4Ao7LgOyggTDxj0f8YwDGTbeXK6BT8cTvuLqsI
2XPbroLWrlXT5UZHHeFdR6gX4RdnVTNmH5iPIxpLwrq5mKtU0yM9xkmnPetH6IWQWjdjUq1VjM5J
/yIY88JCOZrSYUHpNe5Rn2KjyiMp5FqheEFD9ZJ2iRvDO0lBfVAyc+mg0hd1LB0vlvl6FuMmCh6d
mWyl3Dd9uJAPOk8GFdy36cFUwI/Ek+oxRQGrfNk/ehWmsfxUixhESTmk3r6kMI2uPfBKj3rqBPfZ
451G/qUdq292xa3fj3CQ6ji20u6xE7HZrm9UN3gcpRsLBJ3xIxAFvGSiSlsiqL1cSDx4EuliYL+w
MKh84XsxYsM0f9PKE1jaEirOn1cBoPF4pLuH79KbxQ9SuxnDPpZIkv0L820jOeQS1yu7MZuufc0M
4TRAbQPJOr43BhxghYzLL19nElIwG0f6Bco3HOe/Ti1LXFMRjWxHiRUCo8lJeFrQ84ub/9ZSGfAp
rvPyQXFpkEGKtRIxt3bNOiL113XRFmIzfTX8ioVaXDbo+ahhZ1Rc+LOam1zVKk4KaaxFYFCboXCq
syFez1QQIkHqLM0qg+lBZn0idYjCExBQDm1/+HBkd1Oq4s+dtiHgnSjvvvdXetNRWawjw4uTZ4xD
lMh3OccR3C9oDf8DjuhiEATYrXkAB3mlaOKcpHYmb1wDJVq7hA+gP9PVcmlwcYdEYZyjix8feIoL
Il6RxRM7dxDbhedsmIPKrdhBKC8Dl5ZElo5vdOashb9F1OXQmSAmtQREFxPQX7YJSh3TcK8EcQrS
Nbnw27/s+11DhOu4lKJr2ij0L8iQOc7Ut1nVflF5T65+rjgwcujo6To21bdAez/M7u32yFG0u8KI
9QmjJMuRJajQAZAZS0MJsFmHwY7tg1xZtHMXUyLfJT5xAN1dx0LG5bMYB/ZfooRsF4UaKWVi8BOv
J35rafPfpk6+3+eTMH+qWmUV1/UMVDw8zKajwnKr7sf74+Hb4D9DZMLQZTANkdFN/mZy4PMDerV/
DKwmdfemnhcOHW8RTxWB7UoxnxBtR6W8i/dHQ5rg6KCJaPbaOHa4FHroP4dyl7DTZAPeLjY6TJOv
eikL8WPIMUy9h9O6L5tA8J/Pl9Y4lA7rlmx3B1f6IgC9q6N6HL5wli5YQJYtvxwOOcAtBfjJ0XWM
yveEJ7jGiwyaOYw85ZfgLJl7O/CsWyeOZBovhlcdfSNYhEjlkxUPFfEMycO1JUVgrQYyHuZnFwBT
o0GRY0U11xWBkbCpYtNZfHm3ftZbBVnrOQvzZm/YEpcL01mQ1IdjCby8Z2GrRBYa2xkuYV4NyU1J
xZSbKGQB1WghTylzIqNdJPB7Ov5K1FFGr+2hYdTPC2S/+ZNCED5OOlfd2jiXFRRwX7dv8V9oep0O
CrHC0XaYM5TPJDvbMFXnKbiL4d6mdpkdwfhJaBVv/qDV5pWdbHT0UdxWL3qoGUwM0eb90afSXzkP
MTeWGel8R9CHemUHdJZ1YORts447qK4VShYilyXqE7ojqmaMnGUWNY9ShY6+Q+2JquEC2JX5XKVF
OpZlF3ijjf+ZoKx/GTpOsyIjpSJ58OmxFazX7ZvrLN1sXlSgtcGo1B8Ayaz5QDRzcfpJCXwIpmN4
Le2zcTrUD4TuAZuoJXs3yv+JVmPDbwQmiMmV4ucFAyXM5i+MTo7uqVFQr3g9ICWZB2ShlDBiwt8C
MI/FtXbc3DV1rmYaPzWLit7UoMi4gZuLVkUFY7o9mSnvpPfLZUyTKsTSEdqIpcAD5PABY08veV/l
KQ+704qoH2E1oyMd9Alt6cuYz/3J1H2tBZMpyVH7Ad4PZGiDFgZ9izroGwg3A5imCf5sIEk66PAt
wp14/WNNBpGakWH77UAoPr2GfIWcg21tg/lFZsjuyF5s7uY62V6lBuwpe9azkoGzDdxcxKfzwGBl
JKRhJUcjEE5VtieH24hRC5mRUY6OIrODeAURLrCJ+kqZBkBKdN8el8FAvLKKy5foecwZ8ruBlLcq
rPNtd6rttQucO+C6H0Sv3Xh9z7gakj7FDFCRI+SarqpM1RN6m3XNUoPyBsUo1qy7E7xAKqaRQBST
2rdKYMw6ufXr4Rjx8O6aM4uGIpmcOmhFsaiIk6Au3dWphYldUJGCR7xq2VmryiZ9mzdYyxUsuJnw
6U188ydp+c09W6hKh/vjDAhc5ju0dxjRgwFCaiAeq25XaGnCv3gp2P7NM0xzZV5ikhX3hTtr3fNr
P3BRqTEFIq61e5/hDDvtbdziXJUPICj/EhLPM5HkeO8UHIYwoWCCL8FSpYSqBaWTPt/xjPXbLB28
HiPt4Fjao1kKzF92hIOmLvcNRhPW6MMjvCgvQHjgtxphkoTi+kqpiyizNo1EF7rDByjMCgAqvLmE
iAdmeo0ZcWn9cE1ZxS+AHfTwxyPZkDzIQCc3UBAuMbbRn3uoRaKgcnXlnRuGxbrRKvQezFWh+ZkL
bW2IMHBq99oJjiAt2Acr922xWjm9RJf5w3eY7O7DdZOd9NzylvoJlWlKH88ZJrjAKgnBAGc3etdO
um47Zc5hZKNaYN0fAjXPYZQYVUORUPaesPnE98jnRT7ylHKu7RImye7Nf5QtKWi3FR752ZV5cAUs
zsAWeuL/+87spmlawt4Yrg+5vpYPmxOLh3KHgTAOMohf0AbVz071hZCrtPTawedVSthbAHKBI2YF
oxVzIwBVMAneuVnKh+xsM4QmX/EpNQzfFS+rGsABKuQaqRVu4Qpy7Tk/1JxgHhlic+a7yTEW6BO4
Fy2ngIfQL1Ilqw+N+COhrzhfqc4eYhELrTx0UDaIha22PyxEN0qTDgZjniwmEMx2yCfPJMLK0a2x
4g6el8a5l5ibgNPjOv79yzeqy4g0HPX8sA5u/HhmxfXaYlM1B8lCqEg+ZhCTgZCHP4MeWEc+GV4T
3fY4DV5dFVckEQz2/aajnBxrswRGnsssuEwpMn/73OYTl5lSVm5aj2YRaKAwxLMlneo/IG1KtN+S
fk7Ad13eCGcX7LFXJ3IPnPEH0PtHP/07z5GJyhyhmE5mtjWk8HP0JZ6bojfMNw0RUwLRM+rEMsYt
w8SA4x66HfAqt8yHDVB76xTa8ld9TrPN7OjxhNgjkCdnryi89pbBpR5D4mgZSl7/XrBsPy6FsuQF
D7GFUhluQ4b13SoIGaco57YS2xcrQKsObmwjrNbY4wycMT2WqE429SPJcyJ2NWDNOaz+stN20FW8
gcRYJX/Q/BdTbwupVSAttyi8csS+zBxxstZswPin1dgPNgck8+7xc/aVrRSigcUY0aC0raQ3o8wQ
62RuwdhmmWDYg8jiMAQg5bSxJreldlMQA0byE7z+6eQbN2oOnzRguTgh2qvMgnAsX4cnVP9EpnMg
Bgg5LWVenoSeboGxXX4o/xD9PbkuRhoQcL5s9Xsa7NCql8Yx/nHrB3v9xizGdPsEj6PPYNA4BnnA
j8JQG1+wvJlCU3C50E/GwAUKZXLemjXWJkVG/vqDsxCWTIZw+vz9Zw3bZJphjJRnyguJcP7grNM3
IdpIw9X+1mCS8Dw+Py/iElVNH/n35Pt5Lr9PtFmnUOGsLSAEthmxdQjtX7RcuIRKCqfnwW1O7uDq
3DIBLhjVPvleEEis2Va9xMjQpfC0+AQrm421YwxCv+fpjbOCw6AQYaQC6g5U7r80Maei+XtEVu+V
hvzz3ugWbk2cWoNaFZ82/9qhuQ+jp2E8mo74jst9uAESbTN/ZF4sdoqVRUxsXkCoQz1v5HxRDwM0
xvmvwqRiHQFkKwmCKbpHsB353tPiCSL5bkacgIYLN4emyZgyPLU8Uz8wWkL7p06QTBh8qaxjzsPG
lk0XhxOenSSpYQX9ti43o1ml+7EgVlLf5JbqvYUV9ipBVQ08itcbJPIzUz+9XEC7lJXB6lnyW+ZD
O72Q21jrqOKrpB9YtcYanBu/1xOSc5KCvMPgNznSdTckEVbc8piIphhBtQapgl+9hFSdy1/I1qTx
UTl7zs0lXysEmHaSeYM+4AG3yQ/Muafex4egvihcjSAwI+t8ULKdkXRWCBMEjtsGPoQT7wqhgn0y
ViyketGhc+o5TlmCcNBhp3wLuLKwz/CnPvssIctlRQNoOXEq+qiTmrY4YHu3HdhYkAJYQyUXktSO
O+33pDot4+cR4tiqB+/VRzL5lvTS3r9Ika9EgY3koWSR4DuEMVmZrtHQQgzq4mv6y9JvemXhWnGn
nYJnAL0J2ZDKiLU0QcIhpYwFgH53LrGiVTkWUY/USeduUEUfVlZ093xoPbOZqjy7v5n/+ulSdVgP
bYmR4bh0aar6EPd09TAtsdRynl+LEQT4UW1G6ll11/d5UGc22/kMMMODf2OwoCcbnp10GZHbfELL
TCvo9hB4YPJh8WqCQ/O1igB4mECTwqj6yXaaRtej27TromA0d0TzIDOsqooWAch9rkyi36dJyRRe
wAxtnqCKNJvPrkx2nvx1dyYaDgvL5dIlCeLFYC+CBQEyXHwZS3RnFQow79WkTl9AOQ1CEOH7TAqC
NBBq1NLWl9PMaDV8cGmnJakO8ebvO+kwMAiIYYB9+l0YxgO/hFs3UApXhJ8F1CQ2c/x0uEcDYVxW
dxQE37Lm8adbfMYtA8H1SOkJrVIRvwFUyf4kfjYdyomfphdY74oBOaDCNxag65EE3jE0XPhKmFh0
Fjv2akpCNRP0PHij/MKUTUkV+XCcVJUIUHc1XNjkJAaJFNobKFUTe8sBZCq3h+9WgUoSc/TjrmtK
0oD3gDD5wKRMpWxPtFUt2YLSnedQRLMkpOJ+ow7+gKGy0qxh7HzKCMhz0rC0NahVjDBrVuIBfges
27UmQsCn5wazmCHYpOWuiy0PPo4IT7fkbGPZ12Z+UB05nKdbZ2ZkCYapDmPcfU90q31Gmwj+jjIr
kcX0tozgXHgh5faP4Yr+FGVrU8lcfTsIP66hOJGWzpO4M23CV+XsmRJ8v+LRymAX/RkDOXGQK5or
si9xaYlnsZNIxd8xyO1ZszCj8QKNV5oBBfKANyypJS4mKOEb9MZkl8mit6Iw/zGeiboWHgDDreRW
3g/97atO446h0vG1uR6XCEYAmwbpVD7E8Fnp7Bj7PAkLxjnLES4l+Lu2TS0kJSx1XyZEBjCJ9Kzd
l/X1c5KEN9ic+CQwJ57TWzBGpftsXH4dhKcx8tW1/eeK3gvlxhkJUyv3aBsp/7CY/xKsAy76iPJN
f8fZed9JHPhJOJqL5pdEV0ctjTeBHTqVtQOQLZinxEN8fKaOqW0kVhvMsDFP4hAPqEleZox38oPp
7T4A7GXHdkoGyFgYC+yJOnqmeAfQ5dyC6bIBPbY8A8tBD2sfyFb3aOckmF0fLXwobRtA/K/G6wKB
Nk2dltqLB9H6k+x5DN7htCdZEQ10raKz3QOXKrp9kPjP1UFZjPTBCAPHwQTHUK6gIWIil15b15Kt
O3e9IgxuoQGNs2ymY4oLaGMY5qgYckglcviApFslrCdGV40oPmKdb5DMTI4Mc1KtGAEBOUK/OvRD
XQ8BDob7S/ucMgsX402+cg+K+ufUBaCLlyMwM58Ht/RR0VGqj4vHMkbXEJ5nraShYhNA0uAku52B
yALKIi0hnNhsSv1GWMm0idoNoE9CrMv9LkFOcR+LWeAt0riMwyqJzmZKf3glsVDwY2ZVtXdqH9SK
eQSgCvJmUTxQ12MCHpze24gfDRaEDXseVYGsZHN3BnPo3uKzutF6mGXZazXRTFDEilmBhZP0HkSF
CNysEjMn5I+A4pdRNSiufp6+y5UzqHQcSrGsHOWP2uWBIi2XMzGQLuDk2bZjW8pdDzIn9PDjqizI
0t1VfWVCloAeThAOdUw+4RYmfi8DojMJAJgBTXMzRVFh/JZkwCHi4/YMfSq7g+dIh9xPQvEoMlzq
qmWZrUasCY3nbbzeSEwBNtECXg3eskl2pCqp2k9lxmUH/ba2+xQGsE5gaINdVQbNkZWOhs3YOBrA
1ZTUgQ1LeRK03DwHB0EOiIhegudwc2YJl+s9Gmv6BdaF7RHbF+z9cJANQcYnEwZgrbonGq3iHlpj
FrX3rKI8qxgJWLDwAZ5IGr4wl9oFC6ccXkwzBfsIx5cgUCmXqT5vGCtL244SF/7DIGJBTCFzzHex
tOFeAY+hlZrOwCh1BjH4XKJxe++V1yYzetw8kvcY7erxSZgXrFiLS0Cx38tW+BnScySKngeZXf6H
ClnxV2j03Wcrs/BMn+bw2K4z5P15shIsvvUTdFO5MgrwLaTvXyAFtUVhY4VU8qVmkz1QJRZUs5Ox
SNMWnklkgZ2JPT3BZKd36GBV00ajXlvrfilrjjnCEXRX43/iwuk1V/9ZnAc7UL6hVfX8nZ6NQop/
g60VLJ6WJMYuYauH5ij61o40UJDZat6GdGQ7srjCk8EZHQcFzrykOwEVp4AyQoQ5FqNP/e3BFhz/
+zQ6Rv81NKuYqLfIJuqEt5YE5mduYBCvL1W9nqCtyTVRDsI9kI8ym9EKDG/rDFYSUmQ5kfzn1usr
7Md7Tmu35B6cUua+6rFCC7bQBAQiye5f9wHd5gEfyNrX+PSZo9X43GFHew2lr6diY4PDTht3VUxL
ddoSSkWBB72VUQ0KDvzy5ZUJ2CMEti4mMXcwMPrlgHzZC7qqkQfUIxLsNrras+k/fvbxq/ZS5gW6
mYYZlwRMH/D3IVuRRXidY+73WkP11IQmL0g/ltTDVtPyUyvlXhdLyYyHX5Q+QDfOcE7xf36mO7zx
GWn1Ti2K54Abq6gLJXJu+vSanuR5TWA7Rfa2KL2qsTvtpjPrpuQmL2fklohgyWuHEZGtrcViuFhY
DMOTNToVdmZ9g73GlhYsS66X4f+DGQfXTrO+00ERQlCkeazhSwbEiWhhIwKGS7i0qWZzbsUotvZX
L0Lc8aq1hJw53nBQUDip5hpQNfmmyWpL/KgT1eSFoqigTllUMuA1Na7twPA+6OLxatqZ1lL/K3fS
wm9UsMc3pQ9PXgjjcePWbKSBl+dP5J79Xi0I4Lck490rbc5fNY/geB5+rI+vjaHP/hjwqmT58I53
5weNdol8sx6DtlShbBWXwGjvaxDjWW6rVgofhBS4tv76oDC29sYQjPqt4mUA1X/HKjG9zMJLn4Xz
bjH+rE7gNJO6BUMupxOKZJ6NCjYFLBp2pBPH9bpUGdXnhnbbMmntgHZtoCdNTw8IFrMbCkY1ao6s
shcXIM1FD9K2r7zhxdtZGwlHz1OUhgw4aitEmD1TScEYLZbmg/Th2vQf0OX3AwppVemyxZUCok+l
rW8AQ8pnmxDZPmdN5MA/9ejOC5ryc0mIPcVTXCe2H/slTmYWzN8Ig1Yqa2OwRmOuvU+yhK7ysoBZ
MFB3vKeidQ/58abqh4Bp+iiIT74gFg5ySXh9aAx2uY7Q2lpz6Q7wIEAe6nLMlrsG3aufuPEUtrDW
iMOUBZ8MDjtvkYCULJGsd8iImRa6qBBKM0uj8QDjcscCWo3gNwVB38z/HFaUNC9ezgxbkE5Fupdh
qAqMhrCezJDVSZxILGEyM352uywQxc6aFqeKAr0EpTqSHoMGMKPuJ7dkea6H0wSx+NL29wLQDFJ9
fry+mxhnFbq8FXlgXtZL5BRK5aFm4chh+FsWZF8xFOIhcG8P2p/wykJDVuLN8WQp4DV8n9DLixar
EB+3R7VpGLS5I9/zRpJ9uP72wJYms5U8+PTkk40q0sOGFforS0F65PkfMOH+r+AFqYq+HhVLeqAo
rrHuOuS4M+lbsJ6F6lu9wecixmbhJsFwoaqXQf7wnhukjzqyNSZ+g7zrr1s0JAoAQLpU/2LoiGpS
7tx170ZNl9IFu0ZGsMLfcGQZa1KJsQGOqs+/Ma5d714uBuT9Yl4vmSBpaNfnExj476R7fAeQHySg
i8eHfPhU4rWn3719c5GYxCdu/Mg3gqTZLFsAMozWSVxuuaYQtJdwMGVqIK5Fkq/YXrXO/RJ4+/eP
8Juw/JSQIKJw7FlyQuI6+5UJiChrzVOCtF/673deTv0ZMZYgrWL8u5Nb9UshLEvNJtHj/5eBvBdK
E4Ct8pYJXqMsNqmaC3Mr8PyJutrWQALwNejQ9JYR+5ZZUDdSD2rTUYIXSD8wYbWC7d9ZAfTEUtAn
gd/xngxKEWU2EH1z5GC7G71mceBoAw9VmI4VHmAJrpa2pJvSpB0M8S6h2bP/qu6adDune2Gy0zoK
1x1anWVmVUNzmeh6RF0XwpUq6AiCH0slIP/yRv1o61jxrKcSq8crASdKvc6zspITdvlMB3Arm2R6
N9zbHfQAKa4V22LutMBKdDSMv7uR0VwFxMblseqTv5lcX53Pdmf+zPcrPUFD23ak9Qv79uIY/Vb8
Nl1xQjv7DtWf+bNyQ0rKUbADo7hrLNMa3fkjSReQ/iLX1SOYeU0Vb/Cla0HjZv7EfE+jAK+eFLTG
PdQILinbF7yuxL1iHtZyL7SxCq7oWuBS80QMFVlDvsil5GxwFBhZzzpyuaVTrlMnXH91oHdhoB06
RNnruYOseg8HqRvk7pwv559MMwVd4PZtCvnfbzt7j0JOfkfZNqfpFLYgGJ30DDFVrbBDmYlgSkrK
xsCCJsHK4dgI92s3TMPk6BOhBZnTnAJf49NmcbuBaghVTUcOzka8HNfOcDptip0nARjFD72vDCUB
o19T5gj1gKzwPEkMmQQKa/wHOTR3HjG9TmsRTLZi1OI+ersbhLE6bKQ5952OGVvwwFl20UO4B618
2lZpda9yXqfQaNEYmJIL86k6zZF+FQ+LyyaUPjnF3GM+lNFRNxKiLwFhVXRdsFxNWViwDH52j0pk
zUzYIlBtXMoAC+xB3zPPOxTA7ogW9sEU76M9Oo/tocyqUK3+P4wAcLBNZJIgWNYZLrf4LkA7LYKn
Jud6JVWscOGJ4TPQ+3i+3OiO1Br7j6lX8Ak37LOBcz+j7CcwtnT94kEX4dNmoQajYsqoALWhvydD
tli90FUcmJDjBrYwZGAE1UALvGdAQ2fZkOLeU5IAYGn7caHe4vSaVsfbin2J8uA2kY08zXvvo6Fy
P8aEKB4YP+drOTQRwV5aMgDqHMc6M7J+UnM61KMWaZ8eDDSeM0jr6eIFzKE+VDsAUhR7SEn//yJn
JGX8abUfrt55d250HnWRnW0NmDcHrc8poYRV9xZnaAhVlqcVeqxb7iP+Vpt+m4wTPYt2Ir1GnTR7
pDzS1sXpR+YNDkmDZNujJ//k0iMmUKmwFXcmdiafrJh91Gth9fWGmBPCJeMUp3uDUaYm5ejA9Zrw
sYVPmRNkYCT90P0N6RmJ97/EODngWQp2JOMkjmYAZpqdFa0MalX4yRT1Og45tfHWKYJ7KglSXBWo
cdJ3o14OMoT63K5wX0P9dAnvnPP3EaU7glX6pldpSzXZM7ssCxA8wMLSCFCZhwfLmQheqXWDbdf9
+1fU7uov4uRHa5WdkTLhNESkVQgKuaZoe7IYdCdu5vqVoVcbivxXzn6yJpoDYIIqbWruQyitfY2m
/ThKlpNkRWLkmdQrbwkM14xdf2QTxHsMZuOmEMDUf6ON41tYwBr614j1Fh0EsDoRNTR9YHNIAFl5
QbmUAvDTBTCyo684oqbL5iauzIiTh3VWzNVvlbAcYGxV7SZgt8/JYkhNqeYVEiUqMM00PIEYhIOp
qZUYcn3CUek7Z92+KNCJ12exdcpErgqQRJib0fOK3+hgdJhpud6g9ZGYXYEj5Bzj7n798kGlUjpr
KW6NDOIQTo+g7VjHNVIdebYb6AjYGedDyNTdIixFWh752N/Yx6shSrbf8L7Jtybci6ijRrmWxT5F
kbPM50OX7Yh9Tlrw0E4BpNlMdFxz6/tlccfWevpdsQCJ5oTzVvR8EWwEyok1nxL1FebadYgzB9D5
O/Z+XVQMQwNFeDiK3ugbGky6aq2PLli7slpCnUy2rPk1bqLcEqG1jNY3O6uUaOHdUFCoVD8cOshk
6ePyfeSiRdzlXKITL2zXmgo2CI10RIQHSYOE4LyyCNFKt66ANYVuJfrV2RREtZI08H5Onzlez4JE
69Byha61z+pqtLHhdQWGrDiTq8oP1m6eyLKf+nAawXU1G3+s7wzF3m4OWXW7gOvO0WKW4QkEjUVn
ZN5dpBY0ItO27WZAPf30zEOEHBiKEv53RN6k7b4n7rN+ciESat6VhuLfXJJ+W2P5AKHMDHx02VAO
sQ2oFebGI41+ZPValHddG5KdbFH9MNJaRmUq2PZsclrpE7T/f/6zEAXHshwONwQogyv1oSbRKg6o
ek9vPvnbkkfFMxjZTjSDjdMbDjjs6eosvXnI+wYFnZiX1gv7rMh0guRYnZf77DlrsGg8l48rHYgx
c0nPbu2NR86QR0jx1ghVs6a6l+RFbWtmdet+a6i3BD7+OYz4ucu0SqZQICXsOIJepZnUtzButrju
/grgYjx4JvC581tBQe4mwzCbz5hv90lG42FL9n3Q83PQfknVwwV1wWamkuULQI8jBGIGw2FF3x3B
Gfrobo+qncCakLRE4WZ65g8l6AVdJha8ysY8F5SfDKlrrFQiuKs2LY0+O6l0dlp/53nFm7MHNq9C
X1oJMjyueub3IEXEcEgmIyy+uU2utAaZ3nmU91XAuC4jjB6lvsm0S0kPcFIAkJC4xAyBUovoM4Q1
JmuX1YVE33FK9iFLpef2LuhGaKqt8y0k8xfTvTayBLMQwQpSndCFFgDiCuG+bLpdkK6fzNi+VNTV
l2oEijk8U2WXmjkCirozQ7rfQCFMMX66OUp0YgFaHHMg0ajtNZrCbrnHNgLjD38IU5SeAYrguR2t
XSfQCDk6nb2ATJHQFP4VaQnJtKgNcnoOPfbOvytgHtN0mA+tDoLTK+Rwcdtj3ElB1mn0P8uuky5E
4XAPcD/55gnv7kRolDFUE+svCIb4ojhND9tt8hfYlWNWfgUJ9U0c8NuNbfrT3OkEy+hecuFJZtT0
14PrAcidWdqjTHmTXW72k1fSuGiuKiWnS21wN4IuXmvWGcQoA/HywA9gxFfLkIOLFWnevWQ5z8vS
Z7t3EiLDTsMMzQfr4p25YFeT+5pFKMFHdoxrrpn6bCc4rH+zMMeP6i3O3O1S33bOOIiy40IVIeGJ
g6p35iXy/dR5+5VPWx1aiBiE6Fi5SOGpiXA8f/J7F5tfekQ0DYPlqiuC6gHhTYCBtE6SqxQvLesf
h1+z7wfsP2NO9IyF3ZuX3HaZgoG7dpxxlNEVu5ryS2/+VhQzIgw5zSfD6nzWqVYNXwJAsypl+UMz
jra0rzQW0l8LkEEnAFJXX1CrOh9gahWTd4ySZiWnA7KFsmAXjpoVmcMKOqaGSCkLvj7wsHUeBTPJ
upNV+Qjy0SjAgNbvpGOPIgPbhexX3nU25pYEtUC7cFMtLc7ESq/zq1kmg7GxaIdT5Nsq3McK2RbK
5MPwHu/3Q+yMO3DlX1Furb+yoPPg4FWwmajHU19nPi+Byamoqfo26cbXN48cwS+YdEq8HgMvcnsU
zoZhrh61CAlpIYH/Z/996MLBkoxYd9Tf8Jp/pGD+YW3+uR9Ku2zwYRTxdnB5JcBLsia7bIH5UPbU
DT/hVU9uHXGegmWLek7dlIS13DAST2phlBfePhBs3ZxXNWVI+5WURnrWXregAU8KMQ23sOMcXXFX
klmCUqWRvqV1QdtKaicB/wsbhL+QiNQQcTFl6o6npi6Jaqmkev+geQbYdM5g/NdnUOHkcpXqLJZW
tHbkJwKeAc5tp2xbhzMKl2SCxq4LtQUucA8GkyfdNx8KOHmlJvOoOOM1jpVR9axAdPQxvCb7Z8fn
0cyF51W3+cJzddXnpHXkyvLQKC18SWXD7PSkHK0LDlr5VaPC6qNOkg5cRmuYqiZsbzf7otvyLHTU
Q4bxZEe4NXN/RUx0qZC8/drUCESXRyWnIkvGGbw4crIDCsYg/Kj2bkwsIIb3cF8JD2gxggeOk9jo
+NBvFAbmXP/ZHgRUzOLRup4pA9jFPkiU6m3jprwUHF0MgZtwHUIXbpqea7r+7+XrPqxD3jRLhsp+
irlUhYdqRnEtWtAeYGVkgTAtcyPQVOFMR+AuGQgVJR1tRoYv7IrR7OQVXsBvxknZ4vNSd8hKKmqm
0zB/hoiYdzXL0ifQdCJN30rzEfK9Z+D8orlWWJifGjVzENbjNkF3/w0uHzKXpAO7Y6t/mYBTEK5l
VmUlgfOKCcM5oOycIGkff8a/ARFwSCBs+5fFWCK430HfQsI2JfA2c5tsTrV1WpOyI+2M6DgcDOrE
Ud5w3Bgq5/pqa4S9hwjNub49okTd/+hd9K7SXmMRSIZz0IjH4iNVGT7SFlHhTKZog1qAS3flDxhp
H9Ndjr0t0cfrMSHIvxdAh45dIfNjMUOLMgTGssvm14+e+DGTNREtF8tbPdVGEKWRxOVVW45cjRI0
ledmm0T3dalN0rE6dLVky153D6By8z5q6z1HxP39CbXhYhrd9+7PitlTvMff+5eYoPNDq9T5kw0w
+yRlHjpktjbn8yVHeB7mt+0I+j9TFnZeR9Qf1fgFgWas8YmDjL3WdKS29+cHdjiD8+auTe/gilXO
QdtMR8zHvQ2Wd9UsZLloQgknXx65hnQHxO6BUW4sXT5w8LQVSCksCvohXL+9CNwxSB+QhLPFSoWx
2FdO9DyMVeGjuQ9UipDIA8MbmOTRQ2of+sgN+9fXDL/D+Y506tjmT4HMccVj0QXWfDPorfuu8cyQ
YIFx+8pPGmIjtZZ9NnWHc7RcKeGTB7HG7/I3bQ45XmudoGjGyKZIjkNY0Jhd3zUQZAWPVJxmGEGt
PY2C9mrX5XxaiSQhCui6atzMLlMIn0dkWlqeK+4vFBUEvM7oRGZOAC3MvKRKOnkLWYtdPySQLkaP
5G7moqtgzhF7DFEaJOYWCJXpstqDGFpeovnE/jLhhX2SuYUzG7f3wHUALacXt1U77sOBjPxzObYv
/2+4x4JivSWIcfGoB9Dzih8ThEEHJzzy24tftXKBY636GcQzsR+O9SdqPYPZauKpyEQtXXOLL++q
70x1IT6VzjFzSAFX8RlnyMQmUgmf0KyrboM4XsXmrRWlZqqfT2SkRuYRv+YH6TJKc0VdqpvQ72Ol
2201a28/BZBHQAnmodT1Y+hoX8/RUDR6+6rOkobMMjXT2q7F87KkY9AoVlqpJ6ZY6xZIbd5oqyUX
Zw3jlON0+WyXQACazsuju2W2vOKT38/TteEWls1Pe7MwCr0UYLNudnIXY8I0T9kD5Ex/VMjYze6N
rgD11Z8TFi3S2wlgDUd0wl0oUxRqor363FF7sGubUopeZHOLSdIDliHakuZ7BiTvtg8FnJLdTSpQ
qcZIsJIBqFg+29W4+LRqlV90Xix0fj7guXombvMx4wHncRxzdfy87PoRjmw3dlpW10dVsXveDnre
69FGrmy6swQ0Zl420wwBs6P3D7neza7fnHhf4dBSFY3tp3sZrhhPZchanR3WfnP3YnOljdugDYZL
N/3rWaaOZBm5ySTopzgrrFknqmLEOm9yXzZ4tSqYtHa1uE36/9RH41i9opvXkR79afEHviV0mrnt
9I1dqRMrEsIqXgaC7zkFqGBo2cy9fHGQBs9rZUZH+OZmDi+Xcgranrv+36y0EvmfuyNxlDbkaRhp
26y73p7jXm85lIY3JuwnjrS5C9d6PGteaBYaJidtjIs2kVtxO9z4qEVkK7P/VCjR4RUUpeQ/g+4G
/2H1uwaXAuNi9YbJfGGAzKa6aYi7FaP5XiO60L8vcrxtTkunqqkSmh76GUJfbsuASUWYVixCGsWb
UK3kXvut8+Om5SDJ7QeZ/5HdtLKHcXJiE3keRrFgbDcuVhzE+F27JtViOXwjv9l/zk4TSzmMlOSZ
d2QVuU/0xjauJEjN/9FjITzxRxHgtCkJtPK7uelZ39yk3lBYRx8335jw5e0nMkc3d733ujzd+Ixy
vqZL1Bh8Y9eg1y7HWq/MoBa3woIZ540u1ds6IB7r1RQJY61dabG86Td8bMHvScFwL2bE/noiHsy/
W1KABKJQgLrxRiPzp/DKpqskCjXb+dsnF6D4uV3N10sWEIhHMv6HD+AvNIkIQCH1IT4C0Z/Ulm9y
YUzNEcFiQsox38u+JAcrfThoqI38IELEdad+AOdxIO8rAzy9Ef7CK/Xbcue+nzFsuwI6ToHt9Lde
Zl66yHawWMy62xtDRpyDiwSaBfbGd5I30dZsY92aIaxUxonEi0lNkY7/2BDEddRiVqzDmBANN05W
SEmoQ3ceiBATx3BT5DTior8w0eHGbZ5JZhInBqwlz/f0mPxlQw7kohJfW482Oiz4kZNMOl9Lae2A
5ttCetnyiL0XxzFXFDMFTUbho0j8G8DdV7pHlMPlsNFmAXKyYripiycnbHRSVJhYz6cjh0uLQhL0
OEt0NFGFlzqaiOJq1xdsHNMPidf12qAffaVk2VfXH/LgWo7iTwmUVBmOop34yV9cNW5MADh3mTFr
qC0Gy01/0xEdbMGUl7zbvBrAgjOAQPDsmdPIetQCmNNEcqtF3bs6E4DYX1CANwrXXBUXCBer4NPx
SrLu6vwDeR0m07uD0BYu5TsN+Yqs1qaLOWXW8RqwBj7qh6OQo9ALc0zEUqzgOmnWTt+Za47YjL0E
dko+szkLcSLZlWAYYAOO2klADKT7BhCgg5QpduP+A40Ev+QPwAs1e6clSK0xjVMASg5uslcmboqu
q3u1qiqLtXrmiL5Rp8nc1rtORUS67Hxa6I15duoSyQdaOFVRgrR54UZ9VPkyZK3KSu/06c5oASqP
c7GR3Fa+Lq4Bod8hV233OMxntzWr/BvkTPuj9ip+6GS8kNFGAg1VWmt1H0cKoDhwuUpd1KHWNmg1
sHVQcgNBrTYsIHGpUN74zB6rm5fsIctL8L4HbQtn2JxZ/Aji5ALhNIcMzQxMM83Lj4yUX4wDryel
ccrtyeKyOuAOXGFryPXHa9ieX1duwqmFtWd7ga9rmIlUELwOaFS5t2lEtIgN3O6JSiJCCyY+b9U3
Jwv2FkZM19sJJ/l+xbZJu+zY4SlhHMsvw9x85uPuyS1IZ07JbjQNhJgPBOvj1ipl0YhizuIZ4l+d
KXbrft0P6npffajbbreKvFWeecu1MX3XnPG/tczVbXvNCPCSERvkA8YeJR8pxORm0CPtJPhCUyoE
A6cTJAVaNIW79Fu+s0XBbW+/ccq0A7AOm5YPuyMqt0+Kod/0JogMiCNS8BDHZvWG6emH45A605oG
YK0GT1ILJL9/VpWLFiPZT0hO9RHVdcCJdYH0lnt4BtnGnS+9mWVjiMgu0pJbcvMiCJpCkxAv9fEv
wnL06g85DCrJdMVSkTx5hcebYIUE4/4cjcvSXBTO4t/kG5evBlrWaunq8f/Or3Qcndsg9ovK9qoq
FdZ1yM/rD1jTcdjcfwfCyNY0mcGYJZC/3Uhb68jOpAz/LUIHa8Of/EubQn/sKOdC6CRZ/ZjSzLZ2
tUc8QA6fXeIJQlqETpEVgvV+obimpDDFRA0xwX5c0+cTVpVxEOap8iWgSglPS4W863s0J95DA7GH
k2ip0OzVR6OSSgPwGBUJWIpmdVqau2aohRnttNjxXsWPQNjb7/ANyc9RjjIk/0HRtp6yHmjsnXD2
wfZnchmMgOC4/d60Gfvbn54iwx2cY1KwH4Gb4+LHEh/kxMn4Zoo5kOoCZi7dI5Ff3umkZDspN3Da
+Gah+PPn7LgrOe6q4jr+Zq+A8v0VdBsQdSICUzSea9290fPb1ODuy2GXYzZ59YYp95jWJ+42NzXn
yjJ7j/BFYNHbpqN9WD8qYK1zfFpiAoTNlC1EfoMCCLCFB0ZWA0hvXp188dJuTklzy/GoPN8qLnuY
yhsGxxybwBsuDGu5OawhlJxBphXc+/D+TNrhpFVY9EUfJgdNl809i8ElyhO6mK30IiELy/LovZey
wpa+CDr2GQ2wK2gAJLLJtQLH00smFuuRy10BMq8rUInJTBai1ed3NUv+GdjszsZtRVjz57wvoZBQ
7ZoW1YWoetDPrq4sDInC5OTmKwFFFH54kTMBGkRtr7Tdm+R/w6bS4rqFBjUMsUABBX0zwtb6sMmV
OR0E+PBIJT1PCsVuOUHTKEJfIojXjznrg8J+HPwMXsJxrTyfcoecbYSmA5q/iIJcZF4bU1fWjfVz
V3R5PklIxfq+sWS8cQIseg8XUBPrN4yUGuwkz982KHj6O1koKaGelZYyZxMT1d5eYyusOFh8R625
NgRVLN5H0scTlcGNLNgwirDhuJJDPF2G0i6sXzT2Imf2ZNtkGInk5/HIz5twLeJYmad0kWXBeR4e
aCFJI7mJswcfvf/+t4uBgoE9MpaFn/hoaVEdjsTiuiXym+o7rAy6z5K1n9pAGHCABV7DShd/Xhhx
qUkqDo4oNdH/Le9XDyxmrj5Evf+IHVIrA6KKkpfOpUYADsn+HfUwwb81ePv+Pev+O51CEQDpNtMf
/0mytFNpPMdbUguRo4L31XjbZr8x0q7TzWKDsyU9A6df58oP9k5GgjaGYPSe9tYs+ez7+XGP9dXM
4GLNOhXxNCwFD0ujxFaUjrjy+WFfAqpdFcRQrOqO4u6EDD0EjtU7e1raiwFQJrojutPdSSyg5vmv
oPdOGc1A7lgdWcsb/06/plgRsoZwKNpRfMPsGtOnaLtWQ9HHMhxdtBY7/o6/LW1XoB3+UAhbVsJ5
zAVYiBPh4ne6mwButaqgIQefH2U0cC8qufafe64qrNKSD135oj15NPUmXChXbqlkRBRNm8byIjMK
h60gD+TsDPdSYECuf5WPdFKNT5wVbX8b1bJ14kMGL7lWsItMb5eQd9E1F4AUg86yAUQkg8qug/k9
+hIme8doTDt87lycse6RCtRyXghfD/kAbiWg92DZXQ6NcC0WJQs0BLfcJ9l4EsZRbVeQ1VoxYbC0
wCewcPJmnNDFyRD887kz+K7ZoyKmq09xuxVH3qc+kpKnOj719lGvmHlk7JkZYQ+mpAGs/OwxxmVF
XivMfjoywJg1G5AbMDOuAODkTxYG63dFMUlgY9oAIRNRkO35MOweBOrBYQwZzJXZHgKvlgFIm7qi
7+2KcvLefutLsYFOv674smZG3tFw893qhOXMd+bCdzZ0A+hjgaxaRTfjMMZIlKE/1HIXf5W925LU
qiLiHHPs5UcUSI74AnI0d+9/hNb+UKSrNVgBk3npf9jaTqLo+Mb3/CsnjOTMVgfvaIfdN3LOhS4X
9CdJ7EbmqNAoA9mYgzw5aErgYT2H0dqDa7k3eLavzZrVoOCn8Y5TpxL3lzN5lkffNJtAhOVcxVCQ
YpxaEG7w08SG0X1PNUN/Iqtd+f8mnTtewX7AaGHmXgC6RMLeWhnY97sV1NbcKMYLAi7TuhFt+I/R
xcmghaXMOGxuT6zFqmu510MlevNVoZDkNpoMfHnlSh9DsqCWtIeBTTpJCqYchue5ElKHDumxrfUr
WT53wuI2VcrnMssll9kZFOwQ7tpMBqoAhMjrSvwJAbtAhYSB+cH0BKgcbSn1fNTW15dX3twqcgU+
zlGskRGbdYKQB5PvOhGHxbreFXVEEJOZhD5Ooqbbh5g6GemY62KKiNuSAGKmmlZY47O0ntiUe7fK
/NG6WbJXqJLJqH+Q/a2loiEmh1tUtqQzVTWN/Ql7F2xanEyjHNEUt3gP/+zTwUH47nouzk0s4zCM
6+PbDXHW84KfSF1CT7pGXpS85GSwP3ZeQnL7mC4RDp1mj9dLNBKJHjOa696Q80pId3JdDFh9Rt5y
Kow9alrgY+/GZV2BlIvq7zQ7O9cC18BdPg9L0hlTXsWSbgBZHed/rp9AKrxr81Mx7elHjGlOSlVm
AlleS0UA0poKWZJZmRIkZM7+aFWk3F241ujvW0/v6GTZ54TpKmchDF3rgOn05HxiwFFDGjOYvR9x
QrZahtG21Fd1q7gaOCRZRsmPaiQqaEmjAx4I02sjPBRyuX2fGyXLb3N7cBIrHdOctp1K2JPUAXwy
bO37+uVBzvayRs4HgZ0i/UM1GAVeLXVQH3K9/j7De6MBe//Zqzn8l9PI/OSLcdDv7jRe4DgQBTLw
1ie3EbqbZj+IfGlrQAbgsj2Ak7Wh6rKS7DsNOHVioB0uwVIy+pmXgRGAEGnySGZpDeopLnGcXQTP
rzzGzk0CiMW3R+wuQ797/9+ohhdBLt6zJuCjmGg0P7ImMYXbve6hsjxSlma7IjmN1Ibt8bH9ZWho
SGlIN2N+Jp7XeFEjKLjO0HCUh1M4N0sgZFdZ6JBTB8eOpOarW9zAU+Iu4pY5L54m5vWB5GVeLtzA
/x7cCWrLxW04IR7l9t6/SQ4g56B9X/3hOerIyB5yxD/i0y64xBKLy/ddINS9fhzvpOyQsrzOUDia
SeED9kFTqy/vWOp7gg92QsMKnyivzlIUStJsHHiq36ICGoXE1U8kahUvFUBnXsCqH85Ur6qkdQrX
8k8YGIK8/0rdku56jv8MsGbxn7qFu9cHYRv0Fc7p2wmGzOWF+hhcjtLqVY1tuefy5tECNSZb9WZ4
0j2+sHIz6ScmjwB7hCL8kcKxqlWdT0UzEKzupFU+k/qPin73H3DRo8G7XCBy7sXeslqWYnFlWEez
MZyxTl7c1X3uq8pmgEdubWFjtIBCyrO9zJKk7QKH/qf9M++CJUn2uIHjf7PgVyE/cePy0Apluqgl
P+h/409ZenaHXS6m6wS7EXIO11CGyRE/hM0VPyBWQsFoaogYBjcGWL1ECqMc4R1Vdk1SdYuvGUyj
nwEpMm8FGk9suRMgV9swln/vQGOSIsCJI4Nxr/bBEZ0TRiHGZqcxmQOXOtOTq/WSqwtN7zAmpQOP
gAjtk/ev/QSxx55sphIUDblhU4NoKfSD0Mw0pPqpffaF61ndNMm84XEKCUsioYBBgtR0MWEJOtzX
PR5OFP4cnfb1m1Zuq7QHTWKx4/GYFEpfWdzaZ6ccYxgPDx0RZd13pojtXBPJ1EJ9xyFhGnM73hPq
aEsnW7R2Q8yZMXOxeYDavWWdczqPoYZ+vEdrmaB2+rYLepoaUrZy7/rzz6095qLEbxT4aXFIpgYt
5f1S6QTRnHZHWmaL0DXG+kkE6Duhm/QpCviTII24stYA1Ul1Ye/YnIDUxrAgHpCDSKdbJl7hurxA
MbRLwBUcJH9GiC7zsS8S+BM28U/oMX18gOrACvW8t0WK7mXFi7pmDs/hOiooYTufEAKGn66RdRHB
YhbsBcFYG2IfEd8HUgUJdCRgpH8ZsXnpKmDQsA536IOf8FvFcb6rtAD9rzZAmTLyFsyT5YrJniFy
MK3Cx9k/rG1+/02UUZWxAM0MNIcBfbPEM6h0haRFONmnQ0vHNw5KLgNzAWlMaajdzVEck5jNvsh/
kXS4z5BLudCxeCiGcrnLD2xX7dmWzUMtAFHqAUOjIOt8zfHZTYMEWOBLS0g7I3WJCqC+KfOrjf2R
CfUPBTErcUa0FzEbptzll9/vZBND5OJkIV86WIbWxx2I5kFsme+StC0NKtSpprZjv/Y77hkS/5U0
yYlNVnuLkodxBObNtSLiAbnB+BO1RpCvva+5se6+uqXC91IoN7iDz0R0Rz4Nh4MrJNB0IgGX1cGN
9bS1YRAgGvbdKluPE9x9GAKUt1WJQOqLViOo8udGQByhIOiLHYcad7wm/o8DwV3nlmbJOGR/KP2N
azFqkOEzujUs0jyFJPeaSrh/CMntNdfv2Qygez3mBd+p5y91GHaCttbY7JzaTcuW+5pkMu2d6ZIt
pmywq6xghILdvN0TH0uhZCOy692GPJaGpLg6cUlCogiEuRMD1MadxnKbgxY8tU2jv9FJ+LhNJjUT
z9eLzf8Bz5UH5+mEvmK1cGbNTPtfcQsL4mDBfCFBt3XVFRsDVDNbiT6RGgUpA896vuRtU7z/tOLu
AvFe7UmbJ+FEU5v9nIKHOFe6rkovGDhw+gmQRVGoO3d79FoFtRFrWkuJMgEnATzyYwc5gynS5tSd
X2vpLvjf5DWrhUMVTdCvtGdF6gcx8OHfkDRvWPsAt2a0KSUKJPfCk+RvxLXqLgbSTyeDuYuqR+rW
sOGes/+/AvwyJLiAWUKSOCndpSDwz2WCazKGF5CNW95uf0Iru1437qWmZZwWAfgG1NHvVXMDlwUR
BqPF7Bg4FR7w0ndmbC1JFuRyaXJ1QK0Hsthql3LxYfxgDk2aX0D/pZkf5cYOEcKX4bGxkswRrnMm
tn1Ercij568Aln41xZfFEIs3TE43v2GXBRUrjfvhkkVq3NpMBtMeSwz2lrni1Sb3mdhnTnf3elHi
Sh5MSLD+Q4LmUFm9HPTYsvejzV7wWmogfEs5xJTkncmoerdHWMHSD4ylifk5aM7GvyGkE9SK2Ni7
Lh9BMXELAyGOoD1+jwCDM6mF1V7hW3atpy5nZjcuOhpZLCzNWi8qIUeAT9dOuqpc+tCfc4m5ln7s
9d3ERMzwicWjcx7CsPOM0qyL5KFjmWTvuadUBdmDfa7oJXVkdsh5iEAtFYgRiGN1KtqtbOdmL090
ZzVRHf82bh4Az/9sneZT5e4kgsf1VZOPHwJNO4rcDpI8sH87M/vw9Em6LAmjHncoiY4ZFRAFiZl7
rV4wnwJ2DLLW9wZhHhK5impnCCokG+Ze1wtEFV0HFK50tJZ47hPcbdmVahtC9+PbGWDQUBhdm9YL
b5jUVPAoawb73TScw5vwFEdmiiareCBmSLP2nM+1bZU0/MZG/L90tpkf9v9AtGmVa1Xfs+6tabyc
JfSFl/Z5+A2Xgmmbsf0LOJdimiyjjXgyCL6dwfk10LofLfzrGxFeAMXeQ+h5Pcd+zMRefrfxQsIR
yihVOWpi8MJsV4uGR8dwBDwfLcOpz99zZBmouHmd/Zxh9TlRPGJG9RnlUmZY37S5EKtiGx3LtTZv
Hk7bHc7kcJYYEa+a+eLteS+N12+ABUGjh/YSzFd3cHXL5rO7lAAVPpvil/PjYuvbbergnx1TtLAB
Ph73u7MaJ4iq8yohTunsueN/MolJvuPqFTWFgAIsLbQkBS3vBVsdX6eFA/chZAwG47ODSHr3ZdE8
LZwMg8074cnKvpaJvOwYPH7XiqbMfUGRtWyK4L5Gt8O0g/2rqvDqp0TUDwIEEoDTLbn/+nKxpk6D
UXpUPWy2rtyghX4a7CFh4WolGRHtH2TDZEOKuMKAuwjK7c8DrS6lljFfXMx9ahpbmjJHVrKOsyy5
I7ej9j7AXIf2f7kB4Jsqkf/hqEB1WClyWuPDR08h1eD/pEnU9iNACcNNkZVHs7kPXpQqK05hPBy+
x2CBhVVegUsH/ylIiEqJGgmnNChDC1yI+D/bI43oVc7m+o8+2MSu6CM7i8L66kw7ie8pmpKbbH6j
h6KquusuaSe4IvYxL9RtH6VyYHSVQ8pVp3eJSp7RC9ZRe6ObMsU1N79tmjwwRfBUHEdwtO0mA4k5
DzxypOx3/nv0HeYog4B+an0S/9eVA2EX4Q3Yl0rztLrYtA0D4+7ptTcrgWuWmwIXxYLAgwQa0Qic
de27AlaeiLsKJDZHRl8YkqjxrJLyRssTUsuxDmjMBuEM3knA6LGDk7sY7Sj53Or/XpxfjL7sbvsr
iOlDEYWHywklthMudx/wWTioK8slRPa2yMm+1V1HEy3oHtzhEReOr3r+Zzk3upWr+zoIfJ03TVss
1NIIr4QspUFuoSj6dGV9DP2UIeqX/A795cOAi3/7rgdKPyU+UxO1x86tt0xekZtKimYV/CrfYzVm
6d2NpsEm9fS7XhANlo3z7xycOWO3k5L57Gwm520/BI9RxwAT7IOKb4/ThLR2x2bu7q/UHdbfuLVr
e3KvCRxDs5FczBeT2X9Wv8h9XMQErZaNe7J9zzkmw3xCDXwK88yCmdH1ytDAGuJtFUs9bnkrcyjO
WfZXJRw7k8x9YXlwZAQwMlp5xq5VGc/VXx0vnMcmBB+S8u+Ndf3YufVkP4LbxNdwhlf3AwsHJWtG
6cmzjdNJssuGEssN56xEAq790lvVKDJ3kwAaeUuQcV9w3y48FNgLzDuI9JKV1Nf7RIh0z0dnLXmp
UHIKX/GgOW9aeMgt+HjdiRJYPvQ3Kxo6de5EiFy47dM2Nd38k3JGV7y/Vz4Bz5KZ4TXioMXZzVvO
t/jZYwm/oCtzI1i0T5ssJA66k/VanFu+eOOr3cMsGvh3qX2Zm0SNWwVLS+HtEIN4Izc+j9iUNMTT
3CvIFpj2VuW5jUNPmg5m6vvTBbMQ9R0untemS19Kd3Ia7aLmpuxxgsQRyIj5bKpwtHeRv977uQ5J
roBcOXCSlNFpdapfVcFkpeq/8w/86iyIm4pGldCeR698F9zP4KmdjywubdkDwM3ZAyNANfsNJmPV
kJZcv/wLLDf3eG/+jKSEfbm1lzAoW30moxBHyiDLYFQOyQoBta/iU5dNp4JLV/DIT8ijw2kbPPLF
BO9trNz4WFHMtJwX8LOoGmCYiZI6i/1XG55/8hp/XbVfz0A4X/0TcY97K0P39X0sl+ctO6dsBYh8
uNYH1r9FUJjA4BzhBM4POcffOy6l74qYX+Ex3UdfDSYccsZ9ie58KHm+x0wsKt092AvAh0Ng7Kr7
pO3zlrnoKZoAtZObj+vGBeh5t+ekog/IQsjXrkpegnhXD2NWs+eT+Bvc7cFR9hEnpgSgv1yjvWYZ
DnDlAAFyNNsJYdWeAN2v7T5w6PJZGFM8yF06Z9H54iVy/ZAQFTeFkmHszCqZF09tucvskEGkN+Eh
y+Y/32r+dCi6Noh8blPQnGSLzGyKEiD+smMuovIJazdwJHZCZFbXLNVUCMXvQNTsmPqWPL9+sj85
2ipZavI2MDhIBhJNTJUakfMrCucFkAglBXoHV2nciZmAuraG4Xy9Es5z/BZEu9XIV3NajZqZGfbQ
nD0/Vmp7CmAt44sE/gibWn/zramolGZKafmYb1BCiEgg9XgYrHx359gmRHouvMHyksJlmyDZz8bq
s27YwjMlhgj09A0GEIF7yqt8i1WsnQjY7FuP/zdRlL9886dIXviiWQSPnWRFb0IY2dlOR0bBdvVy
+5OOjgVBjLLQVDOFjBNClyuwGlR2sI+MlWeZ8H+snaI2bEmGcMWoeEFmL+ofVHlWBBwdMFUi4vcl
MEpIFXDaXKNy/GsiDwN7MVcZfayBbge6HLp0F7hGBn4Y0/3uPy1DoZBQzDUkR+2wBjnE8j/lY8Lh
uPZp6Tz1gtJgFwcZlV5XE9rTF3fYuhqZLaYkyx/jdpvPDdt1dHHaqr7YBYqrI9vOnTV8/0sHqXIc
ucvTCKp9b2BACuZvrRW4sCYMw7xAPB9sJ/A8AzSoyxG86V57zac12Jbv1jLq0edS3vbEYDJShTvZ
LI3jFEyrLhU8Sh4cH8ZQyz4DofJW/8c8aGj1Po6wD4mjMkGTb5WoK7oCYrk/w/P454RzBQ0RpJDM
dpcnz9vPISCOp+s6dyEIumtvtPgK5Easl8ASS3m4z0hB7As7blBMbkJHXsN3uaFXulE1otx/vRRs
T7wUjeRr1rIoKZzCIqanjMkwsdKqLHIK6OgYN/mIcQQQwsAtLrQXtA3sAbV77cnhMR0E1oVGXHwU
UDJPLwp032odnpDF1UQsmelyZk91JtgC+zQk++IiUGU37OWnWwKsvpbtGaQ6ZpW2xovYoCNVKPdl
mSkaLhLWoIVUUP7ijSJno8EqAygy7WY0u4DaheIN6F5jvxnep6qkaxVOZcPf3WVgLT5nPCPLTFPD
CFC6J/2x47CLqaxeDBA8ZjXqUmKFEN4x9u6q+S/pTgjFOzPmeLEC007JKKvgMEgYPclHg+5kPxZ1
+nk3lvF0ulmM2DnTpQ9qDUdUtTm6+J0eRsVbRbEFi9TI3vHeAS47kEvE730cJ/u1lQIAceyY0Mcf
kFzpW4EK7DxFOI6X7s8UmYKfFmwk7hrx+8tdlZwPt/r7BSZDI3prSjXwhLNJv1vpsF0kAdDAfr1d
VVXdgn28R4Re55nlUtnEuOxAVpXIRvFVMfWgdlaYVUCDOgA0PveP63fAvPupCtSFg+IK1rWDYQRL
p0HrgrWxqj64rnjHRvskWEtzeE7EDdNADUPeQqzT2S585fw4X2mgWRoes+LG5wv3mJQxSQLAjra2
14JgAWdSjzZlleZQr5s8L9rXoBIs99qkTdAGiTqLmdqe3mKQLZa8Ps/1MBHITGK09Q4+/qoctxCV
iPNOTfdJNrn/G69HwZIn7jCMBrl+dwMS0d3FLDw23FIcW9OwMTD5N8VthWucej6VBDnWea369Crk
s9NIVDNNMVz//dQPZsK6eyjmxpbfCwjNAk056JJJeW7QscgR2+5kz2WHL9Wlnve+aUbPv0/2FvEr
FGjTNA68QEu27WbQBpDzP9lqdweBhTSXtMabzjQC0R38lsi9nI106mV/WvH2FZEEE3UYY6s7A6U5
L3yNZpR+h5hHOBgkLOcFtXExA8TNdOFooFH8Tb63zsno4B7rJruKtcRXbIerLDKnIWApsE6cntcJ
gPkBhXt9Im6IAY9s+RE6IV2cE9SQ7bi70Nym8+9CtV8m0hkyPV8D9vuSt2zvX6Nm9HojsXKH56D1
q9c8lve409jcdoZUevzO8qi3sjK58zXaXu3/N+mn9TqT6CrbLr3i2ejYOh6yimsNay6J0OxZlSZf
iemX4DlxnhJUxKoUReqpCcBDrYXsS8ftjiHhL+HtFFwWJhvEg4PvG/iApmHcUx5uSU+YrPS9Sb/B
j+1D8pDUd2K31SfkVqTcRdWNLZlwwIewfXkWmtou21TKme3pLDgM18XAoxrNSd1GyECM79kG1mCf
FzwCqBIBY6VO91QYi2/0SE/XEhQaeNJJpTrH9+HO0o2W/9ANJyVFhKI5mCNijlYuKOhzkAIxwucY
9hGxTpTaB49xHxFsJcqCmbke6wpcGNGX3TFnDJT8nkbP2aUD0uOmO3K4/+oBvM+84GJx+jfamGAt
E23dB2XR/hNOXAlOU8CB2FfGD/l8D3FpGXsxiBT+mQPTgsYsQuAI1Chv8DX6NSO9OB/t0+HPtqwn
CvU4+qgW1W+TAFR5dFmsCr4c8DKbr716amQoPnwUWAq+OrWIoe0XOQawcJ9ylxPJc/ggKh/64AU0
svlZXJjyQ2APpPQIr8p9fyfufSZWvMGdehiEZkdXnEaSnSkcWDWJwF6CJUHnhUdUAHvcDRgpWSwV
nl+TUaoQyiG+oOu9NoEfV+z26ItDZnMDiEcP4vEvo+ZjZqDofxa86+mJKBrr2SjoAjhTt4fZQ+14
iYGDjCQRcwYAhvolKV8Hn10hgVKqqmhT9EutDrSG6rF0DkAicCAkA3qSt7T2mZoOjERUnlz7nQfu
iWMyj3+lDHeICoBVOgn6sYwEoOhUCD8Q6JP/95x8jJVZ+5X43HlNmQGCsCLnDnPe1lm1PiPMpCgy
7l7nLhM25ghLnOTR50MRt5XtWvCpk48cuvT7wpg2LEkSpr0NcA8MxO3Fvf5CFuXQ2wTBpLPQAsab
SdcBPajZ838Nvordvb3G35djPkFy1FHFhPHJN+x9Gdfp5XWv7gwj2QoruN17Mf61vgCe8A8FRlXg
SLavYRePilFLSbkmVouqoUeKAFp1ash/5/XgzGSuQySH51wCdE9em+y2oEEmQLkU9SbO6YJqsBYz
59oH3BMkYTax8U0vVjmi5xgMjtTz9rrW6MKkgxEic4e21QLud63EsBkyeqcLs8VivbdoK5UF6yZL
3jNk/Yfgox3UAHMJjOziD3YKpw8axlLu71mvUnTbWYuN4cio34uk1iVZPUywJVV83s624dijIyK3
GzQw1HG7iz6rEu2J9AeijbOpehZG5WuQWBoHvGQOW39JKeIClFiUTG3J2XSqVYjFfW0C8DV37/VO
vYGRdqMRF3SlRvs95aY9XNf29kfjMm6EI23oEePR5ssibHNVpWaQaIBfcLfAfkfBBuMWDdzjKyHK
tkl5XPOSSBkeFyf9iJdWm+FxooLinJWItfSQ8qXx6kT7x0lPFsCERmYiXdmoRKTkcCSPPovmunHe
IctOlyvfy5iBKi/aQELc7XA8m/ttbx22aEL/VJnp5h5Vrln+l+qz51o/7TGGOKy3QylW6NDZ6mpD
siv80n1QVMK3SmDequ4lznOfa//9GZl1rWU8S1U1CQRuD1hFrQsF7Ym0cyiVTfnq1VThMCI5USy1
sZ6wV81Ki/B9sn//ve4vfJdHC0QRUu9+F1SJKsHknkrt1e3CgW4ifZH7gygGaYsLma97s9Y22A1g
8Te9k54mL+dqyWrxsqT845p936u6de8wbszS1jvxxNqB+GxYthuPoGR7WKxr3NcXzVEDqtGjf26s
HqEAcdln5kMMNFKXjf/ocXf/MIwS2uCwSfVYbWcbDlZqbA6S3I1ASTPLo0fA1Blb1s6wPuCEHbhh
xtAdHHg+iV/530+/RaZxGt3vfGaTYIpyVsYQ9YKagvmJyyOg9VazGgiKoE8EzVe/Kab1aiKlIoQr
BKEqiAis2VUy2Er7TS8vMp5THN0k8z8s7mDaiHVn347HAhTn1Y1pl/a1C+yHaeW0vi1h+QRMq/no
7juqc6LLVLtOEk92gF/s1bSRbrplX2HZSlo1oewF+fSg9snJjZR11cbG7cVhOW8GZMzxZ4qLtQQV
mW/0K9GvYfCEeYnK39G+3WbZ8Cj0IFM/lTqBtvIwTdzwBLFi20LzEP8Rj9r/5CPGKKWgvG8+9ONm
ijgoiqX1b22Ot0oSXQBC2aBbmm9L0EcaQQQ1PGR1ys2f1cOSZM13tKREP5vsVGiBdw2m8ODhKFff
Rl8z60MPM+QVI1ZuT1Ab4zo5YBw3fLrlMQuufkTEr+CGRrE//JKkBLbttkZTPBimi7QJMAfRWOLc
YgohsTYkPHBQL42WIzy6JBz2dfq3FgBLB589fc7YVNJemBbfphfUNPOXAtrAPkzKu6rK/WNC0NkV
XofN48ss4/9VhmDKL6lG8AkZ7ZnsExPUy4KRuKFto/0FsRe/VUqVgnp5B9keVBIWb3RnWkj5c0Sw
1AZAAeC2KeFo7sMKtQ1a+7IDkUj6BsZ9krpdlk7VVAF+A4AAc+SvkKSUOtfK1cN5RUXsZcRkc1Zm
TylQ7lLOtAziO2MTMY/XkkDbUFndWcGkoZzpohSZdbRoGUKAm8SserT2nxqrIjjCqiJeppOTsrwk
pPJncoVOn+Ws0YwSTW13qXfhk/2J5NicyX0/HC53QbF8wvTvl1kOavNaZnvOllKNJWrVb7Z0KTuW
7XxO9BdhFsZ1bkRTfnzDJ57nJishBAYGcnQ/TK8LxKjyrf5MKsF/hg0u9191CydIP5TXehWCcL4R
lsURtH2zAFjHzrvFynOI3lbzYSuvYI+GjXhHNfb2uTXGNlMOOq68XXsQ+L/IwRsPLAQvwWguiVOF
B/J5mWsCnoJEvxIr4HBxl+3d3Icp+MAIA5JaZYaeO0Z8bOtaKWhD7HqZgk4QgkK4NB8pmVsHMDRB
+sdlKipe5rHLV5UIMpZ8/0COg7MVv/TV9q5B/32tMG4gSu25iMzABzUdlOOgEMlldmdB12QGJWfX
uH8Fjlv5W0gJ99vfBKSm+k5JLURsQYC7PKkkkpoQMs27L+kGiilaTQiIq4xEQnN93K+5YeGpKCMl
ce37rNzDTTteAf6WDGGDqxyGyT+Zh3G0umsdUEge62bxlFp/gC0/6rAky76Vot38r7AAwDBVQqBY
7iY5qaMSSq+hlKOtp6AlNmeOKRmtPu9rvu6lYcQUen7heNDz4ANbH35ONsYgGPAsLkJqG6qyYG1c
YD47dqLX6pfKkHAJtZPkIn6xa1qybATfRdlD5KiwzxohoL0YOC28hURPJZt2tLlnRYeCNfixtFoE
izYoMOkA7GsjbArJk3gaBSjiuNEL87slex7TxeFKIeuqXQmoIYnNGXsSUcirY6i/2wXSoUB8BKWi
5QjS53xyoO0SL4ES2UpoFEA7zQ6y+m75AUBLpDALuULj3lXjikj7/D6wAX2LvQF1q0KAtepULnGT
v8SfxYTE71KFII1l/72MKaD5XWmq749X4bZjvISVO1hvMKGQekFGsLs7wDNT2BpJCD1PXBOvbuFX
maxWNXRYeDF+mxdLjOCbsGXy0xTKDhLUj5EKv8fATfqHJlZags8fMMwVuF3A2xFlAr9CxMrRjalA
ZFiQKeGqlKkGDox6NyzVX4ywJQPkqlcigJ44s+nh44BmnTT1dGmFMIrheFU5fXNOt1kNg8XYT7/c
WXEkipt7pq84qmaz3l6qF8Lt5v3LqxjWArIMj6NzIdspf5fX3bLhQbhn9YLY2zQ+OFUXgLu5mOs5
Amov20we03A07ut+1a3F6YVjNIhcp0qreaBZ6XQB79JHdh+VtY54SKdN2y9JWtXre1CS+RNOyV0n
zGfPPP7YMzpK6Weh8HRbu9UdR7TRWmliGV/KxqVBhUk7d9d0yTvhGtXuc3kTzRp53IgqIeKNf/pd
v++0j/J4u2oaRUUgeIr67ol2vpU5T3QIhaLdqmGNdQt0hfuahak1ChOcnLJ/JW+OTHdZ5OtzSZhu
YpQVJXNS2LvbX3h6K3Hx7FopCiw8lfTFwZCk6Q1GX+LIN647StxHdcJRGYlqZSKwd9J6l+J0NqFi
a6V6gSpsX7abUwCexTRspTks4zFV6sIROHnjkPj+L0dVWs3onQ95IoaFbFec6Gmdk6ApuwETEq8A
WltbWWBWfIR3gJ9hW9l79ZcYawWAym4QxtidtLL8i3h9ik8y5X9Xi8hip8N9pm0WmFGatoXMqPA2
i2z052lJMneqPFNC4HqyciMU76qYhMBgq+NhwFQoYmwKqpckezXH9GJ8Vv87WEbOKw1FpLKBsMNs
iOdW7JvGd8dKHHfaVcjRHqTHTBENaXf5SP2VvAcd6WzVryx4jEShnXj9mr8KZYDJmnMehjoeedfk
D4JE0iC67TaEyWt6WumxmBnWUqnHWpo8JVUwIXGtvGM13H1uhrPnb/7ODG4fXsGcKenXzz9SUY0d
2GQofDo0ne5QwicDgvSPyCaYX4nrVa5b7BikDaRqPNzUwIQ7MJpF5lXxbsaIt+22MOw/9ae5ZHfu
T2Vy3m+VJNZ+ekWToQn0hjHycICf/NbtBlv70Q/P6nvPYVCHAJkaqTleEFNkGsghyEgaqJ9WfJ6Z
oxEhoABAKTeY/7UuSzV36pwFOzK5aHx718J8HHCFdCI3+3vGy2PIkrjDX/sKhRLT9o2QD2aZORTs
FQ95NGf3IL4STeRqkGHklT5j5/gh2Pw70iZxkr10kHuHKRneCUhPhLD8pIRZzAIDR43bGrFnbFxP
rjU8pIO2Bw3bTybJNDs33D2O/BrgOgCX/W+3dRQOgmzNLiFRxpmmvCSK6ZcKmfKvrR+YQ8hgJo6J
sw9VpGO9oaq4VTggCq6XtWdgZ+eceVKkb45JXA6nuLcZszA0Z1nFqUw7zNYHMosL24SCYTthaTWB
49CZmZhv0yZs7I74/FmEUbKs6YXyKBDJp0hoXcSBi2SyZqyRSvEsgU6rq/QfmJ7n29fUtxW7HVKy
C4foYnva+Fruwm+fEbByJTTLM9JmM024K5evKlVnLPkXOo2Q5l5+8in+xrmbQFR2gmKDAUM8F2J2
sl7ipqQQQYmakMpndhZaiKvCxQ9Dgt452P6cgA/38eqEsH11Q7VllnPFBvagEG4hNQHBHU5mrNiG
LC6C3GyUK3nLZBVRpg53LhMEfDCb+Iaqlbl0FrTrVIcnTavKhJpCo2za5WOVpGnhywq/QrZged43
rfN6DXc7Eyoc2QlLPr8H7MW/seT9rLdBt75ve1NTfo4EP8mFybVZ6+bjYU+CEM5PlpPteKZH25Z4
+az2nmA3iyR5uKpWnuaQ+f/4DN86ndE6++k7cEOyYsxWZvUbDcCrF+sDxGn4f3i33A6k/cud3fNH
PLwEoJWMtrf6dCkK0I/DJ3WRvy7oW8mvRKc1OTwIqUeRxdJgVgoxsd0ZEE5pKVfxkn/m1lSxJDJH
srapFLbr4Z8ZjhaeOLJudONMLGbAZSUSsUtxhD6Z1L5nkEpsjNbztjFg9FHB4Nf10b1rTDAxn/Lv
AcNFYOdzw9WTw9itjJ/P40X/vd+77v5nCsQ3ZvABpq5qHzFzxcredQVn3NzGi77bPrpx/Ks/jywO
p73dq2kU85D7mm3XOZ3IbcIlYQg4qavt3U86c9fGlVpEDG5DEfsPcwC05+iHlVOYrZSrTcLYZWq1
tWmh2lDLZ/+Cw4MzvKLx5dae00/ccFGeZU2WCCGDjQRc3ApOo7PEg2TWV0/6rody91f8vYpOdLPe
Ov5rFYa8Z56EGAn8KGENL3+e6o9hjA52cQ7Dv20OpzD0+rDxyE0P7n3qEodHUWyIpreLfzWtN0Wp
PXY1Z9KviN6qKFzLZaA0XrS7ZCs7UU4ZmCrB8H+sdNP6S6GWoQ6oOWtBaf1TpVQ8W0+WVIzIaQC7
mnJfLCqdIZLrQiau2fyE6sw7D0JRL0MbQSDR3jkfkBw12qcrJSoqkBcXw8r6KlWqLAMkuyTly5W7
/KKDQXazv9VIMGZcsbi16h/Prxn3sbWUArAnOFg501OzrZyz3xRWF6ztg+lfxS2Gv0CXuUDUG1UH
IIZZ7XsrrKJKOBIdOLD82muTlR5BxJ5rt0PF4WdiFwGpvnBBF02P85TNmugElD6Su1ld930p+bWl
mURSOAJpxB3hLw6TVRd8eHC3jhK45iog/uNHpIMWZc2oDbTWUYPRbEhskTjNR66ncZley8xJK2FL
5ofuJGNS8eQr+SVt30O40UV1oxa/SweGotNy/vt2qD7glkNLaH24j9gHPbHcx85AkglirZwnc4BZ
C42kKqggnIk32YvMHd59VE5sKDmrN8Xo0QYQWRkmKKUHP5YbICyrQVnajpuaekz9X/DfCQK27DJ0
RW8x+qAQHUVd4gi3xD8UOyMBboXmlBwsF+12oS8czxj/dGDtmWZ6hYKYMop2W7pnHLMcXly+D8je
j7bJfsKq0qbuuS7wRx35FePzfe1gZA1s/+jDj3tuIgdLbdGC3BtlPxsatYYhbHoCvAxLeraSYypU
2PPooeazIWFqzcCFHoMeay57q90wBw81sy62mbChA+j6/azj97bivrorDv+JsrXZMfEAE/VjXl3H
3M0r7bF+jamBNWmTHztPWeE4PkOo9dmogsJ9Mt3TMXvx9juuMgjxHTviUBbtP5IkjD+NFx1HSN5/
aRPKCVudBeNiqoqpBzxWBIOMYGXWlREcTe3rBhdyWf3QGSr38zufNkH/nf+b7LApSirZImBrWpZP
lYBBSqygfZcu5Dkv1OqPVfWr6xBwprvJwlxXwyFhcRW/MXnFjvWx/0lngqyFn0T8N7uoV1Ms7Qoz
OtkXlUzzalAhYiO7ZnbIxnYeBTPirbj2vCbpdpIBjjoyxOQHbrLabFIuRUDpZnLF5qtbvd7DbxuK
P2Y8D5xmI0E2AKAxMP+OFSobqwfxW4L93u82nq0yMcgZqBtdZt2RzFgQRwHIFH4w4P6AZIYJKu0P
XDN2fzpBuVe3TpU6MQWBKEPuQVUvQDab/+yxYvHYlXOikF8999ZpbgZZWzsUmjnh5YjHYM4ts+hb
3zZhgum92WWPUu9hFVOCUU1feGo7Bv93xIXbF4vxmejTut7vwI0+LrciOIM0+xjc1jAZ8IPIwwlh
wn5TcqGB9kk3geqReb2zaeKmuCWxOH9/4EArIYUIIFiUltuv71ttXIhChFiTYqXbJivH5NwiUu9F
v+E3HUjpb1xXMmK/wWnhiZu9Q7ZEnxbQhFQYnx+VYRphIautChLyXCLqUSy9NHdattbmOxvIx77Y
6iPxC7CeassB1Z0oFJeOMxpos18rR68tbuMlWlj+glGo1Wn9bNSQjUHr9nOixtTsOPTI0ISB9wVo
H01kOSnVelFAsxLjVW/6RGfIwSEw+mBv+kd4wX9Zz4/iwpiGlWm0jp0+oMh2TzM4I6KTOAgN5Xoj
lviR+8MKVlq69vRbGgOuTrtaW+9OKDW1ZuVW7nTIQpdfATEPu9VmkXnYro8UlNXxNL3hqccsOzQP
wHYPDP8/rK+Hm5skFO+03feaCHpCl4c189NDQROCn1i/XGaCoszzuAUZonScDOqfS3sMA0FOdh4S
JqN8vGp4W0wEaX0if9KItLioT/VQSry4S+3MV49GOY7LIcImyGHpfKckfjRIJuuRftWDElpV+9iq
0OmvTD/dv9umkLqoIZYgqSJ+N386u/mcVo65fS0NGmH5TYjIOzodWnmJmukiPG5MWnZTwr24WOU8
tQCOCuITlqkHdZYXrJv35q20fHmtJ8MfgJUXHhKLU92IIIIg9z/y0oHCAt5E4VSoiKtZC/0ydwUZ
z0zKyTI1pmi5F5zSlOTXaVlB3IKOIeLQA2SHQ8d/r623L5Xwd1k4Jtt1lUGFz7jQmMQe8nB4/TBu
LgiSg8e64xaFY9BYlO2DeZVuibciRe5op0C2hRIKbF2NMuHpXD5HFyASHS1aOV0CIeboneaZJ1cJ
kBx20N9PIdWW2TiYVI39t8cWkS1FpmlJM/sSxprG6ngXZZZjxYnZDwrc/yU+fQhu9VkuSdtgWN11
P3tOzGpO4MNxH7agcaxlqGqWuQIoDam2QCFZYOoE9HE1E1UiHcbGiSWXs8PpnLwfRSYCTq3cg97W
Z9usXZmNNYqqx4CQL3JM7qoFkgfhVcz+79Kgpde0i9VP7ZkFMb+T11M89Z+ZuXl2+ULvueUBkQhR
gau3wEGJmwTYulB1fKPD2da/elfYQhL+C+MHOE5CDpM6oV6pzzVoqa3Wt9VEBVRem6gygfCbXJ+F
Nmx/fTDZjYGyILvucaE37fPDMm2swWjYL+sHSifeh8tVXEZ6C+QrvhoNF7PPD4oLmS+M/i3Sa42h
UFmXNcaEGE4/efDmoa3chzxWN9dv7geclmI55rk4jYBJcONJXxua8qncrvOc48/9c+BslbTIONlx
1Q6KYx2xBlVuk7jNxDZK3YK03J3WS0u+08+qRCI/Pj7mjjF+cjji33N+/JiaLPfMjbvoCKucGJYJ
uQICJ3LtjK0uSmMP235GE6Bqp2c3ZsE06JtPU6ICiJZhQuOEnyq2saiuSHBs603eqz8zBFBKnU2d
BIiLLVLfpwkh1Od0uP6vrluGUeDTdgZMydJEvbXZXPGeo4LwJZ59ykDqZ3Wl/X4BmfMkMiB5R2AN
O1sDU0AuPHZ5CojMn1htGhJe5b4KhVVNtd4KeVCPbC4eIazp98Z2mv8pca4I9phD26K/aNMkpnCZ
eMikSXeTJjyrnsnPNPE9kcmJ1i0vdL30CUoXilLVxL6kRKJZ516rg9jumabMzURt0HR++y69i+KK
jH6qdwlLpo8OgGNp80hKAXngPiqnq6z2xOx3G9DI+nCfYPosuxWjy7qTYvtf9UmFPKZlXLEm6/y8
yZc0rUjbPDzszjquhPhH+R5j/fyfGPedRPQZlG1+IP0Q9GP0N+190Y4d/A7uiUmApQkArspwkDdw
lzz1Hs1+4mq0rIugAVLzqPF2a27pe8vvIzZ/A1F2xPnMcNh/4DOezP36B8Fkbl7YMQHh54rCohSs
uO+eX5JHN67Q0+vDj/4nOVDQsErS9XuJ9gvlnL+uiR4qEvn92Q8/vNY8kCs3Lgc3uSRnzQ60hGzh
IKjMptKpksJo3GD4JDHFt52dEJgBfkkJIT3m8d4fpRxRl7r1Zf5hUEpOIl55hbzdoGkePdp+qfDc
iTY0h+fwDbC4oVT2kC/xD4g/1OuaxIR2Hngv76ln9jfdUyrlOCBli592drsdcdNORvpj254r7xBw
uLi77CKqYaI55L3/9iAsser4bsQNW55S87R1ZpeAgdqUuaYxr/PdctLx0Ocq7zpC79hAXVWE27hr
jjQ4rkcZtED5Pq6jiukmFycM9TESx9CZYAxPV2WJKyCwqaZ9QLGRD1N01K/q8m2yTvYDpJbcMuWF
AFx8sdbXUsyAc2+bR7f/Vs8MM6cYxrx56gqXzr3xNmZUXghEbrkyGEA+ZizjSu71I076Umk2pl4q
PFts9aAjKbtN5sd9CIwT2OK5tV88WM6ZJn3CPsLuoS5hNviaW8jtyD4oa3yN8c84PJsb8gSuZtoQ
Ufckff5Vwn6KqZ1BQLVz1KZEuWhRbZPplLaSBc8EPMDZd+1grVyob4XSLZ28uC06nbqq1p/EblxU
Fcmsp1ppJ2gJNpc1bTLPtE2g3GvMWJ7qAuENbVTxbmhDi53Md2V6w1kuFVihkpo69rPXM0sIXOGa
a42cnFqMDh5CRnvZoXq7V+rAfRn3eR6m3RUFJQneClL5RqFp8Y8V9dKjoTFb0r2MvQ+v8En5sjvB
9RdGFjrcJy4UxUZvFOv2QBl3rICHkic/2ub10I4og2zi64/K40yUOkjE6tcJ6bgi3HkAOneSFOLK
D/MBAapliYy9KrOOUg6FCj6CWwDsnIJZWN3F6Q+VXD9HKu080Q+WoVZE6mC65RnIfPkZV1NRlvr2
X4ytbwzd4TAlqRqd/DDY7+DvtndByLOBrw8Y4DsjJy4NWHl5ZUIyn2oZxMV/cuqAeAyyk7z4JNSE
mCKfPU6FLvE8AKJ1D5sX+yGBdv1IHTkCKvwMv9ziSVwOw9mwDm9mY+wminql+pY+dnbFSe3WnDaF
6omVHJMNLWVtmMPXzfpnlmxWX728a5JagOz/889ZszDnOzNuF1l1dNCwjtq9iUdQc6qbmgdumGGf
KSfGlQNyHtaW7BOylHPfbY9/K2X/edRjI2kAlpoJ2v+1RjXyyo0J8HZ+JmJjSIkDarBaBgEdv7de
56Nn/7SC81UIE4VDWayesPhqEAATW/SRO/9cUz4NlBUa43gxcjFJbQbZ15mtWMG2CGAbiP8WJ/d7
4AwVA03PJQ8JO1ikX9axR7CYPiZTAKEd+68fmj546o98Dk4zqI7aw3e9Vlo/HPB8r7DRsuB2Koa1
QpWIz188D5dLPlqQ8oiuAkZkF5aa7S1nOA/eoR/rteW4qlnDlTzEb4S+uiNcJpBLI0oH9Ru6SHio
FEFpZPcxnV14ycFGi2fLkjlYIwrMkHOWQ7L2f9n4iO0++SNOJNPJZLRLvmps01RAkiOpW+Uv/psQ
qXKjFy43pEiafZkjFG7sR/5OkLrqzRzIHNQpytVJk9QS079YoKy340jVpC+qBXfB91pxS5gXxTU8
X6cg1m5ccWd1llyFAlJ1klG9IBc2LwsGPbx4gEmTKnU6kWVf6NlalfAWkytpeY5kCMlO5hPrmMV8
57n7YUOie9Sf+I6yDK2VgCUd4Ll+fDEPk0vxmFkmYDzF8poul/IHiC4oPM/5CMshCavxN0dCM84P
lMH28WGBJ0ylHc+n4U2Sjn6DuLv+ju9a5b3F1YaG0YMVk9h3kGBri8TnrxQjfdzB0Ii4ycHZ++dI
ZbflK+oO6kln1Fjzgp5XxVUuDcnnXixRxvIR4FfQ51VVEJtw/HN8KQaiESEe7fTyibP/M3iMmFI4
YdRVcT4HCH86NmaNQueY7jaagwYng3OXpBy1n2Qex2T+CHhWcVoDljRjlMt/iz3XF+HDazQtQnHe
iFwHjMiq7ANcJjUqcuJm08IdsUDjkUx6GiWLd7Ly85n7EL2MrxeR4gWuPFy5Im3PDCqPCQSbeTYP
tznjMzC0Cdt7LA/Epv5osffo+HWMflRy0LzguKZ/9LA2dhL80Sksg3AgWVkpvr2zR6c0YxPfp8jw
bqPj9mqiHalAe2bQI5k+u8go+TUz9W6mY50tvkMh9w7Ym7yK2v70wnfLkx2Sa67Lsse9vpatAgEd
jDBn2cwwCt9+uSvaK1MVVcXgOyHuqrv5ZThHpp2olQN2z7H5BeX4uyq4pnzn6vzE/ICAHDTEqzBH
ZKuXvLOJJBvlytLUzrvqgDRuvFaGCi2PPd0vFd2bmD2vGdcelb/STfreW3+6XJBmjnfPHUezwBef
ItLCvVMv5n3LA4j+qwlWjIFIHCM/fVW46pq1mLUny0N1GhNsm1w7qD3Wj/vsnNmkCXPRkk71JNjX
/c35ULmafkq8E3bMaXJeWpz6fhwWN838Netdjy3P5cA9kOKhHE2hZvCvHrCCGPFLEM4yeE3SH+Gj
kgvMj8jMSKgAEmjIJDo9TmrjYSxuKY/+iuDxU7VDupo4uX3MwT0O1axbs5r7cZT3QWJwBIHzGFUE
kJXJx1Kt9BYU7/8rVX6uYwqFJzodVM/V9ftaCX6qZ4jBQ5Wc2Kxqum0lYyANuUzIQK5tYNt7x2zS
+CIVLLz6PmH4ioo95yzNz9Py+Xb4OoycytGb7beWrVztkS2aguHyzIm0kDPFKQGALkn0fj8PSLxn
mFn1ESEa0TuO5LLMPPvaXLwNB8Jv9mrv1X3Ar35RrGY2mH5v5XXAAGqJe0Z5n/wBbCmAwlC5+OtR
9UlNyRysOssu23IWunkRpQninZfwNqnHEX9hLNmvBYYy4XBfF1g2NOnWmHDe3D9D+LwOl3PKOuTY
T+yMEYW9HdBVT8nU+Qr+kaI2850VJ5imm2oTS81DAVgly4H4kzRVSHP+lrk5Vpv+Ea/d4wL40T+u
Oy0ZQpImbFZoF+2yL5X/oKJyMZRIdAORTyv9lR/Y6Lrk8+Xwb4gvp7ZY2p8LIHGdTOKOBXoR43kI
qwwyR9RUAUuKsLf3EKfx/xFSSxStBlJvLIfshWX/Ge8lHvF/HqlgupAN+ha26mbPRPnzpVDX0sIV
Yj+BVFeB5ffGzRawdbaFT25tM3lBSwweX9CTZWLkLwwkpoYUBUDMbzj1CTHwHsT1oTGk6ZIjNZRI
lE97cuQCL32KfR24pV/FkLFZAnOBFs/t41LwKW0QxOMQG+1UW8vWOZQazF0WvwH7mfXWJ5du9qgS
Q2bhK52U7YWwfH4a0xaRS4QlW/OcTomJG0gKAvinS3xXIUkBPfHqApvPnBD6EkIlLyGVh0VQuqrN
5Qj3hNI5niq/AZQ8V7ViwHLG7CeS7L44gfx0oO11NrGmwhcbPTSgZTATwDV+DJ8y69tXegJr/5gc
mmNLfaQZBclySxVPqDYmvKWGnTINL9nn9b3qAXXJsNNn8pe76hbxG/X57U3izTahYV5vKE4is8Fs
PudU4f2dOShDPqAqjc1hpw38pFv5Vi50Ml+EXP8ysPOnCrGaHt3ENc7g+vZArjDVgf+jnejUCYi5
AmVrkHyRiCU/0WcBbBib3kA7V1K3XiEiSvjiGfxhX61m2sI+V93+cLi2NXxX91BacPOE6LuVaXaU
DvvoFFx/wZRUaBzUrarG/0z4B6Yt0sCamwmLX37u5OUbSs6HquwBwPXUws9AG+00+F3Dqv8nhcB6
xtYM9eJ+DDTtfKEMo6/GVVIMMLV6q07qUEQcBXDBKyumcG2DSB4lELLJkT99nLI1anyYT+YARZx2
/ypqjLF3pdhm3foy5K0IEM3csgRDmG+KwytNNtAr3ZcSWFSTDuYbAqSkFC6aFzTku0hx3Sd4dahJ
B8VdCsOV0/5gu/KI/VaLHIJXEUMIQUIZwiwHZXbCzH1d5nz/4NrElkwibOWQpGJgATMbjg3HF6Iz
mOkXwoay/c/dhkgkZgvrN5Q8vTg0f/T5HOiF3gZLAaYLKz3GK7pylas/jbFQoTt/kpe0ZcWeyO9c
jUhKMjeSckJ8Hz8TQdfBhqEjioshhr0yF6ELvjpT9aXVqHox+qMlPMaD5c2vx8x3A+u4HslM8GqW
1jx/HvNKdOqMzwksMbwoAYBSwbmWjYJZ4FnBUrifyfxcwmGZk4VWZq3NoZrh5LzxelNFv6Aqzqgd
Jh9hg2/Wo/G0omHKNMNGXEymY8hCfy0XszvytSY57XNW79VbRO63F4Mhg741IDGGdmUV50qKEgRr
UYV1ybyRdj47fjjiZtGwCnx3ma9fWb7j5xFQKNakE37J5soJVaHj/i09fzEGdzQ2lLzD+OCTqDaN
M4WQCwpyz7yCvr4UmlLSH+G/LI0djg4QclFvpG5BTJVQ88HfyoBsne0eLWjkhtygPV1p8CMd62TC
t0WzIsE4nnaeCSWX+cjYexCy97IEETVFWsXRa6ui8jKnQAcgy2Jz9ba62BX+bMv3kW20tvJhe6w3
xsca7LEdHimXS3kEbK8SJTffGCKLtLvQkEjC2ydcTPVuL0x+hWIkEhMeZ4gvAWLyGVIR1OsWJZex
sR+t42r21D5VRR4TZ/WzW3rO2lVn2/5HOjc/Q0peqxqUPk92j9wyWDuBF2cF5GU70zzxYnX9HAlE
v+J0umgPTGwA9q3ZfBkZXBcMZPd8xCKW9eomjpoGoGGFHdYnTDd59X5whXBnhX/+YG3VaQvGQY2q
BTxF2nzRHCj1fTuk8Tg1o5NKzGSbZf4EJPIE3suxpgZGt4xpXPsMGHrUtKSQ2GHjVYHhwXp37wVn
VQw/OogreGGESlhZL3DN3EmETSfEgtDEUYl6p+Lyl7Nt9v7bFLAwa7E8ad5e9bJqFOD6c7VrS70o
SS0+LvJ1fRyPP707E8WY8Q8iVzOJP+egxYaJUDMExX4iRZYdr3hY4suhNHVOO2QkmItMkR88YVZg
zryTfVwv2kjVF6Wb78XMEZMeooFRgutp7pp1QIf3XYXq16XmbxBsf7b7487KFd6r3/2xuQLLaxco
allhRdQa6Hqr5n+Ds2xXfpQ5Z/Zt2JkfQgaf37JiEjdzTAsUTy7oDtFpyY+u0wbii3PgpBqNI+MQ
6VRuEwgPbGvJx8d7aFf/9LXbW/z6JSSbui+EGYQeYCGolgqyTEFg6PjLHj4I/aI+oMQT7K+78fXT
MKZYQ4X3Yli8bjfQ9Kwxg3IhE0Nn6Z8rp57g+txaQJp8Cv5FdnRqBq/IWnHC8nr5DXnYe9OZwmCw
3RYtTUJpb1DR3kD/7JZtZWXwKZQkHetKkqJEbyd3C4yPbUY/hoi0/PChwAm/vBHjIm46UpFhNSAD
rC+0kpyK9gRGPlNnH3AZ/2qHq99x/jPeCRD5iS8euDnIkOMq1tihl7XE3y8/olYbVM9f5i5Jmi11
vIm4IRDx3yKFwZQOF1Zt1GX8E/p/wV+NoOjPdKwzbhlIB0S4jF3tR3te+Nj04B3l62sW8ry3CNU3
dakfMi0jIFtyCCKmMZaBzmOJ5mDUIeIYnWeLJOQ3ssJatMZI1pCrSDyOKI1k/w0X+5tyGS29cQPz
SSqWdBZ00MMlkFnSkcZF5pNn5RQtY/R1LEMU5zT7zFxWijCJXftx6YYZRNETVKGKlzh+q3RHOSXj
91gi+x0Uczuca26otyj37cu+iuVlPxmDI8vJplQHksG14UtvMbsTnGq95G5FohsYepwNqFSBxpe9
ZrOskxSkYNCSlfTRS7AnUVySxMbhfByW/TRThufQtGTNzwjtx/OmdUaH9e+5WjWYzvNsYbZ+Z9H3
z6Asdfy5+ilywthUVtfsUo/XZtlLNjiu8iFImjfDZAZUtVLbGF0DkAiciV2TwVW4odjQx6EhrlN4
mZ4spaLZTmRFV3+H8KNsYrIoRq8L/KJLxXsp7ZqFBYQkfFD8qwraF8otB7qRdglwp8OLJWn/gBuC
W58Q6sPl7QoHBAYtNewKCxOaWcN7hBmT/XAwm940GV1NxHRKYqtmgVECW2lEW7UOyQtkPsZwtNEc
HpPcyOgVCu65ZgYpp185sT9M+jgM0XE0iT83WJJnKNGQWYWg3dBEN0n+Taw/YcIoM1iYSqcz7PmH
k9qRS1OzYi/8OaBqR3uS1AsqUXmRgY2g3G8eIxSIxBsa965HINi3hKBPENRucrtws1aKMmrwz81x
mRLIoO3TM+V/KOJd5W9EDFfs7tOhht+W0oXQ1x/g3ipsR72AfpTHlQHvhG+3AJ2MNL4TwdBDp7wQ
ymaCodm+iy+Pchz3QS8nVcRbU8fu8EmxUeRIGY6Tzr041emx+ypnrhn02i3fZT8NBCkoKyzbAPHV
ZpWedUFhOqoL/iI6ybxqr5CORoeuMiJiAAKc0MKx+U2hTN55fuNiz6XUiRvKojJSFYrjgbzPzKpl
I5AcrqoVa5OgbxSpCJpT2CEQRCvbt9tXzrIrF7yfHe5fmou7QbdhucNQvFIQ6zNdfeoAe2M2TH2W
5tSp0eImErg8dJsicFVrzYFC2jkqrsH2YS0ZdmQRsmG5iP60mSvQDuHkUi/TK/F3z81zpWjJr6GB
VOiu9fAxL8K8BYPoFQAeDNfCBQFuUjmH+muaWJnNqmYhvj1N214O2A0qhGuBxPvJ55qbJJe86e43
NGJxUQRYR0uz1HQOZTC0jVpmyG7xM1oAEa76n8WvgAcIrJKNK2ds4LzjfuFMfOcgk9MIPIptMAUY
MRaCxD44u+qnc2duMXJKcB4hSv3u7JdeTm3iAy/w1ONRg2xTt6wMF0plfJKRP1w+hT5bAdB/n2Cr
evARHFMM8fqm5X3tJhlNP1C3ouk52NKtmZ0oQx9R1om70RMsDS0myUZipfofFpeWgsnWU+13/oqo
njIcvDeDHNCiYMwQsD6oNGN2De9YZgtl8/c0HgFBLlhBZgZJnRAtY3IRjNbwcuCzCcx5GLZLz8+m
h+uC6BHJeB3r1xrUfalN2Wq8s7vr4R8slJ7uUpni1UpbIZYL1YNp+ivpjjcNx/8dLNmVAuaFLPRz
P4J4XNHZARCPic2UIcoolu18MWb5ARrvaPlT5b2DHiRyAFScBRwf6kyn357Ohi6SUrFReOSntbtY
0IvfchiEynq70UWIN0OQxLAz8xwY0rMFVGf8ni15B3GR3o7EGg4T68M4lQXz+7LNSdOEikKPKsVv
OhPHCn0b17nhY3ipXa+r9uN5N+5hMaMjvYDg1h3gW/9ctoqUNnNf1m77nWK7FkKzdVsCaoT5bvjG
QTeTAJY1v1HpM8X6kEBUzL9SSThXZZ2i0ib5/gOOXKNxVfq4J+f01oYGAM4A8RWtzht59E9KfD10
vAnwI5A9dH6YrxtazzWWcltgcQE2DQxSnqh62ufao7RRDsc+u63GZ9REWxTWTB7VZnB5uKJU193B
zPstOwjntmlu4GgWtA7W2VR6eT7oXYWgUSqQz5pYq3CFZsL7GzR1iWiK4MyH7gDtlvDkl2prdm6d
t3rZ3icXuNNt3fcqwg/QH31sETS0lBN70q9QGf8j7UimifNhQHaZyUg8bY70OOiS+onP5zH1qMDG
37cvO5JJEL2BXOrcrweNWDwCSovDR6rEn2E+HKatd4qW1q/7wYusY0J3M7EQh46RXtCcCx1AF4L1
QmaUD/nJ8U4pzaMHJjuMybJwyRRjcw9T4KPHE1EsQSCSNVOJ8S1pSomP3r39idMhHgCnsKMk4XXL
OpRKSPYzCSadyFHSmTa3HveGzJHg8lZwxgB8IrJLfXhn7A/pc3aBsqvSsOuIlJh3AL7WLsU00Fwq
k2JbdzUAhy4n3vT2BiHEuteGaIHtAOVIaEQA2RjHq5qrAPlXhmnJas+cRBHfeEty6Ae0uwF1Oodh
5uLqrDD/nHaFoK1xART0sPnsLexnapRIyVNPzEmYFM1UdFYQ/rEHmHbLSUur5pPpz36YFTcirPuo
kKkMfoOWQZOIUc4/CHC4mEP9UjpCfwekXQ6lqeiypdWS7W4D7xSq3GdMWkNEmE1aolwPFQBWuQ+C
g4rcMK0UZvo7W3DSJiSzxyCtmPKgQ75/Z9U6AQcnELMky8RQ5vNzbUYWMTzKP8ktelM101Llkl6O
8XeAFov1x6axOi/NvjSjQvohXr783DU0SVSa2rzl3Z1Eipf3VGbdeMiI9btpqJ0pGVv5qHQ5s9cq
Veq/wDjK8htEzoy1PbS/zkM7teitNRBifCtK99vKj9ifs2xneK0GvUJcjuLwSK0j0imcSSgDGFSi
PWpgNIkvKu6ZkKA0xUFWbvUKnlIeCCG8IS5p88Ebr17ltlmUMNYlcu6YirtayWauXcBKHAyaU1jx
CL/KvydptLU4rcQAQo01ONyooDWVf9TN862dvkG8I6lgMxKpX4VTEX7PHPsrxMexrkSNJkEC9xaZ
guHPpBpB79EfA6sxwdSl4gQjpyAFnr1XWPQALZa5z1c3DMGoci0ilv22PcpknqdJfEmDcP8nk/m9
tqV28tED1ct2feJmxZPAUj9d4P/2OgQUdrGL5gp4tU8DiEo2Vo/rp+qNil4ZrD3I2blzxuhthQn/
DwEpNFkVHXuPAnOvPB7cJt6I1szrZR4jye6JQYY8QAE905wPFbD3XgRoEN3KYBQ50gp/XuYnfz0C
1/81m3VU3D++82NVOr/GzZ7lNXtymdmp6bgsAmoUig1f7M8MK/5c8LDyPR/0RYoUtFKcliiWWJat
BXrh7ZkO75kzw4Sb58UouPjAcvchfpOc/t1sw09LUOOlyFY9ifi0wJlaaDynMBC0yt7RZOJlNUIE
kziRLdfbOBSNi8k1zOfvFq7NF0DJ/TkgUaseyyWq5GLTLum2eRjbCcL8RVD9bg0EqGMxTVZaXFTw
sJ1rRBV9NGo8KnynJaB5xOCLwyMBfnjRBKWxefm++Eh+UQuOGW2BJkZguuFP9IdJzT0/L2J9S/GM
dYfRDocGL3htKsJFqwiiIN4hohth9199aM13KacgMvgpPwOho85sqcXQ8EKV7M7TbY6/hJ/OxkRo
hBrjbCJJAx8jxtGw5yeE4OmFXQwwxLtUtW6ZCGjjWVMUwb5VGa+LohGzSOSU0ogP7ebwF/MHtFmP
mot6Uk6Ys3v6nnpxN1GqiHeNSS52PiOfP+XKKg/FHL1o91i4OOSOj3HfeBmpcXMWzmLcZSzUIGt+
IEme49Q+JQXPfid20p/0J6CLtm/wEWVW/xrhwXTNmuE288BzG36jUnP36fryKwAjhoRndtDBk6Os
phdEVy7mE0w1pbMDHNt40qJeTrJfkLHWIaR4Bwth3sbvBjz9WhVNFMRLv6NNYa5ODgypWyt1cZwY
6a713whRkuYxg3L2dlL0M/9uEA76tTI4pn+vzEwvi9e5uw+ZckKrETny4gqOlxrEul5PVJVBQTtP
XgXNFNlHYRDRO1iyyfp1MY/294HVqR7cCrUwWYsX+5xMLi84ofOjgH2EEIlPIjbkLjooE3jkdzP6
dwvxJXo/xi9cmzT2aeh0B1rARAxRQm0yQjssxfyZ+rTuKkSmXBcRHi7GVssZ7P314Kjp7/uxozUY
e0T06v58VTOJFe5xchqcD3zCMDZPzlUrN3O0YV3W/BqEKsvLaQQAk3wCXgCv5enHdZG2/L0hv/5v
C2ltbue0XBL00+t9GU4bxEWMBLEikKuJ1VFsxqF2fMFsoB5d3Z1fxhJiE/Ldg4nyQE8nl7qpsZ/2
JSTnfxGLPwjGS7j3YBQxCJzvrAoW9+f4XSUSWu34PaJRfNjZktqSSEfK9a+2W9XUBWoZIgDM7GVo
kVLU9t80PDbv8NMwtCdYU9TqI9OQG9Rd973Bffw8iVX7ymadflLrHn+OmROzCpbTQy0DHqFJnjoL
cvFRVXwwpaapWqTwAWWMbFBGbPNJFDiqiwyT7LYqJHjxYZqAZz3XA7J7dHXANCAlBX4Ik9WFHMWl
HJVvREuITAcTnMeJLBAj38UHj/DQigcZSpi4vQZpCGDzSMDGfz5whNS/J+YBNHbuVRrh7oUSO5rh
LxF5gzhYLRRDXcTLxt9MKevqd7GaVMqlMAyZIzWPz6LsKWCk0XX8NJmEKbhhzBSgl6vF0VaDfKXT
esjCad58xtBdZjxxHa3dLsWgssqQs9FUw9z1ShsY1WgjcUYsay0oS5+kY4CvlRbGwm5xu7sSAIsp
dJK8TqXUG6sh48WUWRC5d65y1E5Edy/wASSEPNb9gNa0Wy7MnJr+QB0giU1y4zvWiNVQq3HcPqw6
iu3YzEmCUPdMrD5qobkgsHf39D+DSjF5mVrpRXw8/EMxwPipYnFh71+c6l4zfbxc1rV9982iDWJ2
yTn3wilUB0VRXMLxUof+SyWaNe1b/oo5jlKs/yd37H61VmaynAmJ27LPmPrAxlqL81GzyF+4a5xn
E2oS1LLOt/ESBV3ouMR7CQAognhRmWthWaymq1VHcziyBn39DHy+rrUj80dFK0Zb4mItN6v0/XrD
0TDtNOc/S+lERgj8bVpEf9VDDeA0LGrzYvmk//7jg4ar2PP/LDiznjEwSv8wwntgV33QK3AFSId1
3eXeQopt0nUiQOhtbe8C8L6EKctKQVjQ0t0efmzswFcad0ZIKGXNNncH0th/9z21vWXrngucQFi4
JJEpDeU1TUx6voHU3fwMjBC94jwQF7lkrgfhQlYHyE8mfM84Kc1yDkYC9GylI8jOSAbBENCgIJNF
pGCxFfhxWUSKLoJtAnSn1oN3HpnuG8M9Tt7QbGLxHxKquobnOXv40LDZAy0hp8pqiAj60GJ8zXA3
H7lpEqkXLbIOza0csDW8jE2r+fBeCh+y07YSrSfnsG+4CntGFsJD6DucPykdNc8Xaezd3WnQSuNX
L33PgpRrHX2OEttPdGoCH1wM+2ruPIyvrvMr3I0/XmUNzcPNY/8i2f7hwVjGsdCVwp5ldneioM8U
eKSTJd9q0nvtMGfATwtpGzX+5gXYx+bDflvOziNx0S4tYjKoVqadXWwdUlstZsa4iDQLPOV7DUck
DCuGCEdxlYLLzp0ypoxT0YEv3Tsi1KewQ1QUQkcCqkITnaX8jm+31d2cOikGl8F1btfxSdQyuPwR
6yYQM35v9TH2ETUNoWVSH7Y04e5TIJMmLcti6AsVrDyRF5L+0VYTxL+hJj5H7c3I2zLJfvCLqKVG
whuHS+0fRQVgLLa0Lz/N479sn+YQ+fdE5aKl2t3mfjAXB3xdQbBx8C0MKMtQ0hpuk13Lu338FAW8
7Oihjl/mpK5F1PQ7unrPu1HdPDJIGO6DPOsggit1xwlghDHipT90wNi69M551BTsRFSeliRJ2TMA
q9Fvb5c1npSzqgTx3lV9CHpr0ZRU5knNRwqE/JUqj4CZreudq7RGl3Z1i0JUQnn2FYGoVh775SjV
1bVyAzdc5NJ55jbchxE5bl9aFNdCYOnlQMlEf5chHBIxsCxIHmF9PrA4z6wmL2bIkXBICY8pPoe6
hyOTRV57xOyBNbeFiW+h22+hpQWUzG+XnyEinybrk0KdnpPjUrfKr8TVlfW51C7wnvsKRxWCnYZu
DPXjsCG0kZMSNuWLSf20oWSZeReVg2z9+NReBNz/UBZa+qwNs6uB8naObh5d/QJ6lq2pvme1M1zr
I1lNPr3nVc7nC3ORH8vaw5lTuYFabl4qemJIxTxFMH/aUy0fuMfB4QobCEiWbJdKOs9M+APjIS6l
SbEci6eWvwwThNYDpugjPgyRpcZqNukbCFpQADaXGsy+RaI+5CRm7baspmc98tn5fNG5heb3chqZ
s4Y4f32dpc8LcybbsZBrZeFx9a2aCh6hFGurI3n+dAMf45jxS5SDgDgZuJeYMNWMRfaC5+JHYdMk
V4CQSjkRlUkiKI+UCWjU1ITvpjR2KfrgqGUTcb4CywwlSeVLIUmnYKEQJ7hOMebQBf42vRM31okB
st6Zt9r6iFhWYM5U1t2spAvxGRGaAtd6zavbcuNl8bEogXpuG/YSFQ5ZvRIzPXfcqbHwUFUTH9zq
biU7V0T1V65wMnQiYab/aMVIsn+lxx8QG7OqZwamGyZyoJlaJfjV75Bmzx6QAZpbmijwRAIfjLPv
+fp66dRQe0GA+TJUG8LcaawsHUoHcrPQubQMobU4uyixExEDsvwfRE2c11fbr3ETzHQvPtXyyP//
vo3bbjh1NGsMapl5JXXdNwFASAmGwg67J6kTV1nav57jTpSBvz5jwrH81DslS8mSPY9VCESiyPOS
CQHpV+CRc86G7STXm688gOOhJyVoRG7ChvPZDkA1qTTR7mh+6GSylSfAT+UAPkuV3Mi65YTgwqJe
1m/rR0Ai8Kq0qrhO2Ygp8Hf9w3CpduXEVifXRTB04fKnYathjLv23Dg75+QZHZyjsD6937cn02CR
BVjYpUuawf91EeHVec8EEBDSAE3kLJoKyNZFoktceF5dh+X0nbkI8qOR0TAJooLvIGOKGgOJS7Zm
E5Zjk+WKf8alsVHepViG3T0VlYOSL3VXcebKswer00V/hX3+Xzu8HxjWpGQy3sM2DkSsd5bstXQm
IYrXmnpXlvwPtkhvyofs9v+cHIgL0hT8x19FIwzRqbxgEn12/dur/+mF9BmdZVACYuaMD0uD1PIs
aL3Ltm586tLcCveAkPNx/kjOah+1j5QA/bv+uGiQBsV8qFu+ocvVxEmYXIzkSLylsF2ZckQIsxgN
s3287j0b/E75EOJ31opsoR5t2q+lFMklgcQZaF0y8QljdsHb3IwgkMIqkG9OYkGroC9XoE6/fAQo
ssIJIqfRedjbRAqHvpLSo/u2I4W0XReuuhzsH9pZVlwqbuRUyOaTLqUxuGeRuEOrvVIwUZI45m5b
J5G3tkxBoQh5hqkjy1s3yS+oiaQB0VwgBzSwzBHoQFfAdjeIfpL4iukokzqhNoe5AQLSAqWTN7o7
AT42Om/GX3MXjNh7h5uSPIll/SWEaU/ttIlITQLjbiLBb8TJGe/t0c1OhKM/54+hsMUhnjXLqtos
YdtYtyPCZlVeYZl5zflk05cgMkf3a611DHTWDBeU2MimNV1rDsm0WKL/jq3D5XzL1X/jFatkqOx3
iYb/UAuuV/43m8ooSB8mhkEyVNoXO3muzSln8T5/zRsaCOGTzUN4U7EJBhzUMXmNxlcarNaGsDaE
lnAQk5qApJTge4ZYZEHBDGzoK+0HOIMYy7gDSePxnwL8y3lErc7cn8WVHF8tlMqP87wK4GMIOVoC
p+53yJumMA8xNjd4LC1bfLUoBA54R5dNEcvKSh60qU87vkd+r2sksfuLbAb/dWEMpLX9ArPJhyOi
vRK2aOCTizBt8mLQ18vpdHkdqtiS3CQ0QPd49wSLObvDzYG7pcVnf53xP0MiGgMGl9aVWzTYm+vq
JMp8sMA7gcO4pjnmohpvekSlUDCVcJVMeYZA5zN1Jm7qd7q1PAeMkObvE4TjF3mZClA9eR3wwKqt
9G3mNTPG1EFs+lh5yO2SGteLk+RdosurQyIsqg5lUYCSmNhyUFAkQch+QJqznVfWXj+0yTyEHnzK
1yDU3gHklzihvOaiZOejIQHPwqcc/vb6BpHJK7dJavW+oXALdbdfPnFgxxYPqJ0KmpajuLPq6YN2
waoUwZNRS8trTNGS6rG0j9pZcKmqxK31E1Hljlo/SisPYwOs1qv02s8dhe1xl1KAI5WhQFMsR5qw
SLCZMHasDjv4rukaEzod1mkn3Uix/tLWJl0EcMrSo8hUKcuqWi8f6m49kggcCceKMu6Wv9acA/ZL
dfIxfV6gVOYEQlXxherwkRJZX/FpBq2iiAeTiWh9o9FXSkzZB48srB8BH8mGSKKE630R8cc5+w34
3P2B0MGO50QrRFNzMOheQKNA2pCh8XaJ2/P6OSTEGBO5mjARJbidAGBQtBFD32XoJQBtMbxPrRem
++86z6IOAxAsaAoA7PneyqD3lE/dSl/iupcSyAyPtclWxupWAFNkILy/R+VoezzutDWUKr4d0V7R
YAOgG0WeI1/JCK3POZTCGC2RxJInEDFfzS0tBgF80RkYh2PZOdNuDs1KSpIeNoGsD0Ab/G+p6qCV
+61i5RnlHsKhSRaRCsRfbwqnTOJuM2wSalcZZm6JaZkh+haQca9NN8qt2bhNuQtgNjTp1hva6lXo
3R9/8ghV4D5JpcOfsq2r0CSSHJW/X26hPcIgP2C0hL85KnUchZx2wBuSk3I34Cs7QDv7wRWza6LK
kUNsABCO+bB3r4b564jVS1WFQk9UNa+Lbjfo1plI85DoLUN7+5wbktdxkgQYZxI/+n4azhR4D21p
bOnRTvfjGV81aNE5RKxAi0EsQ4Ti4jyUk7OatZhHb7KaRTi9HiljHY4n3Qq+fGQGJegHdjA6YlA0
B4JX/u9pjuuNH6N/wCLtyvArjohwy+vSt9zKh+jk8naulSACxE3umvi2ui8nCSbS1kv3Kg+Hz6kc
gebyZjFZaLedJ8SjpERYwX5JVNQkZeOTYnm0zDELQPHgkrxKqkppCJ+Dl1RJfJ5owk+vBrv460yb
jDH+ZXO486FOnydlJ+eg7AdIiamH4sa65eG6/kFwmSEYrwyW+2eUfWI8EPNgB0uq2jbKRPIsX8P2
JGHwSZ+xTuyOcK5z3HT7jl1TaIKaxrjoA6kUYKNKRL7YPao74jSf3DD7cPgOgVmuBVYTzQoHtGOB
dQ5frrHH2+PMSxcqisQz8WmCDOV9XR4/JLn+TWej3gJl9hLUlujfTQaxMBv9YXHIXrNACUxwqgqW
CPw+j1t5eAGB1hzjEFniUpmGf+czAMTXlSCmV31nAYOuXORxuVXO+2wvbwqMkaP1Ya48ecr18R18
ezmBUJOe5H/UM4bkCfzPIbG1mV6ENnxDDmiFG25JmPTUYXnQLeHNmAJwXelYpVL7jEnM0c7XFjI5
jN7xGgjUMwDmBVmRo6oVIqWv7pnQYdIO9PUlPtNJR7okIQVJP0HZf1MRz430x4hNZKMGfyuKxAHx
tKs50JswYZTzPTEQTfXX8zrLdK/+A+SSnXrmA9jSDKok/liXTBcqv/JOPywuZPxNywFndp+be7Mc
l+tZS245lrBxLL4xmoc4yAJLdBAPyGtVzvc9YtWC/Rr5gPm+QHKlHtPIaWbtqPJX49y+8d2dmh9Q
JVWaPW2naDyQYRuu4zLhjQfYpt/D5uuam0GTusPQ33h833KdhLVkE0PWWDVkNde4XbCzAER7SUnz
kV5QdWP2g8avUyBwtqvyyFMcX2M4R3GMPAHgrmy88gCq3ag6/aW/vEU22aYT559FW2w36g7sdp5R
VBSU+Vktu7XmS/+rw+5fCGrMuhvBxZi/RjAPgELbbs89tPy7WMuzo9EROgliwLA3ZfCYFxhyPJxm
g59VLHhLXShbWHmpYHdRYU1Ixy2eJTwDI0V5f11WQ6gBq67YxsZstIRAxlM4/9kFPgi94m28WYEk
D3e7l5b3+QzsoP15rnpWf+QmFmqxiM1cpRAWliAZSMKTtpVbLBeWfL4TdnaTxD+h5/XSnfM+FfqI
8AeTx9hbSdI5nJ/2liqWtvw5gLTtzVXv9KYiy6+IAolZ4naaVqYHgVYvsT5ADxUu3OY2Xob+SOuQ
npS0fvwmW1L0SL7KfixSiKmQiw2HVxoqvUQhsTgvEq8l9jrFEVIRxlLBFVQiKLxmUBtbNLq3PMrb
TYrGMCjFcHGGn3PdggD98h0dTpSXRM8ok5NYexJJFUyHxeQJIlEyVYth8RTNN04uiX2o4nwo6Rcs
0Grk7gaVFIrQWvriihr5Enpw+fmLIU2a8v8Q7xJS5KCyy/ewnT2rFKGORRL2IL42687l60VG8FFO
wTQlpRpyFq9uP018F5TYZuhaQD7N90KUX9r1IUogeH3L3DnHPwSli7BFPMC2qZ3NZ+QrefaW3LJF
XmUl0nGxZNhvzna/J3LFkY+xqMjwE9mRzQPYnL+ExxVsQZpc5wvlAcL8ErcCTchKTrslIkT6xCJF
vUPz8EKwcaEVpQ1+VWCHbnoO7KV6WakoPqRD0Fsjmp8nJ4dMihHDeHYRa124QfAjDBkSNDmyTV9X
+GwXxhSajwx+nGbII9Mx4YhioepKiX/rZ7Es/pjlcqB0cmVDLwIzbIdVj7FWpCCErlHz31OpDvQd
9Y52eUZRjKGieh7ZXL33dOElO7YSlaHhBVN7v/oU0jySHgwEdsEmcCmQkF/kHhsYWY/5Ofo0qMBp
VT+I+Fr24LmrOSXmJNlK1GIDZwbR2Ni3naGOoBjYJQV3LyCcSHgQw26e9pL/XynsZLawGCWpXJl3
NOhno9iC2PDl+gUgIWbqNWA3RY1PxjlvbHlAurvkr+k720zBIKAe1U8wIJW8m8GvQsV1EUeeObJZ
S41JPAFbXsmlViwUOaIQ3AW5Uq7eW98fiuegDtZHIzWsxJNOekaGkdIcI6t95XkgiHm3Nod7z0ge
v0KOg7UpWmBH+ZGSU7h7GtxryZOhO9HkPNVMso6yGhBkKOnjGtblVuxbeSqEfjLJbw0wvWxpwYIB
4ZyKN++2y5vGGqSuD+eZfZRq/LCWDjIspqUGNJIlaR7NNeTsNdr7oHSXuyfeExxeK+cOngEeYpRq
3c/eIt6YGBrALVAcsfGkmBHExovzMdCkxYrZ7YtQTxE8y22VKjQiDaEj4y3f3+e6F4TEWcYzq/S/
y+JkqznruLCGdiHxrRaxpxHgWxVKO0iJU8dje1nnbOoamSVzznrGzydEdSNULAUztqlWzmgBRIRi
ZUxE741kGUA3XnwneNPgKjlWNkuw3wr/G+ax2c3JPdATNGw2T6LHqVj5p7F3aXHdMxn1X0svLqTn
eNh2YavSB8dygVUmaRRWthLrTUjMLZo2aI1sHXR5HiG54RYQMb1Xs8ejKJGgA/yPLxYKZeF3IKtF
hgN/JaWuehH8WYbtXbwQW1LL8qNES3WIgv1QwkOunF9pgJemkZ06QTrGYryTHtcCU9HjB7qi38/A
PE6TQWfuUJnbR89a7949MWMtwlOL6Mc/1qhs6vIyLep/ZDJLY/8HqrN1vldiShbo3484BO+q+H/u
FF5iSNrepNUF/YqezF+MfK675EjzpH4N5REvb3xhRXDHMgiEaG6KL7tJnOKJCl3+mUxKA5XrnzSn
I4oc0eiuZLt7CqbIj3/xHQ+Uu2StZjYpHCXh2yn2yIEUtTLmow1eF6eDz6czhsVxQ5vcCgLzLhsq
M6SZbWVHEZJzzXe6N6xvKn5w8yqh+td8O5k2RTW6ZPr1olwWiQWOOV4QndcOD0l3MVi3w+3FiPzH
1yfk0xkYaH39caFL5QYUCPIS6JJuFHGs5rjZ7ZWIWxjUWOGCh18ttYiEHzDL4UYwBHlQvv5/pAId
n3UQsCzJZtYO4Y9oH0Yz50MOoJJkcUeXTy/MZIDKGgr4I+KOSAfw2iyKj6EzRKbuE2oYRrrJhRig
Ul0R2NodnZvMtYd3A8MphZQKZLydXywzwCIDWMx0nb5nWztyFBzBar1+eTQPWYhLmH19H8+de7Zz
YiIUSjW/lCr0fcDGB59//Nutl2Y1cQzpUAw+naRvtrE9bCFXpOEW+10awzUoUyPnRzCYUwtqCA9J
56YCiI7so8XrLP5dZdWkwtj+EmE10mlUtaT5rurWa9zy129iylBNrrcInWAkLdYAuf/rlC3B1Kpw
0uwGGXbgygqzUxt55xFy6epNMngFzQDvO8XkK/gBUX7q5vl3k9KltsPRNQ26lFEjgyYAOpG5Bgel
i2EHdLXU/U+6aVU2pkH4vZC1G1nZ9kzNTRXo2qjimh/yeKoixiyRWn3ZsXozZM6loeIXQNp7U5kD
Iyag+b+iB8/2Ov7OgdJ9dtCBboFea2MMJ9lNxGfqa1r/e/cYaiUFi5/IvUkVJvbTpBjhurtGmxhp
byXDmrv/1wIDOg040rv37bvm9l7j/UHm0lzvGnn5Hf1lZFfUznsgNiYPOciNPGpPcHSY2isk+Veo
Hwm/QTnOrpYOWEM5D/WCBklIYP1C8NivzVlaLi7Wrg7rnf2SNwxidRtRvQMiSkB6nhrScUXnhvBp
RH5oPfzGEWXAdVLV0qyk0VZooXMmQN+FnXgAAN7hwA0+VWT7NuaEfQT7lfCdC0JWjI1rnPQ9rFdr
zGFW3B4aWbubbqaYMYzjLUNbF/wRp1pN+Q9fz94TaV/PjwVYnmDDHjDO4D2buYfQWSRHcCnXpOxw
Ay41qlcPYjex2pC8KxLcjRv0sZdL7rIIiABUQvm+swZ2wuiuyNkucLp1kJxOjkqYNZo+Xp0hBCMZ
v5AcXRZ8iSzs9qjy8GiBQ+44fCfykPnEFTYxafLprs+ffJjSrunM9kG50QcTkg/dalQTQ5VCWXE6
a5DNyGOO0p3EEmKJ1u/QLQK141YeEfC0eYesXd7kNNdJ4g5MOWA4lqMa5Jah4LWdoF8ajDYuzmOj
0eMPBMrjscUkC9nUupwpMAVLucnnU4RSx292ExnAJewzuBhFY23Y7bymKVjqqGUpnTNKhs7eTsXn
hEndyfV8GVHScR/MPf9C2ozGHke/V8NTGfJkJXwDp6iUKxYa9VO0Dyjb/AJ1iQB1OG+eDuxjNvid
i1DWccMMmzMy+XrVUDlKfzyrn0pruzWOMqAACcplCcSADQtx6iwRBSr3E/cE5nB6ktQL35L/ZTR7
h/Mecg3RVGFIu4QBRreLjgjpKTfbkqrxS2CH7SQUWSHH7Vna2nk84f6R8W2uQ5Qywa9aX0S1WLch
YZToaJZ1TK5R+hSSJaGYaReC6/g6tO8/jccPGMzDyUjDMfM13rCzXTqAhML0EYdRvsLPGQc1vclL
fdjj5Yq2tqjNoeYlXJqLRkEXOgxQTLhQQHmLshXmGCOREk0WA1XCV8+bidILyq0G8IGS+cvsBKVk
Zz7itXTYMJR1iGfpLzLTGqTGdsfZILD7Ai+p7vA2ft+B6nhIYvLLoChGRzHnA4pYFAG3BweVB0bl
mZG9rnG15MkzVIIEf7thx+GamZY4Q9zedBkT0h6FAEZjXIoh8mq7frg/D3mtGVRwbWX4Q9Gavs0U
J+c+vau8OeOcd2atwdaxUiXQh37x2PHI59Ez/FddIJFyoSfS/vguTIur/aWY9y8STQcp4HgLgDQQ
cEaSxQgun38r4PhnCDoHEVvVDVDUVmAp1kh8LMlDXJpPYMWaNRP/TxaGLgYX5pgRbGO9tNbqgJOT
UjhWFVWZqwb7RrOXHhM0y9eaq60qdFyW5jOkXigRC67DPi6J8XaAK4seGPAp/FflK9oQX3Yk09A2
KRllL7Vq0s2Yk3/Xyrau4bCK8eYMVCw2BgrR/o2JxDGaWthX9BOEz1OKC5ggkgEtJWYVh5k54ULM
RVOoWUeA25em9G8kaSrn7LWKW6ErinAN0gSSeVTYFbgAlqTUX+C03s1TutsJ22hiON+MHLCruvDA
DrDlOEn5Cvwk7cqccjpMM6CwYrozqavaME2IxjotEzNzh34dD7MWin9WTyntaEa20amQIKNwlFzl
yuTlPdXMK9B9W0eaSWMXH3GdKdvIFcfQp8eincMhl9bmwuIsqdOjF0xbMqdKuXg3alBql5awRpc4
BNZAFj49EnHU+EDNdZ7EEJAXBp4wHZYvKhp+znjiX4cnivF4+TE1TGPZR0Cqj8u3Y03/xAWKQfeq
jiIHkAhldfpkDyU8MiQ1bIUrGrveKLTCO9Ad+40JXDMNrVq3o5crId+PAg9QTWLZ1VKAVoMxYKfI
cn7rV7y677oezq/1onuVfWjMbVp+Xko1TvypTbmS1SGm1N23tSJfvErxzZ00aR6kvcpRRr4xlDxs
8GagSNZKej92IFWfSQXjRnrGHwn2oYGN/E7/+roe4mKLpYOkUPw8wxhPTTzOTHcdZUYtCQtARmtC
jKh5c4hCOWNAU2Z7dIx7AB6E0p8AXWpRvdFnB+KAcl43I9MEq+jknOg4olRss1NqFN7HYVi3p6rq
YGK5+oXKXsjQ7giAnIyQ9DzqX+BRQaoaE+PX+CC30ryAQGnm6S7RP+rTm7LIN/mNJnfDvDlGCHim
fQX4AFzXFPocyp/9cVMpbhX94/EcchEfQC+pGh7DWkszRBe607LLrUSecBPEyvu+eLZr9DZH5YSt
NAuSPAYniZ0+cAxmv5hDr1p5B0aHfrAjAC+u1xp/bcXuub/BAmLoArONTJV4oKFNHYv/mSpG00ky
Lar2mskOg7UaDb5HkQdvgvJNg0lalA9/JjjKJ7++EIU3OL4iDaymuHNxduovLJI78Eir6cx8fdGi
voomSUpfr6v3hPnHRWmdv/nXKnLDY/MBmEq+o/DQ81W+KYIyxNnYj/1QV+02QLTTK6RelmgRxVEh
Nw7iN+bjKYyL/GzNvbG8KgPHreilyaCKOfgq3iWoC+Sk3MrV6u1qyDsKIWzRUp08W7lZkIq5qd8x
yBjoqMqFdi2yHUlPj5ppgN4DLIPAYIc6XoY25X0TmAfhW7wY4ridDqa9pHzbJNcSwzntd8CnYZy2
rCgg2atTIsXNGPG7L06tIQQ5adTBwNn3BOptixYCzha5iSJFMl9kQ8rt3Rekz/zJ1xeoJ/tRVIbY
IohjHhphcHRISzvggqXw00+H0O0xqKkGlQmj4Y+gXDu3lO1wKJM6XjwWRr2Z4tL7fQLSrIh9WMQI
Sv5HoU74OXtrC4wCJME9+4Ku1iTZAhEWMsCJqIQLmKAyCiW9NAfseGOftnBlbgV6A8hqIZxZXl65
zBzS/HTfwJPJQNJdHd3I2y/FQasXe00upf29SlQtWVmayX9y8OIAxBPShIrvDPggz3LwZ8lFmRsZ
3sjyrz31l+9X1b7KCHeo0OyouC8GpetxE+k1N3k6Up+rhZfWNF8+9a+/XAsO47lm2zEPyCAHgFo1
xjhlXNHhNp/nsdTUezA5uT3FP8m4ymx3U/ISbauzwgVbS1jv0PSRSWLCpfrYTKbaam9nxrmt6TKG
qr+GJcKNs55f6+9Gr76hDPh1koMxL0KKMMqtizYrIGqG6czboVuAy3oMEawbZMuQbTxeHKOJaPQM
PiK4RggZVLGyzTIJ/sE0T/SgB8Y4hKGNgY5tNhPFiVRU2+YzViaFl4kSYSsn6fID98MjeuIdj1Gr
m00cQBUD7Lw12CbXM6NvCTFEqhUBj1N7rK4Gqey+SED6o1W4rZtHuMGT1baK10wI6xeK2TYBmCLV
KySsWAp+c6hQDJFZdeD/VNU7th77nUeZBc1sj4jH1llLfMjLVt9Wunz1YHgads1niltO9eBtwvfU
laAs7lNM0p+gPUa3deEQk7o7CYHJzXCEXbG618M9ZnI504UWVFmx+px3YCEllbcbDkfx1xpV8Bug
ssgex3C9C77dNItmuOXGnWpdvkIAsLLixZ+qtp33bIIzu6asaqv1pvTW7Ug0rlCu+xZM0JH3Alai
SCTQL9nEj1lckMUS9Z7qojyO113ErnyJ+qinE4+m37gJJ/fN2Qq7ZoANnl1qjeWkQsbXar1Mknsn
KEebMGFTC9Rc8S886oftyKUdzugSiyaBykUY/7sfbhnS4B55aunaGglW5BdjOl3Px/RrzHARxlNh
0kLi1hznuBHfyjbuAp2hoPtqA9idYMwFP5IpCyNOAVYkDEzmbayCNQj+I/KhY8KVdF+O15QyunWK
ylgEHQ2Adhb2aSg0rpEh6qCx/r15sX4+SNQqGul6zb1WdliPnvINSHZM8LGrEd3mCpoOFnDrwg2K
1NQfm89BsZPMGx90b9aQUDNsdnBNfvpMDUDjR0X1JjfhK0D/HuHtC4iMm0f93WrsjkD53fU8Vz4k
LfxVzvOOW9Z4EfwgQ0ijcX30grPb1YL6FakvpsMRux/vSO9kBi9FY4+2h3hV5Dc5ajVMjsM7N09J
u2iLdsTbCFJYY3rPG0RJj5sJSmfI9HrSx9RYnCK7dJMM88htgHv7xr1MIhDVWSeuBZU3WoFXwCDu
2WcAOmUGMzo+WhJ77VRgrCJpnMqSUmSUqUkfkPpqfQ7p0jHXXZtDE2+UGHjjrACuOyWNMD2X3Wmk
XOCeeVVCr/+IdOavyp/j8jkjRIO7KPNEIrVN1Gj/G9ZRAh6noxpOEbOMuC1WrHFWbVOzP1wOvKNO
pWQ1jXTMwC5bALkTNfAnvuGLVeVAWIO2aL43bVYO/VUjcjCN/uVVTZur8pFfFaDuESFiPpITC/ti
7aXypVJrzcDnfYLtFOzAON6ubFzzlHBtCjQVbIoD/UDgL9OhNPRAwMdD36lUqs8oVv3xboVH4NB9
Mk4E8AmsbZ5hKrNiA3q4NYdDxkC2uFgIhHpe/tPAg2Q+6Xvj/6mGGSlxljnd6TySrKgHbo9mkMUr
RXiqJYbDpsyorSWzsUt+hmt6MUxtLFqPiE4oDy/QPbueZfQeKnn702yIACzBaZ8VbeiN+slcoHQp
T7rboggubpDg24VmzuYJ5YsW31gHxAv0NQLxM1mWH9RqBt6n+VfKMxWlBHZFG5ufEZoCtw6ZTDJV
AC9ICvvYLNlA+CxThUiStHTQ1Tk336i46J44P6NlPWN29BQzzox7D6S7dw02iBOP0RpouAuCD3gl
4ZaneZDlPuYLMm/v9taM03BbvZb8HnFYjol2ndVYzyDbV94+4wnBR5/Y+HxgnddytRDq1ksOaYOX
MrgT25LDEFWsrISaxsEyiSwUjzwioabKJww5USPap51JGNB3RNKgDb44S2hRvKQNsE+p7RKPeajt
z+/UePjFz6/U8ZmYeOo5CqsUauO7v4hi4CTNOg7Xa48sYq4kVqNCvcT36tR6eiwVsv0JOWhuNe04
QfdclZJUOiKcnnfoeCVGg9B5+lVrwksl7KW30Ctizhh8iI+7++UWZO2DNF0oqLUG3yqctB+D0CTP
dO3yys9Km0gPlriHl5lBY3PdU7CA6JK1q8qKDSZPmLkUv8ZT1/H81MLc7+COC1JmABrloKznoWBx
BVCGG2FmfSyk0CSgrn9b4bbkpFpkm9no3Sd00+b2RmUCjYirJQx+KB0Rs8hXhRo3uCjzv0c2g7Pk
0jwqZQ1XanpsYA3/Fs6Xg/LCE93EfQpwA31aNfSWs4W4CgAcGaDO5h+oCkg3HClm+NCOK8qcZ/qD
6aHIBbDRvYTI4dwRWkYQHljrvEvUhMBpBoYhCPbbuAU36yzKAaM0udjTIAPBcSPu1+57DF+ZoEEi
ZtH6rEGTJpV7wl+pKS7D9hNdg3hjM/QzAVW/aqaEy1zUajmat6kR+RPSxeDirS+o3aY+VhoxifHx
HnbRB+qYaXyBsiuFkKbsy+y5Lv61Y/wx3rjDWalWPx1oj0K48EvY4vVImKuouTjujZbvc0Gcsi6/
pRlFw8+VjGDgoEgvmnyqLPWyra30FaMYLuQ6xuavuMSIaoyVA6iOE7QCpQId56/kFi4/lcyKjE2y
cza2gg9D+jL2VhNdHlHVh8y7nWOoqafjo7HjdtxdC4W99+CoZ5j7ujtWmhkesn0B7notzx6nQecF
/BoDRLhJsLes93A0uBE67oxLy7pgSXVR6xYYmDHr/FAvZStKtxOzAgb6NSv+JQ+cbS2DbF0ZWkdA
oKOBuWcKv7IM9bp4koux6kRnIPZS0UD8unUBQWfLSjag/W2I4ueuYes5TobsG+4l8Y2bJHaSL48g
FAMh8AI98WNMlzZugFewOMv6GrEnRO4RtTOYAqsBh5Rsqfk93EKRhoMiO1HqtgLdXCSPvU9JtOKL
hQnItRXjtO8FuZr40/zLq3LUL6AhteqMzpFKgvQWn9CJ71RxNDG0GXdEmmIXGITPcNQT265tHY45
7SdsqaMPvZ2M+jZz7vqPYJAfLV7vI7Ff47q1qf5zHapM7orF3o1hXi9ozwj9wXrY50sCq4JTmD31
t0NHwNWsFqSQ1HF1gs6wHXKdB+bqCfo3RpZfPVJY0JGDs2BKR+42SucS5zqg7Cx7i1q+A5CSpyPp
fSz5Mj9R4tuHOM3xoYj4xudMne5MpO13C/55IQeGRhB4aeWEOCjActpxi5LytoCVYhrFjr2TYhV2
eRvnebGB98G9EUj0Amk1dvY2iqgXwnrcnpE2hg8Ss2CTgX48gQFGDPku4+Chatjw6zU55wxaqfTz
T0LhtapkWgpnb3aLGdJX2vpBs4yGyU8q2cTtN71aHEmdCyoKwER+nQEqgc+eFaxXLUwUWvUtCPRa
5uVaBc50g9u5rz+N1B1qiV5ZOArh38yDuZ14xNk53R+xL7VXBWAQlr0VYbzMqvA/cn4Cq/ZgM9r+
Qe+m/i5e8WxB5YpCThMZJug1/MzR5QgpsOs/vFGL0FHMFRRBBfg1zXSWBoRUSvcQgUDEqSA1obtC
Y8FBXdigKAEHbANMqN9xJs6cjP7GwXD2hEU5Zc50B6T+hHlRMdW8cugoOOQScqKRiZOjBaYrYP84
C54FWf4n5/bVwmBMH2D/lGyrmcfvJhuxaZTTw1EAoqwxhlEnoLGAfjq41VHrrqWmEsFanIRzxyWd
zZfLws2EwnEAM4+W/9dZ6toWvFyPvdnhFjlqogL3wWZ6z5Ljf5NstjwCKcbO0DHGY59lXxzqH5V/
5h23bnOeO3nQl8Cwj08oladkjooimKaflHyp3/hgcL14SIRuMitf3W4LrPt+J0bcCieicTtVomuR
ub1DBI3/vXGJ5LvhKQKrgJ+CZegFP9FqAIu9vSHBcZmvJG4uaiFcADXeCuVW4UEH+Cu4V+XS69yq
gkmre5mg1k8JpOWxW/EA21qh2B6FjnD71hie9ocMVVDjR+kI7uiG9+tfKkaLyLLMcJMWO3JyU1VK
eQQq6yUf8EMqh12cAPdbGyiuEiCw5QV65wfmP+KoY3ThL0sZGgtYMWABM+jyArAcoFs5+uRf5CKp
9hw1iL6GqE06ucSkgDpMNwC0MajzXj3yokHSROhOUA0LVABAb7Ab8yf9ORPhTFA5rzSqR15H6oDN
ncd6VGIj3DSXDn/W4LPZj2cPAcV2/PQBSWpH4GJNtCjgnuf0EjPLQNg7n/CAydO7ws6pXDYqFGDi
3jiRtfpPMrzpVxTC1mI4t8YQn8jfyjsb3BhUJ3PvTFdmGMFi/wpbLbxCBbKOvtVc0fwfgUkKAXYs
abkH6D3sVd7BogKwtd9zalDM/olB0Tatsg9tOZi3VYl4dF+bBFJVbZfGRihNmrgfOQdRuFC1YFPr
HoeUoCNjaBO0E/k/Eqei8TCcFK1QptzbJHedxo7HSvDI1OFN0gtC7ODEewpbVhi5GKRXCEmYYu8j
uxLQGxsTUTxYvmX7gnlcrKHPn7pFSupjsgpGdbL1m0zmmo5Yz8VGWUbLHrjyi247jyWhp34xS3zx
ScqhvjjsAZMrG0eTPj/iAoHPWFXTvyqj22AjGL33SftaidIkwk0m5L03yAwVlHxXNzaqWe7BakW4
+tho8IYHtrBua3zWKH3eGUZk+GoXY5XPyyAEjdZnYzOw+2tcAtentCEi2vi8KKNjSLwG390hBUnH
UjZKLAFX9bZGY4TTA0XUFIjtNvSk4A4hiLF57YN9WgiRTT+ed5qxluQ9lSQ/qgHDaLm/1lwcEHMj
8oUhGQLTuTvl78z0+zZCNyrFNxWmg5ee/7cVmjvbYO1LukkoB5qVulei9eRTUpr9gO2bvcrwaveU
lGVJpvA9v2jw2QHd+qd2e9JQVUI2wQLsNeIYSKcBYJ+gMuGTV74xTFz7u2LfFHNtsMnc1kAshm7Z
l+o/ujPGcb4F6esrPqLeQzH3HzRibPDSbvCzPe5LilmADCxSh20rc8Vrp+jZcvKaTjFaTsCBb5Zz
dpVIDysm5G30Svs/ZXCrEKv2B64qWR2uvmueSCzi/F8IiMPCbYxz1T8fB0vn5d1tka0qZXnesn8a
3NO76iQ5FYb4kGV9IZgiBymu8EinT0BlaoJQX5XdYZgL8VzEtUoBk7Un/lTey6LNGmYwC1D22ZAy
rtFrdgSGx7VwZCebPxHFNpHAA5ISHrcRcN1oQ65uWQXXJCcaHu585r0LHBAD3kitLe64wbZ+DrBs
SFHLl39KznK66aK5C1vj1D4nD2iRcGHycRDpGbbxudaJvB9kTYvYn24p7NKUxWaRp1AMnZwnFs3K
tnvnH9+uEybjMtOHIiaduAb4C6F5YjryJZbmVTehk1gqMsnUzoXDf8htKOjfuGFUyDkUtl+ALhxP
7+S6C8T1QhaMzsI/MLkMmtsrWZd7w5MKAD87qT/aLxCJOy9siVkmBYtC5JkSyqL8nEFhOQDTqlqI
HDQJ+pni+g147teI4qAukZ1sUBJQMmxWdCn9qt6E9M3qZ2ItxXHyQQQwPRRYX7FmVdo4ixm6Z+h2
/fcPqLj7GS7+5DWf1ij/RQMlh6frmpBA3/C9wD/DYXUk/i7S+06X5LEnbHuuruEaiPOkZURpkKNG
w/A1Ova5tmiTAHwgInW5x2ZFoigYcDqdHuqnWlz9WAhpbDnUbTBCiUBfzmoz3+pZNyt+NH/Uhleg
C5hp/HIFwRdFBoReXW6anDibfRsaDqnfSZRqJSc6RZxgvu0luo1vIiDnysOQFSJ8jmX5sLJP3FEO
Be5PyX9K75JO5nTpmJuP1Z4kHP8tokuOCc4pcEFODJrUqS+x9YadTQry2mLK6tr3tZzXc/8ie97P
BorjbsviwiYDG0E+j5k1O9Nn7yWcSv1XLPs5PpNvtnJ84wMjdRSgEKu1bw0adyOlxVYUPLS3hl7K
N2HHCihtf9XkorkC4bxLTW/UGaAk6I+yzGKfLwomWqtM9Jezl5cihL2a753iqDGck7yv/zdMHEt4
lKeLftLZ2kliH75WEQSOTN125sVnKvs2gZ8Qb7VvNI4Ox+D7tbwN2553MqnlcLe7C15+rRjYLCsX
wTU0JCnYdWbtptmW9ot4SMi/y/du4qwM+7b0z0XhGxjtmp8pghsBuo3lhhOoLbTGabYc7JGxuLap
uab3sJP7j1WvU+fwKmpWcbsPEnILyjDADT4VIFTqwrWEwIQdcUh8o0QAJgQK+DkXMBR5vsNxX+NK
GiYh43LVeinHJKGJCtCofzJ/6FATVZt6Cx6tdFXDWL13B0zEl4SSB2C1mAj5pK7TCk+PHe4cCg/K
YgnE+VOvNm6ahD6co82ez8rtFAYTPh950sGVLXLJu3mX6E+ctiZm9BqUNW9DpeAv4OppaxAvGVN5
jY8PrdrFjkKOZfpjSih2F7yRkveiXZBD0cAokY1EwIGArqFTL5AcXjZp0yvyrQS72bilG8kcRHGS
L15TnIxUb407Uz4MQs50Fv5zI1cPOhHUEKJBkS5jQa4D7iMBev5ytTDPFNzTbY4bxPBdS4zTL/Gd
iPhBjmOxGckYkY5TBQNi5CpfKUNfExaijGIBQ8RAi+6EToJ8kNR1VN1xjeYlxbtyYSOeUBuKoX17
MIGQWw/uRA90BJiBIp3Xc++zAJ9wyNqnTCpK0mut9mUJIPX0ze1QWraZi46ccbXQvX6TH0dCJBNq
L6th8XDIKTbaFp67SpBqUIidl/5v0wW4OE8SRmWdK7ZLwVcQbyNglewp/c628z9BmrZXgW0IB2ya
YmrrSnBqjUjBpJWAjNeYeOcuUuHTGecNl4Ee/tK2ZlMecBRbOak5Yl6hFMXwjFoHwkB/HrvGfbNp
/9DPllCqZU+FzHgjCV4lagMWLqZI/ZingqieB4BPgN1jve8apN0YZLkhkd4eHngXk9wppcPNngqW
eCmEzF8zVZreUqgJS+F8DapNENmkYObGR+rQA3X95W7XCPhLoCpEAxKtj69XYnmUHyQuUMsO+ZkQ
MoKAZobngqQRpM096ZjZML+3+8Jl2qmYrmomOWINj+ZTSA7BagW+V1pLwtFP1QDeD6xTzq3uE0Ae
oK39nVdstiyIFNmkvKsa6Gigwt1Rs8AZM1NMlk3o8BKK5xPw0Sy0BZbfjS58D5VbKAVlztzw1xA8
x4ZjA3b+7UyqncL6+zPb2LGPZ48cwn/oOu8aqVO8AhZYUbeVymVLoKCLNcbN09UptnVuOdEjZHJX
dKlgbBiijIpXBOk0TGWhNjI5COsMyRLPI92UmUoGjQlDLAXg0sDfFxGIJOu8O00sg52sH7KCwUty
aaabFOn2Yw7dIiqogyHAqk/m7s+akyAmX1OMfAb5+LsmqSMUsY48432FvN3W2F+abotJyQOQ/A4m
otscZLLXG4IoyqZt9TFZ5WTr9QhBAnW/Dsaoc7jIvjyFHhAUqd8QyA17navADEtDD+6MX+XT9yZ3
23H+8QhMikvXrMtuX26qS8VpT+nP7xJtpmXq14+9IuBQw/8ZYOb5tp1RCrgC/FaDzhH/BJkBLkBz
VjR+avqg+aMO324VFtBRoSbdqfusyMQCx4f9E4GSSIia+oeW934Rwc+bpgLOcPldjzLce+Vo6C/Q
Wd4A6ehllag5v7KQ+8s6eYtzrHMcp4vdVSX02OkBmtKsDucROR4FlSYKVaU0zezrQzhcosPAgUOI
K2KjkVFBMVoIvvOCS7Anv9hTvzKYi3mynCBzEgFzc94xaVk1yI4eWnKnc8/PfqBK/bWIALIH6D1K
oBjWWjsFLwB7hAE8qwGU2S0+yH+LbCAEXzz1Eb7+HlrZmF/DJlxdFpRgwHn7cEe1iCaRF5DV23bU
dsK1hcik/+xGqvs9nqxMAEPJANlbMWQlXciyAKftfrmUPe9Y3InTnApCSf5MiS79ZajGvsH5WQS+
Eb+xgkKuqNe4ZIC1g39w+f76ooCvX26Sbj73bS2sh9c1kNdAnvw58QOeHKAebdp9jabIVfHBAk+e
7SAC7kXA77cR+D/ZFBklw4WwXZziexClhWIWladvyweiNXxYpeiIaSM9kPoKAcKRJmyuxsB7W9Bt
SknOW+mh6R7LvHesIr3miyE14woIrrFnNg8O9pTrA8WP+fkcd3Fpu4lenC08DcAeUST3GqEgb3GP
gP2WboEqcQGfjiBVWi0z8ui3xJ0QhG3CBYsDJAdqCQnQQUbGzAOT41rYkAkhXiQiDmwQLoY65ZeX
eneh/z7o89XRr7ICuOp4TCzjhEYTt7bD5N33LTMza+pOCIfPU+s016yl58hdzLsLSBR0z9HzjpQz
hHU8wRkFwbXqO1iztIObG7bV7b6yA1fQvkh9IK69j+OZK2xqmqgDsnebkKFy675BgqhKYNIXafKc
behGhwsRgShAxC7gYG/0sR4Hff6dq2Dm3xp0Xn8NLERbBMkSDOmr68PqzixqtzPV1dVZvMKypsiA
Z5fCeIdW/6FHi6jdGDKq5bJLm+K3txMtiW3QqwH6fWUoFY55TQ3vr2KzVfmT84D2CrCH27gsuOxR
m0u8EIbtFPi5PVRB13Y+3/RoCKgz9pcH22ab2fEdEHxP7scGl51gEiEkl3TRE9EPl40lWX6IVD0B
MVMT+DrD42oTI9yv8Ro61mGJGEP5OkXYcRxPVfD4oBejkDfELAYAi3VXlhCUQrboJE3yelOmC8dH
72OI2eOMSVzcronF+sGDsK6aPzPkhGQ4lYbGdzk0SJm5nQumXeiL+Kj5a9K1gGZu/OR4dpm5zNhG
P6kmHEO9/rqACmY8ht9V08lIjWeRB1rshY1Ng1Ca4Y2/FY8vy8lnSIHeOeBnk747a0jA3cYNyvGJ
cyaEmNrsl76eSTBdLFRkFLIOHOx1eG9uMnlijypGYivX1wVIMtFgCYHR3WwdWTetb0Ohw8+yyZad
3v3ya6PS50UAgVo/Vw7IEwfYUzvygu7ZafKjCxxJwn6HJAAaXrh+WMQdA+tIUyP+TzcnGFYc6lvF
B3v2kh1kEf/Wx93wCa+Bui8Ey7FzZg082QyFOTvqrQ5vVUU7bPTe57seJdcI95k4CLxdnwH9Vecn
PqdBr/eXT8J4SoSTR5EcEczOJR7C8iIABiFzLRlGBOClbueO8OyuVfeb9r1oksVony6FXk+5DsHH
gZYNbPRK5IYD45WF9BxSpBZlKzZTl2MSiBk0H0lBEnTqUAtyL+YQGTPp8KEfQVhxcl++02fO0dHS
kzeqo9gRGzjk5BaNU2CpEibfDjuzz6GqOAV0xu8UI23z4R9y6QJLliSmMtDA8n/Q4msSw45ahUWM
uoEQAzkkDMUicrdCu+8UId860Tm+ImGqaPPNfO4jD6XglUqONYJJof00S/+iwoJxbg14eClbOWrh
1hbUb8G8STX9x7/9M094IPHRGFgfvpTXUKLpc4WVQB0z+VoWYE2hsHWBQtkrN0L3PZJa+OVqPWKu
1gQ1buPVa+D2q5pT3GnmSGO0CShuhKF/jKZu/OQh2F0nf3t2PXcU8IVQ28ZUtc5q6V+ZiyzKppuq
jH89DeDK1g6TasfXEWcj54kyZ5zaFFxwqYjNz5rAIuCiwK1YBKetmwhTGJ034XuzPT7hp7RdcbR0
GhRuMfnnCA8eVXQ27bSuzCQwjI3qQeOHZXOJuzp7Wprv94ryC/iSy8nWomg/lpaJQm23T07hJnjy
qEf3NhoFLeVu9rLhc9PhWYGUOeXQsWWQuYwCyjvqlahRqlbCNJ+RvYYGaZtkRpqt/9PwTK24e4cY
zPN1nWv8PRUGBMFqZo2I7GC3jNy0OJN4kTf/IXyG3BquQdLj6NSYYbQiLdzwfWELrushNKhkkpVf
XKQg/tIIvmnruaoDJTehaAsCIjuMzqf/JgOtb/yXKnLRlxFGIkNIrs2x2Rb+cFQG5nf9D0lrb0gR
jv/AO11pbOn603rduQz7IHSr5XPWMoHf6pOaH9Hc+o+U1E48ttphLNsp6tBqYLtJiM0VIMkg1icV
BcUgx3mYW7Fb4Znha8WfAFMI7IciMrVfnDgmuBV+q9z0/d/7txsNGsrvE3P2JyF2PPNpEWDFMew4
p2wUZJqQplqUpmmZkz3bg+ffwRN++BOssgeeqZHgBo54mFg2f+pQQdWKZsSdUt9rVB6ORUeWRtDO
5O463wxuoLs1+DimcINn8vgNy8AdN6OwMIvfoNejLnAccKo0o5cMkH19Y11at9EHqih4Ij3e2ziu
5xDYmidbu62uUy+VQHRgP/gDogJF3CdJ44JmSMb93QtfF9lMlC++LQklOfr2uDfJOyl2s7AJDmPg
3YF9rQrHkDW5H1ybHgVl5rfS0jGzPAr4AczgO4utrCg1HCz1yH5VxGBfnTjBIs3smS4ybOfM68P4
twJSXgol9jEk8BLQlJqUdAlN1wky6BSG2tbaBFg+PVfOs0kuUsTeu7Dvi9Af6DoxTdB8m/qaIKu4
954MdpCgTXV1k5spYtGsiQv8ot259mot1jry1qSuN4f1mblqbf/IzHfrn3uQhcie5MsWDjs3xPI8
Gt8VLah7gLO0nMxSaK6vRsVF2f954s3dwBD+eub2xrIhyT3BHXyJ9FwZr2+aTHT6b2hkLiAsU/tM
wNj9dNrmhfBHu8zEqm7NQi1f4cOI/uXOk7YGk5OfxOomRx2bl7xK+ZOLir2AuPXpqFYKsRzjLp81
RwX4fQsh6aJ7XEdgX+5ra7kc8UOyPa20KMZ3//YNMWiif1fo4FlHoP9Z1dS2/f6XVv1m1WjRYffU
Aj6wvXdlFJHe+c0/o7ynO1BTSCRzvay3CjlMkmYjlp3ItHt5BMoKZjaY5XmuXwxDrZiY4ZzKr8tc
qzhS7v+bNHsZJDuA6k/yEKKuLvCuYjIJkICRXAcrEWUPqGb53o+AaPtGcs5+mRLqM9+pHChJeWKh
0tcW4mHPQYIQ6IAFzbKPQQw7Xl82bmQ0UjWcU18hxFH3dHhaU/6b/x7gHC5pHdXVy0fPBVURIe2o
xu5Ngstke1dHy2fZwKJIu84qszXl6fJp8ImxCiDF66KbtmItdL6C+N4l6F13tJgLodmFr8bMdWcL
zrHnjYJlXpvbldeZJJalEvSki7Zd7yaGjdsJC7iMYDcF8fYtFa2Yg17Kw4cF9NIoFGHTr1NeFgzl
N/1kQQ/ikk5G88q4aaQcd/hQTJIHZbXsKa0qYuvKFK4bHU9LecfJ/VZ6OAetiGIU8rvFXC5PgR1F
ud9nPLN4Jj9C0jiPek07JMX+GVCAUErq+ZWzF3pjRWt9eI2ShYpZBDtWccmZG+hx7i7K/dYdK7Nk
45meEcU71/i7WUOAwoEQC8PhtjO8b4qNxBsZJxMrznjDYmW5d/FiG9kmQw6p8Ctk6kOjIsP4R3eD
a0xHd3ruc1qTWMccHYjjSB9xTjiRizVMIxFegDdrmvTzRtWTxko/4pmJyfpLi/HOPHus78kyQ+Nd
KU0ctTrryEaXcPiTfS6zZ5ayGoX2h0GBJZFgCXdXXKQbeGmaU33mfx8t6oK1ay1Hanc99Rm/re/l
Gc3IttZp4DI4YGRoFGMdU5p1FYx0UeRGGN8Vx2AmVHy7AI2EaYRT6yNM46P1Bye6JbPmzU45w4Ch
KlIGyZ4FI0wXTgZqdC6V/ROEIqdlooOZ09Ha80WWxsHzfm0KzI+9eQmVv1s1mAawapUt0eFSTqYS
nJJA6A6RNsF1k537dVr36nK+/ztOzJgYXXzgdBKzRE4tsyg5U4rtpKqI/npY+oadwU6PGNx4q7pS
MkvSWvf4rlexZdeCt1ybJ2/m0tADmrBwCQudFZDC1wh867K892p52xVSMa30Pmmv8Br5mv4P5NT8
GlARacIKFb1V7ojHeGgVdyEBN1nP1U4GZNFc2iJmiY/J77EDfS3GYYMGod0xITiJegDdS+omw6nm
xdC1UVRHngo4kirPeLdCZsr2TRCXBtRkZ91/727uwyLimWPRrQRdAhaWBpZ4qLtpVMZTzZ9ViGWz
5schT+LqDZQOkAMJX9HYM8knxlo2IPTLl/1H/NR3HpjSLfzkmfcCbCp/jIkRiXUdgf97/KS6Jm+b
sUpCinROZ7A0y/wO9fFJU9dKiVZ1OCr+Dttox132becp/5pjW9B7ucQZgfTTnAxhem7dzKJtE+SE
CgZnrYS2zQhzB2k7uPRQEV6qDJGmFZpjR0tSP2DpyrXICYwhsm80hglWBNCOhmT9oKJY5vD6Akn3
KweKGavxWFYDdQ3v/Jiu3ST7QmSlvrhYTiI4IkWtkTcBw6uok3FU3fQ7fX9fWFJ5mX8P4zOAq7s+
3EhL7SAyH641nJvnpIAuxdHI75l7/k4DcbV3sFDBZwcdh9e9zNwpc3A+117yPgi/rA5aZoIkxcWO
7amAvzqN8FCYE4vf3ITl0PqF5N7OK6nUdeAOycpNp1AHG78We9X0dslVVHAyHiHrbCjRZDRH4aH1
hd+49Nyi5lpTAk/Q1JQygIab+JWBmYXHhgzTBzHKcH055xGOfhEQPLgVBsVy1K/tLvZvdnu1hBZW
BqJlSdyAiX/WOyXn+YLIi/nf9fNRCrV9icU+yBGpSNdkIZomKwnYnRb4VG0QIKtMXUrgCemhN2PQ
bftIuOIjLEWM23PINxKd6Dhr+fFsFjXgaHWJuSam0nqXenK/pXf0GgVq85Mt+neIlLAIjsgCTIRy
EkShCxTv4AY39NgCNblo9riTi3pluH4XK+QHeN55xtCsPzQ8JnxJMW84Ly7YtqY566iOloUxbHsd
npjECXDWLsDUaupqqNGUFowZD5SY4+CNnEmo1taz2EJ4TJXwAT2El766tL91innbaEbdrYo3IVfE
YVJkg+NEsvdJMeo8CkY4hCze/4kKStX4Ci/g6kkq/lMvRMGSzrd3zQeVsqWvOlJM75sYVYstaLZ4
vjtIKlkAztQdMSX3846DVf5BFh+aBUyMcFx5/D8K3gNbFgNzbDvJKZPYC/03onlpS7DeZdydwwpx
IPtSqR2WL8MHkXm6o68dV86bmaCVdBn8cUhPyrgfm7SScZ4mijmRjuDQsANDzWBJjnYO089Zy9uv
goklPuDwrRg/K9pHnB+6I9GRubugCsPfQT1lS5fXaZU3RmNzgO4KlfvoZWPFEJNhu8HiEuf0RFst
/9JoVFbMzh6nC4O2O81GReShQlHLzoE+JF2b8vfm3KREKNGAXQShi3oaPlI64zVT+z0jPq6s/K4R
EhYk6VHLSf06WzWVlB87nBkkm2XDlcylkIz2/vImgNUGO3ARgv9IhG9/8hm6knVegKTnH33zuAZS
fkUuizXGRZxenNi7EBnFPUt8Mmz7HCfmnFFBMhsi/Gh9omCjFRRkc83Ec0ioN9ZUeYerV7dwCb9d
3mo2ipnAvABDlh/UECOdZrKn3xTQwPXLWvUlRi/PVMDUqrC7ZWaBW1qTLeCcmuX2KAODW/QgK0wV
+hiQedE23LddwZNVb87sHUTc44wGhvGMIW3Tdh8fnDsP6GcV5iOOEARbz1vTQdSgkrhSezwcuqlA
hqOOOC59/MSSre7YApIAAT4sg8a6ieErN2vqmmm6LC27cgH3742c5UrdsQ+AlXzCVsgmHtm1elF8
cFjNPIJ176SVGWKMyuGYx1vUQt+fDvzArlR8PoYKcxzAd/Ojn45O1BDz/gpvic0Licg+b8NN/bFh
5TS5HsIxg5mOOKPu1w+UbtcncTJldfeswSlcrTBaVLJavP/5shnApzCbTlf4WVswiblD1R+Chsk+
XLQNpl3gjUU1xesiF7PZq5gCk4RNXdlTdO3yFEEfjsAQS/l9/CoDLA+8uxuiOAJLiyNitkwfSysN
ZDHoyyetEiKPaqwpGx7/ZVAMWgaLYIM4APaTsMfydLOAhMC9CedPt6AwkyXnWmukcNpEjGGpK/P2
i/XFQsX7xA+jJgctkHU6DMDAxFgP1RGWn3R+x3wmbNfyjavmLEyAeU2dEdGzmm2PSZj966/XOEP/
RlQLdnJDwjWLxClwN+qQikQDG+w3Y6M02mNQJk2WKE0NNdKjXNw+ctWXK6y0wPPcdJ6gNAQlPbGi
kIxR/lnfiuV9dbwXJwyuOy/5+7bOI1pQhxZxklzJIB3nhcQsqy7pued28+fZ30vHbrsnF4M3otqh
RVwLEHE2Y1QYoVIZesg7a4A+2dsPImEPvwjdgvIy4BZMHf2GD5uUTZg8V0132Gw8lztavweqXkAk
pfe12bXln8LDT1YeneSepog3zpHTsgFJ28Xjui+lhqT5XJtCmH5pMo//x/VEoXpRZUgPuY79qkFQ
DTWBdwRHo3lTZevwe5oxlX/SsUv+W+VrTR2CaI2HUPK82OpPftemlFuT36mn/j7s38B7+RqSQyj7
ARIgCX8xSoVhiryYbqXAQbp5wVSHrq3iWUvgvrpZWERefiQM5363MjH0yoHmZqP+Uh8s+7DyxIOF
DEkYpgh779lnlVyjJsM/tFGMcqtTF31JvLAuEV161EBetHUcpQ0ertKDHN3yOGaXIYgKcJmpo/Ax
qxQNZyTq9TfO087Xf6MxToqTbtaHWwgDnWRLK18eHSjyqaDf6Fpqs23bjBWql+87CWnkxjzfLfj1
YzRUx/ALfNTh+DkA9shnLxfkoPiNeSR8qdsYMw8I6O/a/7mMJpZOV3PZjQRBjZT8xuQNE6GgnJlc
ZCUxGGo4dCE1Nco7m5xZ87z5TE9cZFo1gK6V7u9NQJuh+s3qofrBs8oTd7wHtMbBl08=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SPI_FIFO is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SPI_FIFO : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SPI_FIFO : entity is "SPI_FIFO,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of SPI_FIFO : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of SPI_FIFO : entity is "fifo_generator_v13_2_5,Vivado 2020.2";
end SPI_FIFO;

architecture STRUCTURE of SPI_FIFO is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 7;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 32;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 32;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "spartan7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 1;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 127;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 126;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 7;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 128;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 7;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 7;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 128;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 7;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.SPI_FIFO_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(6 downto 0) => NLW_U0_data_count_UNCONNECTED(6 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(6 downto 0) => B"0000000",
      prog_empty_thresh_assert(6 downto 0) => B"0000000",
      prog_empty_thresh_negate(6 downto 0) => B"0000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(6 downto 0) => B"0000000",
      prog_full_thresh_assert(6 downto 0) => B"0000000",
      prog_full_thresh_negate(6 downto 0) => B"0000000",
      rd_clk => rd_clk,
      rd_data_count(6 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(6 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => valid,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(6 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(6 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
