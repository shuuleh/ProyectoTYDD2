library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity restador_completo is
PORT(X,Y: in std_logic;
R,B: out std_logic);
end restador_completo;

architecture behavioral of restador_completo is
begin
 R <= X xor Y ;
 B <= not(X) and Y ;
end behavioral;