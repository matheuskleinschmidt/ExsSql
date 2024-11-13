-- b) Excluindo todos os fornecedores que não forneceram nenhum produto;

DELETE FROM treinamento.dbo.SUPPLIER
WHERE CDSUPPLIER NOT IN (
    SELECT CDSUPPLIER
    FROM treinamento.dbo.PRODUCT
);