library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix_pkg.all;

entity digit_detection is
    Port ( 
        clk         : in  STD_LOGIC; -- Horloge système (ex: pixel clock)
        rst         : in  STD_LOGIC; -- Reset matériel (global)
        h_count     : in std_logic_vector(31 downto 0);
        v_count     : in std_logic_vector(31 downto 0);
        pixel_valid : in  STD_LOGIC; -- Signal "Data Enable" (DE)
        new_frame   : in  STD_LOGIC; -- Signal VSYNC ou début de frame
        rgb_in      : in STD_LOGIC_VECTOR(23 downto 0);
        seven_seg_out : out STD_LOGIC_VECTOR(7 downto 0) -- Exemple de sortie
    );
end digit_detection;

architecture Behavioral of digit_detection is

    signal new_frame_prev : std_logic := '0';
    
    -- unsigned counters
    signal h_count_u : unsigned(31 downto 0) := (others => '0');
    signal v_count_u : unsigned(31 downto 0) := (others => '0');
    
    -- rgb vector
    alias r_in : std_logic_vector(7 downto 0) is rgb_in(23 downto 16);
    alias g_in : std_logic_vector(7 downto 0) is rgb_in(15 downto 8);
    alias b_in : std_logic_vector(7 downto 0) is rgb_in(7 downto 0);

    type t_matrix_probe is array (0 to 7) of std_logic_vector(2 downto 0);
    signal probe_matrix : t_matrix_probe := (others => (others => '0'));
    
    constant threshold : unsigned(7 downto 0) :=  x"66";

