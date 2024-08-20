SELECT em.firstName, em.lastName, em.title,em.startDate,sal.salesId FROM employee em
LEFT JOIN sales sal 
ON em.employeeId = sal.employeeId
WHERE sal.salesAmount is NULL 
AND em.title ='Sales Person';