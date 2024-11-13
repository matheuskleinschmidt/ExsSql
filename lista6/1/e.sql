-- e) Atualizando o status do fornecedor para ‘INATIVO’ nos fornecedores que não
-- forneceram nenhum produto.

UPDATE treinamento.dbo.SUPPLIER
SET DSSTATUS = 'INATIVO'
WHERE CDSUPPLIER NOT IN (
    SELECT CDSUPPLIER
    FROM treinamento.dbo.PRODUCT
);