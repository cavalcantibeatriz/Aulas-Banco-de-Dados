create database sprintzinha2;
use sprintzinha2;

create table curso(
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3),
coordenador varchar(50)
);

insert into curso (nome,sigla,coordenador) values
('Administração','ADM','Erika'),
('Inglês','ING','Mieza'),
('Recursos Humanos','RH','Vando');

select*from curso;

create table salas(
idSala int primary key auto_increment,
nome char(2),
qtdAlunos int,
representante1 varchar(30),
representante2 varchar(30)
);

insert into salas (nome, qtdAlunos, representante1, representante2)values
('8a','40','Julia','Sandro'),
('9c','41','Lígia','Luise'),
('1d','32','Nicoly','Marcelo'),
('2a','20','Lucas','Eduarda'),
('5b','35','Leandro','Bruna'),
('6f','30','Vitor','Bianca');

select*from salas;

alter table salas add column fkCurso int;
alter table salas add constraint ctfkCurso foreign key (fkCurso) references
curso (idCurso);

update salas set fkCurso = 1 where idSala = 1;
update salas set fkCurso = 2 where idSala  in (2, 6);
update salas set fkCurso = 3 where idSala = 3;
update salas set fkCurso = 3 where idSala in (4, 5);

SELECT salas.nome as 'Nome da sala', curso.nome as 'Curso da sala' FROM salas JOIN curso ON idCurso = fkCurso WHERE representante1 = 'Vitor';

alter table salas add constraint ctCurso check (sala.nome in('1d', '9c'));


