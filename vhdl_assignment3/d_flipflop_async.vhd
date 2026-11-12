library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_ASYNC is
    Port (
        D   : in  STD_LOGIC;
        clk : in  STD_LOGIC;
        set : in  STD_LOGIC;
        clr : in  STD_LOGIC;
        Q   : out STD_LOGIC;
        Qn  : out STD_LOGIC
    );
end D_FF_ASYNC;

architecture Behavioral of D_FF_ASYNC is
    signal q_int : STD_LOGIC := '0';
begin

    process(clk, set, clr)
    begin
        if clr = '1' then
            q_int <= '0';

        elsif set = '1' then
            q_int <= '1';

        elsif rising_edge(clk) then
            q_int <= D;
        end if;
    end process;

    Q  <= q_int;
    Qn <= not q_int;

end Behavioral;
