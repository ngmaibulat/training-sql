create or replace view average_region_performance as

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
    AVG(total_sales) AS avg_perf
FROM
    region_totals;


select avg_perf from average_region_performance;
