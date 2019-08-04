/*Criando o banco e usando-o*/
create database professor;
use professor;

/*Criando a Tabela*/
create table cadastroProfessor (
	idProfessor int primary key auto_increment not null,
    nomeProfessor varchar(50),
    disciplina varchar(50),
    dia varchar(15),
    numeroAulas decimal(10,2));
    
/*Inserindo Informações na tabela */
insert into cadastroProfessor(nomeProfessor, disciplina, dia, numeroAulas)
	values
    ("Marco Sales", "Desenvolvimento de sistemas", "Segunda-feira", 5),
    ("Renata", "Inglês Técnico", "Terça-feira", 2.5),
    ("Antônio", "Internet e Protocolos", "Terça-feira", 2.5),
    ("Marco Sales", "Programação WEB II", "Quarta-feira", 5),
    ("Andrew Ribeiro", "Programação de Aplicativos Mobile", "Quinta-feira", 5),
    ("Carlos Carvalho", "Banco de Dados II", "Sexta-feira", 2.5),
    ("Thiago Melo", "Pré Trabalho de Conclusão de Curso", "Sexta-feira", 2.5);
    
/*Comando para visualização da tabela*/
select * from cadastroProfessor;

/*Descrição da tabela*/
desc cadastroProfessor;

/*Comando para alteração do número decimal*/
alter table cadastroProfessor modify numeroAulas decimal(10,1);

/*Comando para colocar em Ordem Alfabética */
select * from cadastroProfessor order by nomeProfessor;

/*Comando para Colocar em ordem Decrescente*/
select * from cadastroProfessor order by disciplina desc;

/*Comando para contar a quantidade de registros da tabela*/
select count(*) from cadastroProfessor;

/*Comando para somar a quantidade total de aulas*/
select sum(numeroAulas) from cadastroProfessor;

/*Comando para calcular a média total de aulas*/
select avg(numeroAulas) from cadastroProfessor;

/*Comando para saber qual é o maior*/
select max(numeroAulas) from cadastroProfessor;

/*Comando para saber qual é o menor*/
select min(numeroAulas) from cadastroProfessor;

/*Comando para trazer somente um campo da tabela*/
select distinct nomeProfessor from cadastroProfessor;

/*Comando para trazer mais de um campo da tabela*/
select nomeProfessor, disciplina from cadastroProfessor;