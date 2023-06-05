WITH cte AS(
SELECT
  strftime('%Y', soldDate) as soldYear,
  strftime('%m', soldDate) as soldMonth,
  salesAmount
from sales
)

select soldYear,soldMonth, salesAmount, SUM(salesAmount) OVER(PARTITION by soldYear ORDER by soldYear, soldMonth) as AnnualCumSales from cte
group by soldYear, soldMonth
order by soldYear, soldMonth