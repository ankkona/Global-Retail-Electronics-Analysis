-- Brand Contribution
select brand,sum(Revenue) as Revenue,
(sum(sum(Revenue))over(order by sum(Revenue) desc)*100/
sum(sum(Revenue)) over()) as CumulativeRevenuePct
from vw_SalesAnalysis
group by Brand
order by Revenue desc
