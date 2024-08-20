SELECT em.employeeId, em.firstName, em.lastName, count(*) AS NumOfCarsSold
FROM sales sal
INNER JOIN employee em
ON sal.employeeId = em.employeeId
GROUP BY em.employeeId, em.firstName, em.lastName
ORDER BY NumOfCarsSold DESC;