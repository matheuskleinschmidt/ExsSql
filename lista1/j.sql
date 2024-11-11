-- j. Apague as inserções feitas nos exercícios i e j;

DELETE FROM request
WHERE cdcustomer = (SELECT cdcustomer FROM public.custumer WHERE nmcustomer = 'Fabiano');

DELETE FROM public.custumer
WHERE nmcustomer = 'Fabiano';