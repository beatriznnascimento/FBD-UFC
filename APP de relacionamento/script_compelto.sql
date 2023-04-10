set schema 'apprel';
-- comandos DDL
-- drop table usuario;
create table usuario(id_u serial primary key, 
email varchar(50) unique not null, 
nome varchar(70) not null,
cidade varchar(30),
bio varchar(300), 
genero char(1) not null,
data_nasc date not null, 
idade integer check (idade >= 18) not null);

insert into usuario 
(email, nome, bio, genero, data_nasc, idade) 
values 
('joao92@gmail.com', 'João Pedro', 'Uma pessoa legal!',
'M', '1992-06-07', 30),
('amandaXX@hotmail.com', 'Amanda S.','Linda de viver.', 
 'F','2001-01-01',22);
 
create table hobbies(id_hobbie serial primary key,
					descricao varchar(30) unique);
insert into hobbies (descricao) values 
('praia'), ('plantas'), ('jogos'), ('futebol'), 
('cervejinha'), ('música');

create table user_hobbies(id_u integer,
						 id_h integer,
						 primary key(id_u,id_h));
--alter table user_hobbies drop constraint user_fk; 
alter table user_hobbies
add constraint user_hobbies_user_fk
foreign key (id_u) references usuario(id_u);

alter table user_hobbies
add constraint user_hobbies_hobbie_fk
foreign key (id_h) references hobbies(id_hobbie);


insert into hobbies (descricao) values 
('praia'), ('plantas'), ('jogos'), ('futebol'), 
('cervejinha'), ('música');

select * from hobbies;

insert into user_hobbies values (1,1), (1,2),(2,4);

select * from user_hobbies;