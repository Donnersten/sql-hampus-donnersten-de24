SELECT * FROM main.film f;
SELECT * FROM main.film_actor fa;
SELECT * FROM main.actor a;

--vilken skådis spelade vilken film_id
SELECT
	a.first_name ,
	a.last_name,
	fa.film_id
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id;

-- vilken skådis splade vilken film title
SELECT
	a.first_name ,
	a.last_name,
	f.title 
FROM
	main.actor a
LEFT JOIN main.film_actor fa ON
	a.actor_id = fa.actor_id
LEFT JOIN main.film f ON f.film_id = fa.film_id ;

--film och kategori

SELECT
	f.title,
	c.name AS 'genre'
FROM
	main.film_category fc
JOIN main.category c ON
	fc.category_id = c.category_id
JOIN main.film f ON
	fc.film_id = f.film_id ;


SELECT * FROM main.address a;
SELECT * FROM main.city c ;
SELECT * FROM main.country c;





--Staff adress,city, country
SELECT
	s.first_name,
	s.last_name,
	a.address,
	c.city,
	c2.country 
FROM
	main.staff s
LEFT JOIN main.address a ON
	s.address_id = a.address_id
LEFT JOIN main.city c ON
	a.city_id = c.city_id
LEFT JOIN main.country c2 ON
	c2.country_id = c.country_id;


