SELECT
        device_type,
        browser,
        
        SUM(page_views) AS total_page_views

FROM web_traffic

GROUP BY rollup (device_type, browser);

