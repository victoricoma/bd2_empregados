select
	nome as empregado,
    salario as renda,
    if(salario<=2112,"Isento",
		if(salario>2112 and salario<=2826.85,"Paga 7,5%",
			if(salario>2826.85 and salario<=3751.05,"Paga 15%",
				if(salario>3751.05 and salario<=4664.68,"Paga 22,5%","Paga 27,5%")
			)
		)
    ) as IRPF,
        if(salario<=2112,0,
		if(salario>2112 and salario<=2826.85,format((salario * 13.3)*0.075,2),
			if(salario>2826.85 and salario<=3751.05,format((salario * 13.3)*0.15,2),
				if(salario>3751.05 and salario<=4664.68,format((salario * 13.3)*0.225,2),
                format((salario * 13.3)*0.275,2))
			)
		)
    ) as Tributo
from
	empregado;
    
select
	emp.nome as empregado,
    emp.salario as renda,
    count(dep.cod_dep) as dependentes,
    format(((emp.salario * 13.3)-(2275 * count(dep.cod_dep)))/13.3,2) as IRPF_real
from empregado emp
left join dependente dep
on emp.cod_emp = dep.cod_emp
group by emp.nome, emp.salario;