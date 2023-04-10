set schema 'AppRel'

-- criando a tabela de hobbies
create table hobbies(
id_hobbie serial primary key,
descricao varchar(30) unique not null
);

-- inserindo hobbies
insert into hobbies (descricao)
values
-- cada uma eh uma tupla diferente
('praia'), ('plantas'), ('jogos'), ('futebol'), ('cerveja'), ('musica');

select * from hobbies -- exibe os hobbies

-- exibe a descricao dos hobbies das pessoas nascidas entre 2000 a 2005
select h.descricao
from user_hobbies as uh, hobbies as h, usuario as u
where u.data_nasc between '2000-01-01' and '2005-12-31'
and u.id_u = uh.id_u and uh.id_h = h.id_hobbie

-- listando quem curte praia e jogos
select u.nome
from usuario as u
where u.id_u in 
(select uh1.id_u from user_hobbies as uh1, hobbies as h1
where uh1.id_h = h1.id_hobbie and h1.descricao = 'praia'
) 
and u.id_u in (
  select uh2.id_u
  from user_hobbies as uh2, hobbies as h2
  where uh2.id_h = h2.id_hobbie and h2.descricao = 'jogos'
);
