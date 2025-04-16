library ieee;
use ieee.std_logic_1164.all;

entity modulo is port(
	digito_m : in std_logic_vector(3 downto 0);
	posicao_m : in std_logic_vector(3 downto 0);
	rst_m : in std_logic;
	clk_m : in std_logic
);
end entity;

architecture nome of modulo is
    signal entrada0, entrada1, entrada2, entrada3, entrada4, entrada5, entrada6, entrada7 : std_logic_vector(3 downto 0);
begin
    dut0: entity work.ccontrolador port map(
	entrada_d => entrada0
    );

    dut1: entity work.ccontrolador port map(
	entrada_d => entrada1
    );
    dut2: entity work.ccontrolador port map(
	entrada_d => entrada2
    );

    dut3: entity work.ccontrolador port map(
	entrada_d => entrada3
    );
    dut4: entity work.ccontrolador port map(
	entrada_d => entrada4
    );

    dut5: entity work.ccontrolador port map(
	entrada_d => entrada5
    );
    dut6: entity work.ccontrolador port map(
	entrada_d => entrada6
    );

    dut7: entity work.ccontrolador port map(
	entrada_d => entrada7
    );
        
process(clk_m, rst_m)
    begin
        if rst_m = '1' then
            entrada0 <= (others => '0');
            entrada1 <= (others => '0');
            entrada2 <= (others => '0');
            entrada3 <= (others => '0');
            entrada4 <= (others => '0');
            entrada5 <= (others => '0');
            entrada6 <= (others => '0');
            entrada7 <= (others => '0');
        elsif rising_edge(clk_m) then

            case posicao_m is
                when "0000" => entrada0 <= digito_m;
                when "0001" => entrada1 <= digito_m;
                when "0010" => entrada2 <= digito_m;
                when "0011" => entrada3 <= digito_m;
                when "0100" => entrada4 <= digito_m;
                when "0101" => entrada5 <= digito_m;
                when "0110" => entrada6 <= digito_m;
                when "0111" => entrada7 <= digito_m;
                when others => 
                    entrada0 <= (others => '0');
                    entrada1 <= (others => '0');
                    entrada2 <= (others => '0');
                    entrada3 <= (others => '0');
                    entrada4 <= (others => '0');
                    entrada5 <= (others => '0');
                    entrada6 <= (others => '0');
                    entrada7 <= (others => '0');
            end case;
        end if;
    end process;


end architecture;
