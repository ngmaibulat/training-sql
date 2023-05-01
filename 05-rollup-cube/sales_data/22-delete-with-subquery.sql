
-- delete regions that don't have sales

delete from regions
where not exists
    (select 1 from sales_data where region = regions.NAME);

