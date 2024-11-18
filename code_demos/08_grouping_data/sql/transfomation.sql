SELECT * FROM main.food;

CREATE TABLE IF NOT EXISTS clean_food as (
SELECT
	id as food,
	week_id AS week,
	SUBSTRING(week, 1, 4) as year,
	value AS number_searches
FROM
	main.food
	);
	
SELECT * FROM main.clean_food;