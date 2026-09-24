
    
    

with all_values as (

    select
        plan_tier as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."fct_subscriptions"
    group by plan_tier

)

select *
from all_values
where value_field not in (
    'basic','pro','enterprise'
)


