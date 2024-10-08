with
    fonte_categorias as (
        select *
        from {{ source('erp_northwind', 'category') }}
     )   

ID, CATEGORYNAME, DESCRIPTION
     ,renomeacao as (
        select
            cast(ID as int) as pk_categoria
            ,cast(CATEGORYNAME as varchar) as nome_categoria
            ,cast(DESCRIPTION as varchar) as descricao_categoria



        from fonte_categorias
     )

select *
from renomeacao