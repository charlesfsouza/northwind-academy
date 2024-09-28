with
    funcionarios as (
        select *
        from {{ ref('stg_erp__funcionarios') }}
    )

    , joined as (
        select 
            funcionarios.pk_funcionario
            ,funcionarios.nome_funcionario
            ,funcionarios.cargo_funcionario
            ,gerentes.nome_funcionario as nome_gerente
            ,funcionarios.dt_nascimento_funcionario
            ,funcionarios.dt_contratacao
            ,funcionarios.cidade_funcionario
            ,funcionarios.regiao_funcionario
            ,funcionarios.pais_funcionario

        from funcionarios
        left join funcionarios as gerentes
            on funcionarios.fk_gerente = gerentes.pk_funcionario
    )

select *
from joined

