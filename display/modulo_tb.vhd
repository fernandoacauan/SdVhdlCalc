library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity tbmodulo is
end entity;

architecture modulo of tbmodulo is
	signal digito : std_logic_vector(3 downto 0);
	signal posicao : std_logic_vector(3 downto 0);
	signal rst : std_logic := '0';
	signal clk : std_logic := '0';
begin
        dut: entity work.modulo port map(
		digito_m => digito, posicao_m => posicao,
		rst_m => rst, clk_m => clk
	);

        clk_process : process
        begin
            while true loop
                clk <= not clk;
                wait for 10 ns / 2;
            end loop;
        end process;

	teste: process
	begin

	 -- rst <= '1';
         -- wait for 20 ns;
         -- rst <= '0';
         -- wait for 20 ns;

	  wait for 100 ns;
	  digito <= "0001";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0010";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0011";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0100";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0101";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0110";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "0111";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "1000";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "1001";
	  posicao <= "0000";

	  wait for 100 ns;
	  digito <= "1010";
	  posicao <= "0000";

---------------- 2ºdisplay ----------------

	  wait for 100 ns;
	  digito <= "0001";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0010";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0011";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0100";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0101";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0110";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "0111";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "1000";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "1001";
	  posicao <= "0001";

	  wait for 100 ns;
	  digito <= "1010";
	  posicao <= "0001";

	end process;
end architecture;