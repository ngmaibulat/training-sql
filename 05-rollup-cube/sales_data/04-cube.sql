
select
    date,
    region,
    -- product,
    sum(sales) as total_sales

from sales_data

group by cube(date, region)

order by date, region;

