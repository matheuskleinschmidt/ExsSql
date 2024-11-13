-- g) Faça o script que insira todos os produtos em todos os pedidos. Quantidade
-- 10 e preço original do produto.

INSERT INTO treinamento.dbo.PRODUCTREQUEST (CDREQUEST, CDPRODUCT, QTAMOUNT, VLUNITARY)
SELECT 
    R.CDREQUEST,
    P.CDPRODUCT,
    10 AS QTAMOUNT,
    P.VLPRICE AS VLUNITARY
FROM 
    treinamento.dbo.REQUEST R
CROSS JOIN 
    treinamento.dbo.PRODUCT P
WHERE 
    NOT EXISTS (
        SELECT 1 
        FROM treinamento.dbo.PRODUCTREQUEST PR
        WHERE PR.CDREQUEST = R.CDREQUEST
          AND PR.CDPRODUCT = P.CDPRODUCT
    );