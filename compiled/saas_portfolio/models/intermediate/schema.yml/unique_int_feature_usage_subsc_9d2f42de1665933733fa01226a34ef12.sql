
    
    

select
    ['subscription_id', 'feature_name', 'usage_date'] as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions_agg"
where ['subscription_id', 'feature_name', 'usage_date'] is not null
group by ['subscription_id', 'feature_name', 'usage_date']
having count(*) > 1


