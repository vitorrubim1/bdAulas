/*Criando e usando o banco de dados*/
create database cacauShow;
use cacauShow;

create table produtos(
	idProduto int auto_increment primary key,
    nomeProduto varchar(100),
    descricaoProduto varchar(255),
    preco decimal(10,2));
    

insert into produtos(nomeProduto, descricaoProduto, preco)
	values
		("Caixa Delícias do Coração", "Esse primeiro produto é uma caixinha com saboroso tablete que possuem a mensagem “Eu te Amo” e bombons artesanais da Cacau show Chocolates nos sabores: merengue de morango e trufa meio amarga", 35.90),
		("Caixa Brilho no Olhar", "A caixa Brilho no Olhar da Cacau Show Chocolates vem com bombons de coração de chocolate branco com recheio de trufa meio amarga e corações de chocolate ao leite com recheio de creme de cereja além de um anel regulável.", 39.90),
		("Trufas", "As trufas da Cacau Show são vendidas em diversos sabores", 1.50),
        ("Kit Capricho", "Caixa com 16 trufinhas de sabores morango e chocolate sendo 8 de cada. Ótima opção para presentear meninas! A caixa vem com grafismos da marca, e pode ser usada posteriormente como porta joias ou porta treco.", 29.90),
		("Bombom Romeu e Julieta", "Caixa contendo 9 bombons da Cacau Show Chocolates recheados de geleia de goiaba e cheesecake.", 14.90),
		("Cartão Corações", "Cartão acompanhado de bombons ao leite e brando em formato de coração. Ideal para presentear quem se ama.", 6.50),
        ("Preciosidades", "Caixa recheada com bombons de chocolate ao leite com opções de recheio de licor de cereja e pedaço de cereja e tradicional.", 39.90);

select * from produtos;

/*Alterando o campo da tabela*/
alter table produtos modify nomeProduto varchar(90);

/*Atualizando o preço do produto com Determinado ID */
update produtos set preco=7.50 where idProduto=6; 

/*Mostrando produto que comece com determinada letra*/
select * from produtos where nomeProduto like 'C%';

/*Mostrando produtos que tenha preço entre os valores determinados */
select * from produtos where preco between 24 and 40;

/*Mostrando produto que tenha Determinad nome */
select * from produtos where nomeProduto="Preciosidades";

/*Média dos valores */
select avg(preco) from produtos;

/*Preço do menor produto */
select min(preco) from produtos;

/*Preço do maior produto */
select max(preco) from produtos;

/*Soma de valor de todos os produtos*/
select sum(preco) from produtos;

/*Quantidade de produtos */
select count(*) from produtos;

/*Comando para visualização de quantas letras tem determinada palavra */
select length("Trufas");

/*Colocando a Determinada palavra em CaixaBaixa/Minúsculo */
select lower(" Kit Capricho");

/*Colocando a Determinada palavra em CaixaAlta/Maiscúlo */
select upper(" Kit Capricho");

/*Colocando o nome dos produtos em Ordem Decrescente */
select * from produtos order by nomeProduto desc;

/*Mostrando somente 4 Letras da segunda palavra  */
select substring("Kit Capricho", 4, 6);

/*Mostrando 4 Caracters da esquerda pra direita */
select left("Kit Capricho", 4);

/*Mostrando 8 Caracters da Direita pra esquerda */
select right("Kit Capricho", 8);