Select emp.employeeId, emp.firstName, emp.lastName, count(*) as NumOfCarsSold
from sales sls
inner join employee emp
  on sls.employeeId = emp.employeeId
GROUP BY emp.employeeId, emp.firstName, emp.lastName
order by NumOfCarsSold desc;
