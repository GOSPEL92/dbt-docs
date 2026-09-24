
    
    

with all_values as (

    select
        priority as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_support_tickets"
    group by priority

)

select *
from all_values
where value_field not in (
    'low','medium','high','urgent'
)


