library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_LATCH is
    Port (
        D  : in STD_LOGIC;
        en : in STD_LOGIC;
        Q  : out STD_LOGIC
    );
end D_LATCH;

architecture Behavioral of D_LATCH is
    signal q_int : STD_LOGIC := '0';
begin

    process(D, en)
    begin
        if en = '1' then
            q_int <= D;
        end if;
    end process;

    Q <= q_int;

end Behavioral;
