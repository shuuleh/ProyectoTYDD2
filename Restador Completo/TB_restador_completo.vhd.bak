library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity TB_JK_FF is
end TB_JK_FF;

architecture behavior of TB_JK_FF is
component JK_FF
port(
J : in std_logic;
K : in std_logic;
CLOCK : in std_logic;
Q : out std_logic
);
end component;

--inputs
signal J : std_logic := '0';
signal K : std_logic := '0';
signal CLOCK : std_logic := '0';

--output
signal Q : std_logic;

--clock period definition
constant clock_period : time := 20ns;

BEGIN
uut: JK_FF port map (
J => J ,
K => K ,
CLOCK => CLOCK ,
Q => Q 
);

--clock
clock_process: process
begin
	CLOCK<='0';
	wait for clock_period/2;
	CLOCK<='1';
	wait for clock_period/2;
end process;

stim_proc: process  --proceso estimulo, es como mi tabla de verdad de entrada
begin
	J <='0'; K <='0'; wait for 30ns;
	J <='0'; K <='1'; wait for 30ns;
	J <='1'; K <='0'; wait for 30ns;
	J <='1'; K <='1'; wait for 30ns;
wait;
end process;
END;
