-- b)  O número de pedidos e o total comprado por cliente (nome) no ano de 2003;

SELECT 
    C.NMCUSTOMER AS Cliente,
    COUNT(R.CDREQUEST) AS NumeroDePedidos,
    SUM(PR.QTAMOUNT * PR.VLUNITARY) AS ValorTotalComprado
FROM 
    treinamento.dbo.CUSTOMER C
JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON R.CDREQUEST = PR.CDREQUEST
WHERE 
    YEAR(R.DTREQUEST) = 2003
GROUP BY 
    C.NMCUSTOMER
ORDER BY 
    C.NMCUSTOMER;