--A
SELECT
	'Custemer' AS TYPE,
	c.last_name ,
FROM
	main.customer c
WHERE
	c.last_name like 'G%'
UNION
SELECT
	'Actor',
	a.last_name AS type,
FROM
	main.actor a
WHERE a.last_name LIKE 'G%';

--B
SELECT
	'Custemer' AS TYPE,
	COUNT(c.first_name) AS count_cutemer
FROM
	main.customer c
WHERE
	c.first_name like '%ANN%'
UNION
SELECT
	'Actor',
	COUNT(a.first_name) AS type,
FROM
	main.actor a
WHERE a.first_name LIKE '%ANN%';

--C
SELECT name, city, country FROM main.customer_list cl;

--D
SELECT
	c.first_name,
	c.last_name,
	c2.city,
	c3.country 
FROM
	main.customer c 
INNER JOIN main.address a ON c.address_id = a.address_id 
INNER JOIN main.city c2 ON a.city_id = c2.city_id 
INNER JOIN main.country c3 ON c2.country_id = c3.country_id
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%';

--E
SELECT
	c.first_name,
	c.last_name,
	f.title AS movie_title
FROM
	main.customer c
INNER JOIN
	main.rental r ON c.customer_id = r.customer_id
INNER JOIN main.inventory i ON r.inventory_id = i.inventory_id
INNER JOIN main.film f ON i.film_id = f.film_id
ORDER BY
	 c.first_name,c.last_name DESC;
	
--F

