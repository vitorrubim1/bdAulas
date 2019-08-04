/*Criando o banco e usando-o*/
create database escola;
use escola;

/*criando a tabela*/
create table alunos (
codAluno int primary key auto_increment not null,
nome varchar (50),
sexo char (1),
dataNascimento date);

/*inserindo as informações*/
insert into alunos (nome, sexo, dataNascimento)
	values("Maria","F", '1992-12-25'),
		  ("José","M", '1991-12-25'),
          ("João","M", '1991-12-25'),
          ("Felipe","M", '1988-12-25'),
          ("Fabiana", "F", '1987-12-25');
          
/*exibir a tabela*/
select*from alunos;

/*Colocando mês-dia-ano*/          
select nome, sexo, date_format(dataNascimento, '%m-%D-%Y') as data_nascimento from alunos;
  
/*Colocando dia-mês-ano abreviado*/  
select nome, sexo, date_format(dataNascimento, '%d %b %y') as data_nascimento from alunos;

/*Colacando dia-mês-ano*/
select nome, sexo, date_format(dataNascimento, '%D-%m-%Y') as data_nascimento from alunos;