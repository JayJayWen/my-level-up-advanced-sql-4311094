WITH cte AS (
SELECT strftime('%Y', soldDate) AS soldYear,
	salesAmount
FROM sales
)
SELECT soldYear,
	FORMAT("$%.2f", SUM(salesAmount)) AS AnnualSales
FROM cte
GROUP BY soldYear