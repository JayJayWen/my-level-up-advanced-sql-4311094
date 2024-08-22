SELECT strftime('%Y', soldDate) AS Year,
      strftime('%m', soldDate) AS Month,
      SUM(salesAmount) as salesAmount,
      SUM(SUM(salesAmount)) OVER (PARTITION BY strftime('%Y', soldDate) ORDER BY strftime('%m', soldDate)
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS runningAnnualSales
FROM sales
GROUP BY Year, Month
ORDER by Year, Month;


WITH mth_ann AS(SELECT strftime('%Y', soldDate) AS Year,
      strftime('%m', soldDate) AS Month,
      SUM(salesAmount) as salesAmount
FROM sales
GROUP BY Year, Month
)
SELECT Year,Month,salesAmount,
SUM(salesAmount) OVER (PARTITION BY Year ORDER BY Year,Month) as runningAnnualSales
FROM mth_ann
ORDER BY Year, Month
;