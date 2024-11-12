-- g) O nome do cliente, o nome do produto o nome do fornecedor, a data do
-- pedido, a data de entrega e o preço, somente se o fornecedor for de São Paulo
-- (011) e o preço seja maior que 20 reais.

SELECT 
    C.NMCUSTOMER AS NomeCliente,
    P.NMPRODUCT AS NomeProduto,
    S.NMSUPPLIER AS NomeFornecedor,
    R.DTREQUEST AS DataPedido,
    R.DTDELIVER AS DataEntrega,
    P.VLPRICE AS PrecoProduto
FROM 
    treinamento.dbo.CUSTOMER C
JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON R.CDREQUEST = PR.CDREQUEST
JOIN 
    treinamento.dbo.PRODUCT P ON PR.CDPRODUCT = P.CDPRODUCT
JOIN 
    treinamento.dbo.SUPPLIER S ON P.CDSUPPLIER = S.CDSUPPLIER
WHERE 
    S.IDFONE LIKE '(011)%'
    AND P.VLPRICE > 20
ORDER BY 
    NomeCliente, NomeProduto;