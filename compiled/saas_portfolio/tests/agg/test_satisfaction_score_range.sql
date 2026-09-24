SELECT *
FROM "ravenstack_saas"."dbo"."fct_account_health"
WHERE avg_satisfaction_score IS NOT NULL
  AND (avg_satisfaction_score < 0 OR avg_satisfaction_score > 10)