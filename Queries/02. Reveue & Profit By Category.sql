--Revenue By Category
select TOP 10 Category,SUM(Revenue) as TotalRevenue
from vw_SalesAnalysis
group by Category
order by TotalRevenue desc
--Profit By Category
select TOP 10 Category,SUM(Profit) as TotalProfit
from vw_SalesAnalysis
group by Category
order by TotalProfit desc

