
-- team counts only

select * from emp;

select
    dept_id,
    count(id) as num_employees
from emp
group by dept_id;

-- team counts with emp data

with team_counts as (
    select
        dept_id,
        count(id) as num_employees
    from emp
    group by dept_id
)
select
    emp.*,
    team_counts.num_employees
from emp
    join team_counts on emp.dept_id = team_counts.dept_id;
