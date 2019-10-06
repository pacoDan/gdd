select * from dbo.customer;
select* from dbo.manufact;
--listado de clientes y direcciones
select clientes_.lname cliente , clientes_.address1 direccion1 , clientes_.address2 direeccion2
from dbo.customer clientes_;
--iden para los que son de estado california
select clientes_.lname cliente , clientes_.address1 direccion1 , clientes_.address2 direeccion2
from dbo.customer clientes_ , dbo.state estado
where estado.code = clientes_.state and estado.sname='California' 
--select* from dbo.state;

--mostar cuidades de california desde la tabla CUSTOMERS, evitar repetir cuidades
select distinct clientes.city
from dbo.customer clientes
where clientes.state='CA';
--idem alfabeticamente A Z 
select distinct clientes.city
from dbo.customer clientes
where clientes.state='CA'
order by clientes.city;
--mostrar direccion de cliente 103
select distinct clientes.address1, clientes.address2
from dbo.customer clientes
where clientes.customer_num=103;
--


