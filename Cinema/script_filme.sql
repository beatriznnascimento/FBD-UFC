set schema 'bilheteria';

create table filme(
			codigo serial primary key,
			titulo text not null,
			sinopse text,
			duracao_min integer not null,
			classificacao varchar (10)
);

insert into filme(titulo, sinopse, duracao_min, classificacao)
values ('Eduardo e Mônica',
'Em um dia atípico, uma série de coincidências levam Eduardo a conhecer
Mônica em uma festa. Uma curiosidade é despertada entre os dois e,
apesar de não serem parecidos, eles se apaixonam perdidamente. 
Em Brasília, na década de 1980,esse amor precisa amadurecer e
aprender a superar as diferenças.', 114, 14),
('Orgulho e Preconceito', 
'Elizabeth Bennet vive com sua mãe, pai e irmãs no campo, na Inglaterra. 
 Por ser uma das filhas mais velhas, ela enfrenta uma crescente pressão de seus pais para se casar. 
 Quando Elizabeth é apresentada ao belo e rico Darcy, faíscas voam. 
 Embora haja uma química óbvia entre os dois, a natureza excessivamente 
 reservada de Darcy ameaça a relação.', 127, 'L'),
 ('Crepúsculo',
 'A estudante Bella Swan conhece Edward Cullen, um belo mas misterioso adolescente. 
 Edward é um vampiro, cuja família não bebe sangue, e Bella, longe de ficar assustada, 
 se envolve em um romance perigoso com sua alma gêmea imortal.', 122, 12),
 ('Lua Nova',
 'Depois da partida de Edward, Jacob se transforma no melhor amigo de Bella.
 Mas o que ela não imagina é que Jacob também tem um segredo que mudará
 suas vidas repentinamente.', 130, 12),
 ('Eclipse',
 'O perigo novamente ronda Bella com uma série de crimes misteriosos aterrorizando
 Seattle e um vampiro malicioso em busca de vingança. Em meio ao tumulto, 
 Bella precisa escolher entre seu amor por Edward e sua amizade com Jacob, 
 sabendo que sua decisão pode desencadear uma batalha entre vampiro e lobisomem.',
 124, 14)

select * from filme

delete from filme
where codigo = 1 --ERROR:  update or delete on table "filme" 
				--violates foreign key constraint "sessao_filme_id_fkey" on table "sessao"