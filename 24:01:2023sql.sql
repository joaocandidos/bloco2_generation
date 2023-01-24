-- criar banco de dados de uma farmacia
create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

-- criando tabela produtos
create table tb_categorias(
id bigint auto_increment ,
categoria varchar(50)not null,
primary key(id)
);
-- criando a tabela produtos
create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(4,2)not null,
marca varchar(25)not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id)references tb_categorias(id)

);

-- inserindo 5 registros na tabela categoria
insert into tb_categorias(categoria)value
('shampoo'),
('antigripais'),
('fraldas'),
('hidratantes'),
('vitaminas');

select * from tb_categorias;

-- inserindo 8 registros na tabela produtos
insert into tb_produtos(nome,preco,marca,categoria_id)value
('shampoo dove',18.51,'unilever',1),
('shampoo palmolive',9.05,'colgate',1),
('fralda geriatrica',68.00,'sca do brasil',3),
('fralda pampers',55.91,'protcter&gamble',3),
('polivit az',39.57,'naturalgreen',5),
('vitamina a',27.60,'naturalgreen',5),
('extrato de propoles',71.46,'vitalab',2),
('vick pyrena',2.99,'protcter&gamble',2) ;


-- selecionando os produtos com preco > que 50
select * from tb_produtos where preco > 50.00;


-- selecionando os produtos com preço entre 5 e 60
select * from tb_produtos where preco > 5.00 and preco < 60.0;

-- selecionando os nomes dos produtos que contem a letra "c" no nome
select * from tb_produtos where nome like '%c%';

-- unindo os dados das duas tabelas
select nome,preco,marca,categoria_id from tb_produtos
inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

-- selecionando so os produtos que tem a categoria (2) "antigripais"
select nome,preco,marca,categoria_id from tb_produtos
inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id where categoria_id = 2 ;


/*******************************************************************************************************/
-- criar banco de dados db_pizzaria_legal
create database db_pizzaria_legal;
use db_pizzaria_legal;
-- criando a tabela tb_categoria
create table tb_categoria(
id bigint auto_increment,
categoria varchar(30)not null,
primary key(id)
);
-- criando tb_pizzas
create table tb_pizzas(
id bigint auto_increment,
nome varchar(30) not null,
receio varchar(30)not null,
preco decimal(4,2)not null,
categoria_id bigint not null,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
); 

-- inserindo 5 registros na tb_categoria
insert into tb_categoria(categoria)value
("queijo"),
("calabreza"),
("legumes"),
("berinjela"),
("salame");

-- inserindo 8 registros na tb_pizzas
insert into tb_pizzas(nome,receio,preco,categoria_id)value
("muzarela","queijo",50.00,1),
("muzarela2","queijo",50.00,1),
("calabreza","calabreza",45.00,2),
("calabreza2","calabreza",45.00,2),
("abobrinha","abobrinha",32.00,3),
("pepino","pepino",38.00,3),
("salame","salame",80.00,5),
("salame2","salame",80.00,5);

-- selecinando todas as pizzas com valor maior que 45.00
select * from tb_pizzas where preco > 45.00;

-- selecione todas as pizzas com valor maior que 50.00 e menor igual a 100.00
select * from tb_pizzas where preco > 50.00 and preco <= 100.00;
-- selecione todas as pizzas que tem m no nome
select * from tb_pizzas where nome like "%m%";

 select * from tb_pizzas inner join tb_categoria
 on tb_categoria.id = tb_pizzas.categoria_id;
 
 select * from tb_pizzas inner join tb_categoria
 on tb_categoria.id = tb_pizzas.categoria_id where categoria_id = 1;














