docker pull postgres

docker images

docker run --name pgsql -e POSTGRES_PASSWORD=mysecretpassword -p 5432:5432 -d postgres

docker ps

psql -h localhost -p 5432 -U postgres

docker ps -a

docker start pgsql
