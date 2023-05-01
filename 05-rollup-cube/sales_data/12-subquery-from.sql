SELECT

    AVG(region_totals.total_sales) AS average_region_performance

FROM (
    SELECT
        region,
        SUM(sales) AS total_sales
    FROM
        sales_data
    GROUP BY
        region
) as region_totals;

