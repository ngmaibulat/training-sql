

select
    emp.*,
    max(id) over (
        partition by dept_id
        ) as max_id
from emp;

select
    emp.*,
    max(id) over (
        partition by dept_id
        order by id
        ) as max_id
from emp;

select
    emp.*,
    max(id) over (
        partition by dept_id
        order by id
        rows between unbounded preceding and current row
        ) as max_id
from emp;

select
    emp.*,
    max(id) over (
        partition by dept_id
        order by id
        rows between unbounded preceding and unbounded following
        ) as max_id
from emp;


select
    emp.*,
    max(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and 1 following
        ) as max_id
from emp;
