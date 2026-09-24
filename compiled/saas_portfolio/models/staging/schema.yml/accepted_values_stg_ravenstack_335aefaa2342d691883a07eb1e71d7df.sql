
    
    

with all_values as (

    select
        referral_source as value_field,
        count(*) as n_records

    from "ravenstack_saas"."dbo"."stg_ravenstack_accounts"
    group by referral_source

)

select *
from all_values
where value_field not in (
    'web','partner','ad_campaign','other'
)


