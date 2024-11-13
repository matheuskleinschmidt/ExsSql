-- a) Excluindo todos os clientes que não compraram nada ainda;

DELETE FROM treinamento.dbo.CUSTOMER
WHERE CDCUSTOMER NOT IN (
    SELECT CDCUSTOMER
    FROM treinamento.dbo.REQUEST
);