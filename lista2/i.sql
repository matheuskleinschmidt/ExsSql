-- i)O nome do cliente, o nome do produto, a data do pedido, a quantidade pedida, o valor unitário de venda dos produtos 
-- e o valor total do produto pedido, cujas unidades pedidas por pedido seja maior que 500.

SELECT
    c.NMCUSTOMER AS [Nome do Cliente],
    p.NMPRODUCT AS [Nome do Produto],
    r.DTREQUEST AS [Data do Pedido],
    pr.QTAMOUNT AS [Quantidade Pedida],
    p.VLPRICE AS [Valor Unitário],
    (pr.QTAMOUNT * p.VLPRICE) AS [Valor Total do Produto]
FROM
    treinamento.dbo.CUSTOMER c
    INNER JOIN treinamento.dbo.REQUEST r ON c.CDCUSTOMER = r.CDCUSTOMER
    INNER JOIN treinamento.dbo.PRODUCTREQUEST pr ON r.CDREQUEST = pr.CDREQUEST
    INNER JOIN treinamento.dbo.PRODUCT p ON pr.CDPRODUCT = p.CDPRODUCT
WHERE
    pr.QTAMOUNT > 500;