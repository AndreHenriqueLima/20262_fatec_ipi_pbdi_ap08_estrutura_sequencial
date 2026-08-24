DO $$
DECLARE
    n1 INTEGER;
BEGIN
    n1 := floor(random() * 100 + 1)::int;

    RAISE NOTICE 'Número inteiro gerado: %', n1;
END $$;

DO $$
DECLARE
	n1 NUMERIC(5, 2);
BEGIN
	n1 := random() * 9 + 1;
	RAISE NOTICE 'Valor real gerado: %', n1;
END $$;

DO $$
DECLARE
	temperatura_celsius NUMERIC(5, 2);
	temperatura_fahrenheit NUMERIC (5, 2);
BEGIN
	temperatura_celsius := random() * 10 + 20;
	temperatura_fahrenheit := temperatura_celsius * 1.8 + 32;
	RAISE NOTICE 'Temperatura em Celsius: %',
	temperatura_celsius;
	RAISE NOTICE 'Temperatura em Fahrenheit: %',
	temperatura_fahrenheit;
END $$;

DO $$
DECLARE
	a NUMERIC(5, 2);
	b NUMERIC(5, 2);
	c NUMERIC(5, 2);
	delta NUMERIC(10, 2);
BEGIN
	a := random() * 9 + 1;
	b := random() * 9 + 1;
	c := random() * 9 + 1;
	delta := b ^ 2 - 4 * a * c;
	RAISE NOTICE 'a = %', a;
	RAISE NOTICE 'b = %', b;
	RAISE NOTICE 'c = %', c;
	RAISE NOTICE 'delta = %', delta;
END $$;

DO $$
DECLARE
	numero INTEGER;
	antecessor INTEGER;
	sucessor INTEGER;
	raiz_cubica NUMERIC(10, 2);
	raiz_quadrada NUMERIC(10, 2);
BEGIN
	numero := floor(random() * 100 + 1)::int;
	antecessor := numero - 1;
	sucessor := numero + 1;
	raiz_cubica := ||/ antecessor;
	raiz_quadrada := |/ sucessor;
	RAISE NOTICE 'Número: %', numero;
	RAISE NOTICE 'Antecessor: %', antecessor;
	RAISE NOTICE 'Sucessor: %', sucessor;
	RAISE NOTICE 'Raiz cúbica do antecessor: %', raiz_cubica;
	RAISE NOTICE 'Raiz quadrada do sucessor: %', raiz_quadrada;
END $$;

DO $$
DECLARE 
	comprimento NUMERIC(10, 2);
	largura NUMERIC(10, 2);
	preco_metro_quadrado NUMERIC(10, 2);
	area NUMERIC(10, 2);
	valor_total NUMERIC(15, 2);
BEGIN
	comprimento := random() * 9 + 1;
	largura := random() * 9 + 1;
	preco_metro_quadrado := random() * 10 + 60;
	area := comprimento * largura;
	valor_total := area * preco_metro_quadrado;
	RAISE NOTICE 'Comprimento: % metros', comprimento;
	RAISE NOTICE 'Largura: % metros', largura;
	RAISE NOTICE 'Área do terreno: % m²', area;
	RAISE NOTICE 'Preço por m²: R$ %', preco_metro_quadrado;
	RAISE NOTICE 'Valor total do terreno: R$ %', valor_total;
END $$;

DO $$
DECLARE
	ano_nascimento INTEGER;
	ano_atual INTEGER;
	idade INTEGER;
BEGIN
	ano_nascimento := floor(random() * (2000 - 1980 + 1) + 1980)::int;
	ano_atual := floor(random() * (2020 - 2010 + 1) + 2010)::int;
	idade := ano_atual - ano_nascimento;
	RAISE NOTICE 'Ano de nascimento: %', ano_nascimento;
	RAISE NOTICE 'Ano atual: %', ano_atual;
	RAISE NOTICE 'Idade: % anos', idade;
END $$;