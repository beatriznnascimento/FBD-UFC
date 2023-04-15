set schema 'bilheteria';

create table sala(
			numero serial primary key,
			qtd_poltronas integer not null
);

insert into sala(qtd_poltronas)
values(20),(20),(20),(20),(20);

select * from sala
