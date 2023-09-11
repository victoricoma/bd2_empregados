
select
	*
from 
	dependente dep,
    empregado emp
where
	emp.cod_emp = dep.cod_emp
and
	emp.cod_emp in(select cod_emp from empregado where salario>=5200 and sexo='F');

select 
	nome, 
    format((datediff(now(), dt_nascimento) / 365), 0) as idade, 
    format((datediff(now(), dt_admissao) / 365), 0) as tempo_trabalho 
from 
	empregado;