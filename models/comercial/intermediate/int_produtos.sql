with
    produtos as (
        select *
        from {{ ref('stg_erp__produtos') }}
        
     )   
    
    ,categorias as (
        select *
        from {{ ref('stg_erp__categorias') }}
     )  

    ,fornecedores as (
        select *
        from {{ ref('stg_erp__fornecedores') }}
     )  

    ,produtos_tratado as (
        select 
            produtos.pk_produto
            ,produtos.fk_categoria
            ,produtos.fk_fornecedor
            ,produtos.nome_produto
            ,produtos.qtd_por_unit
            ,produtos.vlr_unit
            ,produtos.qtd_estoque
            ,produtos.qtd_produto_ordem
            ,produtos.nivel_nova_ordem
            ,produtos.ind_descontinuado
            ,categorias.nome_categoria
            ,categorias.descricao_categoria
            ,fornecedores.NOME_FORNECEDOR
            ,fornecedores.cidade_fornecedor
            ,fornecedores.REGIAO_FORNECEDOR
            ,fornecedores.PAIS_FORNECEDOR
            ,fornecedores.TELEFONE

        from produtos
        left join categorias on categorias.pk_categoria = produtos.fk_categoria
        left join fornecedores on fornecedores.pk_fornecedor = produtos.fk_fornecedor
    )
     

select *
from produtos_tratado