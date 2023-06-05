WITH cte AS (
SELECT strftime('%Y', soldDate) as soldYear,salesAmount
from sales
)
SELECT soldYear, FORMAT("$%.2f", sum(salesAmount)) AS AnnualSales
from cte
GROUP BY soldYear