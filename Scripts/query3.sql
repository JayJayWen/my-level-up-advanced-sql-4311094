SELECT cs.firstName, cs.lastName, cs.email, sal.salesAmount, sal.soldDate
FROM customer cs
INNER JOIN sales sal
    ON cs.customerId = sal.customerId
UNION
SELECT cs.firstName, cs.lastName, cs.email, sal.salesAmount, sal.soldDate
FROM customer cs
LEFT JOIN sales sal
    ON cs.customerId = sal.customerId
WHERE sal.salesId IS NULL
UNION
SELECT cs.firstName, cs.lastName, cs.email, sal.salesAmount, sal.soldDate
FROM sales sal
LEFT JOIN customer cs
    ON cs.customerId = sal.customerId
WHERE cs.customerId IS NULL;