-- f) O nome do fornecedor e quantos produtos ele fornece, para todos os
-- fornecedores que fornecem mais que um produto;

SELECT 
    S.NMSUPPLIER AS NomeFornecedor,
    COUNT(P.CDPRODUCT) AS QuantidadeProdutos
FROM 
    treinamento.dbo.SUPPLIER S
JOIN 
    treinamento.dbo.PRODUCT P ON S.CDSUPPLIER = P.CDSUPPLIER
GROUP BY 
    S.NMSUPPLIER
HAVING 
    COUNT(P.CDPRODUCT) > 1
ORDER BY 
    QuantidadeProdutos DESC;
