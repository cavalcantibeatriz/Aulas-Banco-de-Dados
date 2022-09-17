USE faculdade;
-- criar tabela
create table empresa(
id int primary key auto_increment,
nome varchar (45),
responsavel varchar (45),
dtInauguração datetime,
tipo varchar (20), constraint chkTipo check (tipo in ('Filial','Matriz')) 
-- onde pode ser filial ou matriz, nada fora isso, constraint são restrições. 
-- In significa que pode ser um ou outro, mas apenas oq esta dentro do parenteses
);

desc empresa;
 -- inserir dados na tabela empresa
 insert into empresa (nome, responsavel, dtInauguração, tipo)
 values ('SPTech', 'Petry', '2016-01-01', 'matriz');
 
 select*from empresa;
 -- inserir dados na tebela empresa ( comando a baixo dará ERRO)
  insert into empresa  values ('FloTech', 'Vivian', '2022-08-01 08:00:00', 'loja');
('xubiraldaldan', 'bia', '2020-07-03 09:30:30','virtual');
('lebilebis', 'bea', '2020-10-03 09:49:30','lublubis');
 select*from empresa;
 insert into empresa values
 (null,'safra', 'rafael', '2018-09-30', 'filial');
 -- exibir empresas penultima letra r
 select nome from empresa where nome like '%r_';
 -- exibir empresas onde a segunda empresa é 6
 select nome from empresa where nome like '_P%';

 -- mudar estrutura da tabela
 -- para alterar uma estrutura é necessario apagagar o constraint e refazer, alterar o comando no inicio não da certo
 -- pois a tabela ja esta criada
 alter table empresa drop constraint chkTipo;
 
 alter table empresa add constraint chkTipo;
 
 check (tipo in ('matriz','filial','loja'));
 
 insert into empresa  values (null,'FloTech', 'Vivian', '2022-08-01 08:00:00', 'loja');

select*from empresa;

insert into empresa values (null,'RafasPlace','rafael','2021-03-04 09:00:00', 'loja');
insert into empresa values (21,'Biazaza','janaina','2019-03-04 09:00:00', 'loja');
 
 -- excluir tabela empresa  
 drop table empresa;
 
 -- excluir registro
 delete from empresa where id = 21; -- ao excluir o proximo id vai ser 23, pq so apagou o dado
 
 
 
 -- para limpar a tabela
 truncate table empresa;
 insert into empresa values (null,'biazinha','beatrix','2022-08-04','filiar');
 
 select*from empresa;
 desc empresa;
 
 create table empresa(
id int primary key auto_increment,
nome varchar (45) not null,
responsavel varchar (45) default 'ALGUEM',
dtInauguração datetime default current_timestamp,
tipo varchar (20), constraint chkTipo check (tipo in ('Filial','Matriz')) 
)auto_increment = 200;

INSERT INTO empresa (nome, tipo)values
('SPTech','matriz');
select*from empresa;
INSERT INTO empresa (nome, tipo)values
('Safra', 'matriz'),
('C6Bank', 'matriz'),
('Accenture','matriz'),
('Deloitte', 'matriz');

truncate table empresa;
insert into empresa (nome,tipo) values
('Caixa', 'matriz');
select*from empresa;

select concat(nome, tipo) from empresa;
select concat(nome, ' ', tipo) as Xablau from empresa;

-- a empresa XPTO tem o responsavel XPTO e é do tipo XPTO
select concat('A empresa ', nome, ' tem o responsavel ', responsavel,' e é do tipo ',tipo)as Frase from empresa;

select concat(7*5, ' é igual a ' )as Contas from empresa;
-- select manipula dado



 