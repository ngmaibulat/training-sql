create table sales_data (
    id serial primary key,
    date date not null,
    region varchar(255) not null,
    product varchar(255) not null,
    sales integer not null
)

-- insert data
