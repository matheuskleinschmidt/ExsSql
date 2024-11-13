-- c) Atualizando o valor de venda pelo preço original do produto;

UPDATE treinamento.dbo.PRODUCTREQUEST
SET VLUNITARY = (
    SELECT VLPRICE
    FROM treinamento.dbo.PRODUCT
    WHERE PRODUCT.CDPRODUCT = PRODUCTREQUEST.CDPRODUCT
);