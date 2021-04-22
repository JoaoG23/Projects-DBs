create database Gama_eletrica;

create table esto_pro(
`id_pro` int auto_increment not null,
`nome_pro` varchar(50) not null,
`valor_uni` decimal(8,2) not null,
`valor_total` decimal(10,2),
`peso` decimal(8,3)not null,
primary key(id_pro)
)default charset = utf8;

create table cad_fun(
`id_fun` int auto_increment not null,
`cpf_fun` char(11) not null,
`nome_fun` varchar(50) not null,
`idad_fun` date not null,
`sexo_fun` enum('m','f') not null,
`civil_fun` enum('Casado','Solteiro','Divorciado','outros'),
`cep_fun` char(8)not null,
`tel_fun` char(12) not null,
`email_fun` varchar(40),
primary key(id_fun)

)default charset = utf8;



