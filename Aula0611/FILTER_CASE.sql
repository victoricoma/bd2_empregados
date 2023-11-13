select
	dto.nome as departamento,
    emp.nome as empregado,
    emp.salario as renda,
    case
		when (emp.salario <= 2112) 
        then 0
        when (emp.salario > 2112 and emp.salario <=2826.65) 
        then (emp.salario * 0.075) - 158.4
        when (emp.salario > 2826.66 and emp.salario <=3751.05) 
        then (emp.salario * 0.15) - 370.4
        when (emp.salario > 3751.06 and emp.salario <=4664.68) 
        then (emp.salario * 0.225) - 651.73
        else (emp.salario * 0.275) -884.96
	end as IRPF,
    case
		when (emp.salario <= 1320) 
        then (emp.salario * 0.075)
        when (emp.salario < 1320 and emp.salario <= 2571.29) 
        then (emp.salario * 0.09)
        when (emp.salario < 2571.30 and emp.salario <= 3856.94) 
        then (emp.salario * 0.12)
        when (emp.salario < 3856.95 and emp.salario <= 7507.49) 
        then (emp.salario * 0.14)
        else (1051.05)
	end as INSS
from departamento dto
inner join empregado emp
on dto.cod_depto = emp.cod_depto;