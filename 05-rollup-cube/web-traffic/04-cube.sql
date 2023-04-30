SELECT
        device_type,
        browser,
        
        SUM(page_views) AS total_page_views

FROM web_traffic

GROUP BY CUBE (device_type, browser);

