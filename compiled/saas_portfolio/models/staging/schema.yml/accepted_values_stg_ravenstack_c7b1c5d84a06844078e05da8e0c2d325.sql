
    
    

with all_values as (

    select
        plan_tier as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_accounts"
    group by plan_tier

)

select *
from all_values
where value_field not in (
    'basic','standard','premium','trial'
)


