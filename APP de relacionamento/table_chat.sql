set schema 'AppRel';

-- criando a tabela chat
create table chat(
id_emissor integer,
id_receptor integer,
primary key (id_emissor, id_receptor),
mensagem varchar(500),
data_hora timestamp not null);

-- criando uma restrição
alter table chat
add constraint chat_fk_emissor
foreign key (id_emissor) references usuario(id_u);

-- criando uma restrição
alter table chat
add constraint chat_fk_receptor
foreign key (id_receptor) references usuario(id_u);

-- chat entre cristiano e bia
insert into chat(id_emissor, id_receptor, mensagem, data_hora)
values (10, 9, 'Oi, tudo bem? Te achei linda! ', '2023-04-04 14:30:00'),
(9, 10, 'Oi, estou bem. Obrigada pelo elogio. Também te achei lindo!', '2023-04-04 15:00:00'),
(10, 9, 'HAHAH obrigado! Vi aqui que vc gosta de praia. 
Que tal sairmos amanhã pra ver o por do sol por lá? ', '2023-04-04 15:05:00'),
(9, 10, 'Adorei a ideia. Combinado! ', '2023-04-04 15:06:00'),
(10, 9, 'Mal posso esperar! Abraços. :) ', '2023-04-04 15:06:33');

insert into chat(id_emissor, id_receptor, mensagem, data_hora)
values (10, 9, 'E aí, preparada? Hoje, 17:00h a gente se encontra no calçadão! ', '2023-04-05 10:00:00'),
(9, 10, 'Oi! Preparada, sim. Vou estar de vestido florido', '2023-04-05 10:02:00'),
(10, 9, 'Estarei de blusa amarela. Te mando mensagem quando chegar lá.', '2023-04-05 10:02:50'),
(9, 10, 'Combinado! Até jajá. Beijo!', '2023-04-05 10:03:10'),
(10, 9, '<3', '2023-04-05 10:30:00');

insert into chat(id_emissor, id_receptor, mensagem, data_hora)
values (10, 9, 'Já tô aqui te esperando, perto de um vendedor de picolé', '2023-04-05 16:50:00'),
(9, 10, 'Chego em 5min, to no uber', '2023-04-05 16:52:10'),
(10, 9, 'Tá bom', '2023-04-05 16:55:50');

insert into chat(id_emissor, id_receptor, mensagem, data_hora)
values (9, 10, 'Adorei ontem. Sua companhia, por do sol, tudo...', '2023-04-06 08:55:50'),
(10, 9, 'Fico feliz que tenha gostado. Gostei muito também. Quero te ver mais vezes', '2023-04-06 09:15:00'),
(9, 10, 'Eu também quero. Melhor a gente se falar por wpp, né?', '2023-04-06 09:17:00'),
(10, 9, 'Tem razão. Me passa seu número', '2023-04-06 09:18:00'),
(9, 10, '85 982564700', '2023-04-06 09:18:55'),
(10, 9, 'Enviei mensagem :)', '2023-04-06 09:22:00');



-- chat entre samuel e guilhermina
insert into chat(id_emissor, id_receptor, mensagem, data_hora)
values (12, 11, 'Oi, tudo bem? Vi que você gosta de praia. Eu AMO! ', now()),
(11, 12, 'Oi, estou bem. Isso mesmo hahaha, moro pertinho, inclusive. Topa ir qualquer dia desses?', now()),
(12, 11, 'HAHAH claro! Só combinar.', now()),
(11, 12, 'Tá certo! Até logo! <3 ', now()),
(12, 11, 'Mal posso esperar! Abraços. :) ', now());

-- listando as mensagens, ids e data
select * from chat

-- listando ultimas mensagens de beatriz
select ch.mensagem
from chat as ch, usuario as u
where ch.id_emissor = u.id_u and ch.id_emissor = u.id_u
and u.nome like 'Beatriz' 
and ch.data_hora between '2023-04-04 14:30:00' and '2023-04-06 09:22:00';











