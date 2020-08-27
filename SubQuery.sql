SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO AS BAIRRO_CLIENTE FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO_VENDEDOR FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO AS BAIRRO_CLIENTE FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO_VENDEDOR FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO AS BAIRRO_CLIENTE FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO_VENDEDOR FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO AS BAIRRO_CLIENTE FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO_VENDEDOR FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO AS BAIRRO_CLIENTE,'CLIENTE' AS TIPO FROM TABELA_DE_CLIENTES
UNION ALL
SELECT DISTINCT BAIRRO AS BAIRRO_VENDEDOR, 'VENDEDOR' AS TIPO FROM TABELA_DE_VENDEDORES;

SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT * FROM TABELA_DE_CLIENTES 
    WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);
    
SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80;

SELECT Z.EMBALAGEM, Z.SOMA_PRECO FROM
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO FROM TABELA_DE_PRODUTOS
GROUP BY EMBALAGEM) Z WHERE Z.SOMA_PRECO <= 80;

SELECT CPF, COUNT(*) AS QUANTIDADE FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF
HAVING COUNT(*) > 2000;

SELECT T.CPF, T.CONTADOR FROM 
(SELECT CPF, COUNT(*) AS CONTADOR FROM NOTAS_FISCAIS
WHERE TO_CHAR(DATA_VENDA, 'YYYY') = '2016'
GROUP BY CPF) T WHERE T.CONTADOR > 2000;







