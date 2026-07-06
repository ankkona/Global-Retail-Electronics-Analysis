--Profit By State
select Top 10 State,sum(Profit) as TotalProfit from vw_SalesAnalysis
group by state
order by TotalProfit DESC