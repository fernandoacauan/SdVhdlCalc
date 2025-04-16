library ieee;
use ieee.std_logic_1164.all;

entity ccontrolador is port(
	entrada_d : in std_logic_vector(3 downto 0); 
	saida_d : out std_logic_vector(7 downto 0)
);
end entity;

architecture controlador of ccontrolador is
begin

	 saida_d <= "11111100" when entrada_d = "0000" else
		    "01100000" when entrada_d = "0001" else
		    "11001010" when entrada_d = "0010" else
		    "11110010" when entrada_d = "0011" else
	     	    "01100110" when entrada_d = "0100" else
		    "10110110" when entrada_d = "0101" else
		    "10111110" when entrada_d = "0110" else
		    "11100000" when entrada_d = "0111" else
		    "11111110" when entrada_d = "1000" else
		    "11110110" when entrada_d = "1001" else
		    "00000000";

end architecture;
