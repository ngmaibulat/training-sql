create table somedata(
	groupdata varchar,
	subgroup varchar,
	value int
);

insert into somedata values ('a', 'a1', 1);
insert into somedata values ('a', 'a2', 2);
insert into somedata values ('a', 'a3', 3);

insert into somedata values ('b', 'b1', 4);
insert into somedata values ('b', 'b2', 5);
insert into somedata values ('b', 'b3', 6);

insert into somedata values ('c', 'c1', 7);
insert into somedata values ('c', 'c2', 8);
insert into somedata values ('c', 'c3', 9);


select * from somedata;


select coalesce(groupdata, 'Total') as grp, coalesce(subgroup, '-') as subgrp, sum(value) as val
from somedata
group by rollup(groupdata, subgroup)
order by groupdata;

