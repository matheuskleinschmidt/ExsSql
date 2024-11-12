-- h) O nome do cliente, o produto, o valor gasto com o produto, quantas vezes ele
-- foi pedido pelo cliente e o nome do fornecedor. Somente para produtos em
-- que o cliente gastou mais de R$1.000,00, ordenado por cliente e produto.

SELECT 
    C.NMCUSTOMER AS NomeCliente,
    P.NMPRODUCT AS NomeProduto,
    SUM(PR.QTAMOUNT * PR.VLUNITARY) AS ValorGasto,
    COUNT(PR.CDREQUEST) AS NumeroDePedidos,
    S.NMSUPPLIER AS NomeFornecedor
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
GROUP BY 
    C.NMCUSTOMER, P.NMPRODUCT, S.NMSUPPLIER
HAVING 
    SUM(PR.QTAMOUNT * PR.VLUNITARY) > 1000
ORDER BY 
    NomeCliente, NomeProduto;