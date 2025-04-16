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
end architecture;-- -mixedsvvh ...

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
   signal current_op : std_logic_vector(1 downto 0);
   signal estados : std_logic_vector(7 downto 0);  
begin
	-- registrador = registrador * 10 + valor
				
	process is
        begin
        wait;
	   if(m_cmd >= "0000" and m_cmd <= "1001") then
	        calc <= to_integer(signed(registrador));
	        comand <= to_integer(signed(m_cmd));
		calc <= (calc * 10) + comand;
		registrador <= std_logic_vector(to_signed(calc, registrador'length));
	   end if;
		
	-- switch(cmd) ...
	 case m_cmd is -- 0 = add, 1 = sub 2 = mul, others = add
	 when "1010" => current_op <= "00";
	 when "1011" => current_op <= "01";
	 when "1100" => current_op <= "10";
	 when others => current_op <= "00";
         end case;
	 wait;
	end process;		 
end architecture;
