library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FLIPFLOP is
    Port (
        D   : in STD_LOGIC;
        clk : in STD_LOGIC;
        Q   : out STD_LOGIC
    );
end D_FLIPFLOP;

architecture Behavioral of D_FLIPFLOP is
    signal q_int : STD_LOGIC := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            q_int <= D;
        end if;
    end process;

    Q <= q_int;

end Behavioral;