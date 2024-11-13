-- a) Excluindo todos os pedidos que forem menores que R$ 1.000,00, que não
-- possuam itens cadastrados e que sejam no mês de junho/2003;

DELETE FROM treinamento.dbo.REQUEST
WHERE VLTOTAL < 1000
    AND NOT EXISTS (
        SELECT 1 
        FROM treinamento.dbo.PRODUCTREQUEST PR 
        WHERE PR.CDREQUEST = REQUEST.CDREQUEST
    )
    AND MONTH(DTREQUEST) = 6
    AND YEAR(DTREQUEST) = 2003;
