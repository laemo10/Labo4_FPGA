----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2025 02:11:33 PM
-- Design Name: 
-- Module Name: position_counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity position_counter is
    Generic (
        -- Screen resolution 
        H_ACTIVE : integer := 1600;
        V_ACTIVE : integer := 900
    );
    Port ( 
        clk : in STD_LOGIC;  -- Pixel clock 
        rst : in STD_LOGIC;  -- Reset (active high)
        -- Input from DVI2RGB
        vde_in    : in STD_LOGIC;
        hsync_in  : in STD_LOGIC;
        vsync_in  : in STD_LOGIC;
        rgb_in    : in STD_LOGIC_VECTOR(23 downto 0);   
        -- Outputs
        vde_out   : out STD_LOGIC;
        hsync_out : out STD_LOGIC;
        vsync_out : out STD_LOGIC;
        h_count   : out STD_LOGIC_VECTOR(31 downto 0);
        v_count   : out STD_LOGIC_VECTOR(31 downto 0); 
        rgb_out   : out STD_LOGIC_VECTOR(23 downto 0)
    );
end position_counter;

architecture Behavioral of position_counter is

    -- Position Counters
    signal h_count_u : unsigned(31 downto 0) := (others => '0');
    signal v_count_u : unsigned(31 downto 0) := (others => '0');
    -- sync previous samples for edge detection
    signal hsync_prev : std_logic := '0';
    signal vsync_prev : std_logic := '0';
    signal vde_prev : std_logic := '0';
    signal v_started : std_logic := '0';

begin

    ----------------------------------------------------------------
    -- Count Position
    ----------------------------------------------------------------
    position_counter : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                h_count_u    <= (others => '0');
                v_count_u    <= (others => '0');
                v_started    <= '0';
                vsync_prev   <= '0';
                vde_prev     <= '0';
            else
                -- Store previous states for edge detection
                vsync_prev <= vsync_in;
                vde_prev   <= vde_in;

                if (vsync_in = '1' and vsync_prev = '0') then 
                    v_started <= '0'; 
                end if;

                -- CASE A: Start of a NEW LINE (Rising Edge of VDE)
                if (vde_in = '1' and vde_prev = '0') then
                    
                    -- Always reset Horizontal Counter to 0 at start of line
                    h_count_u <= (others => '0'); 

                    -- Handle Vertical Counter
                    if (v_started = '0') then
                        -- This is the very first line after a VSYNC
                        v_count_u <= (others => '0');
                        v_started <= '1';
                    else
                        -- This is a subsequent line, increment Y
                        if v_count_u < V_ACTIVE - 1 then
                            v_count_u <= v_count_u + 1;
                        end if;
                    end if;

                -- CASE B: Inside Active Video (VDE is High and Steady)
                elsif (vde_in = '1') then
                    -- Increment Horizontal Counter
                    if h_count_u < H_ACTIVE - 1 then
                        h_count_u <= h_count_u + 1;
                    end if;
                
                -- CASE C: Blanking interval (VDE is Low)
                else
                end if;
            end if;
        end if;
    end process;
    
    ----------------------------------------------------------------
    -- Pipeline the incoming signals (1-cycle)
    ----------------------------------------------------------------
    pipeline_stage : process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                vde_out    <= '0';
                hsync_out  <= '0';
                vsync_out  <= '0';
                h_count    <= (others => '0');
                v_count    <= (others => '0');
                rgb_out    <= (others => '0');
            else
                vde_out    <= vde_in;
                hsync_out  <= hsync_in;
                vsync_out  <= vsync_in;
                h_count    <= std_logic_vector(h_count_u);
                v_count    <= std_logic_vector(v_count_u);
                rgb_out    <= rgb_in;
            end if;
        end if;
    end process;

end Behavioral;
