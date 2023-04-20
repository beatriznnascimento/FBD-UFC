set schema 'playlist'

create table musica(
			cod_musica serial primary key,
			titulo varchar(200),
			id_gravadora integer
)

alter table musica
add constraint fk_musicagrav
foreign key (id_gravadora) references gravadora(id_gravadora)

-- 1. Insira cinco novas músicas no 
--banco de dados e seus respectivos artistas.

insert into musica(titulo, id_gravadora)
values ('Equalize', 1), ('All star', 2), ('Infinita Highway', 3),
('Codinome beija-flor', 4), ('Eduardo e Mônica', 5)

select * from musica

--3. Obtenha o título da música cujo código é X.
select mus.titulo
from musica as mus
where mus.cod_musica = 5;

-- 4. Obtenha os dados da música cujo título é ‘Infinita Highway’.
select mus.cod_musica, mus.id_gravadora
from musica as mus
where mus.titulo = 'Infinita Highway'

-- 5.Obtenha os títulos de todas as músicas.
select mus.titulo
from musica as mus

-- 6. Obtenha o título e nome da gravadora de todas as músicas.
select mus.titulo, grav.nome
from musica as mus, gravadora as grav
where mus.id_gravadora = grav.id_gravadora

-- 8. Obtenha as músicas que começam com a letra A.
select mus.titulo
from musica as mus
where mus.titulo like 'A%'

-- 9. Obtenha as músicas que terminam com a letra A e tem 5 ou mais letras no título
select mus.titulo
from musica as mus
where mus.titulo like '_____________%a'


-- 11. Obter, sem repetição, o título das músicas e a nome 
--da gravadora das músicas que estão em alguma playlist de Bruno
select mus.titulo, grav.nome
from musica as mus, playlist_musica as pm,
playlist as play, usuario as u, gravadora as grav
where mus.cod_musica = pm.cod_musica -- se cod musica forem iguais nas duas tabela/s
and pm.id_playlist = play.id_playlist -- se id playlist for igual nas 2 tabelas
and play.id_usuario = u.id_usuario -- se id usuaerio for igual
and mus.id_gravadora = grav.id_gravadora -- se id gravadora for igual
and u.nome like 'Bruno'; -- se o nome for bruno

--12. Obter, sem repetição, os artistas das
--músicas que estão em alguma playlist da Ana.
select distinct art.nome
from artista art, musica_artista ma, musica mus, playlist_musica pm, playlist play, usuario u
where art.cod_autor = ma.cod_artista
and ma.cod_musica = mus.cod_musica
and mus.cod_musica = pm.cod_musica
and pm.id_playlist = play.id_playlist
and play.id_usuario = u.id_usuario
and u.nome = 'Bruno';

--13. Obter o título das músicas que estão em
--alguma playlist da Ana e também do Bruno.
select distinct mus.titulo
from musica as mus, playlist_musica as pm, playlist as play
where pm.cod_musica = mus.cod_musica
and pm.id_playlist = play.id_playlist
and play.id_usuario = '1'
and mus.titulo in (
    select distinct mus.titulo
    from musica as mus, playlist_musica as pm, playlist as play
    where pm.cod_musica = mus.cod_musica
    and pm.id_playlist = play.id_playlist
    and play.id_usuario = '2'
);

--14. Obter todas as músicas que não estão em nenhuma playlist.
select * from musica
where cod_musica not in(
    select cod_musica
    from playlist_musica
); 
-- não aparece nada, pois todas as musicas estão em alguma playlist
-- do meu banco

-- 15. Obter o nome dos artistas 
--que estão na playlist 1 ou 2, mas não em ambas
select distinct art.nome
from artista art, musica_artista musart, playlist_musica pm
where art.cod_autor = musart.cod_artista
and musart.cod_musica = pm.cod_musica
and pm.id_playlist = 1
and art.cod_autor not in (
    select distinct art2.cod_autor
    from artista art2, musica_artista musart2, playlist_musica pm2
    where art2.cod_autor = musart2.cod_artista
    and musart2.cod_musica = pm2.cod_musica
    and pm2.id_playlist = 2
)
union
select distinct art.nome
from artista art, musica_artista musart, playlist_musica pm
where art.cod_autor = musart.cod_artista
and musart.cod_artista = pm.cod_musica
and pm.id_playlist = 2
and art.cod_autor not in (
    select distinct art2.cod_autor
    from artista art2, musica_artista musart2, playlist_musica pm2
    where art2.cod_autor = musart2.cod_artista
    and musart2.cod_artista = pm2.cod_musica
    and pm2.id_playlist = 1
);