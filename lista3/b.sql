-- b) O nome do produto, o nome do fornecedor, o preço do produto, o preço total
-- do produto no estoque e o preço total para o dobro do estoque para produtos
-- com preço total acima de 12000, ordenados por fornecedor e produto;

SELECT 
    P.NMPRODUCT AS NomeProduto,
    S.NMSUPPLIER AS NomeFornecedor,
    P.VLPRICE AS PrecoProduto,
    (P.VLPRICE * P.QTSTOCK) AS PrecoTotalEstoque,
    (P.VLPRICE * P.QTSTOCK * 2) AS PrecoTotalDobroEstoque
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.SUPPLIER S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE 
    (P.VLPRICE * P.QTSTOCK) > 12000
ORDER BY 
    NomeFornecedor, NomeProduto;
