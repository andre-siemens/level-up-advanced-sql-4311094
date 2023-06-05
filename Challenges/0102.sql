SELECT emp.firstName, emp.lastName, emp.title, emp.startDate, sls.salesId
from employee emp
left join sales sls on emp.employeeId = sls.employeeId
where sls.salesId IS NULL and emp.title = 'Sales Person'