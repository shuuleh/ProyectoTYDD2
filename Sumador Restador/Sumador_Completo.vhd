library ieee;
use ieee.std_logic_1164.all;

entity sumador_completo is
	port(
		a, b, c_in : in std_logic;
		f, c_out : out std_logic );
end sumador_completo;

architecture comportamiento of sumador_completo is
begin
	f <= a xor b xor c_in;
	c_out <= (a and b) or (c_in and (a xor b));
end comportamiento;
