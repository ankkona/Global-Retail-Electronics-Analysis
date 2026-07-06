-- Revenue By Country
select Country,SUM(Revenue) as TotalRevenue
from vw_SalesAnalysis
group by Country
order by TotalRevenue DESC