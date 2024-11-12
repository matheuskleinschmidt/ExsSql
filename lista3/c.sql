-- c) Todas as colunas dos clientes que possuem telefone cadastrado e começam
-- com a letra J, ordenado pelo nome do cliente;

SELECT 
    *
FROM 
    treinamento.dbo.CUSTOMER
WHERE 
    IDFONE IS NOT NULL
    AND NMCUSTOMER LIKE 'J%'
ORDER BY 
    NMCUSTOMER;