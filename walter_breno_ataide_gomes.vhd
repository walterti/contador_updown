-- Autor: Walter Breno Ataide Gomes
-- RU: 1505474
-- Data: 04/04/2025
-- Contador up-down

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity walter_breno_ataide_gomes is --definição da entidade
    port (
        clk : in std_logic; --clock, iremos detectar a borda de descida para realizar a contagem
        rst : in std_logic; --sinal de reset para reiniciar a contagem
        dir : in std_logic; --direção da contagem 0 incrementa e um decrementa
        saida : buffer unsigned(3 downto 0)--valor da saída, quatro bits
    );
end walter_breno_ataide_gomes;

architecture arch of walter_breno_ataide_gomes is --definição da arquitetura
begin
    contagem : process(clk, rst) --inicio do código sequencial, sensíveis ao clock e ao reset
    begin
        if rst = '1' then
            saida <= (others => '0'); --caso o reset seja acionado a saída será zerada
        elsif falling_edge(clk) then --caso contrário iniciamos a contagem, sensível à borda de descida
            if dir = '0' then --caso o seletor esteja em 0 a saída é incrementada
                saida <= saida + 1;
            else --caso o seletor esteja em 1 a saída é decrementada
                saida <= saida - 1;
            end if;
        end if;
    end process contagem;
end architecture arch;
