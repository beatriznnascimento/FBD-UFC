set schema 'bilheteria'

create table genero_filme(
				id_genero serial primary key,
				nome_genero varchar(50)
);

create table filme_genero(
		id_filme integer,
		id_genero integer
);

alter table filme_genero
add constraint fk_id_filme
foreign key (id_filme) references filme(codigo)

alter table filme_genero
add constraint fk_id_genero
foreign key (id_genero) references genero_filme(id_genero)

select * from filme_genero
select * from genero_filme

insert into genero_filme(nome_genero)
values ('Ação e aventura.'), ('Drama.'), ('Romance'), ('Terror'), ('Ficção científica')

insert into filme_genero(id_filme, id_genero)
values (1, 3), (2, 2), (3, 2), (4, 3), (5, 2)