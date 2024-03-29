drop table if exists sales_data;
drop table if exists sales_person;
drop table if exists regions;

CREATE TABLE users (
        id UUID NOT NULL DEFAULT gen_random_uuid(),

        date date not null,
        region varchar(255) not null,
        product varchar(255) not null,
        sales integer not null,

        CONSTRAINT "primary" PRIMARY KEY (id)
);

create table sales_person (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name varchar(255) not null,
    region varchar(255) not null,

    CONSTRAINT "primary" PRIMARY KEY (id)
);


create table regions (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name varchar(255) not null,
    population int not null,

    CONSTRAINT "primary" PRIMARY KEY (id)
);


create table products (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    name varchar(255) not null,
    description varchar(255) not null,
    url varchar(255) not null,
    vendor varchar(255) not null,
    price int not null
);

create table customers (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    name varchar(255) not null,
    region varchar(255) not null,
    email varchar(255) not null
);

create table orders (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    customer_id int not null,
    date date not null,
    status varchar(255) not null,
);

create table order_details (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    order_id int not null,
    product_id int not null,
    quantity int not null,
    price int not null
);

create table invoice (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    order_id int not null,
    date date not null,
    amount int not null,
    discount int,
    status varchar(255)
);

