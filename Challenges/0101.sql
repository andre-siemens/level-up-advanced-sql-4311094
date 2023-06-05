SELECT e.firstName,e.lastName,e.title,m.firstName as ManagerFirstName,m.lastName as ManagerLastName
FROM employee e
inner join employee m on e.managerId = m.employeeId