-- Revert support_portal:01-insert-data from pg

BEGIN;

truncate table support_portal.users;

COMMIT;
