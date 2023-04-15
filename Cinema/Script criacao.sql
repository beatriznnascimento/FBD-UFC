set schema 'bilheteria';

create table filme(
			codigo serial primary key,
			titulo integer not null,
			sinopse text,
			duracao_min integer not null,
			classificacao varchar (10)
);

create table sala(
			numero serial primary key,
			qtd_poltronas integer not null
);

create table poltrona(
			numero_sala integer,
			cod_poltrona varchar (3),
			primary key (numero_sala, cod_poltrona)
);

create table sessao(
			codigo_sessao serial primary key,
			data_hora timestamp not null,
			dim varchar (2),
			linguagem varchar (20),
			sala_num integer,
			filme_id integer,
			foreign key (sala_num) references sala(numero),
			foreign key (filme_id) references filme(codigo),
			unique (data_hora, sala_num)
);

alter table poltrona
add constraint poltrona_sala_fk
foreign key (numero_sala) 
references sala(numero);

insert into sala(qtd_poltronas)
values(20);

insert into poltrona values
(1,'A1'), (2,'A2');

select * from poltrona

drop table filme cascade
drop table sala cascade
drop table sessao cascade
drop table poltrona
drop table bilhete

select * from sala