truncate table departments;
truncate table emp;
truncate table orders;

insert into customers (name) values ('Acme');
insert into customers (name) values ('Widgets');

insert into departments (name) values ('HR');
insert into departments (name) values ('IT');
insert into departments (name) values ('Sales');

insert into emp (dept_id, name, salary) values (1, 'Alice', 200);
insert into emp (dept_id, name, salary) values (1, 'Bob', 200);
insert into emp (dept_id, name, salary) values (1, 'Charlie', 300);
insert into emp (dept_id, name, salary) values (2, 'Dave', 400);
insert into emp (dept_id, name, salary) values (2, 'Eve', 500);
insert into emp (dept_id, name, salary) values (2, 'Frank', 500);
insert into emp (dept_id, name, salary) values (3, 'Grace', 600);
insert into emp (dept_id, name, salary) values (3, 'Heidi', 700);
insert into emp (dept_id, name, salary) values (3, 'Irene', 800);
insert into emp (dept_id, name, salary) values (3, 'Jane', 900);

