--create table table2(
--id int not null,
--nome varchar(30),
--cpf varchar(12) not null
--)


--insert into table2 values (45, 'maria clara soares','223245345')



--update table2 set nome='maria clara dadalto' where id=44



--select id, nome, cpf from table2 where id >= 0
create table temFaculdade(
	faculdade bit,
	pessoaId int
)

create table faculdade(
	pessoaId int not null,
	curso varchar(30),
	periodo int,
	nome varchar(30)
)

create table relacoes(
	id int,
	faculdadeid int,
	escolaid int,
	paisid int
)

create table unidade(
	unidade varchar(3)
)
insert unidade(unidade) values ('CWB')

select * from tableEx

drop table faculdade

insert into faculdade(pessoaId, nome)
select id, nome from tableEx

alter table faculdade
alter column curso varchar(30)


insert into tableEx(nome,sobrenome,cpf,estado,dataNasc,altura,peso) 
values ('cabecuda', 'Friedrich Dadalto Pastura', '171923051-03','RJ','11-10-2000', 1.61,45.1)
select * from tableEx where nome like 'J%'
select * from tableEx
delete tableEx where id=7



alter table tableEx
add id_unidade varchar(3)

create table table2(
	id int identity(1,1)primary key,
	nome varchar(30),
	id_unidade int,
	foreign key (id_unidade) references tableEx(id)
)


select * from unidade
insert table2 values('teste', 2)


-- -------------------------------------------------------


create table palestras (
	id int identity(1,1) primary key,
	nome varchar(30)
)

create table oficinas(
	id int identity(1,1) primary key,
	nome varchar(30)
)

create table forum(
	id int identity(1,1) primary key,
	nome varchar(30)
)

create table inscritos(
	id int identity(1,1) primary key,
	nome varchar(30),
	id_palestra int,
	id_oficinas int,
	id_forum int, 
	foreign key (id_palestra) references palestras(id),
	foreign key (id_oficinas) references oficinas(id),
	foreign key (id_forum) references forum(id)
)

create table inspetor(
	id int identity (1,1),
	id_palestra int
)

-- add chaves estrangeiras apos a criacao da tabela
alter table inspetor
	add constraint PK_inpsetor primary key(id) 

alter table inspetor
	add constraint FK_inspetor foreign key(id_palestra)
	references palestra(id)


insert forum values('como montar um som bolado')

select * from inscritos

insert inscritos values ('joaozinho',2,1,1)


CREATE DATABASE MERCADO

USE MERCADO

CREATE TABLE CLIENTE(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	CPF VARCHAR(12) NOT NULL,
	DATA_CAD DATE NOT NULL DEFAULT GETDATE()
)


CREATE TABLE PRODUTO(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	NOME VARCHAR(30) NOT NULL,
	PRECO MONEY
)

CREATE TABLE VENDA(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	ID_PROD INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	DATA_VENDA DATE NOT NULL DEFAULT GETDATE()
)


INSERT CLIENTE(NOME, CPF) VALUES ('Joao Pedro', '171924057-11')
