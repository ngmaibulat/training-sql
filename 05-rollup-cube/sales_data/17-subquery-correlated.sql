
SELECT
    id, date, region, product, sales
FROM
    sales_data AS sd1
WHERE
    sales > (
        SELECT AVG(sales)
        FROM sales_data AS sd2
        WHERE sd2.region = sd1.region
    );


SELECT
    id, date, region, product, sales
FROM
    sales_data AS sd1
WHERE
    sales = (
        SELECT MAX(sales)
        FROM sales_data AS sd2
        WHERE sd2.region = sd1.region
    );



select distinct region, (
    select count(id)
    from sales_person
    where region = s1.region
    group by region
    ) as count
from sales_person s1
order by count
;


select *
from sales_person
where (region, salary) in (
    select region, max(salary)
    from sales_person
    group by region
    );


SELECT sp1.*
FROM sales_person sp1
WHERE sp1.salary = (
    SELECT MAX(sp2.salary)
    FROM sales_person sp2
    WHERE sp2.region = sp1.region
);


SELECT sp1.*
FROM sales_person sp1
WHERE sp1.salary > (
    SELECT AVG(sp2.salary)
    FROM sales_person sp2
    WHERE sp2.region = sp1.region
);

