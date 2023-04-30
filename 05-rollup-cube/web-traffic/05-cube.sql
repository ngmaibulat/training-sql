SELECT
        device_type,
        browser,
        to_char(visit_date, 'Day') AS day_of_week,
        SUM(page_views) AS total_page_views

FROM web_traffic

GROUP BY CUBE (device_type, browser, to_char(visit_date, 'Day'));

