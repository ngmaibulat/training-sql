-- Deploy support_portal:01-insert-data to pg

BEGIN;

insert into support_portal.users (name, email, password) values ('admin', 'admin@support_portal.com', 'admin');

COMMIT;
