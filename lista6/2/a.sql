-- a) Todos os produtos comprados por cliente (nome), com o número de vezes que
-- foi comprado, a quantidade total comprada e o valor total já pago por aquele
-- produto;

SELECT 
    C.NMCUSTOMER AS Cliente,
    P.NMPRODUCT AS Produto,
    COUNT(PR.CDREQUEST) AS NumeroDeCompras,
    SUM(PR.QTAMOUNT) AS QuantidadeTotalComprada,
    SUM(PR.QTAMOUNT * PR.VLUNITARY) AS ValorTotalPago
FROM 
    treinamento.dbo.CUSTOMER C
JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
JOIN 
    treinamento.dbo.PRODUCTREQUEST PR ON R.CDREQUEST = PR.CDREQUEST
JOIN 
    treinamento.dbo.PRODUCT P ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY 
    C.NMCUSTOMER, P.NMPRODUCT
ORDER BY 
    C.NMCUSTOMER, P.NMPRODUCT;