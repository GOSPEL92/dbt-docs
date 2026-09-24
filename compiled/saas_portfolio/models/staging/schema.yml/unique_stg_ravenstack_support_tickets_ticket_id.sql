
    
    

select
    ticket_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."stg_ravenstack_support_tickets"
where ticket_id is not null
group by ticket_id
having count(*) > 1


