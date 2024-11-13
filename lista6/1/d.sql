-- d) Acrescentando a tabela do fornecedor o campo dsstatus (10);

ALTER TABLE treinamento.dbo.SUPPLIER
ADD DSSTATUS varchar(10) COLLATE Latin1_General_CI_AS NULL;