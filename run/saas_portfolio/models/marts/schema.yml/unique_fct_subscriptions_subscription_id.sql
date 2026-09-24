
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_bc07a91c35bb405b355048f6400b6768_16644]
   as 
    
    
    

select
    subscription_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."fct_subscriptions"
where subscription_id is not null
group by subscription_id
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
    [dbo].[testview_bc07a91c35bb405b355048f6400b6768_16644]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_bc07a91c35bb405b355048f6400b6768_16644]
  ;')