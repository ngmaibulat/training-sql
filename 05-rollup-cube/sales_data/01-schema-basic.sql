drop table if exists sales_data;
drop table if exists sales_person;
drop table if exists regions;

create table sales_data (
    id serial primary key,
    date date not null,
    region varchar(255) not null,
    product varchar(255) not null,
    sales integer not null
);

create table sales_person (
    id serial primary key,
    name varchar(255) not null,
    region varchar(255) not null
);

create table regions (
    id serial primary key,
    name varchar(255) not null,
    population int not null
);

create table products (
    id serial primary key,
    name varchar(255) not null,
    description varchar(255) not null,
    url varchar(255) not null,
    vendor varchar(255) not null,
    price int not null
);

create table customers (
    id serial primary key,
    name varchar(255) not null,
    region varchar(255) not null,
    email varchar(255) not null
);

create table orders (
    id serial primary key,
    customer_id int not null,
    date date not null,
    status varchar(255) not null,
);

create table order_details (
    id serial primary key,
    order_id int not null,
    product_id int not null,
    quantity int not null,
    price int not null
);

create table invoice (
    id serial primary key,
    order_id int not null,
    date date not null,
    amount int not null,
    discount int,
    status varchar(255)
);

