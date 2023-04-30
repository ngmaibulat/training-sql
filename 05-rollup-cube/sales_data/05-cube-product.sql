
select
    product,
    region,
    -- product,
    sum(sales) as total_sales

from sales_data

group by cube(product, region)

order by product, region;

