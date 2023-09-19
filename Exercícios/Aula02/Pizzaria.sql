CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categoria(
	Id BIGINT IDENTITY(1,1),
	BordaRecheio VARCHAR(255) NOT NULL,
	Tamanho VARCHAR(255) NOT NULL,	
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (BordaRecheio,Tamanho)VALUES ('Não é recheada','Broto'), ('Não é recheada','Pequena'), ('Não é recheada','Média'), ('Recheada','Grande'), ('Recheada','Mega');CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Preco DECIMAL (6,2),
	Pedacos INT,
	Tempo VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id),
	Tipo_id BIGINT,
	FOREIGN KEY (tipo_id) REFERENCES tb_categoria(Id)
);SELECT * FROM tb_pizzas;INSERT INTO  tb_pizzas
(Nome, Preco, Pedacos, Tempo, Tipo_id)
VALUES
('Calabresa',45.00, 8,'01:15:05',3),
('Quatro-Queijos',47.00, 12,'01:25:20',4),
('Feijoada',41.00, 8,'01:02:45',3),
('Bacon',50.00, 12,'01:30:18',4),
('Coxinha',56.00, 16,'01:30:27',5),
('Strogonoff',46.00, 16,'01:45:02',5),
('Chocolate',32.00, 4,'00:47:55',1),
('Miojo',39.00, 6,'01:15:05',2);

SELECT * FROM tb_pizzas WHERE Preco > 45;

SELECT * FROM tb_pizzas WHERE Preco < 50 AND Preco > 40;

SELECT * FROM tb_pizzas WHERE Nome LIKE '%c%';

SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_categoria.Id = tb_pizzas.Tipo_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria
ON tb_categoria.Id = tb_pizzas.Tipo_id WHERE BordaRecheio = 'Recheada';