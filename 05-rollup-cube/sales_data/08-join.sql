-- Regions with Sales People
select * from regions join sales_person on regions.name = sales_person.region;

-- Regions having Sales People, distinct
select distinct regions.name from regions join sales_person on regions.name = sales_person.region;

-- Regions with or without Sales People
select * from regions left join sales_person on regions.name = sales_person.region;


-- Regions without sales people
select * from regions left join sales_person on regions.name = sales_person.region
where sales_person.region is null;

-- Regions without sales people. Alternative, via joins
select * from regions where name not in (select distinct region from sales_person);
