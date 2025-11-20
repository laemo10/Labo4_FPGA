library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- using this so we can compare std_logic_vectors

entity White_Detector is
    Port ( 
        hdmi_in  : in  std_logic_vector (23 downto 0);
        hdmi_out : out std_logic_vector (23 downto 0)
    );
end White_Detector;

architecture Behavioral of White_Detector is

    signal R, G, B : std_logic_vector(7 downto 0);
    constant color_treshold : std_logic_vector(7 downto 0) := x"99";

begin

process(hdmi_in)
begin
    R <= hdmi_in(23 downto 16);
    G <= hdmi_in(15 downto 8);
    B <= hdmi_in(7 downto 0);

    -- Detect RED
    if (R > color_treshold and 
        G > color_treshold and 
        B > color_treshold) then
        hdmi_out(23 downto 0) <= x"FFFFFF";
    else
        hdmi_out(23 downto 0) <= x"000000";
    end if;
    
end process;

end Behavioral;
