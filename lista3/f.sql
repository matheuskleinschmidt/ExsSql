-- f) O nome do cliente, o nome do produto, a data do pedido, a data de entrega, a
-- quantidade pedida, o valor unitário de venda dos produtos e o valor total do
-- produto pedido, cujas unidades pedidas por pedido sejam menor que 600 e a
-- data do pedido seja no mês de agosto de 2003 e o produto comece com a
-- letra M;

SELECT 
    C.NMCUSTOMER AS NomeCliente,
    P.NMPRODUCT AS NomeProduto,
    R.DTREQUEST AS DataPedido,
    R.DTDELIVER AS DataEntrega,
    PR.QTAMOUNT AS QuantidadePedida,
    PR.VLUNITARY AS ValorUnitarioVenda,
    (PR.QTAMOUNT * PR.VLUNITARY) AS ValorTotalProduto
FROM 
    treinamento.dbo.CUSTOMER C
JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON R.CDREQUEST = PR.CDREQUEST
JOIN 
    treinamento.dbo.PRODUCT P ON PR.CDPRODUCT = P.CDPRODUCT
WHERE 
    PR.QTAMOUNT < 600
    AND MONTH(R.DTREQUEST) = 8
    AND YEAR(R.DTREQUEST) = 2003
    AND P.NMPRODUCT LIKE 'M%'
ORDER BY 
    NomeCliente, NomeProduto;