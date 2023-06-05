SELECT 
    emp.employeeId, 
    emp.firstName, 
    emp.lastName, 
    MIN(sls.salesAmount) as lowestSales, 
    MAX(sls.salesAmount) as highestSale
FROM sales sls 
inner JOIN employee emp 
  on sls.employeeId = emp.employeeId
where sls.soldDate >= date('now','start of year')
GROUP by emp.employeeId, emp.firstName, emp.lastName