set schema 'playlist'

create table playlist(
					id_playlist serial primary key,
					nome varchar(200),
					descricao text,
					id_usuario integer
)

alter table playlist
add constraint fk_id_u
foreign key (id_usuario) references usuario(id_usuario)

insert into playlist(nome, descricao, id_usuario)
values ('Rock/MPB', 'Essa é a minha playlist pessoal com meus estilos favoritos! <3', 1),
		('Rock Nacional', 'Selecionei o melhor do rock nacional pra minha playlist.
		 Certamente está a minha cara! hehehe', 2)

select * from playlist

-- 7. Obtenha os dados das playlists da Ana.
select play.id_playlist, play.nome, play.descricao, play.id_usuario
from playlist as play, usuario as u
where u.id_usuario = play.id_usuario and u.nome like 'Ana'