begin

    -- Transform vector to unsigned
    h_count_u <= unsigned(h_count);
    v_count_u <= unsigned(v_count);

    -- Processus unique (Logique séquentielle)
    process(clk, rst)
        variable v_w_sum      : unsigned(15 downto 0);
        variable v_gray_scale : unsigned(7 downto 0);
        variable v_is_black   : std_logic;   
    begin
        if rst = '1' then
            seven_seg_out <= (others => '0');
            probe_matrix <= (others => (others => '0'));
            
        elsif rising_edge(clk) then
            if new_frame = '1' and new_frame_prev = '0' then
                -- Convert to one seven seg vector
                -- Index 0
                if probe_matrix(0) = "000" then
                    seven_seg_out(0) <= '0';
                else
                    seven_seg_out(0) <= '1';
                end if;
                -- Index 1
                if probe_matrix(1) = "000" then
                    seven_seg_out(1) <= '0';
                else
                    seven_seg_out(1) <= '1';
                end if;
                -- Index 2
                if probe_matrix(2) = "000" then
                    seven_seg_out(2) <= '0';
                else
                    seven_seg_out(2) <= '1';
                end if;
                -- Index 3
                if probe_matrix(3) = "000" then
                    seven_seg_out(3) <= '0';
                else
                    seven_seg_out(3) <= '1';
                end if;
                -- Index 4
                if probe_matrix(4) = "000" then
                    seven_seg_out(4) <= '0';
                else
                    seven_seg_out(4) <= '1';
                end if;
                -- Index 5
                if probe_matrix(5) = "000" then
                    seven_seg_out(5) <= '0';
                else
                    seven_seg_out(5) <= '1';
                end if;
                -- Index 6
                if probe_matrix(6) = "000" then
                    seven_seg_out(6) <= '0';
                else
                    seven_seg_out(6) <= '1';
                end if;
                -- Index 7
                if probe_matrix(7) = "000" then
                    seven_seg_out(7) <= '0';
                else
                    seven_seg_out(7) <= '1';
                end if;
                
                -- clear matrix 
                probe_matrix <= (others => (others => '0'));
                
            elsif pixel_valid = '1' then
                v_w_sum := (unsigned(r_in) * 77) + 
                       (unsigned(g_in) * 150) + 
                       (unsigned(b_in) * 29);
                       
                v_gray_scale := v_w_sum(15 downto 8);
                
                if v_gray_scale > threshold then
                    v_is_black := '0';
                else
                    v_is_black := '1';
                end if;
            
                -- Cell 1
                if  (v_count_u = CELL_1_P_1_H and h_count_u = CELL_1_P_1_V ) then
                    probe_matrix(0)(0) <= v_is_black;
                elsif (v_count_u = CELL_1_P_2_H and h_count_u = CELL_1_P_2_V ) then
                    probe_matrix(0)(1) <= v_is_black;
                elsif (v_count_u = CELL_1_P_3_H and h_count_u = CELL_1_P_3_v) then
                    probe_matrix(0)(2) <= v_is_black;
                -- Cell 2
                elsif (v_count_u = CELL_2_P_1_H and h_count_u = CELL_2_P_1_V ) then
                    probe_matrix(1)(0) <= v_is_black;
                elsif (v_count_u = CELL_2_P_2_H and h_count_u = CELL_2_P_2_V ) then
                    probe_matrix(1)(1) <= v_is_black;
                elsif (v_count_u = CELL_2_P_3_H and h_count_u = CELL_2_P_3_v) then
                    probe_matrix(1)(2) <= v_is_black;
                -- Cell 3
                elsif (v_count_u = CELL_3_P_1_H and h_count_u = CELL_3_P_1_V ) then
                    probe_matrix(2)(0) <= v_is_black;
                elsif (v_count_u = CELL_3_P_2_H and h_count_u = CELL_3_P_2_V ) then
                    probe_matrix(2)(1) <= v_is_black;
                elsif (v_count_u = CELL_3_P_3_H and h_count_u = CELL_3_P_3_v) then
                    probe_matrix(2)(2) <= v_is_black;
                -- Cell 4
                elsif (v_count_u = CELL_4_P_1_H and h_count_u = CELL_4_P_1_V ) then
                    probe_matrix(3)(0) <= v_is_black;
                elsif (v_count_u = CELL_4_P_2_H and h_count_u = CELL_4_P_2_V ) then
                    probe_matrix(3)(1) <= v_is_black;
                elsif (v_count_u = CELL_4_P_3_H and h_count_u = CELL_4_P_3_v) then
                    probe_matrix(3)(2) <= v_is_black;
                -- Cell 5
                elsif (v_count_u = CELL_5_P_1_H and h_count_u = CELL_5_P_1_V ) then
                    probe_matrix(4)(0) <= v_is_black;
                elsif (v_count_u = CELL_5_P_2_H and h_count_u = CELL_5_P_2_V ) then
                    probe_matrix(4)(1) <= v_is_black;
                elsif (v_count_u = CELL_5_P_3_H and h_count_u = CELL_5_P_3_v) then
                    probe_matrix(4)(2) <= v_is_black;
                -- Cell 6
                elsif (v_count_u = CELL_6_P_1_H and h_count_u = CELL_6_P_1_V ) then
                    probe_matrix(5)(0) <= v_is_black;
                elsif (v_count_u = CELL_6_P_2_H and h_count_u = CELL_6_P_2_V ) then
                    probe_matrix(5)(1) <= v_is_black;
                elsif (v_count_u = CELL_6_P_3_H and h_count_u = CELL_6_P_3_v) then
                    probe_matrix(5)(2) <= v_is_black;
                -- Cell 7
                elsif (v_count_u = CELL_7_P_1_H and h_count_u = CELL_7_P_1_V ) then
                    probe_matrix(6)(0) <= v_is_black;
                elsif (v_count_u = CELL_7_P_2_H and h_count_u = CELL_7_P_2_V ) then
                    probe_matrix(6)(1) <= v_is_black;
                elsif (v_count_u = CELL_7_P_3_H and h_count_u = CELL_7_P_3_v) then
                    probe_matrix(6)(2) <= v_is_black;
                -- Cell Verif
                elsif (v_count_u = CELL_0_P_1_H and h_count_u = CELL_0_P_1_V ) then
                    probe_matrix(7)(0) <= v_is_black;
                elsif (v_count_u = CELL_0_P_2_H and h_count_u = CELL_0_P_2_V ) then
                    probe_matrix(7)(1) <= v_is_black;
                end if;    
                
            end if;
            
            new_frame_prev <= new_frame;
            
        end if;
    end process;

end Behavioral;
