select * from empregado;
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario)
values(1,"MARCELO BINCORE", "1983-06-03", 'M', "2013-02-02",'S', 4580);
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario)
values(1,"MARILIA MENDOZZA", "1992-09-30", 'F', "2009-01-02",'S', 5580);
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario)
values(1,"ALEXANDRA MIAZAKI", "1982-09-30", 'F', "2021-01-02",'S', 4580);
insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario)
values(1,"ROBERTA MIALIQUI", "1995-09-30", 'F', "2011-11-02",'S', 6580);

select 
	emp.nome as empregado,
	count(dep.cod_emp) as dependentes
from
	empregado emp
left join dependente dep 
on emp.cod_emp = dep.cod_emp
group by emp.nome; 

select
	emp.nome as empregado,
    count(dep.cod_dep) as dependentes,
    emp.salario / (count(dep.cod_dep)+1) as media_renda,
    date_format(emp.dt_admissao,"%d/%m/%Y") as entrada_empresa,
    emp.dt_nascimento as nascimento
from
	empregado emp
inner join dependente dep
on emp.cod_emp = dep.cod_emp
group by 
	emp.nome, 
    emp.salario, 
    emp.dt_admissao, 
    emp.dt_nascimento;

