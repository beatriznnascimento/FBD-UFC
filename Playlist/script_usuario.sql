set schema 'playlist'

create table usuario(
				id_usuario serial primary key,
				nome varchar(200)
)

insert into usuario(nome)
values ('Ana'), ('Bruno')

select * from usuario