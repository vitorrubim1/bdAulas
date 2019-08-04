/*Criando e usando o Banco de Dados*/
create Database formatarDatas;
use formatarDatas;

create table datas (
codNome int primary key auto_increment not null,
nome varchar(10),
sexo char(1),
dataNascimento date);

insert into datas (nome,sexo,dataNascimento)
values ("Maria","f", '1992-05-18'),
	   ("Artur", "m", '1998-06-19'),
       ("Miguel", "m", '2002-10-01');

/*para exibir a tabela*/
select*from datas;

/*Padrão americano eua*/
select nome, sexo, date_format(dataNascimento, '%d/%M/%Y') as data_nascimento from datas;

/*padrão br*/
select nome, sexo, date_format(dataNascimento, '%d/%m/%Y') as data_nascimento from datas;

select nome, sexo, date_format(dataNascimento, '%b/%d/%Y') as data_nascimento from datas;