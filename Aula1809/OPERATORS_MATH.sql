select
	depto.nome as Departamento,
    avg(emp.salario) as orcamento_depto
from
	departamento depto,
    empregado emp
where
	depto.cod_depto = emp.cod_depto
group by 
	depto.nome;