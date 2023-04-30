

select
    emp.*,
    ntile(3) over (
        partition by team_id
        order by salary desc
        ) as results
from emp
order by results;


select
    emp.*,
    ntile(3) over (
        partition by team_id
        order by salary desc
        rows between unbounded preceding and current row
        ) as results
from emp;

select
    emp.*,
    ntile(3) over (
        partition by team_id
        order by salary desc
        rows between unbounded preceding and unbounded following
        ) as results
from emp;


select
    emp.*,
    ntile(3) over (
        partition by team_id
        order by salary desc
        rows between unbounded preceding and 1 following
        ) as results
from emp;

