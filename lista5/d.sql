-- d) O nome do cliente, o produto e o total que o cliente já gastou com esse
-- produto. Uma linha com o total por cliente e uma linha com o total geral;

SELECT 
    COALESCE(C.NMCUSTOMER, 'Total Geral') AS Nome_Cliente,
    COALESCE(P.NMPRODUCT, 'Total Cliente') AS Nome_Produto,
    SUM(COALESCE(PR.QTAMOUNT * PR.VLUNITARY, 0)) AS Total_Gasto
FROM 
    treinamento.dbo.CUSTOMER AS C
LEFT JOIN 
    treinamento.dbo.REQUEST AS R ON C.CDCUSTOMER = R.CDCUSTOMER
LEFT JOIN 
    treinamento.dbo.PRODUCTREQUEST AS PR ON R.CDREQUEST = PR.CDREQUEST
LEFT JOIN 
    treinamento.dbo.PRODUCT AS P ON PR.CDPRODUCT = P.CDPRODUCT
GROUP BY 
    ROLLUP(C.NMCUSTOMER, P.NMPRODUCT)
ORDER BY 
    C.NMCUSTOMER, P.NMPRODUCT;