-- b) O nome do produto, o número de vezes que ele foi pedido e a quantidade total
-- pedida;

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
ORDER BY 
    NumeroDePedidos DESC;
