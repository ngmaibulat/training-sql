\copy euro_rub FROM './csv/currency/EUR_RUB.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true)


update euro_rub set volume = REPLACE(volume, 'K', '');

update euro_rub set change = REPLACE(change, '%', '');

update euro_rub set volume = '0' where volume = '';

insert into euro_rub_clean (
    date,
    price,
    open,
    high,
    low,
    volume,
    change
    )

select
    date,
    price,
    open,
    high,
    low,
    cast(volume as float) * 1000,
    cast(change as float)
from euro_rub
order by date;


update euro_rub_clean set year = extract(year from date);
update euro_rub_clean set month = extract(month from date);
