create database empregados_db;

use empregados_db;

create table departamento(
	cod_depto int not null auto_increment,
    nome varchar(30),
    constraint pk_departamento primary key (cod_depto)
);
select * from departamento;

create table empregado(
	cod_emp int not null auto_increment,
	cod_depto int,
    nome varchar(30),
    dt_nascimento date,
    sexo char(1),
    dt_admissao date,
    civil char(1),
    salario decimal(10,2),
    constraint pk_empregado primary key (cod_emp),
    constraint fk_empregado foreign key (cod_depto) references departamento(cod_depto)
);
select * from empregado;