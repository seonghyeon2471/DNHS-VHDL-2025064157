library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_ASYNC is
    Port (
        clk : in STD_LOGIC;
        D   : in STD_LOGIC;
        clr : in STD_LOGIC;
        set : in STD_LOGIC;
        Q   : out STD_LOGIC
    );
end D_FF_ASYNC;

architecture bhv of D_FF_ASYNC is
    signal q_internal : STD_LOGIC := '0';
begin

    Q <= q_internal;

    process(clk, clr, set)
    begin

        -- Asynchronous Clear (highest priority)
        if clr = '1' then
            q_internal <= '0';

        -- Asynchronous Set (second priority)
        elsif set = '1' then
            q_internal <= '1';

        -- Positive edge triggered D Flip-Flop
        elsif rising_edge(clk) then
            q_internal <= D;

        end if;

    end process;

end bhv;
