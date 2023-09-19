CREATE DATABASE db_escola

USE db_escola;

CREATE TABLE tb_estudantes(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Idade INT,
	Nota DECIMAL NOT NULL,
	MateriaFav VARCHAR(255) NOT NULL,
);

SELECT * FROM tb_estudantes;

ALTER TABLE tb_estudantes ALTER COLUMN Nota DECIMAL (6,1);

INSERT INTO tb_estudantes
(Nome, Idade,Nota,MateriaFav)
VALUES
('Karina', 16, 8.0, 'Português'),
('Lucas', 17, 7.0, 'História'),
('Shomara', 14, 9.5, 'Matemática'),
('João', 15, 8.2, 'História'),
('Pedro', 17, 6.3, 'Física'),
('Karen', 18, 5.9, 'Química'),
('Paula', 13, 4.8, 'Biologia'),
('Renato', 15, 4.4, 'Literatura')
;

SELECT * FROM tb_estudantes WHERE Nota > 7.0  ;

SELECT * FROM tb_estudantes WHERE Nota < 7.0  ;

UPDATE tb_estudantes SET Nota = 7.5 WHERE Id = 2;
