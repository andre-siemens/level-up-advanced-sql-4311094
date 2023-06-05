WITH cte AS(
SELECT
  strftime('%m', soldDate) as soldMonth,
  salesAmount
from sales
)

SELECT (SELECT COUNT(*) where soldMonth == date('now','this month') as ThisMonthSold from cte
group by soldMonth