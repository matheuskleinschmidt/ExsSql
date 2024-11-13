-- c) Inserindo os fornecedores como clientes. Utilize como código o valor máximo
-- mais o código do fornecedor para gerar o código do novo cliente criado a partir
-- do fornecedor;

INSERT INTO treinamento.dbo.CUSTOMER (CDCUSTOMER, NMCUSTOMER, IDFONE, NMADRESS)
SELECT 
    (SELECT MAX(CDCUSTOMER) FROM treinamento.dbo.CUSTOMER) + CDSUPPLIER AS CDCUSTOMER,
    NMSUPPLIER AS NMCUSTOMER,
    IDFONE,
    NULL AS NMADRESS
FROM 
    treinamento.dbo.SUPPLIER
WHERE 
    CDSUPPLIER NOT IN (SELECT CDCUSTOMER FROM treinamento.dbo.CUSTOMER);