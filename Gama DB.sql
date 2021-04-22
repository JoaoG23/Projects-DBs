create database Gama_eletrica;

create table esto_pro(
id_pro int auto_increment not null,
nome_pro varchar(50) not null,
valor_uni decimal(8,2),
valor_total decimal(10,2),
peso decimal(8,3),
primary key(id_pro)
)default charset = utf8;


