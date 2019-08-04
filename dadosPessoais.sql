/*Criando o Banco e usando-o*/
create database dadosPessoais;
use dadosPessoais;

/*Criando a Tabela*/
create table cliente(
	codCliente int primary key auto_increment,
    nome varchar(150),
    endereco varchar(60),
    numero int,
    bairro varchar(60),
    cidade varchar(50),
    estado varchar(25),
    sexo char(1),
    telefoneFixo char(12));
    
insert into cliente(nome, endereco, numero, bairro, cidade, estado, sexo, telefoneFixo)
	values
		("Elzo Souza Passos","Campannella", 80,"Itaquera","São Paulo","São Paulo","M","4676-3000"),
        ("Maria Da Consolação Maciel Rubim","Luiz Ayres", 162,"Artur Alvim","São Paulo","São Paulo","F","6539-7566"),
        ("Enzo Rubim Passos","Chamocos", 66,"Vila Carmosina","São Paulo","São Paulo","M","5673-8099"),
        ("Carlos Artur Vicente","Guaru", 10,"Brasilandia","Sãi Paulo","São Paulo","M","6527-0371"),
        ("Bianca Hilda Nascimento","Rosa Teixeira", 21,"Vila Santo Antonio","Ferraz de Vasconcelos","São Paulo","F","5638-0899"),
        ("Alex Braz Cantao","Campos Salles", 1902,"Vila Ana Mara","Poa","São Paulo","M","6589-1290"),
        ("Luana Guimaraes","Flor de Liz", 5678,"Rocha Mendes","Itaqua","São Paulo","M","4673-4521");

/*Comando para Visualização da Tabela*/
select * from cliente;

/*Comando para descrição da tabela*/
describe cliente;

/*Comando para Visualização de determinado campo que comece com determinada Letra*/
select * from cliente where endereco like 'F%'; 

/*Comando para Visualização de determinado campo que comece com determinada Letra*/
select * from cliente where bairro like 'A%';

/*Comando para colocar em ordem alfabética determinado campo*/
select * from cliente order by bairro;

/*Comando para Visualizar campo que esteja entre os número abaixo*/
select * from cliente where numero between 21 and 160;

/*Comando para Adicionar um campo na tabela*/
alter table cliente add telefoneCelular char(12) after sexo;

/*Inserindo informações na nova coluna da tabela*/
update cliente set telefoneCelular="96758-0001" where codCliente=1; 
update cliente set telefoneCelular="98743-0023" where codCliente=2;
update cliente set telefoneCelular="95678-2999" where codCliente=3;
update cliente set telefoneCelular="96734-3873" where codCliente=4;
update cliente set telefoneCelular="94675-8678" where codCliente=5;
update cliente set telefoneCelular="97463-3896" where codCliente=6;
update cliente set telefoneCelular="75643-8090" where codCliente=7;    

select * from cliente;

/*Excluindo um cliente com determinado ID*/
delete from cliente where codCliente=5;

/*Selecionando apenas nome e cidade da tabela*/
select nome, cidade from cliente;