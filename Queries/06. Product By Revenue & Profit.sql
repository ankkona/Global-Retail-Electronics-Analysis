-- Top 10 Product By Revenue & Profit
select top 10 Product_Name,
SUM(Revenue) as TotalRevenue,sum(Profit) as TotalProfit
from vw_SalesAnalysis
group by Product_Name
order by TotalRevenue DESC,TotalProfit DESC