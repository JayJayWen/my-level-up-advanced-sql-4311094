SELECT 
  strftime('%Y-%m', soldDate) AS CurrMonth,
  COUNT(salesId) AS NumSold,
  LAG(NumSold,1,0)  OVER (ORDER BY CurrMonth) AS lastMonth
FROM sales
GROUP BY CurrMonth;

-- Using CTE

WITH MonthlySales AS (
    SELECT 
        strftime('%Y-%m', soldDate) AS CurrMonth,
        COUNT(salesId) AS NumSold
    FROM 
        sales
    GROUP BY 
        CurrMonth
)
SELECT 
    CurrMonth,
    NumSold,
    LAG(NumSold, 1, 0) OVER (ORDER BY CurrMonth) AS lastMonth
FROM 
    MonthlySales
ORDER BY 
    CurrMonth;