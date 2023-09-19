CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Idade INT,
	Salario DECIMAL NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios
(Nome, Idade,Salario,Cargo)
VALUES
('Pedro', 22, 3500, 'Desenvolvedor Junior');

INSERT INTO tb_funcionarios
(Nome, Idade,Salario,Cargo)
VALUES
('Juliana', 38, 10000, 'Diretora'),
('Leonardo', 27, 6500, 'Desenvolvedor Pleno'),
('Paulo', 19, 1800, 'Estágiario'),
('Sabrina', 31, 8000, 'Desenvolvedora Senior')
;

SELECT * FROM tb_funcionarios WHERE Salario > 2000  ;

SELECT * FROM tb_funcionarios WHERE Salario < 2000  ;

UPDATE tb_funcionarios SET Salario = 10000 WHERE Id = 2;
