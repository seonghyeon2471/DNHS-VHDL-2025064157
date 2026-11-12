library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RS_LATCH is
    Port (
        S  : in STD_LOGIC;
        R  : in STD_LOGIC;
        Q  : out STD_LOGIC;
        Qn : out STD_LOGIC
    );
end RS_LATCH;

architecture Behavioral of RS_LATCH is
    signal q_int : STD_LOGIC := '0';
begin

    process(S, R)
    begin
        if (S = '1' and R = '1') then
            q_int <= 'X';

        elsif (S = '1') then
            q_int <= '1';

        elsif (R = '1') then
            q_int <= '0';

        end if;
    end process;

    Q <= q_int;
    Qn <= not q_int;

end Behavioral;
