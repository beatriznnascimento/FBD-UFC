set schema 'playlist'

create table musica_artista(
					cod_musica integer,
					cod_artista integer,
					primary key (cod_musica,cod_artista)
)

alter table musica_artista
add constraint fk_codmusica
foreign key (cod_musica) references musica(cod_musica)

alter table musica_artista
add constraint fk_codartista
foreign key (cod_artista) references artista(cod_autor)

insert into musica_artista(cod_musica, cod_artista)
values (1,1), (2,2), (3,3), (4,4), (5,5)

select * from musica_artista
