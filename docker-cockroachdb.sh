docker pull cockroachdb/cockroach

docker images


docker run -d \
    --name=roach1 \
    --hostname=roach1 \
    -p 26257:26257 -p 8080:8080 \
    cockroachdb/cockroach:latest start-single-node \
    --accept-sql-without-tls \
    --insecure
    # --net=roachnet \
    # -v "${PWD}/cockroach-data/roach1:/cockroach/cockroach-data" \


# docker run -d -p 26257:26257 -p 8080:8080 --name=roach1 cockroachdb/cockroach start-single-node --accept-sql-without-tls

docker ps
docker ps -a

docker exec -it roach1 ./cockroach sql --insecure

psql -h localhost -p 26257 -U root

wget http://localhost:8080/

docker stop roach1
docker start roach1
