### Init

```bash
mkdir migrations
cd migrations
sqitch init support_portal --engine pg
```

### Add migration

```
sqitch add appschema -n 'Support Portal Schema'
```

### Create DDL

```
vim migrations/deploy/appschema.sql
```

### Revert code

```bash
vim migrations/revert/appschema.sql
```

### Verify migration

```bash
export DB_URL="db:pg://postgres:mysecretpassword@localhost:5432/postgres"
sqitch verify $DB_URL
```

### Deploy migration

```bash
export DB_URL="db:pg://postgres:mysecretpassword@localhost:5432/postgres"
sqitch deploy $DB_URL
```

### Revert migration

```bash
export DB_URL="db:pg://postgres:mysecretpassword@localhost:5432/postgres"
sqitch revert $DB_URL
```

### Show status

```bash
sqitch status $DB_URL
```

### Config

```
sqitch config --bool deploy.verify true
```

### Add another migration

```
sqitch add 01-insert-data -n 'Insert Data'
```

### Tag

```
sqitch tag v0.0.1 -n 'Tag v0.0.1'
```

### Bundle

```
sqitch bundle
mv bundle support_portal-0.0.1
tar -cf support_portal-0.0.1.tar support_portal-0.0.1
gzip support_portal-0.0.1.tar
rm -fr support_portal-0.0.1
```
