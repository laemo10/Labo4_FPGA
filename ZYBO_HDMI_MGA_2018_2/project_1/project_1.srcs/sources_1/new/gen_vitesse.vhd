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

entity gen_vitesse is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        vitesse_imposee : in std_logic_vector(7 downto 0); 
        vitesse_imposee_valid : in std_logic; 
        vit_cond : out std_logic_vector(7 downto 0)   
    );
end gen_vitesse;

architecture Behavioral of gen_vitesse is
    signal reg_ale : unsigned(7 downto 0) := "00000001";
    signal vitesse_aleatoire : unsigned(7 downto 0);
    signal vitesse_actuelle : unsigned(7 downto 0) := to_unsigned(10, 8);
    signal compteur_changement : unsigned(25 downto 0) := (others => '0');
    constant PERIODE_CHANGEMENT : unsigned(25 downto 0) := to_unsigned(50000000, 26); 
    signal pulse_changement : std_logic := '0';
    
begin
    -- Générateur de pulse pour changement de vitesse aléatoire
    process(clk, reset)
    begin
        if reset = '1' then
            compteur_changement <= (others => '0');
            pulse_changement <= '0';
        elsif rising_edge(clk) then
            if compteur_changement >= PERIODE_CHANGEMENT then
                compteur_changement <= (others => '0');
                pulse_changement <= '1';
            else
                compteur_changement <= compteur_changement + 1;
                pulse_changement <= '0';
            end if;
        end if;
    end process;
    
    -- Générateur de vitesse avec contrôle
    process(clk, reset)
        variable Temps : std_logic;
    begin
        if reset = '1' then
            reg_ale <= "00000001";
            vitesse_actuelle <= to_unsigned(10, 8);   
        elsif rising_edge(clk) then
            -- Calculer un viesse aléatoire
            Temps := reg_ale(7) XOR reg_ale(5) XOR reg_ale(4) XOR reg_ale(3);
            reg_ale <= reg_ale(6 downto 0) & Temps;
            vitesse_aleatoire <= (reg_ale mod 81) + 10;
            -- Logique de contrôle de la vitesse
            if vitesse_imposee_valid = '1' then
                -- Si le comparateur envoie une vitesse cible, l'appliquer
                vitesse_actuelle <= unsigned(vitesse_imposee);
            elsif pulse_changement = '1' then
                -- Sinon, changer aléatoirement la vitesse périodiquement
                vitesse_actuelle <= vitesse_aleatoire;
            end if;
        end if;
    end process;
    
    vit_cond <= std_logic_vector(vitesse_actuelle);

end Behavioral;