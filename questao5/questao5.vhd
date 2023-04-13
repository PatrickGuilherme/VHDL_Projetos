library ieee;
use ieee.std_logic_1164.all;

--Entidade
entity questao5 is 
	PORT(
		Input: IN STD_LOGIC;
		Output: out STD_LOGIC
	);
end questao5;

--Arquitetura
architecture  behavior of questao5 is
	Type estado is (lig,des);
	signal est : estado;
Begin
	PROCESS (Input)
	Begin
			IF(Input = '0') THEN --Verifica se o input foi acionado
			CASE est IS
				WHEN lig => 
						est <= des;
				WHEN des =>
						est <= lig;
			END CASE;
		END IF;
	End PROCESS;
	Output <= '1' WHEN est= lig else '0';
end behavior;