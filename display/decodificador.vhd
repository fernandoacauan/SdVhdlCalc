library ieee;
use ieee.std_logic_1164.all;

entity ddecodificador is port(
	input : in std_logic_vector(7 downto 0);
	posicao_de : out std_logic_vector(3 downto 0);
	digito_de : out std_logic_vector(3 downto 0);
	clk_de : in std_logic;
	rst_de : in std_logic
);
end entity;

architecture decodificador of ddecodificador is
	signal digito, posicao : std_logic_vector(3 downto 0);
	--signal vetor_temp : std_logic_vector(7 downto 0);
begin
    dut_m: entity work.modulo port map(
	digito_m => digito,
	posicao_m => posicao,
	clk_m => clk_de,
	rst_m => rst_de
    );

    process(clk_de, rst_de)
    begin
      if(rst_de = '1') then
	 digito <= "0000";
	 posicao <= "0000";
      elsif(rising_edge(clk_de)) then
	 --vetor_temp <= vetor_temp(6 downto 0) & input;
    	 --posicao <= vetor_temp(3 downto 0);
    	 --digito <= vetor_temp(7 downto 4);
	 posicao <= input(3 downto 0);
	 digito <= input(7 downto 4);
    	 
      end if;
    end process;
end architecture;