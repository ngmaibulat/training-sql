

select
    emp.*,
    sum(id) over (
        partition by team_id
        ) as results
from emp;

select
    emp.*,
    sum(id) over (
        partition by team_id
        order by id
        ) as results
from emp;

select
    emp.*,
    sum(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and current row
        ) as results
from emp;

select
    emp.*,
    sum(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and unbounded following
        ) as results
from emp;


select
    emp.*,
    sum(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and 1 following
        ) as results
from emp;
