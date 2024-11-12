-- c) O nome do fornecedor, o produto e qual o total de produtos dele já vendidos.
-- Uma linha do total por fornecedor e uma linha com o total geral;

SELECT 
    COALESCE(S.NMSUPPLIER, 'Total Geral') AS Nome_Fornecedor,
    COALESCE(P.NMPRODUCT, 'Total Fornecedor') AS Nome_Produto,
    SUM(COALESCE(PR.QTAMOUNT, 0)) AS Total_Quantidade_Vendida
FROM 
    treinamento.dbo.SUPPLIER AS S
LEFT JOIN 
    treinamento.dbo.PRODUCT AS P ON S.CDSUPPLIER = P.CDSUPPLIER
LEFT JOIN 
    treinamento.dbo.PRODUCTREQUEST AS PR ON P.CDPRODUCT = PR.CDPRODUCT
GROUP BY 
    ROLLUP(S.NMSUPPLIER, P.NMPRODUCT)
ORDER BY 
    S.NMSUPPLIER, P.NMPRODUCT;
