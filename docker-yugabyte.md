### Docker

docker pull yugabytedb/yugabyte

docker run -d --name yugabyte \
 -p7000:7000 -p9001:9000 -p5433:5433 -p9042:9042 \
 yugabytedb/yugabyte bin/yugabyted start --daemon=false

### CLI

psql -h localhost -p 5433 -U postgres

### Web UI

The yb-master Admin UI: http://localhost:7000
The yb-tserver Admin UI: http://localhost:9001
The yb-tserver Prometheus metrics: http://localhost:9001/metrics
