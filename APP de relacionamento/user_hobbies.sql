set schema 'AppRel';

create table user_hobbies(id_u integer,
						id_h integer,
						primary key(id_u, id_h));
						  
-- alterando tabela user_hobbies
alter table user_hobbies
-- adicionando restricao com nome de user_fk
add constraint user_hobbies_user_fk -- significa que todos os valores da coluna 
--descrita correspondam a valores existentes na 
--coluna "id_u" da tabela usuario
-- chave estrangeira e sua referencia na tabela original
foreign key (id_u) references usuario(id_u);

alter table user_hobbies
-- significa que todos os valores da coluna 
--descrita correspondem a valores existentes na 
--coluna "id_hobbie" da tabela hobbies
-- chave estrangeira e sua referencia na tabela original
add constraint user_hobbies_hobs_fk
foreign key (id_h) references hobbies(id_hobbie);


insert into user_hobbies
values (9, 1), (9, 2), -- bia gosta de praia e de plantas
(10, 1), (10, 4), -- cristiano gosta de praia e futebol
(11, 1), -- samuel gosta de praia
(12, 1), (12, 3), -- guilhermina gosta de praia e jogos
(13, 3), (13, 4), -- marcus gosta de jogos e futebol
(14, 1), (14, 2), (14, 3); -- poliana gosta de praia, plantas e jogos

select * from user_hobbies -- lista os usuario e os hobbies

