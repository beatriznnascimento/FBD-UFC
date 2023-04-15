set schema 'bilheteria';

create table bilhete(
			cod_sessao integer not null,
			id_poltrona integer,
			cod_bilhete serial not null,
			primary key (cod_sessao, id_poltrona, cod_bilhete)
);

alter table bilhete
add constraint fk_cs
foreign key (cod_sessao) references sessao(codigo_sessao)

alter table bilhete
add constraint fk_id_poltrona
foreign key (id_poltrona) references poltrona(idp)

insert into bilhete(cod_sessao, id_poltrona)
values (6, 10), (7, 15), (8, 20), (9, 25), (10, 30)

select * from bilhete