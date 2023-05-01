WITH region_totals AS (
    SELECT
        region,
        SUM(sales) AS total_sales
    FROM
        sales_data
    GROUP BY
        region
)
SELECT
    AVG(total_sales) AS average_region_performance
FROM
    region_totals;
