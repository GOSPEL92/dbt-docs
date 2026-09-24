USE [ravenstack_saas];
    
    

    

    USE [ravenstack_saas];
    EXEC('
        CREATE OR ALTER VIEW "dbo"."dim_support_tickets" AS 

SELECT
    ticket_id,
    account_id,
    priority,
    submitted_at,
    closed_at,
    escalation_flag
FROM "ravenstack_saas"."dbo"."stg_ravenstack_support_tickets";
    ')

