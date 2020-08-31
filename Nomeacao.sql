DECLARE
    V_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 2;
BEGIN
    FOR V_ID IN 1..6 LOOP
        ATUALIZAR_SEGMERCADO(P_ID => V_ID, P_SEGMERCADO_ID => V_SEGMERCADO_ID);
    END LOOP;
END;
/* Não precisa saber a ordem dos parametros passados na procedure*/

DECLARE
    V_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%TYPE := 2;
BEGIN
    FOR V_ID IN 1..6 LOOP
        ATUALIZAR_SEGMERCADO(P_SEGMERCADO_ID => V_SEGMERCADO_ID, P_ID => V_ID);
    END LOOP;
END;

SELECT
    *
FROM
    CLIENTE;