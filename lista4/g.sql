-- g) O nome do produto, o número de vezes que ele foi pedido e a quantidade total
-- pedida para produtos que foram pedidos menos que 2 vezes;

SELECT 
    P.NMPRODUCT AS NomeProduto,
    COUNT(PR.CDREQUEST) AS NumeroDePedidos,
    SUM(PR.QTAMOUNT) AS QuantidadeTotalPedida
FROM 
    treinamento.dbo.PRODUCT P
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY 
    P.NMPRODUCT
HAVING 
    COUNT(PR.CDREQUEST) < 2
ORDER BY 
    NumeroDePedidos, NomeProduto;