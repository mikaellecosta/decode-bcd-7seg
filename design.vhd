LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity decode_bcd is
port(
BCDI : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
A, B, C, D, E, F, G : out STD_LOGIC
);
end decode_bcd;

architecture decodificador of decode_bcd is
signal S : STD_LOGIC_VECTOR(0 to 6);

begin
	with BCDI select
	S <= "1111110"  when "0000", -- '0'
		"0110000"  when "0001",	-- '1'
		"1101101"  when "0010",	-- '2'
		"1111001"  when "0011",	-- '3'
		"0110011"  when "0100",	-- '4'
		"1011011"  when "0101",	-- '5'
		"1011111"  when "0110",	-- '6'
		"1110000"  when "0111",	-- '7'
		"1111111"  when "1000",	-- '8'
		"1111011"  when "1001",	-- '9'
     	"0000000"  when others; 
    A <= S(0);
    B <= S(1);
    C <= S(2);
    D <= S(3);
    E <= S(4);
    F <= S(5);
    G <= S(6);
end architecture;
