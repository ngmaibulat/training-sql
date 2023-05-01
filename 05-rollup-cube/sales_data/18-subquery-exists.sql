-- EXISTS

-- 1. Find all regions that have sales greater than 100.

SELECT DISTINCT
    region
FROM
    sales_data AS sd1
WHERE
    EXISTS (
        SELECT 1
        FROM sales_data AS sd2
        WHERE sd2.region = sd1.region AND sd2.sales > 100
    );


-- 2. Same as above, but without subqueries.
select distinct region from sales_data where sales > 100;


-- 3. Use correlated subquery and EXISTS to find regions having sales people
select *
from regions
where exists
    (select 1 from sales_person where region = regions.NAME)
order by population desc;


-- 4. Use correlated subquery and EXISTS to find regions NOT having sales people
select *
from regions
where not exists
    (select 1 from sales_person where region = regions.NAME)
order by population desc;


-- 5. Use correlated subquery and EXISTS to find regions NOT having any sales
select *
from regions
where not exists
    (select 1 from sales_data where region = regions.NAME)
order by population desc;
