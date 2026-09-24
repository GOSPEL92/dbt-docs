
    
    

with all_values as (

    select
        churn_flag as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by churn_flag

)

select *
from all_values
where value_field not in (
    '0','1'
)


