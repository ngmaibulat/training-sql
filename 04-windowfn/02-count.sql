
select * from emp;

select
    emp.*,
    count(id) over (partition by team_id) as num_employees
from emp;

select
    emp.*,
    count(id) over (partition by team_id order by id) as num_employees
from emp;

select
    emp.*,
    count(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and current row
        ) as num_employees
from emp;


select
    emp.*,
    count(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and unbounded following
        ) as num_employees
from emp;

select
    emp.*,
    count(id) over (
        partition by team_id
        order by id
        rows between unbounded preceding and 1 following
        ) as num_employees
from emp;
