set schema 'AppRel'

-- criando a tabela de curtidas
create table curtidas(
id_curtido integer,
id_curtiu integer,
primary key (id_curtido, id_curtiu))

-- adicionando uma restricao
-- significa que id_curtido e id_curtiu é uma 
-- chave estrangeira que referencia id_u 
-- da tabela usuario
alter table curtidas
add constraint curtidas_curtidofk
foreign key (id_curtido) references usuario(id_u)

alter table curtidas 
add constraint curtida_curtiufk
foreign key (id_curtiu) references usuario(id_u)

insert into curtidas
values (9, 10), (12, 11), (14, 13); -- inserindo curtidas

select * from curtidas -- listando todas as curtidas

-- Obter o nome do usuário que foi curtido e quem curtiu
select 
-- seleciona as colunas que serão exibidas
-- apelido a coluna nome da tabela usuario de curtido e de curtiu de acordo com a condicao
	(select nome from usuario where id_u = ctd.id_curtido) as curtido, -- obtem o nome de usuario curtido
    (select nome from usuario where id_u = ctd.id_curtiu) as curtiu -- obtem o nome do usuario que curtiu
from
    curtidas as ctd; -- apelido curtida de ctd







