SELECT sal.soldDate, sal.salesAmount, inv.colour,inv.year
FROM sales sal
INNER JOIN inventory inv
  ON sal.inventoryId = inv.inventoryId
WHERE modelId IN(SELECT modelId
      FROM model
      WHERE EngineType = 'Electric');

SELECT sal.soldDate, sal.salesAmount, inv.colour,inv.year
FROM sales sal
INNER JOIN inventory inv
  ON sal.inventoryId = inv.inventoryId
INNER JOIN model md
  ON inv.modelId = md.modelId
WHERE md.EngineType = 'Electric'
ORDER BY inv.colour DESC;