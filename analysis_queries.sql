SELECT 
    `test group`, 
    COUNT(*) AS total_users,
    SUM(CASE WHEN converted = 'true' THEN 1 ELSE 0 END) AS total_conversions,
    ROUND((SUM(CASE WHEN converted = 'true' THEN 1 ELSE 0 END) * 1.0 / COUNT(*)) * 100, 2) AS conversion_rate
FROM sakila.marketing_ab
GROUP BY `test group`;
