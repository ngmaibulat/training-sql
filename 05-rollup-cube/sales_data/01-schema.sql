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
