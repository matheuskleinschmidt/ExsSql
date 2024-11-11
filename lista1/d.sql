-- d. Crie um índice para a chave estrangeira da tabela de produtos;

CREATE INDEX idx_product_supplier
ON product (cdsupplier);