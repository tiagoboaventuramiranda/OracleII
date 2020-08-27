CREATE OR REPLACE PROCEDURE APP_INCLUIR_CLIENTE (
    P_ID                     IN   CLIENTE.ID%TYPE,
    P_RAZAO_SOCIAL           IN   CLIENTE.RAZAO_SOCIAL%TYPE,
    P_CNPJ                   IN   CLIENTE.CNPJ%TYPE,
    P_SEG_MERCADO_ID         IN   CLIENTE.SEGMERCADO_ID%TYPE,
    P_FATURAMENTO_PREVISTO   IN   CLIENTE.FATURAMENTO_PREVISTO%TYPE
) IS
BEGIN
    INCLUIR_CLIENTE(P_ID, P_RAZAO_SOCIAL,P_CNPJ, P_SEG_MERCADO_ID, P_FATURAMENTO_PREVISTO);
END;

EXECUTE APP_INCLUIR_CLIENTE(6, 'Segundo Cliente Incluido por user_app', '123456', 2, 100000);

SELECT * FROM CLIENTE;