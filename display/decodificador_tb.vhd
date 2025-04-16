library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity tbdecodificador is
end entity;

architecture decod of tbdecodificador is
	signal input_tb : std_logic_vector(7 downto 0);
	signal clk_tb : std_logic := '0';
	signal rst_tb : std_logic := '0';
begin
        dut: entity work.ddecodificador port map(
		rst_de => rst_tb, clk_de => clk_tb, input => input_tb
	);

        clk_process : process
        begin
            while true loop
                clk_tb <= not clk_tb;
                wait for 10 ns / 2;
            end loop;
        end process;

	teste : process
	begin
	  wait for 100 ns;
	  input_tb <= "00000111";
	  
	  wait for 100 ns;
	  input_tb <= "00010110";

	  wait for 100 ns;
	  input_tb <= "00100101";

	  wait for 100 ns;
	  input_tb <= "00110100";

	  wait for 100 ns;
	  input_tb <= "01000011";

	  wait for 100 ns;
	  input_tb <= "01010010";

	  wait for 100 ns;
	  input_tb <= "01100001";

	  wait for 100 ns;
	  input_tb <= "01110000";
	end process;
end architecture;