
select
    product,
    region,
    -- product,
    sum(sales) as total_sales

from sales_data

GROUP BY
    GROUPING SETS (
        (product, region),
        (product),
        (region),
        ()
)

order by product, region;
