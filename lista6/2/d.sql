-- d) O nome do cliente, a data do pedido e o valor total, o cliente deve aparecer
-- mesmo que não tenha feito nenhum pedido.

SELECT 
    C.NMCUSTOMER AS NomeCliente,
    R.DTREQUEST AS DataPedido,
    R.VLTOTAL AS ValorTotal
FROM 
    treinamento.dbo.CUSTOMER C
LEFT JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
ORDER BY 
    C.NMCUSTOMER, R.DTREQUEST;