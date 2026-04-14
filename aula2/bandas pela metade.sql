create table tb_bandas (
     id INT AUTO_INCREMENT PRIMARY KEY,
     nome_banda VARCHAR(50) NOT NULL,
     estilo VARCHAR(50),
     fas INT,
     cidade VARCHAR(50)
);
-- aparecer tudos e todos
select * from tb_bandas;

-- so nome da banda e os fas aura
select nome_banda, fas from tb_bandas;

-- mostrar so as bandas com mais de 1000 fas
select * from tb_bandas where fas > 1000;

-- consultar bandas que toquem na cidade de sheffield city centeeeer

select * from tb_bandas where cidade = sheffield;

-- consultar bandas que sejam kpop aura

select * from tb_bandas where estilo = K-Pop;

-- UPDATES que nao quer rodar

-- update fans de radioehead pra 2500
update tb_bandas set fas = 2500 where banda = Radiohead;
update tb_bandas set cidade = Marshall where banda = 'Arctic Monkeys';


insert into tb_bandas (nome_banda, estilo, fas, cidade) values ('Radiohead', 'Alt Rock', 1500, 'Abingdon'),
('Arctic Monkeys', 'Indie Rock', 3000, 'Sheffield'),
('The Last Shadow Puppets', 'Indie Rock', 500, 'Sheffield'),
('TWICE', 'K-Pop', 2000, 'Seul'),
('Mazzy Star', 'Alt Rock', 1000, 'Santa Monica');
