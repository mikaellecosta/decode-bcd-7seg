LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity tb_decode_bcd is
end tb_decode_bcd;

architecture simulacao of tb_decode_bcd is

component decode_bcd is
port(
BCDI : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
A, B, C, D, E, F, G : out STD_LOGIC
);
end component;

signal BCDI: std_logic_vector(3 downto 0);
signal A, B, C, D, E, F, G : STD_LOGIC;

begin

dut: decode_bcd port map (BCDI, A,B,C,D,E,F,G);


process
begin

-- BCDI recebe 0
BCDI <= "0000";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '1' and D = '1' and E = '1' and F = '1' and G = '0') report "Error" severity warning;

-- BCDI recebe 1
BCDI <= "0001";
wait for 10 ns;
assert (A = '0' and B = '1' and C = '1' and D = '0' and E = '0' and F = '0' and G = '0') report "Error" severity warning;

-- BCDI recebe 2
BCDI <= "0010";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '0' and D = '1' and E = '1' and F = '0' and G = '1') report "Error" severity warning;

-- BCDI recebe 3
BCDI <= "0011";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '1' and D = '1' and E = '0' and F = '0' and G = '1') report "Error" severity warning;

-- BCDI recebe 4
BCDI <= "0100";
wait for 10 ns;
assert (A = '0' and B = '1' and C = '1' and D = '0' and E = '0' and F = '1' and G = '1') report "Error" severity warning;

-- BCDI recebe 5
BCDI <= "0101";
wait for 10 ns;
assert (A = '1' and B = '0' and C = '1' and D = '1' and E = '0' and F = '1' and G = '1') report "Error" severity warning;

-- BCDI recebe 6
BCDI <= "0110";
wait for 10 ns;
assert (A = '1' and B = '0' and C = '1' and D = '1' and E = '1' and F = '1' and G = '1') report "Error" severity warning;

-- BCDI recebe 7
BCDI <= "0111";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '1' and D = '0' and E = '0' and F = '0' and G = '0') report "Error" severity warning;

-- BCDI recebe 8
BCDI <= "1000";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '1' and D = '1' and E = '1' and F = '1' and G = '1') report "Error" severity warning;

-- BCDI recebe 9
BCDI <= "1001";
wait for 10 ns;
assert (A = '1' and B = '1' and C = '1' and D = '1' and E = '0' and F = '1' and G = '1') report "Error" severity warning;

wait;
end process;
end architecture;
