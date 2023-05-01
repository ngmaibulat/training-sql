alter table sales_person add column salary int;


UPDATE sales_person
SET salary = (floor(random() * (10000 - 3000 + 1) + 3000)::integer);


-- CockroachDB requres cast int to float
UPDATE sales_person
SET salary = floor(random() * cast( (10000 - 3000 + 1) as float) + 3000);
