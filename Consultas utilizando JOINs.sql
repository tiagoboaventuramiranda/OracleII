SELECT * FROM ITENS_NOTAS_FISCAIS;
SELECT * FROM TABELA_DE_CLIENTES;

SELECT TO_CHAR(DATA_VENDA, 'YYYY') ANO, SUM(QUANTIDADE * PRECO) FATURAMENTO FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON INF.NUMERO = NF.NUMERO
GROUP BY TO_CHAR(DATA_VENDA, 'YYYY');

SELECT COUNT(*) FROM TABELA_DE_CLIENTES;

SELECT DISTINCT C.CPF AS CPF_CLIENTE, C.NOME AS NOME, NF.CPF AS CPF_NOTA FROM TABELA_DE_CLIENTES C
LEFT JOIN NOTAS_FISCAIS NF ON C.CPF = NF.CPF;

SELECT V.NOME AS NOME_VENDEDOR, V.BAIRRO AS BAIRRO_VENDEDOR, C.NOME AS NOME_CLIENTE, C.BAIRRO AS BAIRRO_CLIENTE  FROM TABELA_DE_VENDEDORES V
INNER JOIN TABELA_DE_CLIENTES C ON C.BAIRRO = V.BAIRRO;

SELECT V.NOME AS NOME_VENDEDOR, V.BAIRRO AS BAIRRO_VENDEDOR, C.NOME AS NOME_CLIENTE, C.BAIRRO AS BAIRRO_CLIENTE  FROM TABELA_DE_VENDEDORES V
LEFT JOIN TABELA_DE_CLIENTES C ON C.BAIRRO = V.BAIRRO;

SELECT V.NOME AS NOME_VENDEDOR, V.BAIRRO AS BAIRRO_VENDEDOR, C.NOME AS NOME_CLIENTE, C.BAIRRO AS BAIRRO_CLIENTE  FROM TABELA_DE_VENDEDORES V
RIGHT JOIN TABELA_DE_CLIENTES C ON C.BAIRRO = V.BAIRRO;

SELECT V.NOME AS NOME_VENDEDOR, V.BAIRRO AS BAIRRO_VENDEDOR, C.NOME AS NOME_CLIENTE, C.BAIRRO AS BAIRRO_CLIENTE  FROM TABELA_DE_VENDEDORES V
FULL JOIN TABELA_DE_CLIENTES C ON C.BAIRRO = V.BAIRRO;

SELECT V.NOME AS NOME_VENDEDOR, V.BAIRRO AS BAIRRO_VENDEDOR, C.NOME AS NOME_CLIENTE, C.BAIRRO AS BAIRRO_CLIENTE  
    FROM TABELA_DE_VENDEDORES V, TABELA_DE_CLIENTES C;
    

