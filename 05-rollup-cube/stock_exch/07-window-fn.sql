select
	t.*,
	dense_rank() over(order by t.cnt desc)
from (
select
    ipo_year,
    count(id) as cnt
from company
group by ipo_year
order by ipo_year desc) t;
