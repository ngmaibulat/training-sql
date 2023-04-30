select
    id, order_date, quantity,
    sum(quantity) OVER (PARTITION BY order_date) as daily_total,
    sum(quantity) OVER (order by id) as running_total
from orders;


select
    id, order_date, quantity,
    sum(quantity) OVER (order by id) as running_total
from orders;
