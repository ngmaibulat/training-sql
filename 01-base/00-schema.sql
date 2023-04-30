
drop table if exists orders;
drop table if exists products;
drop table if exists emp;
drop table if exists departments;
drop table if exists customers;

CREATE TABLE customers (
    id serial primary key,
    rank INTEGER,
    company_name VARCHAR(255),
    revenue INTEGER,
    country VARCHAR(255),
    address VARCHAR(255),
    industry VARCHAR(255)
);


create table departments (
    id serial primary key,
    customer_id int references customers(id),
    name varchar(50)
);


create table emp (
    id serial primary key,
    dept_id int references departments(id),
    name text,
    salary int
);

create table products (
    id serial primary key,
    name text,
    category varchar,
    brand varchar,
    price int
);


create table orders (
    id serial primary key,
    order_date date,
    customer_id int references customers(id),
    -- product_id int references products(id),
    quantity int
);
