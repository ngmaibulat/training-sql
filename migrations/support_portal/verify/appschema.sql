-- Verify support_portal:appschema on pg

BEGIN;

-- XXX Add verifications here.

-- select 1/0;

SELECT * FROM information_schema.schemata WHERE schema_name = 'support_portal';

DO $$
BEGIN
   ASSERT (SELECT has_schema_privilege('support_portal', 'usage'));
END $$;

select name, email, password
from support_portal.users
where false;

ROLLBACK;
