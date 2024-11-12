-- d) O nome do produto, o preço e o nome do fornecedor dos produtos que o
-- fornecedor tenha no nome os caracteres ‘ica’, ordenado por fornecedor e
-- preço;

SELECT 
    P.NMPRODUCT AS NomeProduto,
    P.VLPRICE AS PrecoProduto,
    S.NMSUPPLIER AS NomeFornecedor
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.SUPPLIER S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE 
    S.NMSUPPLIER LIKE '%ica%'
ORDER BY 
    NomeFornecedor, PrecoProduto;