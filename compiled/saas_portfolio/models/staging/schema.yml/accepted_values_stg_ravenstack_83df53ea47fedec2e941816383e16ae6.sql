
    
    

with all_values as (

    select
        industry as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_accounts"
    group by industry

)

select *
from all_values
where value_field not in (
    'tech','finance','healthcare','education','other'
)


