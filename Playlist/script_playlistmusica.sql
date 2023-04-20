set schema 'playlist'

create table playlist_musica(
					id_playlist integer,
					cod_musica integer,
					primary key(id_playlist, cod_musica)
)

alter table playlist_musica
add constraint fk_idplay
foreign key (id_playlist) references playlist(id_playlist)

alter table playlist_musica
add constraint fk_codmusica
foreign key (cod_musica) references musica(cod_musica)

-- 2. Insira cada música da questão em uma das playlists já criadas.
insert into playlist_musica(id_playlist, cod_musica)
values (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
		(2, 1), (2, 3), (2, 5) 

select * from playlist_musica