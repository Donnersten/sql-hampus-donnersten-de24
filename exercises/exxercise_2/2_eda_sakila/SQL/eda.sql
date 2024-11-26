--A
desc;

--B
SELECT * FROM sakila.main.actor;
SELECT * FROM sakila.main.address;
SELECT * FROM sakila.main.city;
SELECT * FROM sakila.main.payment;
SELECT * FROM main.customer;

--C 

SELECT COUNT(*) FROM sakila.main.actor;
SELECT COUNT(*) FROM sakila.main.address;
SELECT COUNT(*) FROM sakila.main.city;
SELECT COUNT(*) FROM sakila.main.payment;
SELECT COUNT(*) FROM main.customer;

--D
SELECT AVG(length) FROM main.film;


--E
SELECT
	COUNT(rental_date) as count_people,
	strftime('%H:%M',rental_date ) AS time_rental
FROM
	main.rental
Group By time_rental
ORDER BY count_people DESC;
--F
SELECT
	COUNT(*) as count_rating,
	rating
FROM
	main.film
Group By rating 
ORDER BY count_rating DESC;

--G
SELECT
	c.first_name,
	c.last_name,
	COUNT(r.customer_id) AS number_rental
FROM
	main.customer c
INNER JOIN
	main.rental r ON c.customer_id = r.customer_id
GROUP BY
	c.first_name,
	c.last_name
ORDER BY number_rental DESC
LIMIT 10;

--H
SELECT * FROM main.customer c ;

SELECT * FROM main.film f ;

SELECT * FROM main.inventory i ;

SELECT * FROM main.rental r ;

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