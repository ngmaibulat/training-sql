TimescaleDB is an open-source time-series database built on top of PostgreSQL. It extends PostgreSQL's functionality to provide specialized features and optimizations for time-series data, while retaining compatibility with the PostgreSQL ecosystem. Some of the most notable features of TimescaleDB compared to PostgreSQL include:

Hypertables: TimescaleDB introduces the concept of hypertables, which are an abstraction over regular PostgreSQL tables designed to manage large-scale time-series data. A hypertable is partitioned into smaller chunks, each representing a specific time interval. This partitioning improves query performance, simplifies data management, and enables advanced features like data retention policies and continuous aggregates.

Time-series specific functions: TimescaleDB provides a set of specialized functions for working with time-series data, such as time_bucket, first, last, and others. These functions simplify common time-series tasks like downsampling, aggregation, and data manipulation.

Data retention policies: TimescaleDB allows you to define data retention policies for hypertables, which automatically remove old data beyond a specified age. This feature helps you manage storage costs and keep your time-series data optimized for performance.

Continuous aggregates: Continuous aggregates in TimescaleDB are a way to maintain a precomputed view of aggregated data at specified time intervals. This feature can significantly improve query performance for common aggregate queries, such as calculating averages or sums over a period of time.

Compression: TimescaleDB supports native compression, which can greatly reduce storage costs and improve query performance for large datasets. The compression feature is implemented using a columnar storage format, which is more efficient for compressing and querying time-series data.

Multi-node: As mentioned in a previous response, TimescaleDB supports multi-node setups, which allow you to distribute your data across multiple nodes to improve performance, scalability, and resilience.

Compatibility with PostgreSQL: TimescaleDB is built on top of PostgreSQL and is fully compatible with its ecosystem. This means that you can use existing PostgreSQL tools, libraries, and extensions with TimescaleDB.

These are some of the most notable features of TimescaleDB that set it apart from PostgreSQL, particularly when working with time-series data. By leveraging these features, you can achieve better performance, scalability, and manageability for your time-series workloads compared to using a traditional PostgreSQL database.

### Container

```bash
docker pull timescale/timescaledb:latest-pg15

docker run -d --name timescaledb -p 5432:5432 -e POSTGRES_PASSWORD=password timescale/timescaledb-ha:pg15-latest
```

```sql
CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;
```
