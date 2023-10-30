library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity JK_FF is
PORT(J,K,CLOCK: in std_logic;
Q: buffer std_logic); --puse buffer porque quiero que funcione como entrada y salida
end JK_FF;

architecture behavioral of JK_FF is
signal Qn : std_logic;
begin
Qn<=Q; --no es necesario porque declare Q como buffer
process (CLOCK)
begin
if(CLOCK='1' and CLOCK'EVENT) then
Q <= (J and not(Qn)) or (not(K) and Qn);
end if;
end process;
end behavioral;
