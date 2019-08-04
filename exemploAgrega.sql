/*Criando o Banco e usando-o*/
create database exemploAgrega;
use exemploAgrega;

create table vendas (
	codVenda int primary key auto_increment not null,
    valor decimal (10,3),
    codVendedor int);
    
insert into vendas(valor,codVendedor)
	values
		(2.000,1),
        (3.000,2),
        (7.000,1),
        (6.000,3),
        (2.000,5),
        (1.000,5);
        
/*Comando para exibição da tabela vendas*/
select * from vendas;

/*Exibe a soma dos valores da tabela vendas */    
select sum(valor) from vendas;

/*Exibe a soma dos valores do vendedor com codigo 1 da tabela vendas */    
select sum(valor) from vendas where codVendedor=1;

/*Conta os registros da tabela vendas */
select count(*) from vendas;

/*Conta os registros do vendedor com codigo 1 da tabela vendas */    
select count(*) from vendas where codVendedor=1;

/*Exibe o menor valor da tabela vendas */
select min(valor) from vendas;

/*Exibe o maior valor da tabela vendas */
select max(valor) from vendas;

/*Exibe a média dos valores da tabela vendas */    
select avg(valor) from vendas;

/*Exibe os valores distintos da tabela vendas */
select distinct codVendedor from vendas;