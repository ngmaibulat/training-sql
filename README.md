### Tools:

-   podman/docker
-   psql client

### Tools Windows

-   VMware Player
-   Ubuntu Server VM
-   Windows Terminal
-   SSH client
-   psql and pgadmin: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
-   git: https://git-scm.com/downloads
-   Rons CSV Editor: https://www.ronsplace.ca/Products/RonsEditor/Download

### Cloud Services:

-   https://supabase.com/
-   https://www.cockroachlabs.com/get-started-cockroachdb/
-   https://planetscale.com/

### Datasets:

-   https://www.kaggle.com/

### psql slash commands:

```
\?                  Show help on psql slash commands.
\c, \connect        Connect to a new database.
\conninfo           Display information about current connection
\l, \list           List all available databases.
\q, \quit           Quit psql and exit the program.
\s                  Show History

\! <cmd>            Run os cmd
\! ls               Run ls

\H                  Toggle HTML output mode
\x                  Toggle expanded output mode.

\i                  Execute a file containing SQL commands.

\o                  Redirect query output to a file or |command.
\o out.txt          Send output to out.txt
\o                  Restore output to CLI
\o |cmd             Send output to cmd

\dt                 List all tables in the current database.
\d, \describe       Show detailed information about a table or view.
\d users            Describe users table

\di                 List all indexes in the current database.
\dv                 List all views in the current database.
\ds                 List all sequences in the current database.
\dT                 List all user-defined data types in the current database.
\du, \du+           List all users and their roles.
\dn                 List all schemas in the current database.
\df                 List all functions in the current database.
```
