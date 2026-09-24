
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_4b71f51b97164e30891b2663a244d0b4_8347]
   as 
    
    
    

select
    account_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."fct_account_health"
where account_id is not null
group by account_id
having count(*) > 1



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_4b71f51b97164e30891b2663a244d0b4_8347]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_4b71f51b97164e30891b2663a244d0b4_8347]
  ;')