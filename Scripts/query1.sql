SELECT em.firstName, 
    em.lastName,
    em.title, 
    mn.firstName AS ManagerFirstName,
    mn.lastName AS ManagerLastName
From employee em
INNER JOIN employee mn
    ON em.managerId = mn.employeeId;