
    
    

with all_values as (

    select
        issue_type as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
    group by issue_type

)

select *
from all_values
where value_field not in (
    'bug','feature_request','billing','support'
)


