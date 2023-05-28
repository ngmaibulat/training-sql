
export PGPASSWORD=mysecretpassword


psql -h localhost -p 5432 -U postgres -f 01.sql > out.txt


cat out.txt


