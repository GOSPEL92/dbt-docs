
    
    

select
    churn_event_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_churn_accounts"
where churn_event_id is not null
group by churn_event_id
having count(*) > 1


