CREATE DATABASE SPRINT8;
USE SPRINT8;
-- CRIAR TABELA
CREATE TABLE Filme (
idFilme INT PRIMARY KEY,
TITULO VARCHAR (50),
GENERO VARCHAR (40),
DIRETOR VARCHAR (40)
);
-- INSERIR DADOS NA TABELA
INSERT INTO Filme VALUES
(1,'Por Lugares Incríveis','romance','Brett Haley'),
(2,'Extraordinário','drama','Stephen Chbosky'),
(3,'After','romance','Castille Landon'),
(4,'Agente Oculto','ação','Joe Russo'),
(5,'The Princess', 'ação','Le-Van Kiet'),
(6,'Interestelar', 'ficção','Christopher Nolan'),
(7,'Encanto','musical','Byron Howard,'),
(8,'Lamb','terror','Valdimar Jóhannsson');
-- Exibir todos os dados da tabela.
SELECT* FROM Filme;
-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE Filme ADD column protagonista varchar(50);
-- Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE Filme SET protagonista = 'Theodore' WHERE idFilme = 1;
UPDATE Filme SET protagonista = 'August' WHERE idFilme = 2;
UPDATE Filme SET protagonista = 'Hardin' WHERE idFilme = 3;
UPDATE Filme SET protagonista = 'Court' WHERE idFilme = 4;
UPDATE Filme SET protagonista = 'Lavy' WHERE idFilme = 5;
UPDATE Filme SET protagonista = 'Cristian' WHERE idFilme = 6;
UPDATE Filme SET protagonista = 'MIrabel' WHERE idFilme = 7;
UPDATE Filme SET protagonista = 'Maria' WHERE idFilme = 8;
-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
ALTER TABLE Filme MODIFY diretor varchar(150);
-- Atualizar o diretor do filme com id=5;
UPDATE Filme SET diretor = 'Biazinha Cavalcanti' WHERE idFilme = 5;
-- Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE Filme SET diretor = ' Eryka' WHERE idFilme in (2,7);

-- Atualizar o título do filme com o id=6;
UPDATE filme SET titulo = 'Cinderela' WHERE idFilme =6;
-- Excluir o filme com o id=3;
DElETE FROM Filme where idFilme = 3;
-- Exibir os filmes em que o gênero é diferente de drama;
SELECT * FROM Filme Where genero <> 'drama';
-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM Filme WHERE genero = 'suspense';
-- Descrever os campos da tabela mostrando a atualização do campo protagonista e
-- diretor;
DESC Filme;
-- limpar os dados da tabela; 
truncate table Filme;

