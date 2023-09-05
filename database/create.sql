-- Active: 1693354279782@@dpg-cjn0oufjbvhs7390l49g-a.oregon-postgres.render.com@5432@bd_curso_senac@public
CREATE TABLE cliente(
    id       SERIAL PRIMARY KEY,
    nome     VARCHAR(250)
);
CREATE TABLE cliente_pessoa_fisica(
    ID SERIAL PRIMARY KEY,
    CPF VARCHAR(11),
    ID_CLIENTE INT NOT NULL,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);
CREATE TABLE CLIENTE_PESSOA_JURIDICA(
    ID SERIAL PRIMARY KEY,
    CNPJ VARCHAR(18),
    ID_CLIENTE INT NOT NULL,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);
CREATE TABLE TAXI(
    PLACA VARCHAR(100) PRIMARY KEY,
    MARCA VARCHAR(100),
    MODELO VARCHAR(100),
    ANO VARCHAR(10)
);
CREATE TABLE CORRIDA(
    ID SERIAL PRIMARY KEY,
    DATA_CORRIDA date not null default CURRENT_DATE,
    ID_CLIENTE INT NOT NULL,
    PLACA VARCHAR(200) NOT NULL,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID),
    FOREIGN KEY(PLACA) REFERENCES TAXI(PLACA)
);
