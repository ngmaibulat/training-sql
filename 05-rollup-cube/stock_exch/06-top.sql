select * from company
where country = 'United States'
order by last_sale desc
limit 10;


select * from company
where percent_change is not null
order by percent_change desc
limit 100;
