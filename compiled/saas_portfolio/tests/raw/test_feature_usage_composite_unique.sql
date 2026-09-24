SELECT
    subscription_id,
    usage_id,
    usage_date,
    COUNT(*) AS row_count
FROM "ravenstack_saas"."dbo"."int_feature_usage_subscriptions"
GROUP BY subscription_id, usage_id, usage_date
HAVING COUNT(*) > 1