-- -mixedsvvh ...


library ieee;
use ieee.std_logic_1164.all;

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
   signal registrador : std_logic_vector(23 downto 0) := "00000000000000000000000";
begin
	-- registrador = registrador * 10 + valor
				
	process is
        begin
	   if(m_cmd >= "0000" and m_cmd <= "1001") then
		registrador <= (registrador * 10) + m_cmd;
	        return;
	   end if;

	-- switch(cmd) ...
	 wait;
	end process;		 
end architecture;
