--h. Faça a inserção de um novo pedido com os seguintes dados: Data do Pedido = 31/01/2008, Cliente = Fabiano (exercício i), Data de Entrega = 05/02/2008 e Total = 54,00;

INSERT INTO public.request (dtrequest, dtdeliver, vltotal, cdcustomer)
VALUES ('2008-01-31', '2008-02-05', 54.00, (SELECT cdcustomer FROM custumer WHERE nmcustomer = 'Fabiano'));