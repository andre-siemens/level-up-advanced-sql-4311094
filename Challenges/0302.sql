WITH cte AS(
SELECT
  employeeId,
  strftime('%Y', soldDate) as soldYear,
  strftime('%m', soldDate) as soldMonth,
  salesAmount
from sales
)

SELECT emp.employeeId,emp.lastName,emp.firstName,

CASE WHEN cte.soldMonth = '01' THEN sum(cte.salesAmount) END AS JanSales,
CASE WHEN cte.soldMonth = '02' THEN sum(cte.salesAmount) END AS FebSales,
CASE WHEN cte.soldMonth = '03' THEN sum(cte.salesAmount) END AS MrchSales,
CASE WHEN cte.soldMonth = '04' THEN sum(cte.salesAmount) END AS AprSales,
CASE WHEN cte.soldMonth = '05' THEN sum(cte.salesAmount) END AS MaySales,
CASE WHEN cte.soldMonth = '06' THEN sum(cte.salesAmount) END AS JunSales,
CASE WHEN cte.soldMonth = '07' THEN sum(cte.salesAmount) END AS JulSales,
CASE WHEN cte.soldMonth = '08' THEN sum(cte.salesAmount) END AS AugSales,
CASE WHEN cte.soldMonth = '09' THEN sum(cte.salesAmount) END AS SepSales,
CASE WHEN cte.soldMonth = '10' THEN sum(cte.salesAmount) END AS OctSales,
CASE WHEN cte.soldMonth = '11' THEN sum(cte.salesAmount) END AS NovSales,
CASE WHEN cte.soldMonth = '12' THEN sum(cte.salesAmount) END AS DecSales
from cte 
inner join employee emp on cte.employeeId = emp.employeeId
where cte.soldYear = '2021'
group by emp.employeeId,emp.firstName,emp.lastName
order by emp.lastName,emp.firstName