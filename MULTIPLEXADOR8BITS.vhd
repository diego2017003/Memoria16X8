LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY MULTIPLEXADOR8BITS IS 
	PORT(
		Em18,Em28,Em38,Em48,Em58,Em68,Em78,Em88,Em98,Em108,Em118,Em128,Em138,Em148,Em158,Em168:IN STD_LOGIC_VECTOR(7 downto 0);
		S8:IN STD_LOGIC_VECTOR(3 downto 0);
		Saida8BITS:OUT STD_LOGIC_VECTOR(7 downto 0));
END MULTIPLEXADOR8BITS;
ARCHITECTURE mux8BIT OF MULTIPLEXADOR8BITS IS
COMPONENT MULTIPLEXADOR1BIT IS
PORT(
		Em1,Em2,Em3,Em4,Em5,Em6,Em7,Em8,Em9,Em10,Em11,Em12,Em13,Em14,Em15,Em16:IN STD_LOGIC;
		S:IN STD_LOGIC_VECTOR(3 downto 0);
		Saida:OUT STD_LOGIC);
END COMPONENT; 
SIGNAL SaidaSinal:STD_LOGIC_VECTOR(7 downto 0);
BEGIN
GEN: for i in 0 to 7 GENERATE
m:MULTIPLEXADOR1BIT PORT MAP(Em1=>Em18(i),Em2=>Em28(i),Em3=>Em38(i),Em4=>Em48(i),Em5=>Em58(i),Em6=>Em68(i),Em7=>Em78(i),Em8=>Em88(i),Em9=>Em98(i),Em10=>Em108(i),Em11=>Em118(i),Em12=>Em128(i),Em13=>Em138(i),Em14=>Em148(i),Em15=>Em158(i),Em16=>Em168(i),S=>S8,Saida=>SaidaSinal(i));
END GENERATE;
Saida8BITS<=SaidaSinal;
END mux8BIT;