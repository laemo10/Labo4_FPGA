library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity morph_stream is
  generic (
    IMG_WIDTH : integer := 640
  );
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;
    pixel_in    : in  std_logic;
    pixel_valid : in  std_logic;
    hsync       : in  std_logic; -- ou un signal de fin de ligne
    op_select   : in  std_logic; -- '0' = erosion, '1' = dilation
    pixel_out   : out std_logic;
    pixel_out_valid : out std_logic
  );
end entity;

architecture rtl of morph_stream is

  -- deux buffers de ligne : implémenter comme BRAM/array
  type line_t is array (0 to IMG_WIDTH-1) of std_logic;
  signal line0 : line_t; -- ligne y-2
  signal line1 : line_t; -- ligne y-1

  signal write_col : integer range 0 to IMG_WIDTH-1 := 0;
  signal read_col  : integer range 0 to IMG_WIDTH-1 := 0;
  signal row_cnt   : integer := 0;

  -- shift regs horizontaux (fenêtre 3) pour chaque ligne
  signal win_top   : std_logic_vector(2 downto 0) := (others => '0'); -- y-2
  signal win_mid   : std_logic_vector(2 downto 0) := (others => '0'); -- y-1
  signal win_bot   : std_logic_vector(2 downto 0) := (others => '0'); -- current (stream)

  signal center_col_ready : std_logic := '0';
  signal frame_started : std_logic := '0';

begin

  -- Ecriture des pixels et rotation des buffers en fin de ligne
  write_proc : process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        write_col <= 0;
        row_cnt <= 0;
        frame_started <= '0';
      else
        if pixel_valid = '1' then
          -- écrire pixel courant dans un buffer temporaire (on construit la ligne courante)
          line0(write_col) <= line1(write_col); -- on fait rouler : line0 <= précédente line1
          line1(write_col) <= pixel_in;         -- line1 prend la ligne courante en construction
          if write_col = IMG_WIDTH-1 then
            write_col <= 0;
            row_cnt <= row_cnt + 1;
            frame_started <= '1';
          else
            write_col <= write_col + 1;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- Lecture et construction de fenêtres horizontales (lecture de line0,line1 et pixel courant)
  window_proc : process(clk)
    variable idx : integer;
    variable top_c, mid_c, bot_c : std_logic;
    variable acc_and : std_logic;
    variable acc_or  : std_logic;
  begin
    if rising_edge(clk) then
      if rst = '1' then
        pixel_out_valid <= '0';
        pixel_out <= '0';
        read_col <= 0;
        win_top <= (others => '0');
        win_mid <= (others => '0');
        win_bot <= (others => '0');
      else
        if frame_started = '1' and pixel_valid = '1' then
          -- on récupère le pixel courant (bas)
          -- shift hor. : on met à jour win_bot avec pixel_in
          win_bot <= win_bot(1 downto 0) & pixel_in;

          -- win_mid et win_top doivent lire depuis line1,line0 au point read_col
          -- pour avoir la correspondance horizontale on lit line1(read_col) etc.
          top_c := line0(read_col);
          mid_c := line1(read_col);

          win_mid <= win_mid(1 downto 0) & mid_c;
          win_top <= win_top(1 downto 0) & top_c;

          -- on ne peut produire un résultat valide qu'à partir de la 3ème colonne
          if read_col >= 2 then
            -- calcul 3x3 sur les vecteurs win_top/mid/bot (qui contiennent 3 colonnes consécutives)
            acc_and := '1';
            acc_or  := '0';

            for i in 0 to 2 loop
              acc_and := acc_and and win_top(i);
              acc_and := acc_and and win_mid(i);
              acc_and := acc_and and win_bot(i);

              acc_or  := acc_or  or win_top(i);
              acc_or  := acc_or  or win_mid(i);
              acc_or  := acc_or  or win_bot(i);
            end loop;

            if op_select = '0' then
              pixel_out <= acc_and;
            else
              pixel_out <= acc_or;
            end if;
            pixel_out_valid <= '1';
          else
            pixel_out_valid <= '0';
          end if;

          -- avancer read_col (syncé avec write_col)
          if read_col = IMG_WIDTH-1 then
            read_col <= 0;
          else
            read_col <= read_col + 1;
          end if;
        else
          pixel_out_valid <= '0';
        end if;
      end if;
    end if;
  end process;

end architecture;

