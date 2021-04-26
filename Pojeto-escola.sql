Create database escola;
create table alunos(
`matricula_alu` int not null auto_increment,
`nome_alu` varchar(80) not null,
`CPF_alu` char(11) not null,
`endereço` varchar(80) not null,
`pai_alu_nome`varchar(80),
`mae_alu_nome` varchar(80),
`turma_alu` int not null,
primary key(`matricula_alu`)
)
default charset = utf8;

create table professores(
`id_prof` int auto_increment not null,
`nome_prof` varchar(80) not null,
`CPF_prof` char(11) not null,
`turma_prof` int not null,
primary key(`id_prof`)
)
default charset =utf8;

desc professores;
desc alunos;

select * from alunos;
select * from professores;

insert into alunos values
(default,'Djavan','19219509123','Belo Horizonte ,Rua Ló borges Garcia n25','Carlos Linz','Mariana Ramos','1'),
(default,'Elis Regina','12219509126','Belo Horizonte ,Rua Betania Glou n15','Angelo Charlene','Sofiona Brangaça ','1'),
(default,'Ana Carolina','12119509104','Belo Horizonte ,Rua Bonjovi n35','Manibota sos','Sofiona Maria ','1'),
(default,'Tom jobim','12519509122','Rio de janeiro ,Rua Sonia Abraão n105','Onibus jobim','Catarina ','1'),
(default,'Seu Jorge','12519509124','Rio de Janeiro ,Rua Alberto Gular n20','Robson Faguntes','Cesariana Lordeneza ','1'),
(default,'Xulao Betão','12319509127','Rio de Janeiro ,Rua Cerca Balão n195','Bob Campos','Judite Marcia ','2'),
(default,'Urticária Nervosa','18219509129','Rio de Janeiro ,Rua Oliver Massa n 5','Limite Brother','Cana de açucar ','2'),
(default,'Michael Marrone Jackson','19219509123','São paulo ,Rua Hodilon Beres n207','Macaaso Lo Mendes ','Sara Dsanta ','2'),
(default,'Sara Jane','00219509122','Belo Horizonte ,Rua Betania Glou n15','Angelo Charlene','Sofiona Brangaça ','3'),
(default,'Caetano Veloso','30219509124','Belo Horizonte ,Rua Betania Glou n15','Angelo Charlene','Sofiona Brangaça ','3'),
(default,'Ivan Linz','12219589121','Belo Horizonte ,Rua Romaldo Barbosa n9','Lirio Borto','Caiala Brangaça ','3');

alter table alunos
add foreign key (turma_alu)
references professores(id_prof);

insert into professores values
('1','Jaspion','10108398024','Sala1'),
('2','Policial de Aço Jiban','11108398025','Sala2'),
('3','Jiraiya O Incrível Ninja ','18108398026','Sala4');

alter table professores
change turma_prof local_turma char(5);

select a.nome_alu,p.nome_prof,p.local_turma from
alunos as a join professores as p
on a.turma_alu = p.id_prof;

delete from alunos
where matricula_alu = '11'
limit 1;

select * from alunos;

insert into alunos values
(default,'Guilherme Arantes','10919589121','Belo Horizonte ,Rua Casia Ellem n1023','Sadam Rossen','Shitara Ramos','3');
select * from alunos;




