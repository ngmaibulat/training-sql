
select dept_id, count(id) as num_employees
from emp
group by dept_id;


select dept_id, d.name, count(emp.id) as num_employees
from emp
	join departments d on d.id = emp.dept_id
group by dept_id, d.name
order by dept_id;

select dept_id, d.name, count(emp.id) as num_employees
from emp
	join departments d on d.id = emp.dept_id
group by dept_id, d.name
having count(emp.id) > 3
order by dept_id;


select *
from emp
inner join (
    select dept_id, count(id) as num_employees
    from emp
    group by dept_id
) as dept_counts
on emp.dept_id = dept_counts.dept_id
order by emp.dept_id;


with dept_counts as (
    select dept_id, count(id) as num_employees
    from emp
    group by dept_id
)
select *
from emp
inner join dept_counts
    on emp.dept_id = dept_counts.dept_id
order by emp.dept_id;