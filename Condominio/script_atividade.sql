set schema 'condominio';

-- 1 - Liste o número de requisições de 
--serviços de cada prestador juntamente com o nome do prestador.

select distinct l05_prestador.prnome, count(*) 
from public.l05_prestador, public.l06_requisita
group by l05_prestador.prcpf, l06_requisita.rcpfprestador

--2 - Liste a quantidade total de 
--moradores do condomínio, contando com o morador e seus familiares.

select count(*) from public.l01_morador
    


