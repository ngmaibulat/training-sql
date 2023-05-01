

select *, (
    case when salary > (select avg(salary) from sales_person)
    then 'above average'
    else 'below average'
    end
) as note
from sales_person
order by salary desc;

