create database Gama_eletrica;
create table dados_funcionario(
estado_fun int not null auto_increment,
`nome_func` varchar(70) not null,
`profissao_func` enum('Vendador','Estoquista','Logista','Auxiliar Administrativo','Gestor','Gerente','Trasportador','Outros'),
`salario_func` decimal(10,2) not null,
`sexo_func` enum('M','F')not null,
`cpf_func` char(11) not null,
`idade_func` date,
`estado_func` enum('MG','RJ','SP') not null,
`cidade_func` varchar(40)  not null,
`rua_func` varchar(70) not null,
primary key(estado_fun)
) default charset = utf8;

use gama_eletrica;

create table if not exists `estoque_produto`(
`cod_prod` bigint not null auto_increment,
`nome_prod` varchar(70) not null,
`quantid_prod`int not null,
`valor.uni_prod` decimal(10,2) not null,
`peso`decimal(7,3),
`categoria` int not null,
primary key (`cod_prod`)
)default charset = utf8;

create table if not exists`categoria_prod`(
`id_cat` int not null auto_increment,
`nome_cat` varchar(50),
`local_cat`char(2),
primary key(`id_cat`)
)default charset =utf8;

desc categoria_prod;
insert into categoria_prod values
('1','Acabamento','A1'),
('2','Iluminação','A2'),
('3','Segurança','A3'),
('4','Cabos','B1'),
('5','Conduítes','B2'),
('6','Caixas e Quadros','C1'),
('7','Padrões e Outros','C2');

select * from categoria_prod;

alter table `estoque_produto`
add foreign key (`categoria`)
references `categoria_prod` (`id_cat`);

insert into estoque_produto values
(default,'6 Tomada 10A 4x4 C/Placa',1000,15.50,0.02,'1');

select * from estoque_produto as es join
categoria_prod as c
on c.id_cat = es.categoria;


