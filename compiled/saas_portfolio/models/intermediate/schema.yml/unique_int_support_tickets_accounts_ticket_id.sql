
    
    

select
    ticket_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_support_tickets_accounts"
where ticket_id is not null
group by ticket_id
having count(*) > 1


