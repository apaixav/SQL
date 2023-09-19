CREATE DATABASE db_commerce

USE db_commerce;

CREATE TABLE tb_mercadoria(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	Preco DECIMAL NOT NULL,
	AvaliacaoEstrela DECIMAL NOT NULL
);

SELECT * FROM tb_mercadoria;

ALTER TABLE tb_mercadoria ALTER COLUMN AvaliacaoEstrela DECIMAL (6,1);

INSERT INTO tb_mercadoria
(Nome, Quantidade,Preco,AvaliacaoEstrela)
VALUES
('Barbeador elétrico', 2, 150.00, 4.1),
('Perfume Barato', 1, 50.00, 2.1),
('Chaveiro', 3, 35.00, 3.9),
('Prendedor', 30, 15.00, 4.5),
('Umidificador', 1, 75.00, 4.4),
('Óculos de Sol', 2, 215.00, 3.7),
('Escova elétrica', 4, 120.00, 4.3),
('Relógio de pulso', 1, 400.00, 4.7)
;

SELECT * FROM tb_mercadoria WHERE Preco > 500  ;

SELECT * FROM tb_mercadoria WHERE Preco < 500  ;

UPDATE tb_mercadoria SET Preco = 620.00 WHERE Id = 9;