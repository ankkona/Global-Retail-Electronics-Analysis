--Average Delivery Days By Country
select Country, 
AVG(CAST(DATEDIFF(day, Order_Date, Delivery_Date) AS DECIMAL(10,2))) AS AvgDeliveryDays
from vw_SalesAnalysis
group by Country
order by AvgDeliveryDays DESC