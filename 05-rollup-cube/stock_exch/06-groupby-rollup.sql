select
    country,
    sector,
    count(id) as cnt,
    max(market_cap) as max_cap,
    sum(market_cap) as total_cap,
    max(volume) as max_volume,
    avg(volume) as avg_volume,
    max(last_sale) as max_last_sale,
    min(last_sale) as min_last_sale,
    avg(last_sale) as avg_last_sale,
    max(percent_change) as max_percent_change,
    min(percent_change) as min_percent_change,
    avg(percent_change) as avg_percent_change
from company
where country is not null
group by rollup(country, sector)
having max(market_cap) > 0
order by total_cap desc;



select
    ipo_year,
    count(id) as cnt,
    max(market_cap) as max_cap,
    sum(market_cap) as total_cap,
    max(volume) as max_volume,
    avg(volume) as avg_volume,
    max(last_sale) as max_last_sale,
    min(last_sale) as min_last_sale,
    avg(last_sale) as avg_last_sale,
    max(percent_change) as max_percent_change,
    min(percent_change) as min_percent_change,
    avg(percent_change) as avg_percent_change
from company
group by ipo_year
order by total_cap desc;



select
    sector,
    count(id) as cnt,
    max(market_cap) as max_cap,
    sum(market_cap) as total_cap,
    max(volume) as max_volume,
    avg(volume) as avg_volume,
    max(last_sale) as max_last_sale,
    min(last_sale) as min_last_sale,
    avg(last_sale) as avg_last_sale,
    max(percent_change) as max_percent_change,
    min(percent_change) as min_percent_change,
    avg(percent_change) as avg_percent_change
from company
group by sector
order by total_cap desc;


select
    industry,
    count(id) as cnt,
    max(market_cap) as max_cap,
    sum(market_cap) as total_cap,
    max(volume) as max_volume,
    avg(volume) as avg_volume,
    max(last_sale) as max_last_sale,
    min(last_sale) as min_last_sale,
    avg(last_sale) as avg_last_sale,
    max(percent_change) as max_percent_change,
    min(percent_change) as min_percent_change,
    avg(percent_change) as avg_percent_change
from company
group by industry
order by total_cap desc;

