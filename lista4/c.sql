-- c) O nome do fornecedor, o total em estoque dos produtos fornecidos pelo
-- fornecedor, a média de preço dos produtos fornecidos e quantos produtos ele
-- fornece;

SELECT 
    S.NMSUPPLIER AS NomeFornecedor,
    SUM(P.QTSTOCK) AS TotalEmEstoque,
    AVG(P.VLPRICE) AS MediaPreco,
    COUNT(P.CDPRODUCT) AS QuantidadeProdutos
FROM 
    treinamento.dbo.SUPPLIER S
JOIN 
    treinamento.dbo.PRODUCT P ON S.CDSUPPLIER = P.CDSUPPLIER
GROUP BY 
    S.NMSUPPLIER
ORDER BY 
    NomeFornecedor;