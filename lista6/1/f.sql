-- f) Faça o script que atualize o campo endereço do cliente para
-- ‘DESCONHECIDO’ onde o endereço for NULO.

UPDATE treinamento.dbo.CUSTOMER
SET NMADRESS = 'DESCONHECIDO'
WHERE NMADRESS IS NULL;