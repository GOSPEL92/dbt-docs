
    
    

with all_values as (

    select
        reason_code as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
    group by reason_code

)

select *
from all_values
where value_field not in (
    'pricing','service_issue','competition','feature_gap','other'
)


