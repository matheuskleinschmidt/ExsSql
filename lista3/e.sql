-- e) O nome do fornecedor, o fone do fornecedor, o nome do produto, o preço e o
-- preço total do produto no estoque para produtos que comecem com a letra S,
-- tendo preço acima de 50, ordenado por fornecedor e preço;

SELECT 
    S.NMSUPPLIER AS NomeFornecedor,
    S.IDFONE AS FoneFornecedor,
    P.NMPRODUCT AS NomeProduto,
    P.VLPRICE AS PrecoProduto,
    (P.VLPRICE * P.QTSTOCK) AS PrecoTotalEstoque
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.SUPPLIER S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE 
    P.NMPRODUCT LIKE 'S%'
    AND P.VLPRICE > 50
ORDER BY 
    NomeFornecedor, PrecoProduto;