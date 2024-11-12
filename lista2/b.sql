-- b) Todas as colunas dos clientes que não possuem telefone cadastrado;

SELECT CDCUSTOMER, NMCUSTOMER, IDFONE, NMADRESS
FROM treinamento.dbo.CUSTOMER WHERE IDFONE IS NULL;