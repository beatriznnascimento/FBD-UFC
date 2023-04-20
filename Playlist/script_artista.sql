set schema 'playlist'

create table artista(
			cod_autor serial primary key,
			nome varchar(200)
);
-- Insira cinco 
--novas músicas no banco de dados e seus respectivos artistas.
insert into artista(nome)
values ('Pitty'), ('Nando Reis'), ('Engenheiros do Hawaii'),
('Cazuza'), ('Legião Urbana');

select * from artista

-- 10. Obtenha os dados dos artistas com código entre 3 e 10. Use o operador Between.
-- como no meu dba so tem do 1 ao 5, utilizarei esses valores
select art.cod_autor, art.nome
from artista as art
where art.cod_autor between '1' and '4'