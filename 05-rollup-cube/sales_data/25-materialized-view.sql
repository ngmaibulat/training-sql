
CREATE MATERIALIZED VIEW employee_department AS

create MATERIALIZED view regions_with_sales as
select *
from regions
where exists
    (select 1 from sales_person where region = regions.NAME)
order by population desc;

REFRESH MATERIALIZED VIEW regions_with_sales;
