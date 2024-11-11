-- b. Faça os scripts para a criação das chaves primárias das tabelas criadas;

ALTER TABLE
    public.custumer
ADD
    COLUMN CDCUSTOMER SERIAL PRIMARY KEY;

ALTER TABLE
    public.request
ADD
    COLUMN CDREQUEST SERIAL PRIMARY KEY;

ALTER TABLE
    public.supplier
ADD
    COLUMN CDSUPPLIER SERIAL PRIMARY KEY;

ALTER TABLE
    public.product
ADD
    COLUMN CDPRODUCT SERIAL PRIMARY KEY;
