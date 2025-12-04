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

entity comparateur_regulateur_vitesse is
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        vitesse_panneau : in STD_LOGIC_VECTOR (7 downto 0);
        vitesse_panneau_valid : in STD_LOGIC;
        vitesse_actuelle : in STD_LOGIC_VECTOR (7 downto 0);
        vitesse_cible : out STD_LOGIC_VECTOR (7 downto 0);
        vitesse_cible_valid : out STD_LOGIC
    );
end comparateur_regulateur_vitesse;

architecture Behavioral of comparateur_regulateur_vitesse is
    signal vitesse_panneau_reg : unsigned(7 downto 0) := (others => '0');
    signal vitesse_actuelle_uns : unsigned(7 downto 0);
    signal vitesse_cible_reg : unsigned(7 downto 0) := (others => '0');
    signal difference : signed(8 downto 0);
    constant SEUIL_TOLERANCE : unsigned(7 downto 0) := to_unsigned(5, 8);
    constant STEP_ACCELERATION : unsigned(7 downto 0) := to_unsigned(1, 8);
    constant STEP_DECELERATION : unsigned(7 downto 0) := to_unsigned(2, 8);
    signal compteur_ajustement : unsigned(19 downto 0) := (others => '0');
    constant PERIODE_AJUSTEMENT : unsigned(19 downto 0) := to_unsigned(100000, 20);
    signal pulse_ajustement : std_logic := '0';
   
begin
   
    vitesse_actuelle_uns <= unsigned(vitesse_actuelle);
    
    -- Générateur de pulse
    process(clk, reset)
    begin
        if reset = '1' then
            compteur_ajustement <= (others => '0');
            pulse_ajustement <= '0';
        elsif rising_edge(clk) then
            if compteur_ajustement >= PERIODE_AJUSTEMENT then
                compteur_ajustement <= (others => '0');
                pulse_ajustement <= '1';
            else
                compteur_ajustement <= compteur_ajustement + 1;
                pulse_ajustement <= '0';
            end if;
        end if;      
    end process;
    
    -- Régulation de vitesse
    process(clk, reset)
    begin
        if reset = '1' then
            vitesse_panneau_reg <= (others => '0');
            vitesse_cible_reg <= (others => '0');
            vitesse_cible_valid <= '0';
            
        elsif rising_edge(clk) then
            vitesse_cible_valid <= '0';
            
            if vitesse_panneau_valid = '1' then
                vitesse_panneau_reg <= unsigned(vitesse_panneau);
            end if;
            
            if pulse_ajustement = '1' then
                difference <= signed('0' & vitesse_panneau_reg) - signed('0' & vitesse_actuelle_uns);
                
                -- Si la vitesse est égale à 0 
                if vitesse_panneau_reg = to_unsigned(0, 8) then
                    vitesse_cible_reg <= vitesse_actuelle_uns;
                    
                -- Si plus petit que la tolérance rien faire    
                elsif abs(difference) <= signed('0' & SEUIL_TOLERANCE) then
                    vitesse_cible_reg <= vitesse_actuelle_uns;
                
                -- Différence > 0  
                elsif difference > 0 then
                    if (vitesse_actuelle_uns + STEP_ACCELERATION) <= vitesse_panneau_reg then
                        vitesse_cible_reg <= vitesse_actuelle_uns + STEP_ACCELERATION;
                    else
                        vitesse_cible_reg <= vitesse_panneau_reg;
                    end if;
                    vitesse_cible_valid <= '1';
                
                -- Différence < 0  
                else
                    if vitesse_actuelle_uns >= (vitesse_panneau_reg + STEP_DECELERATION) then
                        vitesse_cible_reg <= vitesse_actuelle_uns - STEP_DECELERATION;
                    else
                        vitesse_cible_reg <= vitesse_panneau_reg;
                    end if;
                    vitesse_cible_valid <= '1';
                end if;
            end if;
        end if;        
    end process;
    
    vitesse_cible <= std_logic_vector(vitesse_cible_reg);

end Behavioral;