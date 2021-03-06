library ieee;
use ieee.std_logic_1164.all;

entity register5 is
    port (D : in std_logic_vector(4 downto 0);
          WE : in std_logic;
          clk : in std_logic;
          Q : out std_logic_vector(4 downto 0);
          Qprime : out std_logic_vector(4 downto 0));
    end register5;
    
    architecture rtl of register5 is
    begin
        GEN: for n in 4 downto 0 generate
            ff: entity work.Dff(Behavior)
                port map (D(n), WE, clk, Q(n), Qprime(n));
        end generate GEN;
    end rtl;
