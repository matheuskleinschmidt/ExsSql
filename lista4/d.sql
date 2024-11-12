-- d) O nome do cliente, seu telefone, o valor da maior compra, o valor da menor
-- compra, o total comprado e a média de valor comprado, ordenado por maior
-- compra decrescente;

SELECT 
    C.NMCUSTOMER AS NomeCliente,
    C.IDFONE AS TelefoneCliente,
    MAX(R.VLTOTAL) AS MaiorCompra,
    MIN(R.VLTOTAL) AS MenorCompra,
    SUM(R.VLTOTAL) AS TotalComprado,
    AVG(R.VLTOTAL) AS MediaValorComprado
FROM 
    treinamento.dbo.CUSTOMER C
JOIN 
    treinamento.dbo.REQUEST R ON C.CDCUSTOMER = R.CDCUSTOMER
GROUP BY 
    C.NMCUSTOMER, C.IDFONE
ORDER BY 
    MaiorCompra DESC;
