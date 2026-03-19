create table Jogadores (
   id_jogador int primary key,
   nome_usuario varchar(50)
   );
   
create table Jogos (
id_jogo int primary key,
titulo varchar(50),
preco decimal(10,2)
);

create table Compras (
id_compra int primary key,
id_jogador_fk int,
id_jogo_fk int
);

insert into Jogadores values (1, 'Matheuzinho Kawai'), (2, 'Carolinda'), (3, 'Rafael Barista');
insert into Jogos values (10, 'Overwatch', 150.00), (20, 'Life is Strange', 80.00), (30, 'Starbucks Simulator', 120.00);

insert into compras values (101, 1, 10), (102, 2, 20), (103, 2, 30);

-- primeiro inner join
      select Jogadores.nome_usuario, Jogos.titulo
      from Jogadores
      inner join Jogos on Jogadores.id_jogador = Jogos.id_jogo;
      
-- segundo é left join
      select Jogadores.nick_name, Skins.nome_skin
      from Jogadores
      left join Skins ON Jogadores.id_aluno = Skins.id_dono;

-- segundo é left join também


