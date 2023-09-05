update taxi set modelo = 'CORSA' , marca = 'chevrolet' where placa = 'BRASIL01';

alter Table cliente add data_de_hoje date not null default CURRENT_DATE;
alter Table cliente add data_com_tempo_time TIMESTAMP not null default current_timestamp;

alter table cliente drop column data_com_tempo_time;

alter TABLE cliente add sobrenome VARCHAR(200);
alter TABLE cliente add idade int check(idade>18);
alter table cliente add aniversario varchar(25);    
alter table cliente add dataDeNascimento varchar(25);