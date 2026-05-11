create table tb_bandas (
     id INT AUTO_INCREMENT PRIMARY KEY,
     nome_banda VARCHAR(50) NOT NULL,
     estilo VARCHAR(50),
     fas INT,
     cidade VARCHAR(50)
);

truncate table tb_bandas;

insert into tb_bandas (nome_banda, estilo, fas, cidade) values ('Radiohead', 'Alt Rock', 1500, 'Abingdon'),
('Arctic Monkeys', 'Indie Rock', 3000, 'Sheffield'),
('The Last Shadow Puppets', 'Indie Rock', 500, 'Sheffield'),
('TWICE', 'K-Pop', 2000, 'Seul'),
('Mazzy Star', 'Alt Rock', 1000, 'Santa Monica');

-- aparecer tudos e todos
select * from tb_bandas;

-- so nome da banda e os fas aura
select nome_banda, fas from tb_bandas;

-- mostrar so as bandas com mais de 1000 fas
select * from tb_bandas where fas > 1000;

-- consultar bandas que toquem na cidade de sheffield city centeeeer

select * from tb_bandas where cidade = 'Sheffield';

-- consultar bandas que sejam kpop aura
















 where estilo = 'K-Pop';

-- UPDATES que nao quer rodar (rodou

-- update fans de radioehead pra 2500
update tb_bandas set fas = 2500 where nome_banda = 'Radiohead';

-- update cidade do arctic pra marshall
update tb_bandas set cidade = 'Marshall' where nome_banda = 'Arctic Monkeys';
 
-- update estilo da banda red velvet pra pop rock e os fas pra 3500
update tb_bandas set fas = 3000, estilo = 'Pop Rock' where nome_banda = 'TWICE';

-- alterar a cidade de tlsp pra new york
update tb_bandas set cidade = 'Nova York' where nome_banda = 'The Last Shadow Puppets';

-- alterar o nome da banda de radiohead pra radio-cat

update tb_bandas set nome_banda = 'Radiocat' where nome_banda = 'Radiohead';

-- pra tirar a trava de segurança (pra rodar os update
set sql_safe_updates = 0;

-- pra voltar com ela ebar
set sql_safe_updates = 1;




