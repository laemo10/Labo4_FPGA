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
        seven_seg_out : out STD_LOGIC_VECTOR(6 downto 0) -- Exemple de sortie
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
    
    signal w_sum : unsigned(15 downto 0) := (others => '0');
    signal gray_scale : unsigned(7 downto 0) := (others => '0');
    signal is_black : std_logic := '0';

    type t_matrix_probe is array (0 to 6) of std_logic_vector(2 downto 0);
    signal probe_matrix : t_matrix_probe := (others => (others => '0'));
    
    constant threshold : unsigned(7 downto 0) :=  x"99";

begin

    -- Transform vector to unsigned
    h_count_u <= unsigned(h_count);
    v_count_u <= unsigned(v_count);

    -- Processus unique (Logique séquentielle)
    process(clk, rst)
    begin
        if rst = '1' then
            seven_seg_out <= (others => '0');
            probe_matrix <= (others => (others => '0'));
            
        elsif rising_edge(clk) then
            if new_frame = '1' and new_frame_prev = '0' then
                -- Convert to one seven seg vector
                for i in 0 to 6 loop
                    if probe_matrix(i) = "000" then
                        seven_seg_out(i) <= '1';
                    else
                        seven_seg_out(i) <= '1';
                    end if;
                end loop;
                
            elsif pixel_valid = '1' then
                -- Calculate gray scale
                w_sum <= (unsigned(r_in) * 77) + 
                         (unsigned(g_in) * 150) + 
                         (unsigned(b_in) * 29);
                gray_scale <= unsigned(w_sum(15 downto 8));
                
                -- Find wether it is black or white
                if gray_scale > threshold then
                    is_black <= '0';
                else
                    is_black <= '1';
                end if;
            
                -- Cell 1
                if  (v_count_u = CELL_1_P_1_H and h_count_u = CELL_1_P_1_V ) then
                    probe_matrix(0)(0) <= is_black;
                elsif (v_count_u = CELL_1_P_2_H and h_count_u = CELL_1_P_2_V ) then
                    probe_matrix(0)(1) <= is_black;
                elsif (v_count_u = CELL_1_P_3_H and h_count_u = CELL_1_P_3_v) then
                    probe_matrix(0)(2) <= is_black;
                -- Cell 2
                elsif (v_count_u = CELL_2_P_1_H and h_count_u = CELL_2_P_1_V ) then
                    probe_matrix(1)(0) <= is_black;
                elsif (v_count_u = CELL_2_P_2_H and h_count_u = CELL_2_P_2_V ) then
                    probe_matrix(1)(1) <= is_black;
                elsif (v_count_u = CELL_2_P_3_H and h_count_u = CELL_2_P_3_v) then
                    probe_matrix(1)(2) <= is_black;
                -- Cell 3
                elsif (v_count_u = CELL_3_P_1_H and h_count_u = CELL_3_P_1_V ) then
                    probe_matrix(2)(0) <= is_black;
                elsif (v_count_u = CELL_3_P_2_H and h_count_u = CELL_3_P_2_V ) then
                    probe_matrix(2)(1) <= is_black;
                elsif (v_count_u = CELL_3_P_3_H and h_count_u = CELL_3_P_3_v) then
                    probe_matrix(2)(2) <= is_black;
                -- Cell 4
                elsif (v_count_u = CELL_4_P_1_H and h_count_u = CELL_4_P_1_V ) then
                    probe_matrix(3)(0) <= is_black;
                elsif (v_count_u = CELL_4_P_2_H and h_count_u = CELL_4_P_2_V ) then
                    probe_matrix(3)(1) <= is_black;
                elsif (v_count_u = CELL_4_P_3_H and h_count_u = CELL_4_P_3_v) then
                    probe_matrix(3)(2) <= is_black;
                -- Cell 5
                elsif (v_count_u = CELL_5_P_1_H and h_count_u = CELL_5_P_1_V ) then
                    probe_matrix(4)(0) <= is_black;
                elsif (v_count_u = CELL_5_P_2_H and h_count_u = CELL_5_P_2_V ) then
                    probe_matrix(4)(1) <= is_black;
                elsif (v_count_u = CELL_5_P_3_H and h_count_u = CELL_5_P_3_v) then
                    probe_matrix(4)(2) <= is_black;
                -- Cell 6
                elsif (v_count_u = CELL_6_P_1_H and h_count_u = CELL_6_P_1_V ) then
                    probe_matrix(5)(0) <= is_black;
                elsif (v_count_u = CELL_6_P_2_H and h_count_u = CELL_6_P_2_V ) then
                    probe_matrix(5)(1) <= is_black;
                elsif (v_count_u = CELL_6_P_3_H and h_count_u = CELL_6_P_3_v) then
                    probe_matrix(5)(2) <= is_black;
                -- Cell 7
                elsif (v_count_u = CELL_7_P_1_H and h_count_u = CELL_7_P_1_V ) then
                    probe_matrix(6)(0) <= is_black;
                elsif (v_count_u = CELL_7_P_2_H and h_count_u = CELL_7_P_2_V ) then
                    probe_matrix(6)(1) <= is_black;
                elsif (v_count_u = CELL_7_P_3_H and h_count_u = CELL_7_P_3_v) then
                    probe_matrix(6)(2) <= is_black;


                end if;    
                
            end if;
        end if;
        
        new_frame_prev <= new_frame;
        
    end process;

end Behavioral;
