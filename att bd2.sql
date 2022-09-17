create database Escola3;
use Escola3;
create table professor(
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40)
);

insert into professor (nome, sobrenome, especialidade1, especialidade2) values
('Julio','Silva','Pedagogia','Psiquiatria'),
('Junior','Pereira','Matematica','Desenho'),
('Eryka','Martins','Português','Geografia'),
('Giovana','Silva','Ciências','Geometria'),
('Sonia','Vargas','Filosofia','Sociologia');


select*from professor;

insert into professor (nome, sobrenome, especialidade1, especialidade2) values
('Cecília','','Maria','Pedagogia');

create table disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar(45));

insert into disciplina (nomeDisc) values
('Projeto Integrador1'),
('Socioemocional');

insert into disciplina (nomeDisc) values
('Projeto Integrador2'),
('TCC');

desc professor;

alter table disciplina add column fkProfessor int;
ALTER TABLE disciplina add constraint ctFkProfessor foreign key (fkProfessor)
	references professor(idProfessor);
    
select * from disciplina join professor;
select * from professor join disciplina;

update disciplina set fkProfessor = 2 where idDisc = 1;
update disciplina set fkProfessor = 1 where idDisc = 2;
update disciplina set fkProfessor = 3 where idDisc = 3;
update disciplina set fkProfessor = 3 where idDisc in (04, 05);

select professor.nome, disciplina.nomeDisc from disciplina join professor on idProfessor = fkProfessor;

SELECT disciplina.nomeDisc as 'Nome da disciplina' , professor.nome as 'Nome do professor' FROM professor JOIN disciplina ON idProfessor = fkProfessor;

SELECT disciplina.nomeDisc as 'Nome da disciplina', professor.nome as 'Nome do professor' FROM disciplina JOIN professor ON idProfessor = fkProfessor WHERE	sobrenome = 'Silva';

SELECT professor.nome, professor.sobrenome, professor.especialidade1, professor.especialidade2, disciplina.nomeDisc from disciplina join professor on idProfessor = fkProfessor WHERE	sobrenome = 'Silva'; 

SELECT professor.especialidade1, disciplina.nomeDisc from disciplina join professor on idProfessor = fkProfessor WHERE nome = 'Julio' order by especialidade1;

