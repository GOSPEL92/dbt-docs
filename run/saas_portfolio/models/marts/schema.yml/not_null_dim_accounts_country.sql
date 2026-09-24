
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_037c54e31499f19399c0211b8e1ed0f9_9974]
   as 
    
    
    



select country
from "ravenstack_saas"."dbo"."dim_accounts"
where country is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_037c54e31499f19399c0211b8e1ed0f9_9974]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_037c54e31499f19399c0211b8e1ed0f9_9974]
  ;')