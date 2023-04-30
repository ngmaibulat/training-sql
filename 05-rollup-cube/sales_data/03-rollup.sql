
select
    date,
    region,
    -- product,
    sum(sales) as total_sales

from sales_data

group by rollup(date, region)

order by date, region;

