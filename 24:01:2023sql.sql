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