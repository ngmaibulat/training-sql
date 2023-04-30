-- COPY company FROM 'nasdaq_screener.csv' WITH (FORMAT csv, DELIMITER ',', HEADER true);

-- cat nasdaq_screener.csv | psql -c "COPY company FROM STDIN WITH (FORMAT csv, DELIMITER ',', HEADER true);"

\copy company_raw FROM 'csv/nasdaq_screener.csv' WITH (FORMAT CSV, DELIMITER ',', HEADER true)

UPDATE company_raw SET last_sale = REPLACE(last_sale, '$', '');

UPDATE company_raw SET percent_change = REPLACE(percent_change, '%', '');


-- INSERT INTO company (symbol, name, last_sale, net_change, percent_change, market_cap, country, ipo_year, volume, sector, industry)
-- select * from company_raw;

INSERT INTO company
    (symbol, name, last_sale, net_change, percent_change, market_cap, country, ipo_year, volume, sector, industry)
SELECT
    symbol, name, CAST(last_sale AS FLOAT), net_change, CAST(percent_change AS FLOAT), market_cap, country, ipo_year, volume, sector, industry
FROM company_raw;


INSERT INTO company (symbol, name, last_sale)

SELECT
    symbol, name, CAST(last_sale AS FLOAT)
FROM company_raw;