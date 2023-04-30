select max(price)
from euro_rub_clean
where year = 2020;

select year, max(price)
from euro_rub_clean
group by year;

select year, month, max(price)
from euro_rub_clean
group by year, month
order by year, month;

select year, month, max(price)
from euro_rub_clean
group by rollup(year, month)
order by year, month;

select year, month, max(price)
from euro_rub_clean
group by grouping sets (
    (year, month),
    (year),
    ()
)
order by year, month;

select
	coalesce(cast(year as varchar), 'Total') as year,
	coalesce(cast(month as varchar), '*') as month,
	max(price)
from euro_rub_clean
group by rollup(year, month)
order by year, month;
