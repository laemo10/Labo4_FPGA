----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2025 07:30:08 PM
-- Design Name: 
-- Module Name: simple_divider - Behavioral
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

entity simple_divider is
    Port ( 
        clk        : in std_logic;
        start      : in std_logic; -- Signal pour lancer le calcul
        dividend   : in unsigned(31 downto 0); -- Votre Somme
        divisor    : in unsigned(15 downto 0); -- Votre Compte
        
        quotient   : out unsigned(7 downto 0); -- Votre Moyenne (8 bits)
        done       : out std_logic             -- '1' quand le calcul est prêt
    );
end simple_divider;

architecture Behavioral of simple_divider is
    signal v_done : std_logic := '0'; -- Signal interne pour done

begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- 1. done interne est re-généré
            v_done <= '0';
            
            if start = '1' then
                if divisor > 0 then
                    quotient <= resize(dividend / divisor, 8);
                else
                    quotient <= (others => '0');
                end if;
                
                v_done <= '1'; -- Le calcul est fait, done est '1' au prochain cycle
            end if;
            
        end if;
    end process;
    
    done <= v_done; -- done est la version interne (synchrone)
end Behavioral;
