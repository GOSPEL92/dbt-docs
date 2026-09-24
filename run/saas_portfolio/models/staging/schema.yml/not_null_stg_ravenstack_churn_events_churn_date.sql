
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_affb7cdd27fc0c229e3b351af4e0d85f_4987]
   as 
    
    
    



select churn_date
from "ravenstack_saas"."dbo"."stg_ravenstack_churn_events"
where churn_date is null



  ;')
  select
    
    count(*) as failures,
    case when count(*) != 0
      then 'true' else 'false' end as should_warn,
    case when count(*) != 0
      then 'true' else 'false' end as should_error
  from (
    select * from 
    [dbo].[testview_affb7cdd27fc0c229e3b351af4e0d85f_4987]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_affb7cdd27fc0c229e3b351af4e0d85f_4987]
  ;')