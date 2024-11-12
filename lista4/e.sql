-- e) A data do pedido, o nome do cliente, quantos produtos distintos ele pediu, o
-- valor total do pedido (baseado nos valores da tabela productrequest), a média
-- de valores do pedido (baseado nos valores da tabela productrequest)
-- ordenado pela quantidade de produtos distintos pedidos;

SELECT 
    R.DTREQUEST AS DataPedido,
    C.NMCUSTOMER AS NomeCliente,
    COUNT(DISTINCT PR.CDPRODUCT) AS QuantidadeProdutosDistintos,
    SUM(PR.QTAMOUNT * PR.VLUNITARY) AS ValorTotalPedido,
    AVG(PR.QTAMOUNT * PR.VLUNITARY) AS MediaValorPedido
FROM 
    treinamento.dbo.REQUEST R
JOIN 
    treinamento.dbo.CUSTOMER C ON R.CDCUSTOMER = C.CDCUSTOMER
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON R.CDREQUEST = PR.CDREQUEST
GROUP BY 
    R.DTREQUEST, C.NMCUSTOMER
ORDER BY 
    QuantidadeProdutosDistintos DESC;
