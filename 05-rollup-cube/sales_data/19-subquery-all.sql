-- ALL

select name from regions where name not in (select name from regions where name like '%District');

select name from regions where name != ALL (select name from regions where name like '%District');
