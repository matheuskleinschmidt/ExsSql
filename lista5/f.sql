-- f) O nome e o telefone dos fornecedores que fornecem o produto ‘leite em po”
-- ou o produto “agua mineral”;

SELECT 
    S.NMSUPPLIER AS Nome_Fornecedor,
    S.IDFONE AS Telefone
FROM 
    treinamento.dbo.SUPPLIER AS S
JOIN 
    treinamento.dbo.PRODUCT AS P ON S.CDSUPPLIER = P.CDSUPPLIER
WHERE 
    P.NMPRODUCT IN ('leite em po', 'agua mineral');