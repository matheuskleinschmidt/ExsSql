-- c) O nome do fornecedor, seu telefone, o nome do produto, seu preço e a
-- quantidade em estoque, o fornecedor deve aparecer mesmo que não tenha
-- nenhum produto;

SELECT 
    S.NMSUPPLIER AS NomeFornecedor,
    S.IDFONE AS TelefoneFornecedor,
    P.NMPRODUCT AS NomeProduto,
    P.VLPRICE AS PrecoProduto,
    P.QTSTOCK AS QuantidadeEmEstoque
FROM 
    treinamento.dbo.SUPPLIER S
LEFT JOIN 
    treinamento.dbo.PRODUCT P ON S.CDSUPPLIER = P.CDSUPPLIER
ORDER BY 
    S.NMSUPPLIER, P.NMPRODUCT;