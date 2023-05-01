-- ANY

select name from regions where name in (select name from regions where name like '%District');

select name from regions where name = ANY (select name from regions where name like '%District');

select name from regions where name = SOME (select name from regions where name like '%District');
