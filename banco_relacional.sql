-- banco de dados
create database db_rh;
use db_rh;

-- criar tabela com 5 atributos
create table tb_colaboradores(
id bigint not null  auto_increment,
primeiroNome varchar(50) not null,
segundoNome varchar(50) not null,
cpf varchar(14) not null,
salario int not null,
primary key (id)
);

-- inserindo registros

insert into tb_colaboradores( primeiroNome,segundoNome,cpf,salario)
value
('joao','candido','321.639.078-05',3500.00),
('maria','helena','327.637.088-04',3800),
('leonardo','oliveira','127.699.088-05',1500.00),
('marcelo','caio','821.639.058-05',1800.00),
('jorge','francisco','421.638.078-05',8500.00);

-- selecionar todos
select * from tb_colaboradores;


-- selecionar os colaboradores salario maior 2000
select * from tb_colaboradores where salario > 2000.00;

-- selecionar todos os colaboradores salario menor 2000
select * from tb_colaboradores where salario < 2000.00;

-- atualizar registros
update tb_colaboradores set salario = 3000.00 where id = 4;



 