create database empregados_db;
use empregados_db;

create table departamento(
	cod_depto int not null auto_increment,
    nome varchar(30),
    constraint pk_departamento primary key(cod_depto)
);
select * from departamento;

create table empregado(
	cod_emp int not null auto_increment,
	cod_depto int,
    nome varchar(100),
    dt_nascimento date,
    sexo char(1),
    dt_admissao date,
    civil char(1),
    salario decimal(10,2),
    constraint pk_empregado primary key (cod_emp),
    constraint fk_depto_emp foreign key (cod_depto) references departamento(cod_depto)
);
select * from empregado;

create table dependente(
	cod_dep int not null auto_increment,
    cod_emp int,
    nome varchar(100),
    dt_nascimento date,
    sexo char(1),
    constraint pk_dependente primary key (cod_dep, cod_emp),
    constraint fk_emp_dep foreign key (cod_emp) references empregado(cod_emp)
);
select * from dependente;