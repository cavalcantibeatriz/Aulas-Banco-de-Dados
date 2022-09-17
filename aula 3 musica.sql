create database Sprint6;
create table musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar (40),
genero varchar (40)
);
INSERT INTO musica VALUES
(1,'Contramão','Gustavo Mioto','sertanejo'),
(2,'Até que durou','Péricles','pagode'),
(3,'Scary Love', 'The Neighbourhood','pop'),
(4,'Pretty Boy','The Neighbourhood','pop'),
(5,'Get You','Daniel Caesar','pop'),
(6,'Japanese Denim','Daniel Caesar','pop'),
(7,'Magia 1','DJ Arana','funk'),
(8,'Já sei namorar','Tribalistas','MPB');

-- Exibir todos os dados da tabela.
select * from musica;
-- Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE musica ADD column curtidas int;
-- Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE musica SET curtidas = 10000000  WHERE idMusica = 1;
UPDATE musica SET curtidas = 20000000  WHERE idMusica = 2;
UPDATE musica SET curtidas = 30000000  WHERE idMusica = 3;
UPDATE musica SET curtidas = 40000000  WHERE idMusica = 4;
UPDATE musica SET curtidas = 50000000  WHERE idMusica = 5;
UPDATE musica SET curtidas = 60000000  WHERE idMusica = 6;
UPDATE musica SET curtidas = 70000000  WHERE idMusica = 7;
UPDATE musica SET curtidas = 80000000  WHERE idMusica = 8;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
ALTER TABLE musica MODIFY artista varchar (80);
desc musica;
select * from musica;
-- Atualizar a quantidade de curtidas da música com id=1;
UPDATE musica SET curtidas = 550000000 WHERE idMusica = 1;
-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE musica SET curtidas = 800000000 WHERE idMusica in (2,3);
-- Atualizar o nome da música com o id=5;
UPDATE musica SET titulo = 'Best Part' WHERE idMusica = 5;
-- Excluir a música com o id=4;
DELETE FROM musica WHERE idMusica = 4;
-- Exibir as músicas onde o gênero é diferente de funk;
SELECT * FROM musica WHERE genero <> 'funk';
-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM musica Where curtidas >= 20;
-- Descrever os campos da tabela mostrando a atualização do campo artista;
DESC musica;
-- Limpar os dados da tabela; 
truncate table musica;