-- CRIAR BANCO
CREATE DATABASE SPRINT2;
USE SPRINT2;
-- CRIAR TABELA
CREATE TABLE Atleta (
idAtleta INT PRIMARY KEY,
NOME VARCHAR (40),
MODALIDADE VARCHAR (40),
qtdMEDALHA INT
);
-- INSERIR DADOS NA TABELA
INSERT INTO Atleta VALUES
(1, 'Bruno', 'ciclismo', 30),
(2, 'Carlos', 'boxe', 50),
(3, 'Abner', 'judo', 10),
(4, 'Pedro', 'natacao', 5),
(5, 'Alesandro', 'volei', 21),
(6, 'Gabriel', 'natacao', 40),
(7, 'Junior', 'natacao', 3),
(8, 'Fernando', 'boxe', 5);

-- EXIBIR TODOS OS DADOS 
SELECT * FROM Atleta;
-- Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT NOME, qtdMEDALHA FROM Atleta;
-- Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM Atleta WHERE MODALIDADE = 'natacao';
-- Exibir os dados da tabela ordenados pela modalidade
SELECT * FROM Atleta ORDER BY MODALIDADE;
-- Exibir ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM Atleta ORDER BY qtdMEDALHA DESC;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM Atleta WHERE NOME LIKE '%S%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM Atleta WHERE NOME LIKE 'A%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM Atleta WHERE NOME LIKE '%o';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM Atleta WHERE NOME LIKE '%r_';
-- Eliminar a tabela.
DROP TABLE Atleta;