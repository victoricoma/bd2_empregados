select 
	locate(" ", e.nome) as tamanho_nome,
    reverse(e.nome) as inverso_nome,
    insert(e.nome,locate(" ",e.nome), 1, " -MEIO- ") as editado_nome,
    substring(e.nome, locate(" ", e.nome)) as sobrenome_emp,
    substring(d.nome, locate(" ", d.nome)) as sobrenome_dep,
    substring_index(e.nome, " ", 1) as primeiro_nome_emp,
    substring_index(d.nome, " ", 1) as primeiro_nome_dep,
    e.nome as empregado,
    d.nome as dependente
from empregado e
inner join dependente d
on e.cod_emp = d.cod_emp;