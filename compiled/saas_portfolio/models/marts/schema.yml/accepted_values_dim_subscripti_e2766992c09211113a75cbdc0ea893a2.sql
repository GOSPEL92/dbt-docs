
    
    

with all_values as (

    select
        billing_frequency as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."dim_subscriptions"
    group by billing_frequency

)

select *
from all_values
where value_field not in (
    'monthly','quarterly','yearly','weekly','annual'
)


