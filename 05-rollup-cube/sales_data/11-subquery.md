### Types by return data:

-   Scalar, returns single value. Can used instead of value.
-   Single row, multiple columns.
-   Multiple rows, single column
-   Multiple rows, multiple column

### Types by dependency on outer query:

-   Independent subquery. Uncorrelated subquery. You can run them separately. Executes once. Can be used as CTE.
-   Correlated subquery. Can execute multiple times. Cannot be used as CTE.

### Placement:

-   select clause. Not recommended most of time...
-   from clause
-   where clause
-   having clause

### Other SQL statements that can use subquery:

-   insert
-   update
-   delete

### Scalar:

```sql
select * from employees
where salavary > (select avg(salary) from employees)
```

### Single row, multiple columns:

```sql
select * from employees
where (location, department) = (select location, department from employees where ...)
```

### Multiple rows, single column

```sql
select * from employees
where id in (select id from emp where ...)
```

### Multiple rows, multiple column

```sql
select *
from emp
    left join (select ...) as subq on emp.id = subq.id
```
