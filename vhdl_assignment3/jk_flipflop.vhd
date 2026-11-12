library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FLIPFLOP is
    Port (
        clk : in STD_LOGIC;
        j   : in STD_LOGIC;
        k   : in STD_LOGIC;
        q   : out STD_LOGIC
    );
end JK_FLIPFLOP;

architecture bhv of JK_FLIPFLOP is
    signal q_internal : STD_LOGIC := '0';
begin

    q <= q_internal;

    process(clk)
    begin
        if rising_edge(clk) then

            if (j = '1' and k = '0') then
                q_internal <= '1';

            elsif (j = '0' and k = '1') then
                q_internal <= '0';

            elsif (j = '1' and k = '1') then
                q_internal <= not q_internal;

            end if;

        end if;
    end process;

end bhv;
