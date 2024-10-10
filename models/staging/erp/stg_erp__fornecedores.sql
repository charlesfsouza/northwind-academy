with
    fonte_fornecedor as (
        select *
        from {{ source('erp_northwind', 'supplier') }}
     )   

     ,renomeacao as (
        select
            cast(ID as int) as pk_fornecedor
            ,cast(COMPANYNAME as varchar) as NOME_FORNECEDOR
            ,cast(CONTACTNAME as varchar) as NOME_CONTATO
            ,cast(CONTACTTITLE as varchar) as TITULO
            ,cast(ADDRESS as varchar) as ENDERECO_FORNECEDOR
            ,cast(CITY as varchar) as cidade_fornecedor
            ,cast(REGION as varchar) as REGIAO_FORNECEDOR 
            ,cast(POSTALCODE as varchar) as CODIGO_POSTAL
            ,cast(COUNTRY as varchar) as PAIS_FORNECEDOR
            ,cast(PHONE as varchar) as TELEFONE 
            ,cast(FAX as varchar) as FAX
            ,cast(HOMEPAGE as varchar) as HOME_PAGE

        from fonte_fornecedor
     )

select *
from renomeacao