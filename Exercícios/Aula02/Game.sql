CREATE DATABASE db_game;

USE db_game;

CREATE TABLE tb_classes(
	Id BIGINT IDENTITY(1,1),
	NomeClasse VARCHAR(255) NOT NULL,
	Tipo VARCHAR(255) NOT NULL,	
	PRIMARY KEY(Id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (NomeClasse,Tipo)VALUES ('Atiradora','Misto'), ('Maga','Mágico'), ('Lutador','Não mágico'), ('Druida','Misto'), ('Feiticeira','Mágico'); 
CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Ataque INT,
	Nivel INT,
	Defesa INT,
	PRIMARY KEY (Id),
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)

);


SELECT * FROM tb_personagens;

INSERT INTO tb_personagens
(Nome, Ataque, Nivel, Defesa, classe_id)
VALUES
('Brhom',2700, 45,1600,1),
('Todor',1400, 22,1100,2),
('Brumhilda',4000, 47,2100,3),
('Eklisse',3800, 42,2200,4),
('Yeva',500, 1,400,5),
('Coralia',10000, 75,3500,5),
('Neterius',5250, 62,2800,3),
('Corvo',2650, 39,2100,4);

SELECT * FROM tb_personagens WHERE Ataque > 2000;

SELECT * FROM tb_personagens WHERE Defesa > 1000 AND Defesa <2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%c%';


SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.Id = tb_personagens.classe_id;

SELECT * FROM tb_classes INNER JOIN tb_personagens
ON tb_classes.Id = tb_personagens.classe_id WHERE NomeClasse = 'Druida';
