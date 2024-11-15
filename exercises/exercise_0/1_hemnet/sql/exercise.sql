--B
SELECT * FROM main.hemnet_data WHERE address LIKE 'B%'

--C
SELECT COUNT(*) from main.hemnet_data;

--D
DESC;

--E
SELECT * FROM main.hemnet_data ORDER BY final_price DESC LIMIT 5;

--F
SELECT * FROM main.hemnet_data ORDER BY final_price LIMIT 5;

--G
SELECT
	MIN(final_price) as min_sold_house,
	MAX(final_price) as max_sold_house,
	AVG(final_price) as mean_sold_house,
	MEDIAN(final_price) as medan_sold_house
from
	main.hemnet_data;
	
--H
SELECT
	MIN(price_per_area) as min_sold_house,
	MAX(price_per_area) as max_sold_house,
	ROUND(AVG(price_per_area)) as mean_sold_house,
	MEDIAN(price_per_area) as medan_sold_house
from
	main.hemnet_data;

--I
SELECT COUNT(DISTINCT commune) FROM main.hemnet_data;

--J
SELECT
	(COUNT(final_price) FILTER (
	WHERE final_price > 10000000) * 100.0) / COUNT(final_price) AS percentage_above_10M
FROM
	main.hemnet_data;


