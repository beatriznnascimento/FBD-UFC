set schema 'bilheteria';
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

insert into sessao(data_hora, dim, linguagem, sala_num, filme_id)
values ('2023-04-14 15:00:00', '2d', 'Português', 1, 1),
('2023-04-15 18:00:00', '2d', 'Português', 2, 2),
('2023-04-15 20:00:00', '2d', 'Português', 3, 3),
('2023-04-16 18:00:00', '2d', 'Português', 4, 4),
('2023-04-16 20:30:00', '2d', 'Português', 5, 5);

select * from sessao