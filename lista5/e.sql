-- e)  O nome e o telefone de todos os clientes que ainda não compraram produtos;

SELECT 
    C.NMCUSTOMER AS Nome_Cliente,
    C.IDFONE AS Telefone
FROM 
    treinamento.dbo.CUSTOMER AS C
LEFT JOIN 
    treinamento.dbo.REQUEST AS R ON C.CDCUSTOMER = R.CDCUSTOMER
WHERE 
    R.CDREQUEST IS NULL;
