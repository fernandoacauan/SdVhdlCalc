library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity tbcontrolador is
end entity;

architecture controlador of tbcontrolador is
	signal entrada: std_logic_vector(3 downto 0) := "0000";
	signal saida: std_logic_vector(7 downto 0);
begin
	dut: entity work.ccontrolador port map(
		entrada_d => entrada, saida_d => saida
	);

	teste: process
	begin

	  wait for 100 ns;
	  entrada <= "0001";

	  wait for 100 ns;
	  entrada <= "0010";

	  wait for 100 ns;
	  entrada <= "0011";

	  wait for 100 ns;
	  entrada <= "0100";

	  wait for 100 ns;
	  entrada <= "0101";

	  wait for 100 ns;
	  entrada <= "0110";

	  wait for 100 ns;
	  entrada <= "0111";

	  wait for 100 ns;
	  entrada <= "1000";

	  wait for 100 ns;
	  entrada <= "1001";

	  wait for 100 ns;
	  entrada <= "1010";

	end process;
	
end architecture;