select 
	depto.nome as departamento, 
	count(emp.cod_emp) as n_empregados,
    sum(emp.salario) as gasto_rh,
    format(sum(emp.salario)/count(cod_emp),2) as media_salarial
from 
	empregado emp, 
	departamento depto
where
	depto.cod_depto=emp.cod_depto
group by
	depto.nome;