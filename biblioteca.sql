/*Criando e Usando o Banco de Dados*/
create database bibliotecaLivros ;
use bibliotecaLivros;

/*Criando a Tabela Livro*/
create table livro(
	codLivro int primary key auto_increment,
    nomeLivro varchar(50),
    nomeAutor varchar(50),
    editora varchar(30),
    anoLivro int(4),
    paginas int,
    preco float(10.2));

insert into livro (nomeLivro,nomeAutor,editora,anoLivro,paginas,preco)
 values 
('AUTOCAD 2014','ADRIANO DE OLIVEIRA','ERICA',2013,560,208.00),
('TERMODINAMICA APLICADA A METALURGIA','CESAR ALVES DA SILVA LEANDRO','ERICA',2013,320,119.50),
('INFORMATICA NA ESCOLA 1','SANMYA FEITOSA TAJRA','ERICA',2011,80,49.50),
('GESTAO EAD','ROBSON SANTOS DA SILVA','NOVATEC',2013,136,32.50),
('UML DE CONSULTA','DOUGLAS MARCOS DA SILVA','NOVATEC',2001,95,20.00),
('APRENDA A PROGRAMAR','CESAR BROD','NOVATEC',2013,288,53.00),
('EM BUSCA DO SENTIDO DA VIDA','AUGUSTO CURY','PLANETE DO BRASIL',2013,368,27.90),
('AS ÚLTIMAS QUATRO COISAS','PAUL HOFFMAN','SUMA DAS LETRAS',2004,304,32.90),
('CUSTOS','MOACYR DE LIMA E SILVA','ERICA',2010,240,97.00),
('VIDAS SECAS','GRACILIANO RAMOS','RECORD',2003,176,27.00);

/*Comando para visualização da tabela livro*/
select * from livro;

/*Modificando o campo editora da tabela Livro */
alter table livro modify editora varchar(60);

/*Colocando em ordem alfabética os nomes dos livros*/
select * from livro order by nomeLivro;

/*Colocando o campo nomeAutor da tabela livro em ordem decrescente */
select * from livro order by nomeAutor desc;