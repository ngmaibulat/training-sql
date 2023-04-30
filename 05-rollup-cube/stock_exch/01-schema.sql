drop table if exists company;
drop table if exists company_raw;

create table company (
    id serial primary key,
    symbol varchar(50),
    name varchar(255),
    last_sale float,
    net_change float,
    percent_change float,
    market_cap float,
    country varchar(50),
    ipo_year int,
    volume int,
    sector varchar(50),
    industry varchar(255)
);


create table company_raw (
    symbol varchar(50),
    name varchar(255),
    last_sale varchar(50),
    net_change float,
    percent_change varchar(50),
    market_cap float,
    country varchar(50),
    ipo_year int,
    volume int,
    sector varchar(50),
    industry varchar(255)
);
