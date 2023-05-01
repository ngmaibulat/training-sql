
-- show regions with sales above the average

select
    region, sum(sales)
from sales_data
group by region
having sum(sales) > (select avg_perf from average_region_performance);
