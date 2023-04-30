select
    coalesce(cast(date as varchar), '-') as DT,
    coalesce(product, '--') as Product,
    -- region,
    sum(sales) as total_sales

from sales_data

GROUP BY
    GROUPING SETS (
        (date),
        (product),
        -- (region),
        ()
)

order by Product;

-- order by product, region;
