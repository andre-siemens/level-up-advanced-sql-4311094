SELECT 
  emp.employeeId, 
  emp.firstName, 
  emp.lastName,
  COUNT(*) as NumOfSales
FROM sales sls 
  inner join employee emp 
  on sls.employeeId = emp.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, 
  emp.firstName, 
  emp.lastName
HAVING count(*) > 5