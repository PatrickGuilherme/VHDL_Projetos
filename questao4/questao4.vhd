library ieee;
use ieee.std_logic_1164.all;

entity questao4 is 
	PORT(
		clk: IN STD_LOGIC;
		x: IN STD_LOGIC;
		display1: out std_logic_vector (6 downto 0);
		display2: out std_logic_vector (6 downto 0)
	);
end questao4;

architecture  behavior of questao4 is

	Type estado is (S0,S1,S2,S3);
	signal est : estado;
	signal d1: INTEGER;
	SIGNAL d2: INTEGER;
	signal count: 		integer:=1;
	signal tmp: 		std_logic := '0';
	signal clk_out: 	std_logic;
	
Begin
	PROCESS (clk,x)
	Begin
	
		if(clk'event and clk='1') then
			count <=count+1;
			if (count = 12500000) then
				tmp <= NOT tmp;
				count <= 1;
			end if;
		end if;
		clk_out <= tmp;
	
		IF (rising_edge(clk_out)) THEN
			CASE est IS
				WHEN S0 => 
					IF(x = '1') THEN
						est <= S1;
					elsif(x = '0') then
						est <= S3;
					END IF;
				
				WHEN S1 =>
					IF(x = '1') THEN
						est <= S2;
					elsif(x = '0') then
						est <= S0;
					END IF;
					
				WHEN S2 =>
					IF(x = '1') THEN
						est <= S3;
					elsif(x = '0') then
						est <= S1;
					END IF;
					
				WHEN S3 =>
					IF(x = '1') THEN
						est <= S0;
					elsif(x = '0') then
						est <= S2;
					END IF;
			END CASE;
		END IF;
		
		CASE est IS
			when S0 =>
				d1 <= 0;
				d2 <= 0;
			when S1 =>
				d1 <= 0;
				d2 <= 1;
			when S2 =>
				d1 <= 1;
				d2 <= 1;
			when S3 =>
				d1 <= 1;
				d2 <= 0;
		END CASE;
			
	End PROCESS;
		
	with d1 select display1 <= 
			"0000001" when 0,
			"1001111" when 1,
			"0010010" when 2,
			"0000110" when 3,
			"1001100" when 4,
			"0100100" when 5,
			"0100000" when 6,
			"0001111" when 7,
			"0000000" when 8,
			"0001100" when 9,
			"1111110" when others;


	with d2 select display2 <=
			"0000001" when 0,
			"1001111" when 1,
			"0010010" when 2,
			"0000110" when 3,
			"1001100" when 4,
			"0100100" when 5,
			"0100000" when 6,
			"0001111" when 7,
			"0000000" when 8,
			"0001100" when 9,
			"1111110" when others;	
		
		
end behavior;