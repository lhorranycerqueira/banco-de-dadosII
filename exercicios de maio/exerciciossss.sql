create table alunos (
     id INT AUTO_INCREMENT PRIMARY KEY,
     aluno VARCHAR(50) NOT NULL,
	 curso VARCHAR(50),
     idade INT,
     nota DECIMAL(10,8)
);

truncate table alunos;

insert into alunos (aluno, curso, idade, nota) values ('Lucas', 'Matemática', 20, 8.5),
('Mariana', 'História', null, 9.0),
('Ana', null, 19, null),
('Carlos', 'Física', null, null),
('Fernanda', null, 21, 10.0),
('Roberto', 'Geografia', 18, null),
('João', null, 25, null),
('Beatriz', 'Química', null, 7.5),
('Rafael', 'Artes', 30, 6.0);
update alunos
set id = 100
where aluno = 'João';
set sql_safe_updates = 0;

-- EXERCICIO 1 - Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha


select * from alunos;
select aluno from alunos;
select * from alunos where curso = 'Matemática';
select * from alunos where idade > 20;
select * from alunos where nota >= 7.0;
select * from alunos where id = 5;
select aluno, nota from alunos where curso = 'História';
select * from alunos where idade = 18;
select * from alunos where nota = 10.0;
select * from alunos where aluno = 'Ana';
-- exercicio 1 - Lhorrany Cerqueira- 21/05 - BD - Camargo Aranha

update alunos set nota = 9.5 where id = 1;
update alunos set curso = 'Geografia' where aluno = 'Mariana';
update alunos set idade = 21 where id = 3;
update alunos set nota = 8.0 where curso = 'Física';
update alunos set aluno = 'Ana Carolina' where id = 4;
update alunos set curso = 'Design' where curso = 'Artes';
update alunos set nota = 8.5 where aluno = 'Beatriz';
update alunos set nota = 9.0, idade = 21 where aluno = 'Lucas';
update alunos set nota = 5.0 where id = 10;
update alunos set curso = 'Ciência da Computação' where id = 2;
-- exercicio 2 - Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha

delete from alunos where id = 10; 
delete from alunos where aluno = 'Fernanda';
delete from alunos where nota < 5;
delete from alunos where curso = 'Química';
delete from alunos where id = 7;
delete from alunos where idade < 18; 
delete from alunos where aluno = 'Roberto';
delete from alunos where nota = 0;
delete from alunos where id = 15;
delete from alunos where curso = 'História' and nota = 6.0;
-- exercicio 3 - Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha


-- DESAFIOS auras

update alunos set nota = nota + 1.5 where curso = 'Física' and nota < 7.0;

delete from alunos where curso = 'Artes' or nota = 0.0;
 
select aluno, idade from alunos order by idade desc limit 3; // tava dando erro pq coloquei o rafael como lucas serio que lerdice




















