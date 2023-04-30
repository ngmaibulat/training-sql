drop table if exists web_traffic;

CREATE TABLE web_traffic (
    visit_id INT,
    device_type VARCHAR(50),
    browser VARCHAR(50),
    visit_date DATE,
    page_views INT
);

