-- d) Atualizando a data de entrega do pedido como sendo a data do pedido + 30
-- dias para pedidos em que a diferença entre essas duas datas seja menor que
-- 10 dias e o cliente tenha comprado menos que R$ 10.000,00.

UPDATE treinamento.dbo.REQUEST
SET DTDELIVER = DATEADD(DAY, 30, DTREQUEST)
WHERE DATEDIFF(DAY, DTREQUEST, DTDELIVER) < 10
    AND CDCUSTOMER IN (
        SELECT CDCUSTOMER
        FROM treinamento.dbo.REQUEST
        GROUP BY CDCUSTOMER
        HAVING SUM(VLTOTAL) < 10000
    );
