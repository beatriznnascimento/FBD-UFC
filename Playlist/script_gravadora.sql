set schema 'playlist'

create table gravadora(
					id_gravadora serial primary key,
					nome varchar(200),
					endereco varchar (300)
);

insert into gravadora(nome, endereco)
values ('Deckdisc', 'Av. das Américas,
		500 - Barra da Tijuca, Rio de Janeiro - RJ'),
		('Warner Music Brasil', 'Rua Itapeva, 286, 
		 Bela Vista - Sala: 27 E 28; São Paulo/SP'),
		 ('Sony Music Entertainment', ' Rua Lauro Müller, 116, 
		  40º andar, Botafogo, Rio de Janeiro/RJ'),
		  ('Universal Music', 'Av. das Américas, 
		   3500 - Barra da Tijuca, Rio de Janeiro - RJ'),
		   ('EMI', 'Avenida Tamboré, no bairro Tamboré 
			em Barueri, SP.')
			
select * from gravadora
		  