truncate table hr_departments;
truncate table hr_emp;
truncate table hr_orders;

insert into hr_customers (name) values ('Acme');
insert into hr_customers (name) values ('Widgets');

insert into hr_departments (name) values ('HR');
insert into hr_departments (name) values ('IT');
insert into hr_departments (name) values ('Sales');

insert into hr_emp (dept_id, name, salary) values (1, 'Alice', 200);
insert into hr_emp (dept_id, name, salary) values (1, 'Bob', 200);
insert into hr_emp (dept_id, name, salary) values (1, 'Charlie', 300);
insert into hr_emp (dept_id, name, salary) values (2, 'Dave', 400);
insert into hr_emp (dept_id, name, salary) values (2, 'Eve', 500);
insert into hr_emp (dept_id, name, salary) values (2, 'Frank', 500);
insert into hr_emp (dept_id, name, salary) values (3, 'Grace', 600);
insert into hr_emp (dept_id, name, salary) values (3, 'Heidi', 700);
insert into hr_emp (dept_id, name, salary) values (3, 'Irene', 800);
insert into hr_emp (dept_id, name, salary) values (3, 'Jane', 900);
