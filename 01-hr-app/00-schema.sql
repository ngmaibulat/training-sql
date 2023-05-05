
-- Modeling cloud based HR application
-- Customers can purchase subscription
-- And store/manage HR data in the cloud application
-- Customers can create multiple departments

drop table if exists hr_orders;
drop table if exists hr_products;
drop table if exists hr_emp;
drop table if exists hr_departments;
drop table if exists hr_customers;

CREATE TABLE hr_customers (
    -- id serial primary key,
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    rank INTEGER,
    company_name VARCHAR(255),
    revenue INTEGER,
    country VARCHAR(255),
    address VARCHAR(255),
    industry VARCHAR(255),

    PRIMARY KEY (id)
);


create table hr_departments (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    customer_id uuid,
    name varchar(50),

    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES hr_customers(id)
);


create table hr_emp (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    dept_id uuid,
    name text,
    salary int,

    PRIMARY KEY (id),
    -- FOREIGN KEY (dept_id) REFERENCES hr_departments(id) ON DELETE CASCADE
    -- FOREIGN KEY (dept_id) REFERENCES hr_departments(id) ON DELETE RESTRICT
    FOREIGN KEY (dept_id) REFERENCES hr_departments(id) ON DELETE NO ACTION
    -- FOREIGN KEY (dept_id) REFERENCES hr_departments(id) ON DELETE SET NULL
    -- FOREIGN KEY (dept_id) REFERENCES hr_departments(id) ON DELETE SET DEFAULT
);

create table hr_products (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    name text,
    category varchar,
    brand varchar,
    price int,

    PRIMARY KEY (id)
);


create table hr_orders (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    order_date date,
    customer_id uuid,
    -- product_id int references products(id),
    quantity int,

    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES hr_customers(id) ON DELETE RESTRICT
);
