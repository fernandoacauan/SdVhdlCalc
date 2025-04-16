-- -mixedsvvh ...


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CCalculadora is port 
(
	m_cmd : in std_logic_vector(3 downto 0);
	m_reset: in std_logic;
	m_status: out std_logic_vector(1 downto 0);
	m_data: out std_logic_vector(3 downto 0);
	m_position: out std_logic_vector(3 downto 0);
	m_clock: in std_logic
);
end entity;

architecture calculadora of CCalculadora is 
   signal registrador : std_logic_vector(23 downto 0) := "000000000000000000000000";
   signal calc : integer;
   signal comand : integer;
begin
	-- registrador = registrador * 10 + valor
				
	process is
        begin
        calc <= to_integer(signed(registrador));
        comand <= to_integer(signed(m_cmd));
        wait;
	   if(m_cmd >= "0000" and m_cmd <= "1001") then
		calc <= (calc * 10) + comand;
	   end if;
		
	-- switch(cmd) ...
	 wait;
	 registrador <= std_logic_vector(to_signed(calc, registrador'length));
	end process;		 
end architecture;
