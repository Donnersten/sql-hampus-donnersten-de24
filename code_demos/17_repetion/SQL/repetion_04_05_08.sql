desc;

--SELECT * / wildcard selection / select all 
-- retunerar alla columner och rader från rätt tabel/veiw 
-- main.paymaent = schema.tabel_name --> namespaceing.
SELECT * FROM main.payment p;

--Funkar även utan main. DUCKDB kommer leta efter rätt schema av default. 
SELECT * FROM payment;

--Fully qualifying name
SELECT * FROM sakila.main.payment p;

--Gör en limit på dem 10 första raderna.
SELECT
	*
FROM
	main.payment p
LIMIT 10;

--Väljer ut vilka kolumner att retunera. 
SELECT
	customer_id,
	amount
FROM
	main.payment p;

--Exclude retunderar alla förutom allt inom paranteserna. 
SELECT
	* EXCLUDE(customer_id,amount)
FROM
	main.payment p;

--Aggregerings funktioner --> meny-to-one mapping
--Funktioner --> SUM(),COUNT(),MIN(),MAX(),AVG(),MEDIAN()
SELECT
	COUNT(*) AS number_pay,
	MIN(amount) AS min_amount,
	ROUND(AVG(amount),2 ) AS avg_amount,
	MEDIAN(amount) AS median_amount,
	MAX(amount) AS max_amount
FROM
	main.payment p; 

--Filtrera data
--WHERE filterar raderna. Om argumentet fär sant kommer det retuneras. 
SELECT
	*
FROM
	main.payment p
WHERE
	amount > 4.2
ORDER BY amount ;

--Göra en ny kolumn med klassefikationer 
SELECT
	amount,
	CASE 
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS cost_level
FROM
	main.payment p


	SELECT
	*,
	CASE 
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS cost_level
FROM
	main.payment p

	
--Skapar en ny view för cost_level. 
CREATE VIEW IF NOT EXISTS main.payment_level AS(
	SELECT
		*,
		CASE 
			WHEN amount < 3.5 THEN 'low cost'
			WHEN amount < 7.5 THEN 'medium cost'
			ELSE 'high cost'
		END AS cost_level
	FROM
		main.payment p
);

--GROUP BY
SELECT
	cost_level,
	COUNT(amount) AS number_per_level,
	ROUND(AVG(amount),2) AS avg_per_level
FROM
	main.payment_level
GROUP BY
	cost_level







































