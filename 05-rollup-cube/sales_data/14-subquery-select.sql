WITH region_totals AS (
    SELECT
        region,
        SUM(sales) AS total_sales
    FROM
        sales_data
    GROUP BY
        region
)

select
    region,
    total_sales,
    total_sales - (select avg(total_sales) from region_totals) as difference_from_average
from region_totals
order by total_sales desc;

-- select avg_perf from average_region_performance;
