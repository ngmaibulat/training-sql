docker pull exasol/docker-db

docker run -d --name exasoldb --hostname exasoldb -p 8563:8563 -p 2581:2581 exasol/docker-db

After the container has started,
you can connect to the Exasol instance using any SQL client that supports JDBC or ODBC.
Use the following connection details:
Host: localhost
Port: 8563
User: sys
Password: exasol

For more information and detailed instructions on running Exasol Community Edition with Docker,
you can refer to the Exasol GitHub repository (https://github.com/exasol/docker-db)
and the official Exasol documentation
(https://docs.exasol.com/get_started/communityedition.htm)

### CLI

Exasol provides its own command-line interface (CLI) client called "exasql" or "Exasol SQL Client." You can use this tool to connect to an Exasol database instance and execute SQL commands. However, you cannot use the PostgreSQL command-line client (psql) to connect to Exasol, as psql is specifically designed to work with PostgreSQL databases and uses PostgreSQL-specific protocols.

To use the Exasol SQL Client, follow these steps:

1. Download the Exasol SQL Client package from the Exasol download page (https://www.exasol.com/portal/display/DOWNLOAD/7.1).

2. Extract the package to a directory on your local machine.

3. Open a terminal or command prompt, navigate to the extracted directory, and then to the "bin" subdirectory.

4. Run the Exasol SQL Client by executing the following command:

```
./exasql -c '<connection_string>' -u '<username>' -p '<password>'
```

Replace `<connection_string>` with the connection string of your Exasol instance (e.g., `localhost:8563`), `<username>` with your Exasol username (e.g., `sys`), and `<password>` with your Exasol password (e.g., `exasol`).

Once connected, you can run SQL queries and commands directly from the command line.

Alternatively, you can also use other SQL clients that support JDBC or ODBC connections to connect to an Exasol database. Some popular tools include DBeaver, SQL Workbench/J, and DbVisualizer. You will need to download the appropriate Exasol JDBC or ODBC driver and configure your SQL client to use it for connecting to the Exasol database.
