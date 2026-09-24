
    
    

with all_values as (

    select
        escalation_flag as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by escalation_flag

)

select *
from all_values
where value_field not in (
    '0','1'
)


