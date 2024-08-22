SELECT em.firstName,em.lastName,
	SUM(CASE WHEN strftime('%m', soldDate) = '01'
		THEN salesAmount END) AS JanSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '02'
		THEN salesAmount END) AS FebSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '03'
		THEN salesAmount END) AS MarSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '04'
		THEN salesAmount END) AS AprSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '05'
		THEN salesAmount END) AS MaySales,
	SUM(CASE WHEN strftime('%m', soldDate) = '06'
		THEN salesAmount END) AS JunSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '07'
		THEN salesAmount END) AS JulSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '08'
		THEN salesAmount END) AS AugSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '09'
		THEN salesAmount END) AS SepSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '10'
		THEN salesAmount END) AS OctSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '11'
		THEN salesAmount END) AS NovSales,
	SUM(CASE WHEN strftime('%m', soldDate) = '12'
		THEN salesAmount END) AS DecSales
FROM sales sal
INNER JOIN employee em
  ON sal.employeeId = em.employeeId
WHERE sal.soldDate >= '2021-01-01'
  AND sal.soldDate < '2022-01-01'
GROUP BY em.firstName,em.lastName
ORDER BY em.lastName, em.firstName;