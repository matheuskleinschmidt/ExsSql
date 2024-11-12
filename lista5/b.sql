-- b)O nome do fornecedor, e o número de produtos que ele fornece, mesmo que
-- não tenha fornecido produto algum;

SELECT 
    S.NMSUPPLIER AS Nome_Fornecedor,
    COALESCE(COUNT(P.CDPRODUCT), 0) AS Numero_Produtos_Fornecidos
FROM 
    treinamento.dbo.SUPPLIER AS S
LEFT JOIN 
    treinamento.dbo.PRODUCT AS P ON S.CDSUPPLIER = P.CDSUPPLIER
GROUP BY 
    S.NMSUPPLIER
ORDER BY 
    Numero_Produtos_Fornecidos DESC;