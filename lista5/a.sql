-- a) O nome de todos os produtos e quantas vezes ele foi vendido, mesmo que não
-- tenha sido vendido ainda;

SELECT 
    P.NMPRODUCT AS Nome_Produto,
    COALESCE(COUNT(PR.CDREQUEST), 0) AS Quantidade_Vendida
FROM 
    treinamento.dbo.PRODUCT AS P
LEFT JOIN 
    treinamento.dbo.PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY 
    P.NMPRODUCT
ORDER BY 
    Quantidade_Vendida DESC;
