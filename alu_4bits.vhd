library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu_4bits is

	port
	( a : in std_logic_vector(3 downto 0);
	  b : in std_logic_vector(3 downto 0);
	  sel : in std_logic_vector(1 downto 0);
	  y   : out std_logic_vector(3 downto 0)

	);

end entity;

architecture rtl of alu_4bits is
signal aritm : std_logic_vector(3 downto 0) := (others => '0');
begin
	process(a,b,sel)
	begin
		case sel is
			when "11"=>aritm<= not(a);
			when "10"=>aritm<= not(b);
			when "01"=>aritm<=a and b;
			when "00"=>aritm<=a xor b;
			when others =>aritm<="0000";
		end case;
	end process;
y <= aritm;
end rtl;