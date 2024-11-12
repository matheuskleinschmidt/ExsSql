-- f) O nome do produto, o preço e o preço total do estoque dos produtos com preço acima de 50 reais;

SELECT NMPRODUCT, VLPRICE, QTSTOCK, VLPRICE * QTSTOCK AS PRECOTOTAL 
FROM treinamento.dbo.PRODUCT
WHERE VLPRICE > 50;