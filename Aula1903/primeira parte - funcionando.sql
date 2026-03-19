create table Jogadores (
       id_aluno int primary key,
       nick_name varchar(50)
);

create table Skins (
      id_skin int primary key,
      nome_skin varchar(50),
      id_dono int
      );
	select * from Jogadores;
    
      insert into Jogadores Values (1, 'salamu alaykum'), (2, 'CutieKitty'), (3, 'Ivan Turgueniev');
      insert into Skins values (10, 'Ada Wong', 1), (11, 'Leon S. Kennedy', 2);
      
      select Jogadores.nick_name, Skins.nome_skin
      from Jogadores
      inner join Skins on Jogadores.id_aluno = Skins.id_dono;
      
      select Jogadores.nick_name, Skins.nome_skin
      from Jogadores
      left join Skins ON Jogadores.id_aluno = Skins.id_dono;
      
      
      