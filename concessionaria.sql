/*Criando e usando o Banco*/
create database concessionaria;
use concessionaria;

create table cadastroCarros (

	idCarro int primary key auto_increment not null,
    modeloCarro varchar(30),
    marcaCarro varchar(20),
    anoCarro int,
    preco decimal(10,3));
    
insert into cadastroCarros(modeloCarro, marcaCarro, anoCarro, preco)
values
	("Gol","Wolksvagem", 2010, 15.000),
    ("Palio","Fiat", 2012, 16.500),
    ("Fiesta","Ford", 2000, 9.000),
    ("Meriva","Chevrolet", 2013, 22.000),
    ("Corsa","Chevrolet", 2013, 16.000);
    
/*Selecionando carro de determinado ano*/
select modeloCarro from cadastroCarros where anoCarro=2013;

/*Selecionando apenas dois campos da tabela */
select modeloCarro, marcaCarro from cadastroCarros;

/* */
select modeloCarro,(preco * 1.1)as preco from cadastroCarros;

/*Selecionando modelos de carros entre determinado valores */
select modeloCarro from cadastroCarros where preco between 9.000 and 16.000;

/*Carros que não estão entre determinados valores */
select modeloCarro from cadastroCarros where preco not between 9.000 and 16.000;

/*Selecionando Marca de Carros que comece com determinada letra */
select * from cadastroCarros where marcaCarro like 'F%';

/*Selecionando Marca de Carros que termine com determinada letra */
select * from cadastroCarros where marcaCarro like '%m';

/*Selecionando Marca de Carros que tenha letra R*/
select * from cadastroCarros where marcaCarro like '%r%';

/*Selecionando Marca de Carros que não tenha a letra E */
select * from cadastroCarros where marcaCarro not like '%e%';

