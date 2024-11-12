-- e) O nome e o preço dos produtos com preço entre 10 e 20 reais;

SELECT  NMPRODUCT,  QTSTOCK, VLPRICE
FROM treinamento.dbo.PRODUCT
WHERE VLPRICE  BETWEEN 10 AND 20;