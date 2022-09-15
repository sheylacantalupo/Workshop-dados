-- Atividade dia 03 Workshop Fábrica de Software
-- Dados SQL
-- Sheyla Cantalupo

create database empresa
default character set utf8
default collate utf8_general_ci;

use empresa;

create table salario(
cod int auto_increment,
descricao varchar(30),
valor decimal(7,2),
primary key(cod)
);

create table colaborador(
id int not null auto_increment,
cpf int,
nome varchar(10) not null,
nascimento date,
sexo char(1),
codigo_salario int,
primary key(id),
unique (cpf),
check (sexo in ('m', 'f')),
foreign key(codigo_salario) references salario(cod)
);

select * from salario;
select * from colaborador;

insert into salario values(1,'DBA', 6000.00);
insert into salario values(2,'Modelador', 5400.00);
insert into salario values(3,'Analista', 7400.00);
insert into salario values(4,'PO', 6800.00);

insert into colaborador (id, cpf, nome, nascimento, sexo, codigo_salario) 
values (1, 1234567, 'Fernando', '1995-09-11', 'm',1);
insert into colaborador (id, cpf, nome, nascimento, sexo, codigo_salario) 
values (2, 2581454, 'Maria', '1991-02-17', 'f',2);
insert into colaborador (id, cpf, nome, nascimento, sexo, codigo_salario) 
values (3, 2156325, 'Felipe', '1979-07-14', 'm',3), (4, 20123014, 'Marcela', '1992-04-01', 'f',4);











