SELECT
	CONVERT(ROUND(MIN(s.plan_price), 2), DECIMAL(10,2)) AS 'faturamento_minimo',
	CONVERT(ROUND(MAX(s.plan_price), 2), CHAR) AS 'faturamento_maximo',
	CONVERT(ROUND(AVG(s.plan_price), 2), CHAR) AS 'faturamento_medio',
	CONVERT(ROUND(SUM(s.plan_price), 2), CHAR) AS 'faturamento_total'
FROM
	users u
	JOIN subscription_plans s USING (plan_id)