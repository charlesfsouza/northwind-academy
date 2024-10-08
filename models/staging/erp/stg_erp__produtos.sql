with
    fonte_produtos as (
        select *
        from {{ source('erp_northwind', 'product') }}
     )   

     ,renomeacao as (
        select
            cast(ID as int) as pk_produto
            ,cast(CATEGORYID as int) as fk_categoria
            ,cast(SUPPLIERID as int) as fk_fornecedor
            ,cast(PRODUCTNAME as varchar) as nome_produto
            ,cast(QUANTITYPERUNIT as varchar) as QTD_POR_UNIT
            ,cast(UNITPRICE as float) as VLR_UNIT
            ,cast(UNITSINSTOCK as int) as QTD_ESTOQUE
            ,cast(UNITSONORDER as varchar) as QTD_PRODUTO_ORDEM
            ,cast(REORDERLEVEL as int) as NIVEL_NOVA_ORDEM
            ,cast(DISCONTINUED as int) as IND_DESCONTINUADO)


        from fonte_produtos
     )

select *
from renomeacao