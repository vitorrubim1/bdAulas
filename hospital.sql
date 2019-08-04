/*Criando e usando o Banco de Dados */
create database consultas;
use consultas;

/*Criando a Tabela Paciente*/
create table paciente(
	cartaoSus int primary key not null,
    nomePaciente varchar(55),
    idade int,
    sexo char(1),
    convenio varchar(30));

/*Criando a Tabela Médico*/
create table medico(
	crm int primary key not null,
    nomeMedico varchar(55),
    especialidade varchar(40),
    cartaoSus int,
    foreign key (cartaoSus) references paciente (cartaoSus));
    
insert into paciente(cartaoSus, nomePaciente, idade, sexo, convenio)
	values
    (11111, "Marilene Souza", 23, "F", "SulAmerica"),
    (22222, "Carlos André", 47, "M", "Bradesco"),
    (33333, "Vitor Rubim", 17, "M", "Santa Helena"),
    (44444, "Marco Sales", 43, "M", "Bradesco"),
    (55555, "Judite Guilhermina", 66, "F", "Amil");
    
insert into medico(crm, nomeMedico, especialidade, cartaoSus)
	values
    (66666, "Michel Farias", "Fisioterapeuta", 11111),
    (77777, "Marcela Rocha", "Cardiologia", 22222),
    (88888, "Amélia Passos", "Ginecologista", 33333),
    (99999, "Rodrigo Ferreira", "Neurocirurgiã", 44444);
    
/*Comando para visualização das tabelas*/
select* from paciente;
select* from medico;

/*Colocando nome dos pacientes em ordem Alfabética*/
select* from paciente order by nomePaciente;

/*Alterando o campo convenio da tabela Paciente */
alter table paciente modify convenio varchar(40);

/* */
select paciente.nomePaciente , medico.especialidade from paciente 
inner join medico  on paciente.cartaoSus = medico.cartaoSus; 