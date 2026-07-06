select case when Store_Type = 'Online' Then 'Online'
else 'In-Store'
end as StoreType,COUNT(DISTINCT Order_Number) as TotalOrders
from vw_SalesAnalysis
group by case when Store_Type = 'Online' Then 'Online'
else 'In-Store'
end;




