
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."dim_subscriptions"
    group by status

)

select *
from all_values
where value_field not in (
    'active','expired','cancelled','trial'
)


