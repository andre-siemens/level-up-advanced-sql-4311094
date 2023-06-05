SELECT emp.employeeId,emp.lastName,emp.firstName,mdl.model,COUNT(*) AS SoldUnits,
  rank() OVER (PARTITION BY sls.employeeId order by count(model) desc) as Rank
from sales sls 
inner join employee emp on sls.employeeId = emp.employeeId
inner join inventory inv on sls.inventoryId = inv.inventoryId
inner join model mdl on inv.modelId = mdl.modelId
group by emp.employeeId,emp.lastName,emp.firstName,mdl.model
order by emp.lastName,SoldUnits desc