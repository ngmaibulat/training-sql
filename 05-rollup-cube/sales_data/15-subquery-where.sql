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
where total_sales > (select avg(total_sales) from region_totals)
order by total_sales desc;

-- select avg_perf from average_region_performance;


select * from sales_person
where salary = (select max(salary) from sales_person);


select * from sales_person
where salary > (select avg(salary) from sales_person)
order by salary desc;

