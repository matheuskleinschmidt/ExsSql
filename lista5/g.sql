-- g) O nome e o fornecedor do produto que já foi vendido mais que 3 vezes

SELECT 
    P.NMPRODUCT AS Nome_Produto,
    S.NMSUPPLIER AS Nome_Fornecedor
FROM 
    treinamento.dbo.PRODUCT AS P
JOIN 
    treinamento.dbo.SUPPLIER AS S ON P.CDSUPPLIER = S.CDSUPPLIER
JOIN 
    treinamento.dbo.PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY 
    P.NMPRODUCT, S.NMSUPPLIER
HAVING 
    COUNT(PR.CDREQUEST) > 3;