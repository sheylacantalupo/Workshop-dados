-- Desafio Final Workshop Fábrica de Software
-- Dados SQL
-- Sheyla Cantalupo

create database armarinho
default character set utf8
default collate utf8_general_ci;

use armarinho;

create table cliente(
id int auto_increment,
name varchar(30) not null,
street varchar(40),
city varchar(15),
state char(2),
credit_limit decimal(10,2),
primary key(id)
);

insert into cliente values(1,'Pedro Augusto da Rocha','Rua Pedro Carlos Hoffman','Porto Alegre', 'RS', 700.00);
insert into cliente values(2,'Antonio Carlos Mamel','Av. Pinheiros','Belo Horizonte', 'MG', 3500.50);
insert into cliente values(3,'Luiza Augusta Mhor','Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
insert into cliente values(4,'Jane Ester','Av 7 de Setembro', 'Erechim', 'RS', 800.00);
insert into cliente values(5,'Marcos Antônio dos Santos','Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

select * from cliente;

insert into cliente values(6, 'Maria Eduarda','Rua Nathalia Nóbrega Seixas', 'João Pessoa', 'PB', 900.00);
insert into cliente values(7, 'Eduan Gabriel','Rua da Aurora', 'Joaquim Nabuco', 'PE', 1500.00);

select name, street, city, state from cliente where state in ('ES','SP', 'MG','RJ');