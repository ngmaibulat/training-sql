select * from company
where market_cap = (select max(market_cap) from company);


select floor(market_cap/1000000000) as cap_in_billions, * from company
where id in (select id from company where market_cap is not null order by market_cap desc limit 50)
order by market_cap desc;



select * from company
where
	market_cap is not null and sector <> 'Technology'
order by market_cap desc
OFFSET 0 ROWS
FETCH NEXT 50 ROWS ONLY;

