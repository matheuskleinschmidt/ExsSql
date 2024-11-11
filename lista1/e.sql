-- e. Crie um índice para a chave estrangeira da tabela de pedidos;

CREATE INDEX idx_request_customer
ON request (cdcustomer);