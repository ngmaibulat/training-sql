CREATE TABLE users (
        id UUID NOT NULL DEFAULT gen_random_uuid(),

        date date not null,
        region varchar(255) not null,
        product varchar(255) not null,
        sales integer not null,

        CONSTRAINT "primary" PRIMARY KEY (id asc)
);

create table sales_person (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name varchar(255) not null,
    region varchar(255) not null,

    CONSTRAINT "primary" PRIMARY KEY (id asc)
);


create table regions (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name varchar(255) not null,
    population int not null,

    CONSTRAINT "primary" PRIMARY KEY (id asc)
);
