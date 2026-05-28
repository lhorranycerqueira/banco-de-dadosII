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
 
select aluno, idade from alunos order by idade desc limit 3; -- tava dando erro pq coloquei o rafael como lucas serio que lerdice
-- exercicio 3 - Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha


-- EXERCICIOS INTERMEDIARIOS

alter table alunos
    add column data_matricula  date,
    add column status_matricula text;


insert into alunos (aluno, curso, idade, nota, data_matricula, status_matricula) values
('Rafaela', null, null, null, null, 'trancado'),
('Bruno', null, null, null, null, 'ativo'),
('Carla', null, null, null, null, 'ativo'),
('Thiago', 'Desenvolvimento de Sistemas', null, null, null, 'ativo'),
('Camila', 'Design', null, null, null, null),
("D'Angelo", null, null, 8.5, null, null),
('Patrícia', 'Lógica de Programação', 2026 - 2008, null, null, null),
('Marcos', null, null, 5.0, null, 'trancado'),
('Sônia', null, null, null, '2024-02-15', null),
('Beto', null, null, (7.5 + 8.0)/2, null, null),
(upper('Letícia'), null, null, null, null, null);

insert ignore into alunos (id, aluno, curso, idade, nota, data_matricula, status_matricula) values
(1, 'Aluno Teste', null, null, null, null, null);
 -- Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha
 
 

select * from alunos where nota between 6.0 and 8.5;
select * from alunos where curso in ('Matemática', 'Física', 'Química');
select * from alunos where aluno like 'C%';
select * from alunos where aluno like '%Silva%';
select * from alunos where nota is null;
select count(*) as total_ativos from alunos where status_matricula = 'ativo';
select * from alunos order by curso asc, nota desc;
select * from alunos where curso != 'Artes';
select avg(nota) as media_geral from alunos;
select distinct curso from alunos;
-- Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha
 

update alunos set nota = nota * 1.1 where curso = 'Banco de Dados';
update alunos set status_matricula = 'trancado' where nota < 4.0 and idade > 18;
update alunos set curso = 'Desenvolvimento Web', nota = 9.0 where id = 12;
update alunos set idade = 20 where id in(2, 5, 7, 10);
update alunos set nota = null where status_matricula = 'trancado';
update alunos set aluno = lower(aluno) where curso = 'História';
update alunos set nota = nota - 0.5 where curso = 'Física' or curso = 'Química';
update alunos set status_matricula = 'concluido' where data_matricula < '2025-01-01';
update alunos set aluno = concat(aluno, '(Representante)') where id = 3;
update alunos set nota = 10.0 where nota > 10.0;
-- Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha
 
 
delete from alunos where aluno like '%Junior';
delete from alunos where id in (4, 8, 15);
delete from alunos where curso is null;
delete from alunos where idade between 30 and 40;
delete from alunos where curso = 'Geografia' and status_matricula = 'trancado';
delete from alunos order by nota asc limit 3;
delete from alunos where nota < 5 and curso != 'Desenvolvimento de Sistemas';
delete from alunos where aluno like '%Teste%';
delete from alunos where idade < 16 and year(data_matricula) = year(current_date);
delete from alunos where nota = 0.0 or status_matricula is null;
 
 
select curso, avg(nota) as media_notas from alunos group by curso
having avg(nota) > 7.0;

create table alunos_aprovados as select * from alunos where nota >= 6.0;
select * from alunos_aprovados;

update alunos 
set status_matricula = case
    when nota >= 6.0 then 'concluido'
    else 'Retido'
end;
 
delete from alunos
where nota is null
  and curso = (
      select curso from (
          select curso from alunos where aluno = 'João' limit 1
      ) as sub        
  );                  
 
-- Lhorrany Cerqueira - 21/05 - BD - Camargo Aranha















