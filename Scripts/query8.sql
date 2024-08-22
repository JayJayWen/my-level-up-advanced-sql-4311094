SELECT em.firstName,em.lastName,
	CASE WHEN strftime('%m', soldDate) = '01'
		THEN salesAmount END AS JanSales,
	CASE WHEN strftime('%m', soldDate) = '02'
		THEN salesAmount END AS FebSales,
	CASE WHEN strftime('%m', soldDate) = '03'
		THEN salesAmount END AS MarSales,
	CASE WHEN strftime('%m', soldDate) = '04'
		THEN salesAmount END AS AprSales,
	CASE WHEN strftime('%m', soldDate) = '05'
		THEN salesAmount END AS MaySales,
	CASE WHEN strftime('%m', soldDate) = '06'
		THEN salesAmount END AS JunSales,
	CASE WHEN strftime('%m', soldDate) = '07'
		THEN salesAmount END AS JulSales,
	CASE WHEN strftime('%m', soldDate) = '08'
		THEN salesAmount END AS AugSales,
	CASE WHEN strftime('%m', soldDate) = '09'
		THEN salesAmount END AS SepSales,
	CASE WHEN strftime('%m', soldDate) = '10'
		THEN salesAmount END AS OctSales,
	CASE WHEN strftime('%m', soldDate) = '11'
		THEN salesAmount END AS NovSales,
	CASE WHEN strftime('%m', soldDate) = '12'
		THEN salesAmount END AS DecSales
FROM sales sal
INNER JOIN employee em
ON sal.employeeId = em.employeeId
WHERE sal.soldDate >= '2021-01-01'
AND sal.soldDate < '2022-01-01'
GROUP BY em.firstName,em.lastName
ORDER BY em.lastName, em.firstName;