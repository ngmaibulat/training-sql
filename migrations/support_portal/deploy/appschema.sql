-- Deploy support_portal:appschema to pg

BEGIN;

-- XXX Add DDLs here.

create schema support_portal;

create table support_portal.users (
    id UUID NOT NULL DEFAULT gen_random_uuid(),

    name varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,

    PRIMARY KEY (id)
);

COMMIT;
