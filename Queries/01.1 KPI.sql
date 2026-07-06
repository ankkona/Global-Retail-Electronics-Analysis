--KPI
--Total Revenue
select sum(Revenue) as TotalRevenue,
sum(Profit) as TotalProfit,
sum(Profit)*100/sum(Revenue) as ProfitMargin,
count(distinct Order_Number) as TotalOrders,
sum(Revenue)/count(distinct Order_Number) as AverageOrderValue
from vw_SalesAnalysis