set schema 'bilheteria';

create table poltrona(
			numero_sala integer,
			cod_poltrona varchar (3),
			primary key (numero_sala, cod_poltrona)
);

alter table poltrona
add constraint poltrona_sala_fk
foreign key (numero_sala) 
references sala(numero);

-- 1 - Execute o comando para alterar a tabela Poltrona
--inserindo uma coluna extra e uma chave única.
alter table poltrona
add column idp integer;

alter table poltrona 
add constraint unk_idp
unique(idp)

select * from poltrona

-- inserindo tuplas na tabela e populando
insert into poltrona 
values (1,'A1', 10), (2,'A2', 15), (3,'A3', 20), (4,'A4', 25), (5,'A5', 30);

update poltrona
set idp = 35
where idp = 30
-- ERROR:  update or delete on table "poltrona" 
--violates foreign key constraint "fk_id_poltrona" on table "bilhete"