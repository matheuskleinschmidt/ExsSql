-- a)O nome do produto, o nome do fornecedor, o preço do produto, o preço com
-- 10% de desconto, o preço com 20% de desconto e o preço com 30% de
-- desconto para produtos cujo valor com 10% de desconto ultrapasse os 15
-- reais, isso ordenado por preço e produto;

SELECT 
    P.NMPRODUCT AS NomeProduto,
    S.NMSUPPLIER AS NomeFornecedor,
    P.VLPRICE AS PrecoProduto,
    P.VLPRICE * 0.9 AS Preco10Desconto,
    P.VLPRICE * 0.8 AS Preco20Desconto,
    P.VLPRICE * 0.7 AS Preco30Desconto
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.SUPPLIER S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE 
    P.VLPRICE * 0.9 > 15
ORDER BY 
    PrecoProduto, NomeProduto;