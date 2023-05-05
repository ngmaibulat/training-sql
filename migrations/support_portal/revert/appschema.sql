-- Revert support_portal:appschema from pg

BEGIN;

-- XXX Add DDLs here.

drop schema support_portal cascade;

COMMIT;
