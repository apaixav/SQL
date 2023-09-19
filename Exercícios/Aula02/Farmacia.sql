CREATE DATABASE db_farmacia;

USE db_farmacia;

CREATE TABLE tb_categoria(
	Id BIGINT IDENTITY(1,1),
	Tipo VARCHAR(255) NOT NULL,
	Tarja VARCHAR(255) NOT NULL,	
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (Tipo,Tarja)VALUES ('Isento de Prescrição','Sem tarja'), ('Sem Retenção de receita','Tarja Vermelha'), ('Retenção de receita','Tarja Vermelha'), ('Medicamento Genérico','Tarja Amarela'), ('Medicamento Controle Maior','Tarja Preta') ; CREATE TABLE tb_remedios(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Preco DECIMAL (6,2),
	Mg INT,
	Constancia VARCHAR(255) NOT NULL,
	PRIMARY KEY (Id),
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_categoria(Id)
);SELECT * FROM tb_remedios;INSERT INTO  tb_remedios
(Nome, Preco, Mg,Constancia, classe_id)
VALUES
('Lexotan',45.00, 30,'12 em 12',3),
('Rivotril',47.00, 50,'8 em 8',5),
('Alprazolam',130.11, 80,'24 em 24',5),
('Concerta',70.49, 50,'12 em 12',5),
('Dexilant',17.55, 20,'6 em 6',2),
('Pregabalina',46.00, 30,'8 em 8',3),
('Loratadina',15.33, 15,'24 em 24',1),
('Aturgyl',07.26, 50,'6 em 6',4);SELECT * FROM tb_remedios WHERE Preco > 45;

SELECT * FROM tb_remedios WHERE Preco < 40 AND Preco > 10;

SELECT * FROM tb_remedios WHERE Nome LIKE '%n%';

SELECT * FROM tb_remedios INNER JOIN tb_categoria
ON tb_categoria.Id = tb_remedios.classe_id;

SELECT * FROM tb_remedios INNER JOIN tb_categoria
ON tb_categoria.Id = tb_remedios.classe_id WHERE Tarja = 'Tarja Preta';