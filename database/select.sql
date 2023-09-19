SELECT * FROM CLIENTE;
SELECT * FROM taxi;
SELECT * FROM corrida;
SELECT * FROM TAXI WHERE PLACA = 'BRASIL01'

INSERT INTO corrida(ID_CLIENTE,PLACA) VALUES(1,'BRASIL01')

SELECT * FROM corrida;
select * from cliente_pessoa_fisica;

SELECT * from cliente;


-- create view Corridas_Realizadas AS
select co.data_corrida, cl.nome as Cliente, tx.marca as Carro
  from corrida co
  inner join
  cliente cl
  on co.id_cliente = cl.id
  inner JOIN
  taxi tx
  on co.placa = tx.placa
  -- WHERE tx.marca = 'Honda'

