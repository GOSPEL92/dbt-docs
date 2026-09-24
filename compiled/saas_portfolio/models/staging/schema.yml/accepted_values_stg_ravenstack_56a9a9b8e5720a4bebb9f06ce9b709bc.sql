
    
    

with all_values as (

    select
        feature_name as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_feature_usage"
    group by feature_name

)

select *
from all_values
where value_field not in (
    'dashboard','analytics','reporting','integration','api','other'
)


