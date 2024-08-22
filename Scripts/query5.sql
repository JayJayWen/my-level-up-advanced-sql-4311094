SELECT em.employeeId, em.firstName, em.lastName, MIN(SalesAmount) AS MinSalesAmount, MAX(SalesAmount) AS MaxSalesAmount
FROM sales sal
JOIN employee em
ON sal.employeeId = em.employeeId
WHERE sal.soldDate >= DATE('now','start of year')
GROUP BY em.employeeId, em.firstName, em.lastName;