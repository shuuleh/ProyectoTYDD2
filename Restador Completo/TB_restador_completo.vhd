library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity TB_restador_completo is
end TB_restador_completo;

architecture behavior of TB_restador_completo is
component restador_completo
port(
X : in std_logic;
Y : in std_logic;
R : out std_logic;
B : out std_logic
);
end component;

signal X : std_logic ;
signal Y : std_logic ;
signal R : std_logic ;
signal B : std_logic ;

BEGIN
uut: restador_completo port map (
X => X ,
Y => Y ,
R => R ,
B => B 
);

stim_proc: process  --proceso estimulo, es como mi tabla de verdad de entrada
begin
	X <='0'; Y <='0'; wait for 30ns;
	X <='0'; Y <='1'; wait for 30ns;
	X <='1'; Y <='0'; wait for 30ns;
	X <='1'; Y <='1'; wait for 30ns;
wait;
end process;
END;
