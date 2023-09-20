library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_alu_4bits is
end entity;

architecture rtl of tb_alu_4bits is

component alu_4bits is 
port ( a : in std_logic_vector(3 downto 0);
	  b : in std_logic_vector(3 downto 0);
	  sel : in std_logic_vector(1 downto 0);
	  y   : out std_logic_vector(3 downto 0)
	);
end component;
signal a,b,y: std_logic_vector(3 downto 0) :=(others=>'0'); 
signal sel: std_logic_vector(2 downto 0);
constant periodo : time:= 10 ns;

begin
u1:alu_4bits port map(
	a=>a,
	b=>b,
	sel=>sel,
	y=>y);

stim_proc:process
begin
	a<="1110";
	wait for periodo;
	b<="0010";
	wait for periodo;
	sel<="11";
	wait for periodo;	
	sel<="10";
	wait for periodo;
	sel<="01";
	wait for periodo;
	sel<="00";
	wait for periodo;
end process;
end rtl; 
