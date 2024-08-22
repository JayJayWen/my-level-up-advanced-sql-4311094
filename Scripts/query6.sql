SELECT em.employeeId, COUNT(*) AS NumOfCarsSold, MIN(SalesAmount) AS MinSalesAmount, MAX(SalesAmount) AS MaxSalesAmount
FROM sales sal
JOIN employee em
ON sal.employeeId = em.employeeId
WHERE sal.soldDate >= DATE('now','start of year')
GROUP BY em.employeeId
HAVING COUNT(*) > 5
;