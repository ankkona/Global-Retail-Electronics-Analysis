--Revenue By Month
select Month(Order_Date) as MonthNo,Datename(Month,Order_Date) as Month,
SUM(Revenue) as TotalRevenue
from vw_SalesAnalysis
group by Month(Order_Date),Datename(Month,Order_Date)
order by MonthNo