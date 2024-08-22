WITH carsSold AS (SELECT *
FROM sales sal
INNER JOIN employee em
  ON sal.employeeId = em.employeeId
INNER JOIN inventory inv
  ON sal.inventoryId = inv.inventoryId
INNER JOIN model md
  ON INV.modelId = md.modelId
)
SELECT firstName, lastName, model, COUNT(model) AS modelSold,
        RANK() OVER (PARTITION BY employeeId
          ORDER BY COUNT(model) DESC) AS Rank
FROM carsSold
GROUP BY firstName, lastName, model;