set schema 'AppRel';

-- criando uma tabela para usuário
create table usuario(
id_u serial primary key,
email varchar(50) unique not null,
nome varchar(70) not null,
cidade varchar(30),
bio varchar(300),
genero char(1) not null,
data_nasc date not null,
idade integer check (idade >= 18) not null);

--inserindo tuplas na tabela
insert into usuario(email, nome, genero, data_nasc, idade)
values ('bia@gmail.com', 'Beatriz', 'F', '2004-04-18', 18),
('cris@gmail.com', 'Cristiano', 'M', '2002-05-11', 20),
('samuel@gmail.com', 'Samuel', 'M', '2000-01-29', 23),
('guilhermina@gmail.com', 'Guilhermina', 'F', '2005-02-22', 18),
('marcus@gmail.com', 'Marcus Tulio', 'M', '2002-10-14', 20),
('polianasousa@gmail.com', 'Poliana S.', 'F', '2004-04-06', 19);

select * from usuario -- listando usuarios e informacoes

-- listando pessoas que nasceram nos anos de 2000 a 2005
select u.nome
from usuario as u
where data_nasc between '2000-01-01' and '2005-12-31'