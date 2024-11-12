-- a)O nome de todos os itens que já foram pedidos (fazer uma versão com
-- DISTINCT e uma com GROUP BY);

SELECT DISTINCT 
    P.NMPRODUCT AS NomeProduto
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON P.CDPRODUCT = PR.CDPRODUCT;

SELECT 
    P.NMPRODUCT AS NomeProduto
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY 
    P.NMPRODUCT;
