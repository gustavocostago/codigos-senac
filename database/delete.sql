drop table cliente;
delete from cliente where id = 1;
delete from cliente where nome = "Gustavo";
delete from taxi where placa = "TESTE";

TRUNCATE TABLE cliente CASCADE; 

DELETE FROM cliente CASCADE;