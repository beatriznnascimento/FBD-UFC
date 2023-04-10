set schema 'AppRel';

-- criando a tabela de matches
create table matches(
id_u1 integer,
id_u2 integer,
primary key (id_u1, id_u2),
data_hora timestamp not null);

-- alterando a tabela e adicionando restricoes
-- dizendo que id_u1 e id_u2 é uma chave estrangeira que referencia
-- id_u da tabela usuario
alter table matches
add constraint matches_fku1
foreign key (id_u1) references usuario(id_u);

alter table matches
add constraint matches_fku2
foreign key (id_u2) references usuario(id_u);

-- inserindo os matches 
insert into matches (id_u1, id_u2, data_hora)
values (9, 10, '2023-04-05 14:30:00'), (10, 9, '2023-04-05 14:33:00'), -- cristiano curtiu bia e vice-versa
(12, 11, '2023-04-05 19:30:00'), (11, 12, '2023-04-05 19:50:00'), -- samuel curtiu guilhermina e vice-versa
(14, 13, '2023-04-05 22:10:00'), (13, 14, '2023-04-05 22:20:00'); -- marcus curtiu poliana e vice-versa

select * from matches -- listando todos os matches

-- Obter o nome do usuario e seu match
select
-- seleciona as colunas que serão exibidas
-- apelido a coluna nome da tabela usuario de match1 e de match2 de acordo com a condicao e as exibe
	(select nome from usuario where id_u = mat.id_u1) as match1, 
	(select nome from usuario where id_u = mat.id_u2) as match2
from 
	matches as mat

-- exibe o id do match da Beatriz
select mat.id_u2
from usuario as u, matches as mat
where u.nome like 'Beatriz' and id_u = mat.id_u1 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
