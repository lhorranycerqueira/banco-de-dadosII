create table Exercicio (
     id_livro INT PRIMARY KEY AUTO_INCREMENT,
     titulo VARCHAR(100) NOT NULL,
     autor VARCHAR(50) NOT NULL,
     ano_publicacao INT,
     quantidade_estoque INT
     );
     
     SELECT * FROM Exercicio;
     truncate table Exercicio;
     
INSERT INTO Exercicio (titulo, autor, ano_publicacao, quantidade_estoque) VALUES ('O Estrangeiro', 'Albert Camus', 1942, 2),
('As Dores do Mundo', 'Arthur Schopenhauer', 1850, 1),
('Relatos de um Gato Viajante', 'Hiro Arikawa', 2017, 5);
     
-- comando pra listar apenas o titulo e o autor do livros apos 2000 que nao funciona 

select autor, ano_publicacao from Exercicio where ano_publicacao >= 2000; -- por algum motivo, esse não vai kk --
select * from Exercicio where ano_publicacao >= 2000;

-- comando pra listar os livros por ordem alfabetica no titulo
select * from exercicio order by titulo asc;

-- dar update na quantidade do estoque (precisei pesquisar e mexer) -- ta tudo bem, pode pesquisar --
update Exercicio
set quantidade_estoque = 1
where id_livro = 1;

-- delete que nao ta deletando (agora deletou o problena era eu. O problema não está entre o pc e a cadeira, calma kkkk --
delete from Exercicio where id_livro = 3;