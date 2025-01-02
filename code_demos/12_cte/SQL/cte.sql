

DESC;

-- Top paying customer

WITH customer_payment AS (
SELECT
	customer_id, SUM(amount) AS total_payment 
FROM
	main.payment p
GROUP BY
	customer_id
)
SELECT
	*
FROM
	customer_payment
WHERE total_payment > 150;

-- Include nome on customer  --> Join

WITH customer_payment AS (
	SELECT
		customer_id,
		SUM(amount) AS total_payment
	FROM
		main.payment p
	GROUP BY
		customer_id
	HAVING
		total_payment > 150
)
SELECT
	cp.customer_id,
	c.first_name,
	c.last_name,
	cp.total_payment
FROM
	customer_payment cp
LEFT JOIN main.customer c ON 
	cp.customer_id = c.customer_id
ORDER BY cp.total_payment DESC, c.last_name ASC;


-- List all films and catagory
-- Joining in a cte block

WITH film_category AS (
SELECT
	f.film_id,
	f.title AS film_title,
	c.name AS genre
FROM
	main.film f
INNER JOIN main.film_category fc ON
	f.film_id = fc.film_id
INNER JOIN main.category c ON
	c.category_id = fc.category_id
)
SELECT
	*
FROM
	film_category
ORDER BY 
	genre, film_title;











