
    
    -- Create target schema if it does not
  USE [ravenstack_saas];
  IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'dbo')
  BEGIN
    EXEC('CREATE SCHEMA [dbo]')
  END

  

  
  EXEC('create view 
    [dbo].[testview_58de817c75986bce3609bcee71e11f2f_5528]
   as 
    
    
    

select
    usage_id as unique_field,
    count(*) as n_records

from "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
where usage_id is not null
group by usage_id
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
    [dbo].[testview_58de817c75986bce3609bcee71e11f2f_5528]
  
  ) dbt_internal_test;

  EXEC('drop view 
    [dbo].[testview_58de817c75986bce3609bcee71e11f2f_5528]
  ;')