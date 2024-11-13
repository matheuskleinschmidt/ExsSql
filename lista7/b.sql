-- b) Atualizando o preço do produto como sendo a média dos valores unitários de
-- venda, somente para produtos que venderam menos que 800 unidades;

UPDATE treinamento.dbo.PRODUCT
SET VLPRICE = (
    SELECT AVG(PR.VLUNITARY)
    FROM treinamento.dbo.PRODUCTREQUEST PR
    WHERE PR.CDPRODUCT = PRODUCT.CDPRODUCT
)
WHERE CDPRODUCT IN (
    SELECT CDPRODUCT 
    FROM treinamento.dbo.PRODUCTREQUEST 
    GROUP BY CDPRODUCT 
    HAVING SUM(QTAMOUNT) < 800
);
